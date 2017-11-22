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

#include "drv_cipher_hdcp.h"
//#include <linux/wait.h>
//#include <linux/semaphore.h>
//#include <linux/spinlock.h>
//#include <linux/version.h>
//#include <linux/interrupt.h>
//#include <linux/time.h>
//#include <linux/random.h>
//#include <linux/signal.h>
//#include <linux/seq_file.h>

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

extern struct semaphore g_CipherMutexKernel;

//extern CIPHER_COMM_S g_stCipherComm;
//extern CIPHER_CHAN_S g_stCipherChans[CIPHER_CHAN_NUM];
//extern CIPHER_SOFTCHAN_S g_stCipherSoftChans[CIPHER_SOFT_CHAN_NUM];
extern CIPHER_OSR_CHN_S g_stCipherOsrChn[CIPHER_SOFT_CHAN_NUM];

#define PERI_HDMI_RX_TX_OTP_SEL_REG_ADDR (IO_ADDRESS(0XF8A208B0))

HI_DRV_CIPHER_FLASH_ENCRYPT_HDCPKEY_S g_stFlashHdcpKey;
HI_BOOL g_bHDCPKeyLoadFlag = HI_FALSE;

#define P32 0xEDB88320L
static HI_S32 crc_tab32_init = 0;
static HI_U32 crc_tab32[256];

static HI_VOID init_crc32_tab( HI_VOID )
{
    HI_U32 i,j;
    HI_U32 u32Crc;

    for (i=0; i<256; i++) {
        u32Crc = (HI_U32) i;
        for (j=0; j<8; j++) {
            if (u32Crc & 0x00000001L) {
                u32Crc = (u32Crc >> 1) ^ P32;
            } else {
                u32Crc = u32Crc >> 1;
            }
        }
        crc_tab32[i] = u32Crc;
    }
    crc_tab32_init = 1;
}

static HI_U32 update_crc_32(HI_U32 u32Crc, HI_CHAR s8C)
{
    HI_U32 u32Tmp, u32Long_c;

    u32Long_c = 0x000000ffL & (HI_U32) s8C;
    u32Tmp = u32Crc ^ u32Long_c;
    u32Crc = (u32Crc >> 8) ^ crc_tab32[u32Tmp & 0xff];
    return u32Crc;
}

static HI_S32 Cipher_CRC32( HI_U8* pu8Buff,HI_U32 length, HI_U32 *pu32Crc32Result)
{
    HI_U32 u32Crc32;
    HI_U32 i;
    u32Crc32 = 0xffffffffL;

    if ( (NULL == pu32Crc32Result) || (NULL == pu8Buff) )
    {
        return HI_FAILURE;
    }

    if (!crc_tab32_init) {
        init_crc32_tab();
    }
    for(i=0 ; i < length ; i++) {
        u32Crc32 = update_crc_32(u32Crc32,(char)pu8Buff[i]);
    }
    u32Crc32 ^= 0xffffffffL;

    *pu32Crc32Result = u32Crc32;

    return HI_SUCCESS;
}

HI_VOID HAL_Cipher_SetHDMITxRxOtpSelReg(HI_VOID)
{
    HI_U32 u32Addr = 0;
    HI_U32 u32Value = 0;

    u32Addr = PERI_HDMI_RX_TX_OTP_SEL_REG_ADDR;
    (HI_VOID)HAL_CIPHER_ReadReg(u32Addr,&u32Value);

    u32Value &= 0xFFFFFFFE;
    (HI_VOID)HAL_CIPHER_WriteReg(u32Addr, u32Value);

    return;
}

HI_VOID HAL_Cipher_SetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E enMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U stHDCPModeCtrl;

    memset((HI_VOID *)&stHDCPModeCtrl, 0, sizeof(stHDCPModeCtrl.u32));

    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &stHDCPModeCtrl.u32);
    
    if ( CIPHER_HDCP_MODE_NO_HDCP_KEY == enMode)
    {
        stHDCPModeCtrl.bits.hdcp_mode_en = 0;
    }
    else
    {
        stHDCPModeCtrl.bits.hdcp_mode_en = 1;
    }

    (HI_VOID)HAL_CIPHER_WriteReg(u32RegAddr, stHDCPModeCtrl.u32);
    
    return;
}

HI_S32 HAL_Cipher_GetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E *penMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U stHDCPModeCtrl;

    if ( NULL == penMode )
    {
        HI_ERR_CIPHER("Invald param, null pointer!\n");
        return HI_FAILURE;
    }

    memset((HI_VOID *)&stHDCPModeCtrl, 0, sizeof(CIPHER_HDCP_MODE_CTRL_U));

    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &stHDCPModeCtrl.u32);
    
    if ( 0 == stHDCPModeCtrl.bits.hdcp_mode_en)
    {
        *penMode = CIPHER_HDCP_MODE_NO_HDCP_KEY;
    }
    else
    {
        *penMode = CIPHER_HDCP_MODE_HDCP_KEY;
    }

    return HI_SUCCESS;
}

HI_VOID HAL_Cipher_SetHdcpKeyTxRead(HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E enMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U unHDCPModeCtrl;

    memset((HI_VOID *)&unHDCPModeCtrl, 0, sizeof(CIPHER_HDCP_MODE_CTRL_U));

    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &unHDCPModeCtrl.u32);

    if ( CIPHER_HDCP_KEY_RAM_MODE_READ == enMode)
    {
        unHDCPModeCtrl.bits.tx_read = 0x1;      //hdmi read mode
    }
    else
    {
        unHDCPModeCtrl.bits.tx_read = 0x0;      //cpu write mode
    }    

    (HI_VOID)HAL_CIPHER_WriteReg(u32RegAddr, unHDCPModeCtrl.u32);
    
    return;
}

