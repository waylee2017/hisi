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

#include <uboot.h>
#include "hi_keyled_gpiokey.h"
#include "hi_reg.h"
#include "hi_unf_keyled.h"
#include "drv_gpio_ext.h"

/*-------------------------------------------------------------------------------
 * macro define
 *------------------------------------------------------------------------------*/
#define DEFAULT_DELAYTIME 300

#define keyled_mdelay(x) udelay(x * 1000)

#define  KEYLED_TIMER_INTERVAL_MS 2
#define KEYLED_TRACE_LEVEL 9

#ifndef HI_ADVCA_FUNCTION_RELEASE 
#define keyled_trace(level, msg ...) do \
    { \
        if ((level) >= KEYLED_TRACE_LEVEL) \
        { \
            printf("keyled_trace:%s:%d: ", __FILE__, __LINE__); \
            printf(msg); \
            printf("\n"); \
        } \
    } while (0)
#else
#define keyled_trace(level, msg ...) do \
    { \
    } while (0)
#endif


#define CheckKeyledDeviceFd() \
    do \
    { \
        if (0 >= g_s32KEYLEDFd) \
        { \
            keyled_trace(8, "keyled not init\n"); \
            return HI_ERR_KEYLED_NOT_INIT; \
        } \
    } while (0)

#define CheckKeyledDeviceRepeatFd() \
    do \
    { \
        if (0 < g_s32KEYLEDFd) \
        { \
            keyled_trace(8, "keyled repeat init\n"); \
            return HI_SUCCESS; \
        } \
    } while (0)

#define CheckKeyledNULLPointer(p) \
    do \
    { \
        if (HI_NULL == (p)) \
        { \
            keyled_trace(8, "pointer is null\n"); \
            return HI_ERR_KEYLED_NULL_PTR; \
        } \
    } while (0)

/*-------------------------------------------------------------------------------
 * variable define
 *------------------------------------------------------------------------------*/

//static int s_key_detected_flag = 0;
static int s_key_code_curr = KEY_MACRO_NO;

unsigned int g_s32KEYLEDFd = 0;


typedef struct hiKEY_INFO_S
{
    HI_U32 KeyVal;
    HI_U32 KeyPressState;
}HI_KEY_INFO_S;

static HI_KEY_INFO_S g_OldKey;

HI_VOID keyled_gpio_dirset(HI_VOID)
{
	HI_DRV_GPIO_SetDirBit(KEY_PWR, 1);	 //input   
	HI_DRV_GPIO_SetDirBit(KEY_OK, 1);	//input
	HI_DRV_GPIO_SetDirBit(KEY_RIGHT, 1); //input
	HI_DRV_GPIO_SetDirBit(KEY_LEFT, 1);	//input
	HI_DRV_GPIO_SetDirBit(KEY_DOWN, 1);	//input
	HI_DRV_GPIO_SetDirBit(KEY_UP, 1);	//input
	HI_DRV_GPIO_SetDirBit(KEY_MENU, 1);	//input
}


HI_S32 keyled_get_keycode(HI_VOID)
{
   HI_S32 s32key_code_sum = 0;

    HI_U32 u32Val = 1;

    //use gpio to query key 1*7
    HI_DRV_GPIO_ReadBit(KEY_PWR, &u32Val);
    if (0 == u32Val)
    {
        s32key_code_sum += 0x1;
    }

    HI_DRV_GPIO_ReadBit(KEY_OK, &u32Val);
    if (0 == u32Val)
    {
        s32key_code_sum += 0x1 << 1;
    }

    HI_DRV_GPIO_ReadBit(KEY_RIGHT, &u32Val);
    if (0 == u32Val)
    {
        s32key_code_sum += 0x1 << 2;
    }

    HI_DRV_GPIO_ReadBit(KEY_LEFT, &u32Val);
    if (0 == u32Val)
    {
        s32key_code_sum += 0x1 << 3;
    }

    HI_DRV_GPIO_ReadBit(KEY_DOWN, &u32Val);
    if (0 == u32Val)
    {
        s32key_code_sum += 0x1 << 4;
    }

    HI_DRV_GPIO_ReadBit(KEY_UP, &u32Val);
    if (0 == u32Val)
    {
        s32key_code_sum += 0x1 << 5;
    }

    HI_DRV_GPIO_ReadBit(KEY_MENU, &u32Val);
    if (0 == u32Val)
    {
        s32key_code_sum += 0x1 << 6;
    }

    if (0 != s32key_code_sum)
    {
        return s32key_code_sum;
    }
    else /*when none*/
    {
        return HI_FAILURE;
    }
}

static int  keyled_scan_key(HI_VOID)
{
    HI_S32 s32keycode = 0;

    s32keycode = keyled_get_keycode();

	//printf("s32keycode=0x%x\n",s32keycode);

    if (HI_FAILURE == s32keycode)
    {
        //s_key_detected_flag = 0;
        s_key_code_curr = KEY_MACRO_NO;
    }
    else
    {
        //s_key_detected_flag = 1;
        s_key_code_curr = s32keycode;
    }

    return HI_SUCCESS;
}


