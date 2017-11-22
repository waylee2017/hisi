/******************************************************************************

  Copyright (C), 2011-2014, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_cipher_intf.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
//#include <linux/proc_fs.h>
//#include <linux/config.h>
//#include <linux/module.h>
//#include <linux/signal.h>
//#include <linux/spinlock.h>
//#include <linux/personality.h>
//#include <linux/ptrace.h>
//#include <linux/kallsyms.h>
//#include <linux/init.h>
//#include <linux/seq_file.h>
//#include <linux/himedia.h>

//#include <asm/atomic.h>
//#include <asm/cacheflush.h>
//#include <asm/io.h>
//#include <asm/system.h>
#include <asm/uaccess.h>
//#include <asm/unistd.h>
//#include <asm/traps.h>

//#include <linux/miscdevice.h>

#include "hi_type.h"
#include "hi_debug.h"
#include "hi_common.h"
#include "hi_kernel_adapt.h"
#include "drv_dev_ext.h"
#include "hi_drv_mem.h"
#include "hal_cipher.h"
#include "drv_cipher.h"
#include "drv_cipher_ioctl.h"
#include "drv_cipher_ext.h"
#include "drv_advca_ext.h"
#include "hi_drv_mmz.h"
#include "hi_drv_module.h"
#include "hi_drv_proc.h"
#include "drv_hash.h"


#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* End of #ifdef __cplusplus */

static UMAP_DEVICE_S    g_CipherDevice;

#define CIPHER_NAME "HI_CIPHER"
extern HI_VOID HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipID);
extern HI_VOID DRV_CIPHER_UserCommCallBack(HI_U32 arg);

CIPHER_EXPORT_FUNC_S s_CipherExportFuncs =
{
#ifdef CFG_HI_CIPHER_MULTICIPHER_SUPPORT
    .pfnCipherCreateHandle    = HI_DRV_CIPHER_CreateHandle,
    .pfnCipherConfigChn       = HI_DRV_CIPHER_ConfigChn,
    .pfnCipherDestroyHandle   = HI_DRV_CIPHER_DestroyHandle,  
    .pfnCipherEncrypt         = HI_DRV_CIPHER_Encrypt,
    .pfnCipherDecrypt         = HI_DRV_CIPHER_Decrypt,
#ifdef CFG_HI_CIPHER_MULTI_PACKGET
    .pfnCipherEncryptMulti    = HI_DRV_CIPHER_EncryptMulti,
    .pfnCipherDecryptMulti    = HI_DRV_CIPHER_DecryptMulti,
#endif
    .pfnCipherGetHandleConfig = HI_DRV_CIPHER_GetHandleConfig,
    .pfnCipherResume          = HI_DRV_CIPHER_Resume,
    .pfnCipherSuspend         = HI_DRV_CIPHER_Suspend,
    .pfnCipherSoftReset       = HI_DRV_CIPHER_SoftReset,
#endif
#ifdef CFG_HI_CIPHER_RNG_SUPPORT    
    .pfnCipherGetRandomNumber = HI_DRV_CIPHER_GetRandomNumber,
#endif
#ifdef CFG_HI_CIPHER_HDCP_SUPPORT
    .pfnCipherLoadHdcpKey     = HI_DRV_CIPHER_LoadHdcpKey,
#endif
#ifdef CFG_HI_CIPHER_HASH_SUPPORT    
    .pfnCipherCalcHashInit    = HI_DRV_CIPHER_CalcHashInit,
    .pfnCipherCalcHashUpdate  = HI_DRV_CIPHER_CalcHashUpdate,
    .pfnCipherCalcHashFinal   = HI_DRV_CIPHER_CalcHashFinal,
#endif
};

HI_VOID HAL_CIPHER_ReadReg(HI_U32 addr, HI_U32 *pu32Val)
{
    HI_REG_READ32(addr, *pu32Val);
    return;
}