HI_S32 HAL_Cipher_GetHdcpKeyRamMode(HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E *penMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U unHDCPModeCtrl;

    if ( NULL == penMode )
    {
        return HI_FAILURE;
    }

    memset((HI_VOID *)&unHDCPModeCtrl, 0, sizeof(CIPHER_HDCP_MODE_CTRL_U));
    
    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &unHDCPModeCtrl.u32);
    
    if ( 0 == unHDCPModeCtrl.bits.tx_read )
    {
        *penMode = CIPHER_HDCP_KEY_RAM_MODE_WRITE;      //cpu write mode
    }
    else
    {
        *penMode = CIPHER_HDCP_KEY_RAM_MODE_READ;       //hdmi read mode
    }    
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_SetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enHdcpKeySelectMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U unHDCPModeCtrl;

    memset((HI_VOID *)&unHDCPModeCtrl, 0, sizeof(CIPHER_HDCP_MODE_CTRL_U));

    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &unHDCPModeCtrl.u32);       
    
    if ( CIPHER_HDCP_KEY_TYPE_OTP_ROOT_KEY == enHdcpKeySelectMode )
    {
        unHDCPModeCtrl.bits.hdcp_rootkey_sel = 0x00;
    }
    else if ( CIPHER_HDCP_KEY_TYPE_HISI_DEFINED == enHdcpKeySelectMode )
    {
        unHDCPModeCtrl.bits.hdcp_rootkey_sel = 0x01;
    }
    else if ( CIPHER_HDCP_KEY_TYPE_HOST_ROOT_KEY == enHdcpKeySelectMode)
    {
        unHDCPModeCtrl.bits.hdcp_rootkey_sel = 0x2;
    }
    else
    {
        unHDCPModeCtrl.bits.hdcp_rootkey_sel = 0x3;
        (HI_VOID)HAL_CIPHER_WriteReg(u32RegAddr, unHDCPModeCtrl.u32);

        HI_ERR_CIPHER("Unexpected hdcp key type selected!\n");
        return HI_FAILURE;
    }
    
    (HI_VOID)HAL_CIPHER_WriteReg(u32RegAddr, unHDCPModeCtrl.u32);
    
    return HI_SUCCESS;
}

HI_S32 HAL_Cipher_GetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E *penHdcpKeySelectMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U unHDCPModeCtrl;
    
    if ( NULL == penHdcpKeySelectMode )
    {
        HI_ERR_CIPHER("Invalid param, NULL pointer!\n");
        return HI_FAILURE;
    }

    memset((HI_VOID *)&unHDCPModeCtrl, 0, sizeof(CIPHER_HDCP_MODE_CTRL_U));
    
    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &unHDCPModeCtrl.u32);

    if ( 0x00 == unHDCPModeCtrl.bits.hdcp_rootkey_sel )
    {
        *penHdcpKeySelectMode = CIPHER_HDCP_KEY_TYPE_OTP_ROOT_KEY;
    }
    else if ( 0x01 == unHDCPModeCtrl.bits.hdcp_rootkey_sel)
    {
        *penHdcpKeySelectMode = CIPHER_HDCP_KEY_TYPE_HISI_DEFINED;
    }
    else if (  0x02 == unHDCPModeCtrl.bits.hdcp_rootkey_sel )
    {
        *penHdcpKeySelectMode = CIPHER_HDCP_KEY_TYPE_HOST_ROOT_KEY;
    }
    else
    {
        *penHdcpKeySelectMode = CIPHER_HDCP_KEY_TYPE_BUTT;
    }
    
    return HI_SUCCESS;
}

HI_VOID HAL_CIPHER_SetRxRead(HI_DRV_CIPHER_HDCP_KEY_RX_READ_E enRxReadMode)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U unHDCPModeCtrl;

    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &unHDCPModeCtrl.u32);
    unHDCPModeCtrl.bits.rx_read = enRxReadMode;
    (HI_VOID)HAL_CIPHER_WriteReg(u32RegAddr, unHDCPModeCtrl.u32);

    return;
}

HI_S32 HAL_Cipher_SetRxSelect(HI_DRV_CIPHER_HDCP_KEY_RX_SELECT_E enRxSelect)
{
    HI_U32 u32RegAddr = 0;
    CIPHER_HDCP_MODE_CTRL_U unHDCPModeCtrl;

    memset((HI_VOID *)&unHDCPModeCtrl, 0, sizeof(CIPHER_HDCP_MODE_CTRL_U));

    u32RegAddr = CIPHER_REG_HDCP_MODE_CTRL;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &unHDCPModeCtrl.u32);

    if ( CIPHER_HDCP_KEY_SELECT_RX == enRxSelect)
    {
        unHDCPModeCtrl.bits.rx_sel = 0x1;      //select rx ram
    }
    else
    {
        unHDCPModeCtrl.bits.rx_sel = 0x0;      //select tx ram
    }

    (HI_VOID)HAL_CIPHER_WriteReg(u32RegAddr, unHDCPModeCtrl.u32);

#if 1
    /* check set correctly or not */
    unHDCPModeCtrl.u32 = 0;
    (HI_VOID)HAL_CIPHER_ReadReg(u32RegAddr, &unHDCPModeCtrl.u32);
    if ( CIPHER_HDCP_KEY_SELECT_RX == enRxSelect)
    {
        if(unHDCPModeCtrl.bits.rx_sel != 0x1)
        {
            HI_ERR_CIPHER("Set rx select error!\n");
            return HI_FAILURE;
        }
    }
    else
    {
        if(unHDCPModeCtrl.bits.rx_sel != 0x0)
        {
            HI_ERR_CIPHER("Set tx select error!\n");
            return HI_FAILURE;
        }
    }
