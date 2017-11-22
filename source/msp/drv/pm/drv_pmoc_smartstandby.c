#include "drv_dev_ext.h"

#include "drv_pmoc_priv.h"
#include "hi_drv_pmoc.h"

#include "hi_drv_module.h"
#include "drv_ao_ext.h"
#ifdef HI_AUDIO_AI_SUPPORT
#include "drv_ai_ext.h"
#endif

#include "drv_hdmi_ext.h"
#include "drv_disp_ext.h"
//#include "drv_win_ext.h"
#include "drv_sci_ext.h"
#include "drv_venc_ext.h"
#include "drv_png_ext.h"
//#include "drv_jpge_ext.h"
#include "drv_jpeg_ext.h"
#include "drv_wdg_ext.h"
#include "drv_tuner_ext.h"
//#include "drv_adsp_ext.h"
#include "drv_cipher_ext.h"
#include "drv_vdec_ext.h"
#include "drv_otp_ext.h"
//#include "drv_tde_ext.h"
#include "drv_i2c_ext.h"
#include "drv_gpio_ext.h"
//#include "drv_vpss_ext.h"
//#include <mach/clock.h>
#include <linux/cpu.h>
#include <asm/io.h>
#include <linux/platform_device.h>

#define PM_LOW_SUSPEND_FLAG   0x5FFFFFFF

#ifdef CONFIG_HIETH_GMAC
extern int higmac_dev_suspend(struct platform_device *dev, pm_message_t state);
extern int higmac_dev_resume(struct platform_device *dev);
#elif defined(CONFIG_HIETH_SWITCH_FABRIC)
extern int hieth_plat_driver_suspend(struct platform_device *pdev, pm_message_t state);
extern int hieth_plat_driver_resume(struct platform_device *pdev);
#endif

HI_S32 PMEnterSmartStandby(HI_U32 u32HoldModules)
{
#if 0
    HI_S32 s32Ret;
    pm_message_t state = {0};
    AIAO_EXPORT_FUNC_S *pstAoFunc;
#ifdef HI_AUDIO_AI_SUPPORT
    AI_EXPORT_FUNC_S *pstAiFunc;
#endif
    HDMI_EXPORT_FUNC_S *pstHdmiFunc;
    DISP_EXPORT_FUNC_S *pstDispFunc;
   // WIN_EXPORT_FUNC_S *pstWinFunc;

   // SCI_EXT_FUNC_S *pstSciFunc;
    VENC_EXPORT_FUNC_S *pstVencFunc;
    PNG_EXPORT_FUNC_S *pstPngFunc;
   // JPGE_EXPORT_FUNC_S *pstJpgeFunc;
    //JPEG_EXPORT_FUNC_S *pstJpegFunc;

   // WDG_EXT_FUNC_S *pstWdgFunc;
    TUNER_EXPORT_FUNC_S *pstTunerFunc;
   // ADSP_EXPORT_FUNC_S *pstAdspFunc;

   // CIPHER_EXPORT_FUNC_S *pstCipherFunc;

    VDEC_EXPORT_FUNC_S *pstVdecFunc;
   // OTP_EXPORT_FUNC_S *pstOtpFunc;
    //TDE_EXPORT_FUNC_S *pstTdeFunc;
    I2C_EXT_FUNC_S *pstI2cFunc;
    GPIO_EXT_FUNC_S *pstGpioFunc;
   // VPSS_EXPORT_FUNC_S *pstVpssFunc;


   /* s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_SCI, (HI_VOID**)&pstSciFunc);
    if ((HI_SUCCESS == s32Ret) && (pstSciFunc && pstSciFunc->pfnSciSuspend))
    {
        if (HI_SUCCESS != pstSciFunc->pfnSciSuspend(HI_NULL, state))
        {
            HI_ERR_PM("SCI suspend fail.\n");
        }
    }*/

  /*  s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_VENC, (HI_VOID**)&pstVencFunc);
    if ((HI_SUCCESS == s32Ret) && (pstVencFunc && pstVencFunc->pfnVencSuspend))
    {
        if (HI_SUCCESS != pstVencFunc->pfnVencSuspend())
        {
            HI_ERR_PM("VENC suspend fail.\n");
        }
    }*/

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_PNG, (HI_VOID**)&pstPngFunc);
    if ((HI_SUCCESS == s32Ret) && (pstPngFunc && pstPngFunc->pfnPngSuspend))
    {
        if (HI_SUCCESS != pstPngFunc->pfnPngSuspend(HI_NULL, state))
        {
            HI_ERR_PM("PNG suspend fail.\n");
        }
    }

