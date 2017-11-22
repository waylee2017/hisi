#include <linux/module.h>
#include <linux/init.h>
#include <linux/interrupt.h>
#include <linux/semaphore.h>

#include "hi_type.h"
#include "hi_unf_sound.h"

#include "drv_vdec_ext.h"
#include "drv_pmoc_ext.h"
#include "drv_gpio_ext.h"
#include "drv_gpioi2c_ext.h"
#include "drv_i2c_ext.h"
#include "drv_sci_ext.h"
#include "drv_otp_ext.h"
#include "drv_desc_ext.h"
#include "drv_demux_ext.h"
#include "drv_pvr_ext.h"
#include "drv_sync_ext.h"
#include "drv_ao_ext.h"
#include "drv_adec_ext.h"
#include "drv_wdg_ext.h"
#include "drv_keyled_ext.h"
#include "drv_ir_ext.h"
#include "drv_jpeg_ext.h"
#include "drv_hifb_ext.h"
#include "drv_tde_ext.h"
#include "drv_tuner_ext.h"
#include "drv_png_ext.h"
#include "drv_avplay_ext.h"
#include "drv_disp_ext.h"
#include "drv_hdmi_ext.h"
#include "drv_cipher_ext.h"
#include "drv_vfmw_ext.h"
#include "drv_mce_ext.h"
#include "drv_pdm_ext.h"
#include "drv_adsp_ext.h"
#include "drv_advca_ext.h"
HI_S32 HI_DRV_LoadModules(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;

#ifndef MODULE

    PMOC_DRV_ModInit();

    GPIO_DRV_ModInit();
#ifdef HI_GPIOI2C_SUPPORT
    GPIOI2C_DRV_ModInit();
#endif 
    I2C_DRV_ModInit();

    TDE_DRV_ModInit();
    
#ifdef HI_DSC_SUPPORT
    DSC_DRV_ModInit();
#endif
    
    DMX_DRV_ModInit();

#ifndef HI_LOADER_APPLOADER
    AVPLAY_DRV_ModInit();
#endif

#ifndef HI_LOADER_APPLOADER
    AIAO_DRV_ModInit();
#endif

	VPS_DRV_ModInit();

#ifndef CHIP_TYPE_hi3110ev500
    HDMI_DRV_ModInit();
#endif

#ifndef HI_LOADER_APPLOADER
#ifdef HI_PVR_SUPPORT
    PVR_DRV_ModInit();
#endif
    SYNC_DRV_ModInit();
#endif

#ifndef HI_LOADER_APPLOADER
    ADSP_DRV_ModInit();
#endif

#ifndef HI_LOADER_APPLOADER
    VDEC_DRV_ModInit();
#endif

#ifndef HI_LOADER_APPLOADER
#ifndef HI_MCE_SUPPORT    
    VFMW_DRV_ModInit();
#endif
#endif

#ifdef HI_VDEC_SVDEC_SUPPORT
    SVDEC_ModeInit();
#endif
  
#ifndef HI_LOADER_APPLOADER
    ADEC_DRV_ModInit();
#endif

    TUNER_DRV_ModInit();

    HIFB_DRV_ModInit();

#ifdef HI_IR_S2_SUPPORT
    IR_DRV_ModInit();
#endif

#ifdef HI_IR_STD_SUPPORT
    IR_DRV_ModInit();
#endif

#ifdef HI_SCI_SUPPORT
    SCI_DRV_ModInit();
#endif

#ifdef HI_KEYLED_SUPPORT
    KEYLED_DRV_ModInit();
#endif

    WDG_DRV_ModInit();

    JPEG_DRV_ModInit();

#ifdef HI_PNG_DECODER_SUPPORT
#ifndef CHIP_TYPE_hi3716mv330
    PNG_DRV_ModInit();
#endif
#endif

#ifndef HI_LOADER_APPLOADER
    MCE_DRV_ModInit();
#endif

    PDM_DRV_ModInit();

    CIPHER_DRV_ModInit();

    OTP_DRV_ModInit();

    ADVCA_DRV_ModeInit();

#endif

    return s32Ret;
}

#ifndef MODULE
late_initcall(HI_DRV_LoadModules);
#endif