HI_VOID HAL_CIPHER_WriteReg(HI_U32 addr, HI_U32 u32Val)
{
    HI_REG_WRITE32(addr, u32Val);
    return;
}
HI_S32 CIPHER_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, HI_VOID *argp)
{
    HI_S32 ret = HI_SUCCESS;

    switch(cmd)
    {
#ifdef CFG_HI_CIPHER_MULTICIPHER_SUPPORT
	    case CMD_CIPHER_CREATEHANDLE:
		{
	        CIPHER_HANDLE_S *pstCIHandle = (CIPHER_HANDLE_S *)argp;
			ret = HI_DRV_CIPHER_CreateHandle(pstCIHandle);
	        break;
	    }
	
	    case CMD_CIPHER_DESTROYHANDLE:
	    {
	        HI_HANDLE hCipherChn = *(HI_HANDLE *)argp;
			ret = HI_DRV_CIPHER_DestroyHandle(hCipherChn);
	        break;
	    }
	    case CMD_CIPHER_CONFIGHANDLE:
	    {
	        CIPHER_Config_CTRL stCIConfig = *(CIPHER_Config_CTRL *)argp;

	        HI_U32 softChnId = HI_HANDLE_GET_CHNID(stCIConfig.CIHandle);  
	        ret = HI_DRV_CIPHER_ConfigChn(softChnId, &stCIConfig.CIpstCtrl);
	        break;
	    }
	    case CMD_CIPHER_ENCRYPT:
	    {
	        CIPHER_DATA_S *pstCIData = (CIPHER_DATA_S *)argp;
			ret = HI_DRV_CIPHER_Encrypt(pstCIData);
			break;
	    }
	    case CMD_CIPHER_DECRYPT:
	    {
	        CIPHER_DATA_S *pstCIData = (CIPHER_DATA_S *)argp;
			ret = HI_DRV_CIPHER_Decrypt(pstCIData);
			break;
	    }
#ifdef CFG_HI_CIPHER_MULTI_PACKGET
	    case CMD_CIPHER_ENCRYPTMULTI:
	    {
	        CIPHER_DATA_S *pstCIData = (CIPHER_DATA_S *)argp;
			ret = HI_DRV_CIPHER_EncryptMulti(pstCIData);
			break;
	    }
	    case CMD_CIPHER_DECRYPTMULTI:
	    {
	        CIPHER_DATA_S *pstCIData = (CIPHER_DATA_S *)argp;
			ret = HI_DRV_CIPHER_DecryptMulti(pstCIData);
	        break;
	    }
#endif
	    case CMD_CIPHER_GETHANDLECONFIG:
	    {
	        CIPHER_Config_CTRL *pstCIData = (CIPHER_Config_CTRL *)argp;
	        ret = HI_DRV_CIPHER_GetHandleConfig(pstCIData);
	        break;
	    }
#endif
#ifdef CFG_HI_CIPHER_RNG_SUPPORT
	    case CMD_CIPHER_GETRANDOMNUMBER:
	    {
	        CIPHER_RNG_S *pstRNG  = (CIPHER_RNG_S *)argp;
			ret = HI_DRV_CIPHER_GetRandomNumber(pstRNG);
	        break;
	    }
#endif
#ifdef CFG_HI_CIPHER_HASH_SUPPORT
	    case CMD_CIPHER_CALCHASHINIT:
	    {
	        CIPHER_HASH_DATA_S *pstCipherHashData = (CIPHER_HASH_DATA_S*)argp;

            pstCipherHashData->enHMACKeyFrom = HI_CIPHER_HMAC_KEY_FROM_CPU;
	        ret = HI_DRV_CIPHER_CalcHashInit(pstCipherHashData);
	        break;
	    }
	    case CMD_CIPHER_CALCHASHUPDATE:
	    {
	        CIPHER_HASH_DATA_S *pstCipherHashData = (CIPHER_HASH_DATA_S*)argp;
	        ret = HI_DRV_CIPHER_CalcHashUpdate(pstCipherHashData);
	        break;
	    }
	    case CMD_CIPHER_CALCHASHFINAL:
	    {
	        CIPHER_HASH_DATA_S *pstCipherHashData = (CIPHER_HASH_DATA_S*)argp;
	        ret = HI_DRV_CIPHER_CalcHashFinal(pstCipherHashData);
	        break;
	    }
        case CMD_CIPHER_CBCMAC_AUTH:
        {
            CIPHER_CBCMAC_DATA_S *pstParam = (CIPHER_CBCMAC_DATA_S *)argp;
            ret = HI_DRV_CIPHER_CbcMacAuth(pstParam);
            break;
        }
#endif
#ifdef CFG_HI_CIPHER_HDCP_SUPPORT
		case CMD_CIPHER_ENCRYPTHDCPKEY:
		{
            CIPHER_HDCP_KEY_TRANSFER_S *pstParam = (CIPHER_HDCP_KEY_TRANSFER_S *)argp;            
            ret = HI_DRV_CIPHER_EncryptHDCPKey(pstParam);
			break;
		}
	    case CMD_CIPHER_LOADHDCPKEY:
	    {
	        HI_DRV_CIPHER_FLASH_ENCRYPT_HDCPKEY_S *pstParam = (HI_DRV_CIPHER_FLASH_ENCRYPT_HDCPKEY_S *)argp;
	        ret = HI_DRV_CIPHER_LoadHdcpKey(pstParam);
	        break;
	    }
#endif
        case CMD_CIPHER_CALCRSA:
        {
	        CIPHER_RSA_DATA_S *pCipherRsaData = (CIPHER_RSA_DATA_S*)argp;
	        ret = HI_DRV_CIPHER_CalcRsa(pCipherRsaData);
	        break;
	    } 
	    default:
	    {
            HI_ERR_CIPHER("Unsupport cmd, MOD_ID=0x%02X, NR=0x%02x, SIZE=0x%02x!\n", _IOC_TYPE (cmd), _IOC_NR (cmd), _IOC_SIZE(cmd));
	        ret = HI_FAILURE;
	        break;
	    }
    }

    return ret;
}