#if !defined(CHIP_TYPE_hi3719mv100) && !defined(CHIP_TYPE_hi3718mv100)
    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_JPGENC, (HI_VOID**)&pstJpgeFunc);
    if ((HI_SUCCESS == s32Ret) && (pstJpgeFunc && pstJpgeFunc->pfnJpgeSuspend))
    {
        if (HI_SUCCESS != pstJpgeFunc->pfnJpgeSuspend(HI_NULL, state))
        {
            HI_ERR_PM("JPGE suspend fail.\n");
        }
    }
#endif

    /*s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_WDG, (HI_VOID**)&pstWdgFunc);
    if ((HI_SUCCESS == s32Ret) && (pstWdgFunc && pstWdgFunc->pfnWdgSuspend))
    {
        if (HI_SUCCESS != pstWdgFunc->pfnWdgSuspend(HI_NULL, state))
        {
            HI_ERR_PM("WDG suspend fail.\n");
        }
    }*/

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_TUNER, (HI_VOID**)&pstTunerFunc);
    if ((HI_SUCCESS == s32Ret) && (pstTunerFunc && pstTunerFunc->pfnTunerSuspend))
    {
        if (HI_SUCCESS != pstTunerFunc->pfnTunerSuspend(HI_NULL, state))
        {
            HI_ERR_PM("TUNER suspend fail.\n");
        }
    }

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_HDMI, (HI_VOID**)&pstHdmiFunc);
    if ((HI_SUCCESS == s32Ret) && (pstHdmiFunc && pstHdmiFunc->pfnHdmiSuspend))
    {
        if (HI_SUCCESS != pstHdmiFunc->pfnHdmiSuspend(HI_NULL, state))
        {
            HI_ERR_PM("HDMI suspend fail.\n");
        }
    }

  /*  s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_VO, (HI_VOID**)&pstWinFunc);
    if ((HI_SUCCESS == s32Ret) && (pstWinFunc && pstWinFunc->pfnWinSuspend))
    {
        if (HI_SUCCESS != pstWinFunc->pfnWinSuspend(HI_NULL, state))
        {
            HI_ERR_PM("WIN suspend fail.\n");
        }
    }*/

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_DISP, (HI_VOID**)&pstDispFunc);
    if ((HI_SUCCESS == s32Ret) && (pstDispFunc && pstDispFunc->pfnDispSuspend))
    {
        if (HI_SUCCESS != pstDispFunc->pfnDispSuspend(HI_NULL, state))
        {
            HI_ERR_PM("DISP suspend fail.\n");
        }
    }

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_AO, (HI_VOID**)&pstAoFunc);
    if ((HI_SUCCESS == s32Ret) && (pstAoFunc && pstAoFunc->pfnAO_DrvSuspend))
    {
        state.event = PM_LOW_SUSPEND_FLAG;
        if (HI_SUCCESS != pstAoFunc->pfnAO_DrvSuspend(HI_NULL, state))
        {
            HI_ERR_PM("AO suspend fail.\n");
        }
    }

#ifdef HI_AUDIO_AI_SUPPORT
    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_AI, (HI_VOID**)&pstAiFunc);
    if ((HI_SUCCESS == s32Ret) && (pstAiFunc && pstAiFunc->pfnAI_DrvSuspend))
    {
        if (HI_SUCCESS != pstAiFunc->pfnAI_DrvSuspend(HI_NULL, state))
        {
            HI_ERR_PM("AI suspend fail.\n");
        }
    }