#endif
    
    return HI_SUCCESS;
}

HI_VOID HAL_Cipher_ClearHdcpCtrlReg(HI_VOID)
{
    (HI_VOID)HAL_CIPHER_WriteReg(CIPHER_REG_HDCP_MODE_CTRL, 0);
    return;
}




HI_VOID DRV_CIPHER_SetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E enMode)
{
    HAL_Cipher_SetHdcpModeEn(enMode);
    return;
}

HI_S32 DRV_CIPHER_GetHdcpModeEn(HI_DRV_CIPHER_HDCP_KEY_MODE_E *penMode)
{
    return HAL_Cipher_GetHdcpModeEn(penMode);
}

HI_VOID DRV_CIPHER_SetHdcpKeyTxRead(HI_DRV_CIPHER_HDCP_KEY_RAM_MODE_E enMode)
{
    HAL_Cipher_SetHdcpKeyTxRead(enMode);
    return;
}
HI_VOID DRV_CIPHER_SetHdcpkeyRxRead(HI_DRV_CIPHER_HDCP_KEY_RX_READ_E enRxReadMode)
{
    HAL_CIPHER_SetRxRead(enRxReadMode);
}
HI_S32 DRV_CIPHER_SetHdcpkeyRxSelect(HI_DRV_CIPHER_HDCP_KEY_RX_SELECT_E enRxSelect)
{
    return HAL_Cipher_SetRxSelect(enRxSelect);
}

HI_S32 DRV_CIPHER_SetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enHdcpKeySelectMode)
{
    return HAL_Cipher_SetHdcpKeySelectMode(enHdcpKeySelectMode);
}

HI_S32 DRV_CIPHER_GetHdcpKeySelectMode(HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E *penHdcpKeySelectMode)
{
    return HAL_Cipher_GetHdcpKeySelectMode(penHdcpKeySelectMode);
}

HI_S32 DRV_CIPHER_HdcpParamConfig(HI_DRV_CIPHER_HDCP_KEY_MODE_E enHdcpEnMode,
                                  HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enRootKeyType,
                                  HI_DRV_HDCPKEY_TYPE_E enHDCPKeyType)
{
    HI_S32 ret = HI_SUCCESS;
    
    (HI_VOID)DRV_CIPHER_SetHdcpModeEn(enHdcpEnMode);
    
    if (HI_DRV_HDCPKEY_RX0 == enHDCPKeyType  || HI_DRV_HDCPKEY_RX1 == enHDCPKeyType)
    {
        (HI_VOID)DRV_CIPHER_SetHdcpkeyRxRead(CIPHER_HDCP_KEY_WR_RX_RAM);

        ret = DRV_CIPHER_SetHdcpkeyRxSelect(CIPHER_HDCP_KEY_SELECT_RX);
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("DRV_CIPHER_SetHdcpkeyRxSelect error.\n");
            return HI_FAILURE;
        }
    }
    else
    {
#if defined(CHIP_TYPE_hi3796cv100_a) || defined(CHIP_TYPE_hi3796cv100) || defined(CHIP_TYPE_hi3798cv100_a) || defined(CHIP_TYPE_hi3798cv100)
        (HI_VOID)HAL_Cipher_SetHDMITxRxOtpSelReg();
#endif
        DRV_CIPHER_SetHdcpKeyTxRead(CIPHER_HDCP_KEY_RAM_MODE_WRITE);
        ret = DRV_CIPHER_SetHdcpkeyRxSelect(CIPHER_HDCP_KEY_SELECT_TX);
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("DRV_CIPHER_SetHdcpkeyRxSelect error.\n");
            return HI_FAILURE;
        }
    }

    return DRV_CIPHER_SetHdcpKeySelectMode(enRootKeyType);
}

HI_S32 DRV_CIPHER_ClearHdcpConfig(HI_VOID)
{
    HAL_Cipher_ClearHdcpCtrlReg();
    return HI_SUCCESS;
}

static HI_S32 s_DRV_CIPHER_CreateHandleForHDCPKeyInternal(HI_HANDLE *phHandle)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 i = 0;
    HI_U32 softChnId = 0;

    if( NULL == phHandle)
    {
        HI_ERR_CIPHER("Invalid params, NULL pointer!\n");
        return HI_FAILURE;
    }

    if (0 == g_stCipherOsrChn[0].g_bSoftChnOpen)
    {
        i = 0;
    }
    else
    {
        i = CIPHER_INVALID_CHN;
    }

    if (i >= CIPHER_SOFT_CHAN_NUM)
    {
        ret = HI_ERR_CIPHER_FAILED_GETHANDLE;
        HI_ERR_CIPHER("No more cipher chan left.\n");
        return HI_FAILURE;
    }
    else
    {
        g_stCipherOsrChn[i].pstDataPkg = HI_VMALLOC(HI_ID_CIPHER, sizeof(HI_UNF_CIPHER_DATA_S) * CIPHER_MAX_LIST_NUM);
        if (NULL == g_stCipherOsrChn[i].pstDataPkg)
        {
            ret = HI_ERR_CIPHER_FAILED_GETHANDLE;
            HI_ERR_CIPHER("can NOT malloc memory for cipher.\n");
            return HI_FAILURE;
        }

        softChnId = i;
        g_stCipherOsrChn[softChnId].g_bSoftChnOpen = HI_TRUE;
    }

    ret = DRV_CIPHER_OpenChn(softChnId);
    if (HI_SUCCESS != ret)
    {
        HI_VFREE(HI_ID_CIPHER, g_stCipherOsrChn[i].pstDataPkg);
        g_stCipherOsrChn[i].pstDataPkg = NULL;
        return HI_FAILURE;
    }

    *phHandle = HI_HANDLE_MAKEHANDLE(HI_ID_CIPHER, 0, softChnId);

    return HI_SUCCESS;
}