HI_VOID keyled_clear_buf_func(HI_VOID)
{
    s_key_code_curr = KEY_MACRO_NO;

    return;
}

HI_S32 HI_KEYLED_Open(HI_VOID)
{
    CheckKeyledDeviceRepeatFd();

    g_s32KEYLEDFd = 1;

    s_key_code_curr = KEY_MACRO_NO;
    g_OldKey.KeyVal = KEY_MACRO_NO;
    g_OldKey.KeyPressState = KEY_RELEASE;

    //	keyled_gpio_switch(1);   /* mask pin function config,it need congfig in boot reg*/

    keyled_gpio_dirset();

    keyled_clear_buf_func();

    return HI_SUCCESS;
}

HI_S32 HI_KEYLED_Close(HI_VOID)
{
    CheckKeyledDeviceFd();

    g_s32KEYLEDFd = 0;

    //switch to gpio
    //	keyled_gpio_switch(0);  /* mask pin function config,it need congfig in boot reg*/

    keyled_clear_buf_func();

    return HI_SUCCESS;
}

HI_S32 HI_KEYLED_Enable(HI_VOID)
{
    CheckKeyledDeviceFd();

    return HI_SUCCESS;
}

HI_S32 HI_KEYLED_Disable(HI_VOID)
{
    CheckKeyledDeviceFd();

    return HI_SUCCESS;
}

HI_S32 HI_KEYLED_GetValue(HI_U32 *pu32PressStatus, HI_U32 *pu32KeyId)
{
    CheckKeyledDeviceFd();
    CheckKeyledNULLPointer(pu32PressStatus);
    CheckKeyledNULLPointer(pu32KeyId);

	//printf("--HI_KEYLED_GetValue--\n");
	
    keyled_scan_key();

    if (KEY_MACRO_NO == s_key_code_curr)
    {
        if (KEY_MACRO_NO != g_OldKey.KeyVal)
        {
            if (KEY_PRESS == g_OldKey.KeyPressState)
            {
                g_OldKey.KeyPressState = KEY_RELEASE;

                *pu32KeyId = g_OldKey.KeyVal;
                *pu32PressStatus = g_OldKey.KeyPressState;
                return HI_SUCCESS;
            }
            else
            {
                g_OldKey.KeyVal = KEY_MACRO_NO;
                g_OldKey.KeyPressState = KEY_RELEASE;
                return HI_FAILURE;
            }
        }

        return HI_FAILURE;
    }
    else
    {
        if ((g_OldKey.KeyVal == s_key_code_curr) && (KEY_PRESS == g_OldKey.KeyPressState))
        {
            return HI_FAILURE;
        }

        g_OldKey.KeyVal = s_key_code_curr;
        g_OldKey.KeyPressState = KEY_PRESS;

        *pu32KeyId = s_key_code_curr;
        *pu32PressStatus = KEY_PRESS;

        return HI_SUCCESS;
    }
}

HI_S32 HI_KEYLED_Display(HI_U32 u32Value)
{
    return HI_SUCCESS;
}


/* add  the unf interface for new boot */
HI_S32 HI_UNF_KEYLED_Init(HI_VOID)
{
    return HI_SUCCESS;
}

HI_S32 HI_UNF_KEYLED_DeInit(HI_VOID)
{
    return HI_SUCCESS;
}

HI_S32 HI_UNF_KEY_Open(HI_VOID)
{
    return HI_KEYLED_Open();
}

HI_S32 HI_UNF_KEY_Close(HI_VOID)
{
    return HI_KEYLED_Close();
}

HI_S32 HI_UNF_LED_Open(HI_VOID)
{
    return HI_KEYLED_Open();
}

HI_S32 HI_UNF_LED_Close(HI_VOID)
{
    return HI_KEYLED_Close();
}

HI_S32 HI_UNF_KEY_IsKeyUp(HI_U32 u32IsKeyUp)
{
    return HI_SUCCESS;
}

HI_S32 HI_UNF_KEY_IsRepKey(HI_U32 u32IsRepKey)
{
    return HI_SUCCESS;
}

HI_S32 HI_UNF_KEY_SetBlockTime(HI_U32 u32BlockTimeMs)
{
    return HI_SUCCESS;
}

HI_S32 HI_UNF_LED_Display(HI_U32 u32CodeValue)
{
    return HI_SUCCESS;
}

HI_S32 HI_UNF_KEY_GetValue(HI_U32 * pu32PressStatus, HI_U32 * pu32KeyId)
{
    return HI_KEYLED_GetValue(pu32PressStatus, pu32KeyId);
}

HI_S32 HI_UNF_KEYLED_SelectType(HI_UNF_KEYLED_TYPE_E enKeyLedType)
{
    return HI_SUCCESS;
}