#endif

 /*   s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_ADSP, (HI_VOID**)&pstAdspFunc);
    if ((HI_SUCCESS == s32Ret) && (pstAdspFunc && pstAdspFunc->pfnADSP_DrvSuspend))
    {
        if (HI_SUCCESS != pstAdspFunc->pfnADSP_DrvSuspend(HI_NULL, state))
        {
            HI_ERR_PM("ADSP suspend fail.\n");
        }
    }*/

   /* s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_CIPHER, (HI_VOID**)&pstCipherFunc);
    if ((HI_SUCCESS == s32Ret) && (pstCipherFunc && pstCipherFunc->pfnCipherSuspend))
    {
        pstCipherFunc->pfnCipherSuspend();
    }*/

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_VDEC, (HI_VOID**)&pstVdecFunc);
    if ((HI_SUCCESS == s32Ret) && (pstVdecFunc && pstVdecFunc->pfnVDEC_Suspend))
    {
        if (HI_SUCCESS != pstVdecFunc->pfnVDEC_Suspend(HI_NULL, state))
        {
            HI_ERR_PM("VDEC suspend fail.\n");
        }
    }

   /* s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_VPSS, (HI_VOID**)&pstVpssFunc);
    if ((HI_SUCCESS == s32Ret) && (pstVpssFunc && pstVpssFunc->pfnVpssSuspend))
    {
        if (HI_SUCCESS != pstVpssFunc->pfnVpssSuspend(HI_NULL, state))
        {
            HI_ERR_PM("VPSS suspend fail.\n");
        }
    }*/

   /* s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_OTP, (HI_VOID**)&pstOtpFunc);
    if ((HI_SUCCESS == s32Ret) && (pstOtpFunc && pstOtpFunc->pfnOTPSuspend))
    {
        if (HI_SUCCESS != pstOtpFunc->pfnOTPSuspend())
        {
            HI_ERR_PM("OTP suspend fail.\n");
        }
    }*/

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_I2C, (HI_VOID**)&pstI2cFunc);
    if ((HI_SUCCESS == s32Ret) && (pstI2cFunc && pstI2cFunc->pfnI2cSuspend))
    {
        if (HI_SUCCESS != pstI2cFunc->pfnI2cSuspend(HI_NULL, state))
        {
            HI_ERR_PM("I2C suspend fail.\n");
        }
    }

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_GPIO, (HI_VOID**)&pstGpioFunc);
    if ((HI_SUCCESS == s32Ret) && (pstGpioFunc && pstGpioFunc->pfnGpioSuspend))
    {
        if (HI_SUCCESS != pstGpioFunc->pfnGpioSuspend(HI_NULL, state))
        {
            HI_ERR_PM("GPIO suspend fail.\n");
        }
    }

    return HI_SUCCESS;
#endif	
}