static HI_S32 s_DRV_Cipher_CryptoHdcpKey(HI_U8 *pu8Input,
                                    HI_U32 u32InputLen,
                                    HI_DRV_CIPHER_HDCP_KEY_MODE_E enHdcpEnMode,
                                    HI_DRV_HDCPKEY_TYPE_E enHdcpKeyType,
                                    HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enRootKeyType,
                                    HI_BOOL bIsDecryption,
                                    HI_U8 *pu8Output)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 softChnId = 0;
    HI_U32 u32KeyBlock = 0;
    HI_HANDLE hCipherHandle = 0xFFFFFFFF;
    HI_UNF_CIPHER_CTRL_S CipherCtrl;
    HI_DRV_CIPHER_TASK_S stCITask;
    HI_U32 i = 0;

    HI_DECLARE_MUTEX(CipherMutexKernel);

    if ((NULL == pu8Input) || (CIPHER_HDCP_MODE_HDCP_KEY != enHdcpEnMode))
    {
        HI_ERR_CIPHER("Invalid param!\n");
        return HI_FAILURE;
    }

    if ((NULL == pu8Output ) && (HI_FALSE == bIsDecryption))
    {
        HI_ERR_CIPHER("Invalid param , null pointer!\n");
        return HI_FAILURE;
    }

    (HI_VOID)DRV_CIPHER_SetHdcpModeEn(enHdcpEnMode);

    ret = s_DRV_CIPHER_CreateHandleForHDCPKeyInternal(&hCipherHandle);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("DRV_CIPHER_OpenChn failed\n");
        (HI_VOID)DRV_CIPHER_ClearHdcpConfig();
        return HI_FAILURE;
    }

    softChnId = HI_HANDLE_GET_CHNID(hCipherHandle);

    if(down_interruptible(&CipherMutexKernel))
    {
        return -ERESTARTSYS;
    }

    u32KeyBlock = u32InputLen / 16;
    for (i = 0;i < u32KeyBlock; i++)
    {
        ret = DRV_CIPHER_HdcpParamConfig(enHdcpEnMode, enRootKeyType, enHdcpKeyType);
        if ( HI_FAILURE == ret)
        {
            goto __EXIT_HDCP__;
        }

        memset(&CipherCtrl, 0, sizeof(CipherCtrl));
        CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
        CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
        CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
        CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
        CipherCtrl.stChangeFlags.bit1IV = (0 == i) ? 1 : 0;

        ret = DRV_CIPHER_ConfigChn(softChnId, &CipherCtrl);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("DRV_CIPHER_ConfigChn failed\n");
            goto __EXIT_HDCP__;
        }

        memset(&stCITask, 0, sizeof(stCITask));
        memcpy((HI_U8 *)(stCITask.stData2Process.u32DataPkg), pu8Input + (i * 16), 16);
        stCITask.stData2Process.u32length = 16;
        stCITask.stData2Process.bDecrypt = bIsDecryption;
        stCITask.u32CallBackArg = softChnId;

        ret = DRV_CIPHER_CreatTask(softChnId, &stCITask, NULL, NULL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("DRV_CIPHER_CreatTask call failed\n");
            goto __EXIT_HDCP__;
        }

        if ( NULL != pu8Output )
        {
            memcpy(pu8Output + ( i * 16), (HI_U8 *)(stCITask.stData2Process.u32DataPkg), 16);
        }
    }

    if (HI_DRV_HDCPKEY_RX0 == enHdcpKeyType || HI_DRV_HDCPKEY_RX1 == enHdcpKeyType)
    {
        (HI_VOID)DRV_CIPHER_SetHdcpkeyRxRead(CIPHER_HDCP_KEY_RD_RX_RAM);
    }
    else
    {
        (HI_VOID)DRV_CIPHER_SetHdcpKeyTxRead(CIPHER_HDCP_KEY_RAM_MODE_READ);
    }

__EXIT_HDCP__:
    (HI_VOID)DRV_CIPHER_SetHdcpModeEn(CIPHER_HDCP_MODE_NO_HDCP_KEY);
    up(&CipherMutexKernel);
    if(HI_SUCCESS != ret)
    {
        (HI_VOID)DRV_CIPHER_ClearHdcpConfig();
    }
    (HI_VOID)DRV_CIPHER_DestroyHandle(hCipherHandle);

    return ret;
}