static long DRV_CIPHER_Ioctl(struct file *ffile, unsigned int cmd, unsigned long arg)
{
    long ret;

    ret = (long)HI_DRV_UserCopy(ffile->f_path.dentry->d_inode, ffile, cmd, arg, CIPHER_Ioctl);

    return ret;
}

/** <* ref from linux/fs.h @by g00182102 */
static struct file_operations DRV_CIPHER_Fops=
{
    .owner            = THIS_MODULE,
#if defined(CFG_HI_CIPHER_MULTICIPHER_SUPPORT)
    .open             = DRV_CIPHER_Open,
#endif
    .unlocked_ioctl   = DRV_CIPHER_Ioctl,
#if defined(CFG_HI_CIPHER_MULTICIPHER_SUPPORT)
    .release          = DRV_CIPHER_Release,
#endif
};

static HI_S32  cipher_pm_suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
#if defined(CFG_HI_CIPHER_MULTICIPHER_SUPPORT)
    HI_DRV_CIPHER_Suspend();
#endif
    HI_PRINT("CIPHER suspend OK\n");
    return 0;
}

static HI_S32 cipher_pm_resume(PM_BASEDEV_S *pdev)
{
#ifdef CFG_HI_CIPHER_MULTICIPHER_SUPPORT
    HI_S32 ret = HI_SUCCESS;

    ret = HI_DRV_CIPHER_Resume();
    if(ret != HI_SUCCESS)
    {
        HI_FATAL_CIPHER("CIPHER resume failed!\n");
        return HI_FAILURE;
    }
#endif

    HI_PRINT("CIPHER resume OK\n");
    return HI_SUCCESS;
}

static PM_BASEOPS_S cipher_drvops = {
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = cipher_pm_suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = cipher_pm_resume,
};

HI_S32 CIPHER_DRV_ModInit(HI_VOID)
{
    HI_S32 ret = HI_SUCCESS;

    snprintf(g_CipherDevice.devfs_name, sizeof(UMAP_DEVNAME_CIPHER), UMAP_DEVNAME_CIPHER);
    g_CipherDevice.fops = &DRV_CIPHER_Fops;
    g_CipherDevice.minor = UMAP_MIN_MINOR_CIPHER;
    g_CipherDevice.owner  = THIS_MODULE;
    g_CipherDevice.drvops = &cipher_drvops;

    if (HI_DRV_DEV_Register(&g_CipherDevice) < 0)
    {
        HI_FATAL_CIPHER("register CIPHER failed.\n");
        return HI_FAILURE;
    }

    ret = HI_DRV_MODULE_Register(HI_ID_CIPHER, CIPHER_NAME, (HI_VOID*)&s_CipherExportFuncs);
    if (HI_SUCCESS != ret)
    {
        HI_FATAL_CIPHER("HI_DRV_MODULE_Register failed\n");
        return ret;
    }
    
#ifdef CFG_HI_CIPHER_MULTICIPHER_SUPPORT 
    ret = DRV_CIPHER_Init();
    if (HI_SUCCESS != ret)
    {
        return ret;
    }
#endif

#ifdef CFG_HI_CIPHER_HASH_SUPPORT 
    (HI_VOID)HAL_Cipher_HashSoftReset();
#endif
#ifdef MODULE
    HI_PRINT("Load hi_cipher.ko success.\t(%s)\n", VERSION_STRING);
#endif

    return HI_SUCCESS;
}

HI_VOID CIPHER_DRV_ModExit(HI_VOID)
{
    HI_DRV_DEV_UnRegister(&g_CipherDevice);
    
#ifdef CFG_HI_CIPHER_MULTICIPHER_SUPPORT
    (HI_VOID)DRV_CIPHER_DeInit();
#endif

    HI_DRV_MODULE_UnRegister(HI_ID_CIPHER);

    return ;
}

#ifdef MODULE
module_init(CIPHER_DRV_ModInit);
module_exit(CIPHER_DRV_ModExit);
#endif

MODULE_AUTHOR("Hi3720 MPP GRP");
MODULE_LICENSE("GPL");

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