HI_S32 PMQuitSmartStandby(HI_VOID)
{
#if 0
    HI_S32 s32Ret;

    AIAO_EXPORT_FUNC_S *pstAoFunc;
#ifdef HI_AUDIO_AI_SUPPORT
    AI_EXPORT_FUNC_S *pstAiFunc;
#endif
    HDMI_EXPORT_FUNC_S *pstHdmiFunc;
    DISP_EXPORT_FUNC_S *pstDispFunc;
    //WIN_EXPORT_FUNC_S *pstWinFunc;

    //SCI_EXT_FUNC_S *pstSciFunc;
    VENC_EXPORT_FUNC_S *pstVencFunc;
    PNG_EXPORT_FUNC_S *pstPngFunc;
    //JPGE_EXPORT_FUNC_S *pstJpgeFunc;
    //JPEG_EXPORT_FUNC_S *pstJpegFunc;

   // WDG_EXT_FUNC_S *pstWdgFunc;

    TUNER_EXPORT_FUNC_S *pstTunerFunc;
    ADSP_EXPORT_FUNC_S *pstAdspFunc;
    //CIPHER_EXPORT_FUNC_S *pstCipherFunc;

    VDEC_EXPORT_FUNC_S *pstVdecFunc;
   // OTP_EXPORT_FUNC_S *pstOtpFunc;
    //TDE_EXPORT_FUNC_S *pstTdeFunc;
    I2C_EXT_FUNC_S *pstI2cFunc;
    GPIO_EXT_FUNC_S *pstGpioFunc;
   // VPSS_EXPORT_FUNC_S *pstVpssFunc;


    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_GPIO, (HI_VOID**)&pstGpioFunc);
    if ((HI_SUCCESS == s32Ret) && (pstGpioFunc && pstGpioFunc->pfnGpioResume))
    {
        if (HI_SUCCESS != pstGpioFunc->pfnGpioResume(HI_NULL))
        {
            HI_ERR_PM("GPIO resume fail.\n");
        }
    }

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_I2C, (HI_VOID**)&pstI2cFunc);
    if ((HI_SUCCESS == s32Ret) && (pstI2cFunc && pstI2cFunc->pfnI2cResume))
    {
        if (HI_SUCCESS != pstI2cFunc->pfnI2cResume(HI_NULL))
        {
            HI_ERR_PM("I2C resume fail.\n");
        }
    }

   /* s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_OTP, (HI_VOID**)&pstOtpFunc);
    if ((HI_SUCCESS == s32Ret) && (pstOtpFunc && pstOtpFunc->pfnOTPResume))
    {
        if (HI_SUCCESS != pstOtpFunc->pfnOTPResume())
        {
            HI_ERR_PM("OTP resume fail.\n");
        }
    }*/

  /*  s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_VPSS, (HI_VOID**)&pstVpssFunc);
    if ((HI_SUCCESS == s32Ret) && (pstVpssFunc && pstVpssFunc->pfnVpssResume))
    {
        if (HI_SUCCESS != pstVpssFunc->pfnVpssResume(HI_NULL))
        {
            HI_ERR_PM("VPSS resume fail.\n");
        }
    }*/

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_VDEC, (HI_VOID**)&pstVdecFunc);
    if ((HI_SUCCESS == s32Ret) && (pstVdecFunc && pstVdecFunc->pfnVDEC_Resume))
    {
        if (HI_SUCCESS != pstVdecFunc->pfnVDEC_Resume(HI_NULL))
        {
            HI_ERR_PM("VDEC resume fail.\n");
        }
    }

   /* s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_CIPHER, (HI_VOID**)&pstCipherFunc);
    if ((HI_SUCCESS == s32Ret) && (pstCipherFunc && pstCipherFunc->pfnCipherResume))
    {
        if (HI_SUCCESS != pstCipherFunc->pfnCipherResume())
        {
            HI_ERR_PM("CIPHER resume fail.\n");
        }
    }*/

/*    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_ADSP, (HI_VOID**)&pstAdspFunc);
    if ((HI_SUCCESS == s32Ret) && (pstAdspFunc && pstAdspFunc->pfnADSP_DrvResume))
    {
        if (HI_SUCCESS != pstAdspFunc->pfnADSP_DrvResume(HI_NULL))
        {
            HI_ERR_PM("ADSP resume fail.\n");
        }
    }*/

#ifdef HI_AUDIO_AI_SUPPORT
    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_AI, (HI_VOID**)&pstAiFunc);
    if ((HI_SUCCESS == s32Ret) && (pstAiFunc && pstAiFunc->pfnAI_DrvResume))
    {
        if (HI_SUCCESS != pstAiFunc->pfnAI_DrvResume(HI_NULL))
        {
            HI_ERR_PM("\nAI resume fail.\n");
        }
    }