/*
        head              HDMIIP_HDCPKey                 CRC32_0 CRC32_1
      |-------|-----------------------------------------|------|------|
      |4bytes-|-----------------Encrypt(320bytes)-------|-4byte|-4byte|
*/
HI_S32 HI_DRV_CIPHER_LoadHdcpKey(HI_DRV_CIPHER_FLASH_ENCRYPT_HDCPKEY_S *pstFlashHdcpKey)
{
    HI_S32 ret = HI_SUCCESS;
    if(down_interruptible(&g_CipherMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }
	ret = DRV_CIPHER_LoadHdcpKey(pstFlashHdcpKey);
	up(&g_CipherMutexKernel);
	return ret;
}

HI_S32 DRV_CIPHER_LoadHdcpKey(HI_DRV_CIPHER_FLASH_ENCRYPT_HDCPKEY_S *pstFlashHdcpKey)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32Crc32Result = 0;
    HI_U32 u32CRC32_1;
    HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enRootKeyType;
    HI_DRV_HDCP_VERSION_E enHDCPVersion = HI_DRV_HDCP_VERSON_BUTT;
    HI_DRV_HDCPKEY_TYPE_E enHDCPKeyType = HI_DRV_HDCPKEY_BUTT;
    HI_U32 u32Tmp = 0;

    if( NULL == pstFlashHdcpKey)
    {
        HI_ERR_CIPHER("NULL Pointer, Invalid param input!\n");
        return  HI_FAILURE;
    }
	
    enHDCPVersion = pstFlashHdcpKey->enHDCPVersion;
    enHDCPKeyType = pstFlashHdcpKey->enHDCPKeyType;
    
    // HDCP1.x Tx/Rx
    if (HI_DRV_HDCP_VERIOSN_1x == enHDCPVersion)
    {
        u32Tmp = pstFlashHdcpKey->u8Key[0] & 0xc0;
        if ( 0x00 == u32Tmp)
        {
            enRootKeyType = CIPHER_HDCP_KEY_TYPE_OTP_ROOT_KEY;
        }
        else if( 0x80 == u32Tmp)
        {
            enRootKeyType = CIPHER_HDCP_KEY_TYPE_HISI_DEFINED;
        }
        else
        {
            HI_ERR_CIPHER("Invalid keySelect mode input!\n");
            return  HI_FAILURE;
        }

        /* verify crc32_1 */
        s32Ret = Cipher_CRC32(pstFlashHdcpKey->u8Key, (332-4), &u32Crc32Result);
        if ( HI_FAILURE == s32Ret)
        {
            HI_ERR_CIPHER("HDCP KEY CRC32_1 calc failed!\n");
            return HI_FAILURE;
        }

        memcpy((HI_U8 *)&u32CRC32_1, &pstFlashHdcpKey->u8Key[328], 4);

        if ( u32Crc32Result != u32CRC32_1 )
        {
            HI_ERR_CIPHER("HDCP KEY CRC32_1 compare failed!");
            return HI_FAILURE;
        }

        s32Ret = s_DRV_Cipher_CryptoHdcpKey(pstFlashHdcpKey->u8Key + 4,
                                         320,
                                         CIPHER_HDCP_MODE_HDCP_KEY,
                                         enHDCPKeyType,
                                         enRootKeyType,
                                         HI_TRUE,
                                         NULL);
        if ( HI_FAILURE == s32Ret)
        {
            HI_ERR_CIPHER("HDCP key decrypt final failed!\n");
            return HI_FAILURE;
        }

        if(HI_FALSE == g_bHDCPKeyLoadFlag)
        {
        	g_stFlashHdcpKey = *pstFlashHdcpKey;
        	g_bHDCPKeyLoadFlag = HI_TRUE;
        }
    }
    else   // HDCP2.x Rx/Tx or other
    {
        HI_ERR_CIPHER("Please set correct HDCP verison!");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_VOID s_DRV_CIPHER_FormatHDCPKey(HI_UNF_HDCP_DECRYPT_S *pSrcKey, CIPHER_HDCPKEY_S *pDstKey)
{
    HI_S32 i;
    HI_U8 TailBytes[31] = {0x14, 0xf7, 0x61, 0x03, 0xb7, 0x59, 0x45, 0xe3,
                           0x0c, 0x7d, 0xb4, 0x45, 0x19, 0xea, 0x8f, 0xd2,
                           0x89, 0xee, 0xbd, 0x90, 0x21, 0x8b, 0x05, 0xe0,
                           0x4e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
    HI_U32 CheckSum = 0xa3c5;
    HI_U32 XorValue, Temp;

    memset(pDstKey->HdcpKey, 0, 320);

    /* Byte 0*/
    pDstKey->HdcpKey[0] = 0x00;
    /* Byte 1 ~ 5 KSV */
    for (i = 0; i < 5; i ++)
    {
        pDstKey->HdcpKey[1 + i] = pSrcKey->u8KSV[i];
    }
    /* Byte 8 */
    pDstKey->HdcpKey[8] = 0xa8;
    /* Byte 9 ~ 288 Device Private Key */
    for (i = 0; i < 280; i ++)
    {
        pDstKey->HdcpKey[9 + i] = pSrcKey->u8PrivateKey[i];
    }
    /* Byte 289 ~ 319 */
    for (i = 0; i < 31; i ++)
    {
        pDstKey->HdcpKey[289 + i] = TailBytes[i];
    }

    /* Count CRC value */
    for(i=0; i<320; i++)
    {
        if((i>=6) && (i<=8))
        {
            continue;
        }
        XorValue = CheckSum ^ pDstKey->HdcpKey[i];
        Temp = ~((XorValue >> 7) ^ (XorValue >> 16));
        XorValue = XorValue << 1;
        XorValue = (XorValue & 0x1fffe) | (Temp & 1);
        CheckSum = XorValue;
    }

    for(i=0; i<8; i++)
    {
        XorValue = CheckSum;
        Temp = ~((XorValue >> 7) ^ (XorValue >> 16));
        XorValue = XorValue << 1;
        XorValue = (XorValue & 0x1fffe) | (Temp & 1);
        CheckSum = XorValue;
    }

    /* Byte 6 && 7  CRC Value */
    pDstKey->HdcpKey[6] = CheckSum & 0xff;
    pDstKey->HdcpKey[7] = (CheckSum >> 8) & 0xff;

    return;
}

static HI_S32 s_DRV_CIPHER_DecryptHDCPKeyBeforeFormat(HI_UNF_HDCP_HDCPKEY_S *pSrcKey,  HI_UNF_HDCP_DECRYPT_S *pDstkey)
{
    HI_U32 softChnId = 0;
    HI_U8 key[16];
    HI_U8 ResultBuf[320];
    HI_S32 ret = HI_SUCCESS;
    HI_U8 VersionBuf[8];
    HI_BOOL ValidFlag = HI_TRUE;
    HI_U32 i = 0;
    HI_UNF_HDCP_ENCRYPT_S stEncryptKey;
    HI_UNF_CIPHER_CTRL_S CipherCtrl;
    MMZ_BUFFER_S stInputBuffer, stOutputBuffer;
    HI_DRV_CIPHER_TASK_S stCITask;
    CIPHER_HANDLE_S stCIHandle;
    CIPHER_DATA_S stCIData;

    if(!pSrcKey->EncryptionFlag)
    {
        HI_ERR_CIPHER("EncryptionFlag Error!\n");
        return HI_FAILURE;
    }

    memset(&stEncryptKey, 0, sizeof(stEncryptKey));
    memset(&CipherCtrl, 0, sizeof(CipherCtrl));
    memset(&stInputBuffer, 0, sizeof(stInputBuffer));
    memset(&stOutputBuffer, 0, sizeof(stOutputBuffer));
    memset(&stCITask, 0, sizeof(stCITask));
    memset(&stCIData, 0, sizeof(stCIData));

    memcpy(&stEncryptKey, &pSrcKey->key, sizeof(HI_UNF_HDCP_ENCRYPT_S));

    stCIHandle.hCIHandle = 0;
    stCIHandle.stCipherAtts.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
    ret = DRV_CIPHER_CreateHandle(&stCIHandle);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Cipher create handle failed\n");
        return HI_FAILURE;
    }

    memcpy(VersionBuf, &stEncryptKey.u8EncryptKey[8], 8);
    for(i = 0; i < 8; ++i)
    {
        if(VersionBuf[i] != "V0000001"[i])
        {
            ValidFlag = HI_FALSE;
            i = 8;
        }
    }

    if(!ValidFlag)
    {
        HI_ERR_CIPHER("EncryptKey check version failed\n");
        return HI_FAILURE;
    }

    memset(key, 0, sizeof(key));
    key[0] = 'z';
    key[1] = 'h';
    key[2] = 'o';
    key[3] = 'n';
    key[4] = 'g';

    CipherCtrl.bKeyByCA = HI_FALSE;
    CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
    CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
    CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_8BIT;
    CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
    CipherCtrl.stChangeFlags.bit1IV = 1;
    memcpy((HI_U8 *)CipherCtrl.u32Key, key, sizeof(key));
    memset(CipherCtrl.u32IV, 0, sizeof(CipherCtrl.u32IV));

    softChnId = HI_HANDLE_GET_CHNID(stCIHandle.hCIHandle);
    ret = DRV_CIPHER_ConfigChn(softChnId, &CipherCtrl);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Cipher config handle failed\n");
        return HI_FAILURE;
    }

    ret = HI_DRV_MMZ_AllocAndMap("Cipher_EncryptBuf", MMZ_OTHERS, 320, 32, &stInputBuffer);
    ret |= HI_DRV_MMZ_AllocAndMap("Cipher_DecryptBuf", MMZ_OTHERS, 320, 32, &stOutputBuffer);
    if (HI_SUCCESS != ret)
    {
        HI_DRV_MMZ_UnmapAndRelease(&stInputBuffer);
        HI_ERR_CIPHER("HI_DRV_MMZ_AllocAndMap failed\n");
        return HI_FAILURE;
    }

    memset((HI_U8 *)(stInputBuffer.u32StartVirAddr), 0x0, 320);
    memset((HI_U8 *)(stOutputBuffer.u32StartVirAddr), 0x0, 320);

    memcpy((HI_U8 *)stInputBuffer.u32StartVirAddr, (HI_U8 *)stEncryptKey.u8EncryptKey + 48, 320);

    stCIData.CIHandle = stCIHandle.hCIHandle;
    stCIData.ScrPhyAddr = stInputBuffer.u32StartPhyAddr;
    stCIData.DestPhyAddr = stOutputBuffer.u32StartPhyAddr;
    stCIData.u32DataLength = 320;
    ret = DRV_CIPHER_Decrypt(&stCIData);
    if(HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("DRV CIPHER Decrypt failed!\n");
        goto __EXIT_CIPHER__;
    }

    memcpy(ResultBuf, (HI_U8 *)stOutputBuffer.u32StartVirAddr, 320);
    if(ResultBuf[5] || ResultBuf[6] || ResultBuf[7])
    {
        HI_ERR_CIPHER("Check bit[5:7] failed after decrypt!\n");
        goto __EXIT_CIPHER__;
    }

    memcpy(pDstkey->u8KSV, ResultBuf, sizeof(pDstkey->u8KSV));
    memcpy(pDstkey->u8PrivateKey, ResultBuf + 8, sizeof(pDstkey->u8PrivateKey));

__EXIT_CIPHER__:
    HI_DRV_MMZ_UnmapAndRelease(&stInputBuffer);
    HI_DRV_MMZ_UnmapAndRelease(&stOutputBuffer);

    (HI_VOID)DRV_CIPHER_DestroyHandle(stCIHandle.hCIHandle);

    return ret;
}

static HI_S32 s_DRV_CIPHER_CryptoFormattedHDCPKey(HI_U8 *pu8Input,
                                    HI_U32 u32InputLen,
                                    HI_DRV_CIPHER_HDCP_KEY_MODE_E enHdcpEnMode,
                                    HI_DRV_CIPHER_HDCP_ROOT_KEY_TYPE_E enRootKeyType,
                                    HI_DRV_HDCPKEY_TYPE_E enHDCPKeyType,
                                    HI_BOOL bIsDecryption,
                                    HI_U8 *pu8Output)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 softChnId = 0;
    HI_U32 u32KeyBlock = 0;
    HI_UNF_CIPHER_CTRL_S CipherCtrl;
    HI_DRV_CIPHER_TASK_S pCITask;
    HI_U32 i = 0;
    CIPHER_HANDLE_S stCIHandle;

    if ( NULL == pu8Input )
    {
        HI_ERR_CIPHER("Invalid param , null pointer input!\n");
        return HI_FAILURE;
    }

    if ((NULL == pu8Output ) && (HI_FALSE == bIsDecryption))
    {
        HI_ERR_CIPHER("Invalid param , null pointer!\n");
        return HI_FAILURE;
    }

    if ( CIPHER_HDCP_MODE_HDCP_KEY != enHdcpEnMode)
    {
        HI_ERR_CIPHER("Invalid HDCP mode!\n");
        return HI_FAILURE;
    }

    if ( 320 != u32InputLen)
    {
        HI_ERR_CIPHER("Invalid keylength input!\n");
        return HI_FAILURE;
    }
    
    (HI_VOID)DRV_CIPHER_SetHdcpModeEn(enHdcpEnMode);
    
    memset(&pCITask, 0, sizeof(pCITask));
    memset(&CipherCtrl, 0, sizeof(CipherCtrl));

    ret = s_DRV_CIPHER_CreateHandleForHDCPKeyInternal(&stCIHandle.hCIHandle);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("(DRV_CIPHER_OpenChn failed\n");
        (HI_VOID)DRV_CIPHER_ClearHdcpConfig();
        return HI_FAILURE;
    }

    softChnId = HI_HANDLE_GET_CHNID(stCIHandle.hCIHandle);

    u32KeyBlock = u32InputLen / 16;
    for(i = 0;i < u32KeyBlock; i++)
    {
        ret = DRV_CIPHER_HdcpParamConfig(enHdcpEnMode, enRootKeyType, enHDCPKeyType);
        if ( HI_FAILURE == ret)
        {
            goto __EXIT_HDCP__;
        }

        CipherCtrl.enAlg = HI_UNF_CIPHER_ALG_AES;
        CipherCtrl.enWorkMode = HI_UNF_CIPHER_WORK_MODE_CBC;
        CipherCtrl.enBitWidth = HI_UNF_CIPHER_BIT_WIDTH_128BIT;
        CipherCtrl.enKeyLen = HI_UNF_CIPHER_KEY_AES_128BIT;
        memset(CipherCtrl.u32IV, 0, sizeof(CipherCtrl.u32IV));
        CipherCtrl.stChangeFlags.bit1IV = (0 == i) ? 1 : 0;

        ret = DRV_CIPHER_ConfigChn(softChnId, &CipherCtrl);
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("DRV cipher config handle failed!\n");
            goto __EXIT_HDCP__;
        }

        memcpy((HI_U8 *)(pCITask.stData2Process.u32DataPkg), pu8Input + (i * 16), 16);
        pCITask.stData2Process.u32length = 16;
        pCITask.stData2Process.bDecrypt = bIsDecryption;
        pCITask.u32CallBackArg = softChnId;

        ret = DRV_CIPHER_CreatTask(softChnId, &pCITask, NULL, NULL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("(DRV_CIPHER_CreatTask call failed\n");
            goto __EXIT_HDCP__;
        }

        if ( NULL != pu8Output )
        {
            memcpy(pu8Output + ( i * 16), (HI_U8 *)(pCITask.stData2Process.u32DataPkg), 16);
        }
    }

__EXIT_HDCP__:
    (HI_VOID)DRV_CIPHER_ClearHdcpConfig();
    (HI_VOID)DRV_CIPHER_DestroyHandle(stCIHandle.hCIHandle);
    return ret;
}

HI_S32 HI_DRV_CIPHER_EncryptHDCPKey(CIPHER_HDCP_KEY_TRANSFER_S *pstHdcpKeyTransfer)
{
    HI_S32 ret = HI_SUCCESS;
	if(down_interruptible(&g_CipherMutexKernel))
	{
		HI_ERR_CIPHER("down_interruptible failed!\n");
		return HI_FAILURE;
	}
	ret = DRV_CIPHER_EncryptHDCPKey(pstHdcpKeyTransfer);
	up(&g_CipherMutexKernel);
	return ret;
}

HI_S32 DRV_CIPHER_EncryptHDCPKey(CIPHER_HDCP_KEY_TRANSFER_S *pstHdcpKeyTransfer)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U8 au8KeyBuf[320];
    HI_U32 u32CRC_0 = 0;
    HI_U32 u32CRC_1 = 0;
    HI_U8 u8WriteFlagChar[2] = {'H', 'I'};
    CIPHER_HDCPKEY_S stOtpHdcpKey;
    HI_UNF_HDCP_DECRYPT_S stDstKey;

    if ( NULL == pstHdcpKeyTransfer)
    {
        HI_ERR_CIPHER("Invalid param, null pointer!\n");
        return HI_FAILURE;
    }
	
    memset(&stOtpHdcpKey, 0, sizeof(stOtpHdcpKey));
    memset(au8KeyBuf, 0, sizeof(au8KeyBuf));
    memset(&stDstKey, 0, sizeof(stDstKey));

    /* header config */
    if ( HI_TRUE == pstHdcpKeyTransfer->bIsUseOTPRootKey)
    {
        memset(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[0]), 0x00, 1);
    }
    else
    {
        memset(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[0]), 0x80, 1);
    }
    memset(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[1]), 0x00, 1);

    /* 'H' 'I' display that the Encrypted Hdpcp Key Exists */
    memcpy(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[2]), u8WriteFlagChar, 2);

    /* format clear text to 320 bytes*/
    if ( HI_TRUE == pstHdcpKeyTransfer->stHdcpKey.EncryptionFlag)
    {
        ret = s_DRV_CIPHER_DecryptHDCPKeyBeforeFormat(&pstHdcpKeyTransfer->stHdcpKey, &stDstKey);
        if(ret != HI_SUCCESS)
        {
            HI_ERR_CIPHER("s_DRV_CIPHER_DecryptHDCPKeyBeforeFormat failed!\n");
            return HI_FAILURE;
        }

        (HI_VOID)s_DRV_CIPHER_FormatHDCPKey(&stDstKey, &stOtpHdcpKey);
    }
    else
    {
        (HI_VOID)s_DRV_CIPHER_FormatHDCPKey((HI_UNF_HDCP_DECRYPT_S *)&pstHdcpKeyTransfer->stHdcpKey.key, &stOtpHdcpKey);
    }