#endif
    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_AO, (HI_VOID**)&pstAoFunc);
    if ((HI_SUCCESS == s32Ret) && (pstAoFunc && pstAoFunc->pfnAO_DrvResume))
    {
        if (HI_SUCCESS != pstAoFunc->pfnAO_DrvResume(HI_NULL))
        {
            HI_ERR_PM("AO resume fail.\n");
        }
    }

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_DISP, (HI_VOID**)&pstDispFunc);
    if ((HI_SUCCESS == s32Ret) && (pstDispFunc && pstDispFunc->pfnDispResume))
    {
        if (HI_SUCCESS != pstDispFunc->pfnDispResume(HI_NULL))
        {
            HI_ERR_PM("DISP resume fail.\n");
        }
    }

   /* s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_VO, (HI_VOID**)&pstWinFunc);
    if ((HI_SUCCESS == s32Ret) && (pstWinFunc && pstWinFunc->pfnWinResume))
    {
        if (HI_SUCCESS != pstWinFunc->pfnWinResume(HI_NULL))
        {
            HI_ERR_PM("WIN resume fail.\n");
        }
    }*/

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_HDMI, (HI_VOID**)&pstHdmiFunc);
    if ((HI_SUCCESS == s32Ret) && (pstHdmiFunc && pstHdmiFunc->pfnHdmiResume))
    {
        if (HI_SUCCESS != pstHdmiFunc->pfnHdmiResume(HI_NULL))
        {
            HI_ERR_PM("HDMI resume fail.\n");
        }
    }

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_TUNER, (HI_VOID**)&pstTunerFunc);
    if ((HI_SUCCESS == s32Ret) && (pstTunerFunc && pstTunerFunc->pfnTunerResume))
    {
        if (HI_SUCCESS != pstTunerFunc->pfnTunerResume(HI_NULL))
        {
            HI_ERR_PM("TUNER suspend fail.\n");
        }
    }

   /* s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_WDG, (HI_VOID**)&pstWdgFunc);
    if ((HI_SUCCESS == s32Ret) && (pstWdgFunc && pstWdgFunc->pfnWdgResume))
    {
        if (HI_SUCCESS != pstWdgFunc->pfnWdgResume(HI_NULL))
        {
            HI_ERR_PM("WDG resume fail.\n");
        }
    }*/


#if !defined(CHIP_TYPE_hi3719mv100) && !defined(CHIP_TYPE_hi3718mv100)
    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_JPGENC, (HI_VOID**)&pstJpgeFunc);
    if ((HI_SUCCESS == s32Ret) && (pstJpgeFunc && pstJpgeFunc->pfnJpgeResume))
    {
        if (HI_SUCCESS != pstJpgeFunc->pfnJpgeResume(HI_NULL))
        {
            HI_ERR_PM("JPGE resume fail.\n");
        }
    }
#endif

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_PNG, (HI_VOID**)&pstPngFunc);
    if ((HI_SUCCESS == s32Ret) && (pstPngFunc && pstPngFunc->pfnPngResume))
    {
        if (HI_SUCCESS != pstPngFunc->pfnPngResume(HI_NULL))
        {
            HI_ERR_PM("PNG resume fail.\n");
        }
    }

    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_VENC, (HI_VOID**)&pstVencFunc);
    if ((HI_SUCCESS == s32Ret) && (pstVencFunc && pstVencFunc->pfnVencResume))
    {
        if (HI_SUCCESS != pstVencFunc->pfnVencResume())
        {
            HI_ERR_PM("VENC resume fail.\n");
        }
    }

   /* s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_SCI, (HI_VOID**)&pstSciFunc);
    if ((HI_SUCCESS == s32Ret) && (pstSciFunc && pstSciFunc->pfnSciResume))
    {
        if (HI_SUCCESS != pstSciFunc->pfnSciResume(HI_NULL))
        {
            HI_ERR_PM("SCI resume fail.\n");
        }
    }*/
	
    return HI_SUCCESS;
#endif   
}