#if 0
        if(pstHdcpKeyTransfer->stHdcpKey.Reserved == 0xabcd1234)
        {
            int i;

            HI_INFO_HDCP("\n***** Debug HDCP Key, just debug HDCP key, Do not really write key *****\n");
            HI_INFO_HDCP("u8KSV:\n");
            for(i = 0; i < 5; ++i)
            {
                HI_INFO_HDCP("%02X ", stDstKey.u8KSV[i]);
            }

            HI_INFO_HDCP("\n u8PrivateKey:\n");
            for(i = 0; i < 280; ++i)
            {
                HI_INFO_HDCP("%02X ", stDstKey.u8PrivateKey[i]);
                if(((i+1)%16) == 0)
                    HI_INFO_HDCP("\n");
            }
            HI_INFO_HDCP("\n\n");

            return HI_SUCCESS;
        }
#endif


    /* encrypt formated text*/
    if ( HI_TRUE ==  pstHdcpKeyTransfer->bIsUseOTPRootKey)
    {
        ret = s_DRV_CIPHER_CryptoFormattedHDCPKey(stOtpHdcpKey.HdcpKey,
                                                320,
                                                CIPHER_HDCP_MODE_HDCP_KEY,
                                                CIPHER_HDCP_KEY_TYPE_OTP_ROOT_KEY,
                                                HI_DRV_HDCPKEY_RX0,
                                                HI_FALSE,
                                                au8KeyBuf );
        if ( HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("Encrypt HDCP Key using rootkey in otp failed!\n");
            return HI_FAILURE;
        }
    }
    else
    {
        ret = s_DRV_CIPHER_CryptoFormattedHDCPKey(stOtpHdcpKey.HdcpKey,
                                                320,
                                                CIPHER_HDCP_MODE_HDCP_KEY,
                                                CIPHER_HDCP_KEY_TYPE_HISI_DEFINED,
                                                HI_DRV_HDCPKEY_RX0,
                                                HI_FALSE,
                                                au8KeyBuf );
        if ( HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("Encrypt HDCP Key using rootkey in otp failed!\n");
            return HI_FAILURE;
        }
    }
    memcpy(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[4]), au8KeyBuf, 320);

    /* crc32_0 and crc32_1  calculate */
    ret = Cipher_CRC32(stOtpHdcpKey.HdcpKey, 320, &u32CRC_0);
    if ( HI_FAILURE == ret)
    {
        HI_ERR_CIPHER("CRC32_0 calc failed!\n");
        return HI_FAILURE;
    }
    memcpy(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[324]), &u32CRC_0, 4);

    ret = Cipher_CRC32(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey, (332-4), &u32CRC_1);
    if ( HI_FAILURE == ret)
    {
        HI_ERR_CIPHER("CRC32_1 calc failed!\n");
        return HI_FAILURE;
    }
    memcpy(&(pstHdcpKeyTransfer->u8FlashEncryptedHdcpKey[328]), &u32CRC_1, 4);

    return HI_SUCCESS;
}

HI_VOID DRV_CIPHER_Hdcp_Resume(HI_VOID)
{
    HI_S32 ret = HI_FAILURE;
    
    if(HI_TRUE == g_bHDCPKeyLoadFlag)
    {
        ret = DRV_CIPHER_LoadHdcpKey(&g_stFlashHdcpKey);
        if(HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("Load hdcp key failed!\n");
        }
        else
        {
            HI_INFO_CIPHER("Load hdcp key success!\n");
            //g_bHDCPKeyLoadFlag = HI_FALSE;
        }
    }
}

EXPORT_SYMBOL(HI_DRV_CIPHER_LoadHdcpKey);

HI_VOID HDCP_DRV_ModInit(HI_VOID)
{
    return ;
}

HI_VOID HDCP_DRV_ModExit(HI_VOID)
{
    return ;
}

//EXPORT_SYMBOL(HI_DRV_CIPHER_GetRandomNumber);

/*
#ifdef MODULE
module_init(RNG_DRV_ModInit);
module_exit(RNG_DRV_ModExit);
#endif*/

MODULE_AUTHOR("Hi3720 MPP GRP");
MODULE_LICENSE("GPL");

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif
