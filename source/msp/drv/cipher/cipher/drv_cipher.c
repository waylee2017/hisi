/******************************************************************************

  Copyright (C), 2011-2014, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_cipher.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       :
  Last Modified :
  Description   :
  Function List :
  History       :
******************************************************************************/
//#include <asm/arch/hardware.h>
#include <asm/setup.h>
#include <asm/barrier.h>    /* mb() */
#include <asm/uaccess.h>
#include <linux/string.h>
#include <linux/slab.h>
#include <linux/errno.h>
#include <linux/miscdevice.h>
#include <linux/fcntl.h>
#include <linux/param.h>
#include <linux/delay.h>

#include <linux/init.h>
#include <asm/io.h>
#include <linux/delay.h>
#include <linux/proc_fs.h>
#include <linux/workqueue.h>
#include <linux/module.h>
#include <linux/sched.h>
#include <linux/list.h>
#include <linux/wait.h>
//#include <asm/semaphore.h>
#include <linux/spinlock.h>
#include <linux/version.h>
#if (LINUX_VERSION_CODE < KERNEL_VERSION(3, 18, 0))
#include <asm/system.h>
#endif
#include <linux/interrupt.h>
#include <linux/time.h>
#include <linux/random.h>
#include <linux/signal.h>
#include <linux/seq_file.h>

#include "hi_type.h"
#include "hi_debug.h"
#include "hi_common.h"
#include "drv_cipher_define.h"
#include "drv_cipher_ioctl.h"
#include "drv_cipher_ext.h"
#include "drv_advca_ext.h"
#include "hi_kernel_adapt.h"
#include "hi_drv_mem.h"
#include "hi_drv_mmz.h"
#include "hi_drv_module.h"
#include "hal_cipher.h"
#include "drv_cipher.h"
#include "drv_rsa.h"
#include "drv_hash.h"

HI_DECLARE_MUTEX(g_CipherMutexKernel);
DEFINE_SEMAPHORE(g_RsaMutexKernel);

extern HI_VOID HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipID);

#define CI_BUF_LIST_SetIVFlag(u32Flags)
#define CI_BUF_LIST_SetEndFlag(u32Flags)
#if 0
CIPHER_EXPORT_FUNC_S s_CipherExportFuncs =
{
    .pfnCipherCreateHandle    = HI_DRV_CIPHER_CreateHandle,
    .pfnCipherConfigChn       = HI_DRV_CIPHER_ConfigChn,
    .pfnCipherDestroyHandle   = HI_DRV_CIPHER_DestroyHandle,
    .pfnCipherEncrypt         = HI_DRV_CIPHER_Encrypt,
    .pfnCipherDecrypt         = HI_DRV_CIPHER_Decrypt,
    .pfnCipherEncryptMulti    = HI_DRV_CIPHER_EncryptMulti,
    .pfnCipherDecryptMulti    = HI_DRV_CIPHER_DecryptMulti,
    .pfnCipherGetRandomNumber = HI_DRV_CIPHER_GetRandomNumber,
    .pfnCipherGetHandleConfig = HI_DRV_CIPHER_GetHandleConfig,
    .pfnCipherLoadHdcpKey     = HI_DRV_CIPHER_LoadHdcpKey,
    .pfnCipherSoftReset       = HI_DRV_CIPHER_SoftReset,
    .pfnCipherCalcHashInit    = HI_DRV_CIPHER_CalcHashInit,
    .pfnCipherCalcHashUpdate  = HI_DRV_CIPHER_CalcHashUpdate,
    .pfnCipherCalcHashFinal   = HI_DRV_CIPHER_CalcHashFinal,
    .pfnCipherResume          = HI_DRV_CIPHER_Resume,
    .pfnCipherSuspend         = HI_DRV_CIPHER_Suspend,
};
#endif
typedef struct hiCIPHER_IV_VALUE_S
{
    HI_U32    u32PhyAddr;
    HI_U32   *pu32VirAddr;
    //HI_U8   au8IVValue[CI_IV_SIZE];
} CIPHER_IV_VALUE_S;


/*
-----------------------------------------------------------
0 | input buf list Node(16Byte) | ...  * CIPHER_MAX_LIST_NUM  | = 16*CIPHER_MAX_LIST_NUM
-----------------------------------------------------------
  | output buf list Node(16Byte)| ...  * CIPHER_MAX_LIST_NUM  |
-----------------------------------------------------------
  | IV (16Byte)                 | ...  * CIPHER_MAX_LIST_NUM  |
-----------------------------------------------------------
... * 7 Channels


*/

typedef struct hiCIPHER_PKGN_MNG_S
{
    HI_U32              u32TotalPkg;  /*  */
    HI_U32              u32CurrentPtr;
    HI_U32              u32BusyCnt;
    HI_U32              u32FreeCnt;
} CIPHER_PKGN_MNG_S;

typedef struct hiCIPHER_PKG1_MNG_S
{
    HI_U32              au32Data[4];
} CIPHER_PKG1_MNG_S;

typedef union hiCIPHER_DATA_MNG_U
{
    CIPHER_PKGN_MNG_S  stPkgNMng;
    CIPHER_PKG1_MNG_S  stPkg1Mng;
}CIPHER_DATA_MNG_U;

typedef struct hiCIPHER_CHAN_S
{
    HI_U32                  chnId;
    CI_BUF_LIST_ENTRY_S     *pstInBuf;
    CI_BUF_LIST_ENTRY_S     *pstOutBuf;
    CIPHER_IV_VALUE_S       astCipherIVValue[CIPHER_MAX_LIST_NUM]; /*  */
    HI_U32                  au32WitchSoftChn[CIPHER_MAX_LIST_NUM];
    HI_U32                  au32CallBackArg[CIPHER_MAX_LIST_NUM];
    HI_BOOL                 bNeedCallback[CIPHER_MAX_LIST_NUM];
    CIPHER_DATA_MNG_U       unInData;
    CIPHER_DATA_MNG_U       unOutData;
} CIPHER_CHAN_S;

typedef struct hiCIPHER_SOFTCHAN_S
{
    HI_BOOL               bOpen;
    HI_U32                u32HardWareChn;

    HI_UNF_CIPHER_CTRL_S  stCtrl;

    HI_BOOL               bIVChange;
    HI_BOOL               bKeyChange;
    HI_U32                u32LastPkg;     /* save which pkg's IV we should use for next pkg */
    HI_BOOL               bDecrypt;       /* hi_false: encrypt */

    HI_U32                u32PrivateData;
    funcCipherCallback    pfnCallBack;

} CIPHER_SOFTCHAN_S;

/********************** Global Variable declaration **************************/
extern HI_U32 g_u32CipherStartCase;
extern HI_U32 g_u32CipherEndCase;

CIPHER_COMM_S g_stCipherComm;
CIPHER_CHAN_S g_stCipherChans[CIPHER_CHAN_NUM];
CIPHER_SOFTCHAN_S g_stCipherSoftChans[CIPHER_SOFT_CHAN_NUM];
CIPHER_OSR_CHN_S g_stCipherOsrChn[CIPHER_SOFT_CHAN_NUM];

ADVCA_EXPORT_FUNC_S *s_pAdvcaFunc = HI_NULL;

#define CIPHER_CheckHandle(ChanId)   \
    do \
    { \
        if (ChanId >= CIPHER_SOFT_CHAN_NUM) \
        { \
            HI_ERR_CIPHER("chan %d is too large, max: %d\n", ChanId, CIPHER_SOFT_CHAN_NUM); \
            up(&g_CipherMutexKernel); \
            return HI_ERR_CIPHER_INVALID_PARA; \
        } \
        if (HI_FALSE == g_stCipherOsrChn[ChanId].g_bSoftChnOpen) \
        { \
            HI_ERR_CIPHER("chan %d is not open\n", ChanId); \
            up(&g_CipherMutexKernel); \
            return HI_ERR_CIPHER_INVALID_HANDLE; \
        } \
    } while (0)

HI_VOID DRV_CIPHER_UserCommCallBack(HI_U32 arg)
{
    HI_INFO_CIPHER("arg=%#x.\n", arg);

    g_stCipherOsrChn[arg].g_bDataDone = HI_TRUE;
    wake_up_interruptible(&(g_stCipherOsrChn[arg].cipher_wait_queue));

    return ;
}

HI_S32 DRV_CIPHER_ReadReg(HI_U32 addr, HI_U32 *pVal)
{
    if ( NULL == pVal )
    {
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    (HI_VOID)HAL_CIPHER_ReadReg(addr, pVal);

    return HI_SUCCESS;;
}

HI_S32 DRV_CIPHER_WriteReg(HI_U32 addr, HI_U32 Val)
{
    (HI_VOID)HAL_CIPHER_WriteReg(addr, Val);
    return HI_SUCCESS;
}

HI_S32 DRV_CipherInitHardWareChn(HI_U32 chnId )
{
    HI_U32        i;
    CIPHER_CHAN_S *pChan;

    pChan = &g_stCipherChans[chnId];

    HAL_Cipher_SetInBufNum(chnId, CIPHER_MAX_LIST_NUM);
    HAL_Cipher_SetInBufCnt(chnId, 0);
//    HAL_Cipher_SetInBufEmpty(chnId, CIPHER_MAX_LIST_NUM);

    HAL_Cipher_SetOutBufNum(chnId, CIPHER_MAX_LIST_NUM);
    HAL_Cipher_SetOutBufCnt(chnId, CIPHER_MAX_LIST_NUM);
//    HAL_Cipher_SetOutBufFull(chnId, 0);

    HAL_Cipher_SetAGEThreshold(chnId, CIPHER_INT_TYPE_OUT_BUF, 0);
    HAL_Cipher_SetAGEThreshold(chnId, CIPHER_INT_TYPE_IN_BUF, 0);

    HAL_Cipher_DisableInt(chnId, CIPHER_INT_TYPE_OUT_BUF | CIPHER_INT_TYPE_IN_BUF);

    //HAL_Cipher_Config(chnId, 0);

    for (i = 0; i < CIPHER_MAX_LIST_NUM; i++)
    {
        ;
    }

    return HI_SUCCESS;
}

HI_S32 DRV_CipherDeInitHardWareChn(HI_U32 chnId)
{
/*
    HAL_Cipher_SetInBufNum(CIPHER_MAX_LIST_NUM);
    HAL_Cipher_SetInBufCnt(0);
    HAL_Cipher_SetInBufEmpty(CIPHER_MAX_LIST_NUM);

    HAL_Cipher_SetOutBufNum(CIPHER_MAX_LIST_NUM);
    HAL_Cipher_SetOutBufCnt(CIPHER_MAX_LIST_NUM);
    HAL_Cipher_SetOutBufFull(0);
*/

    HAL_Cipher_DisableInt(chnId, CIPHER_INT_TYPE_OUT_BUF | CIPHER_INT_TYPE_IN_BUF);
    return HI_SUCCESS;
}
/*
set interrupt threshold level and enable it, and flag soft channel opened
*/
HI_S32 DRV_CIPHER_OpenChn(HI_U32 softChnId)
{
    HI_S32 ret = 0;
    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pSoftChan = &g_stCipherSoftChans[softChnId];
    pSoftChan->u32HardWareChn = softChnId;

    pChan = &g_stCipherChans[pSoftChan->u32HardWareChn];

    HAL_Cipher_SetIntThreshold(pChan->chnId, CIPHER_INT_TYPE_OUT_BUF, CIPHER_DEFAULT_INT_NUM);
    //ret = HAL_Cipher_EnableInt(pChan->chnId, CIPHER_INT_TYPE_OUT_BUF | CIPHER_INT_TYPE_IN_BUF);
    ret = HAL_Cipher_EnableInt(pChan->chnId, CIPHER_INT_TYPE_OUT_BUF);

    pSoftChan->bOpen = HI_TRUE;
    return ret;
}

HI_S32 DRV_CIPHER_CloseChn(HI_U32 softChnId)
{
    HI_S32 ret = HI_SUCCESS;
    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pSoftChan = &g_stCipherSoftChans[softChnId];
    pChan = &g_stCipherChans[pSoftChan->u32HardWareChn];

    pSoftChan->bOpen = HI_FALSE;
#ifdef CFG_HI_CIPHER_HASH_SUPPORT
    HAL_Cipher_ClearCbcVerifyFlag(); //clear the irdeto CBC verify flag anyway
#endif
    //ret = HAL_Cipher_DisableInt(pChan->chnId, CIPHER_INT_TYPE_OUT_BUF);
    return ret;
}

HI_S32 DRV_CIPHER_ConfigChn(HI_U32 softChnId,  HI_UNF_CIPHER_CTRL_S *pConfig)
{
    HI_S32 ret = HI_SUCCESS;
    HI_BOOL bDecrypt = HI_FALSE;
    HI_U32 hardWareChn;
    HI_BOOL bIVSet;
    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    CIPHER_CheckHandle(softChnId);

    if((pConfig->enAlg >= HI_UNF_CIPHER_ALG_BUTT)
       ||(pConfig->enWorkMode > HI_UNF_CIPHER_WORK_MODE_CBC_CTS)
       ||(pConfig->enBitWidth > HI_UNF_CIPHER_BIT_WIDTH_128BIT)
       ||(pConfig->enKeyLen > HI_UNF_CIPHER_KEY_DES_2KEY)
       ||(pConfig->bKeyByCA && pConfig->enCaType >= HI_UNF_CIPHER_CA_TYPE_BUTT))
    {
        HI_ERR_CIPHER("Cipher config failed!\n");
        HI_ERR_CIPHER("alg-%d, mode-%d, width-%d, keylen-%d, by_ca-%d, ca_type-%d\n",
            pConfig->enAlg, pConfig->enWorkMode, pConfig->enBitWidth, 
            pConfig->enKeyLen, pConfig->bKeyByCA, pConfig->enCaType);
        return HI_ERR_CIPHER_INVALID_PARA;
    }
    
    pSoftChan = &g_stCipherSoftChans[softChnId];
    hardWareChn = pSoftChan->u32HardWareChn;
    pChan = &g_stCipherChans[pSoftChan->u32HardWareChn];
    pSoftChan->pfnCallBack = DRV_CIPHER_UserCommCallBack;
    bIVSet = (pConfig->stChangeFlags.bit1IV & 0x1) ? HI_TRUE : HI_FALSE;

    ret = HAL_Cipher_Config(pChan->chnId, bDecrypt, bIVSet, pConfig);

    pSoftChan->bIVChange = bIVSet;
    pSoftChan->bKeyChange = HI_TRUE;

    memcpy(&(pSoftChan->stCtrl), pConfig, sizeof(HI_UNF_CIPHER_CTRL_S));

    /* set Key */
    if (pSoftChan->bKeyChange &&  (HI_TRUE == pConfig->bKeyByCA))
    {
        /* Used for copy protection mode */
        if( 0 == hardWareChn)
        {
            ret = HAL_CIPHER_LoadSTBRootKey(0);
            if (HI_SUCCESS != ret)
            {
                HI_ERR_CIPHER("Load STB root key failed!\n");
                return ret;
            }
        }
        else if(pConfig->enCaType == HI_UNF_CIPHER_CA_TYPE_STBROOTKEY)
        {
            ret = HAL_CIPHER_LoadSTBRootKey(hardWareChn);
            if (HI_SUCCESS != ret)
            {
                HI_ERR_CIPHER("Load STB root key failed!\n");
                return ret;
            }
        }
        else
        {
            ret = HAL_Cipher_SetKey(hardWareChn, &(pSoftChan->stCtrl));
            if (HI_SUCCESS != ret)
            {
                return ret;
            }
        }
        pSoftChan->bKeyChange = HI_FALSE;
    }

    return ret;
}

HI_S32 HI_DRV_CIPHER_ConfigChn(HI_U32 softChnId,  HI_UNF_CIPHER_CTRL_S *pConfig)
{
	HI_S32 ret = HI_SUCCESS;

	if(down_interruptible(&g_CipherMutexKernel))
	{
		HI_ERR_CIPHER("down_interruptible failed!\n");
		return HI_FAILURE;
	}

	ret = DRV_CIPHER_ConfigChn(softChnId, pConfig);

	up(&g_CipherMutexKernel);

	return ret;
}

/*
*/
HI_S32 DRV_CipherStartSinglePkgChn(HI_U32 softChnId, HI_DRV_CIPHER_DATA_INFO_S *pBuf2Process)
{
    HI_U32 ret;
    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pSoftChan = &g_stCipherSoftChans[softChnId];
    pChan = &g_stCipherChans[pSoftChan->u32HardWareChn];

    HAL_Cipher_Config(0, pBuf2Process->bDecrypt, pSoftChan->bIVChange, &(pSoftChan->stCtrl));

	if (pSoftChan->bIVChange)
    {
		ret = HAL_Cipher_SetInIV(0, &(pSoftChan->stCtrl));
        if (HI_SUCCESS != ret)
        {
            return ret;
        }
		pSoftChan->bIVChange = HI_FALSE;
	}
	
	if (pSoftChan->bKeyChange)
    {
		ret = HAL_Cipher_SetKey(0, &(pSoftChan->stCtrl));
        if (HI_SUCCESS != ret)
        {
            return ret;
        }
		pSoftChan->bKeyChange = HI_FALSE;
	}

    HAL_Cipher_SetDataSinglePkg(pBuf2Process);

    HAL_Cipher_StartSinglePkg(pChan->chnId);
    ret = HAL_Cipher_WaitIdle();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }
    HAL_Cipher_ReadDataSinglePkg(pBuf2Process->u32DataPkg);

    return HI_SUCCESS;
}

/*
*/
HI_S32 DRV_CipherStartMultiPkgChn(HI_U32 softChnId, HI_DRV_CIPHER_DATA_INFO_S *pBuf2Process, HI_U32 callBackArg)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 hardWareChn;
    HI_U32 BusyCnt = 0;
    HI_U32 currentPtr;
    CI_BUF_LIST_ENTRY_S *pInBuf;
    CI_BUF_LIST_ENTRY_S *pOutBuf;

    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pSoftChan = &g_stCipherSoftChans[softChnId];
    hardWareChn = pSoftChan->u32HardWareChn;
    pChan = &g_stCipherChans[hardWareChn];

    HAL_Cipher_GetInBufCnt(hardWareChn, &BusyCnt);

    pChan->unInData.stPkgNMng.u32BusyCnt = BusyCnt;
    currentPtr = pChan->unInData.stPkgNMng.u32CurrentPtr;

    pInBuf = pChan->pstInBuf + currentPtr;
    pOutBuf = pChan->pstOutBuf + currentPtr;

    if (BusyCnt < CIPHER_MAX_LIST_NUM) /* */
    {
        /* set addr */
        pInBuf->u32DataAddr = pBuf2Process->u32src;
        pInBuf->U32DataLen = pBuf2Process->u32length;

        pOutBuf->u32DataAddr = pBuf2Process->u32dest;
        pOutBuf->U32DataLen = pBuf2Process->u32length;

        /* set IV */
        if (pSoftChan->bIVChange)
        {
            memcpy(pChan->astCipherIVValue[currentPtr].pu32VirAddr, pSoftChan->stCtrl.u32IV, CI_IV_SIZE);
            mb();
            pInBuf->u32IVStartAddr = pChan->astCipherIVValue[currentPtr].u32PhyAddr;

            pInBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_IVSET_BIT);
        }
        else
        {
#if 1       /* for 1 pkg task,  save IV for next pkg unless user config the handle again */
            pInBuf->u32Flags &= ~(1 << CI_BUF_LIST_FLAG_IVSET_BIT);
#else
            memcpy(pChan->astCipherIVValue[currentPtr].pu32VirAddr,
                pChan->astCipherIVValue[pSoftChan->u32LastPkg].pu32VirAddr, CI_IV_SIZE);

            pInBuf->u32IVStartAddr
                = pChan->astCipherIVValue[currentPtr].u32PhyAddr;

            pInBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_IVSET_BIT);
#endif
        }

        /* set Key */
        if (pSoftChan->bKeyChange)
        {
            ret = HAL_Cipher_SetKey(hardWareChn, &(pSoftChan->stCtrl));
            if (HI_SUCCESS != ret)
            {
                return ret;
            }

            pSoftChan->bKeyChange = HI_FALSE;
        }
        else
        {
            ;
        }

        /* just set each node to End_of_list <--- changed by q46153, 20111108, no need,  we think the task is NOT over */
        //pInBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_EOL_BIT);
        //pOutBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_EOL_BIT);

        //ret = HAL_Cipher_Config(hardWareChn, pSoftChan->bDecrypt, pSoftChan->bIVChange, &(pSoftChan->stCtrl));
        ret = HAL_Cipher_Config(hardWareChn, pBuf2Process->bDecrypt, pSoftChan->bIVChange, &(pSoftChan->stCtrl));
        pSoftChan->bIVChange = HI_FALSE;

        pChan->au32WitchSoftChn[currentPtr] = softChnId;
        pChan->au32CallBackArg[currentPtr] = callBackArg;
        pSoftChan->u32PrivateData = callBackArg;
        pChan->bNeedCallback[currentPtr] = HI_TRUE;
        HI_INFO_CIPHER("pkg %d set ok.\n", currentPtr);

        currentPtr++;
        if (currentPtr >=  CIPHER_MAX_LIST_NUM)
        {
            currentPtr = 0;
        }

        /* save list Node */
        pChan->unInData.stPkgNMng.u32CurrentPtr = currentPtr;
        pChan->unInData.stPkgNMng.u32TotalPkg++;
        pChan->unOutData.stPkgNMng.u32TotalPkg++;

        HAL_Cipher_GetOutBufCnt(hardWareChn, &BusyCnt);
        HI_INFO_CIPHER("%s %#x->%#x, LEN:%#x\n", pBuf2Process->bDecrypt ? "Dec" : "ENC",
                pBuf2Process->u32src, pBuf2Process->u32dest,
                pBuf2Process->u32length );
        HAL_Cipher_SetInBufCnt(hardWareChn, 1); /* +1 */

    }
    else
    {
        return HI_FAILURE;
    }

    return ret;
}

#ifdef CFG_HI_CIPHER_MULTI_PACKGET
HI_S32 DRV_CIPHER_CreatMultiPkgTask(HI_U32 softChnId, HI_DRV_CIPHER_DATA_INFO_S *pBuf2Process, HI_U32 pkgNum, HI_U32 callBackArg)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 hardWareChn;
    HI_U32 BusyCnt = 0, i;
    HI_U32 currentPtr;
    CI_BUF_LIST_ENTRY_S *pInBuf;
    CI_BUF_LIST_ENTRY_S *pOutBuf;

    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;
    HI_DRV_CIPHER_DATA_INFO_S *pTmpDataPkg = pBuf2Process;

    pSoftChan = &g_stCipherSoftChans[softChnId];
    hardWareChn = pSoftChan->u32HardWareChn;
    pChan = &g_stCipherChans[hardWareChn];

    HAL_Cipher_GetInBufCnt(hardWareChn, &BusyCnt);
    HI_DEBUG_CIPHER("HAL_Cipher_GetInBufCnt, BusyCnt=%d.\n", BusyCnt);

    pChan->unInData.stPkgNMng.u32BusyCnt = BusyCnt;

    if (BusyCnt + pkgNum > CIPHER_MAX_LIST_NUM) /* */
    {
         HI_ERR_CIPHER("%s: pkg want to do: %u, free pkg num:%u.\n", pBuf2Process->bDecrypt ? "Dec" : "ENC",
                pkgNum, CIPHER_MAX_LIST_NUM - BusyCnt);
         return HI_ERR_CIPHER_BUSY;
    }


    /* set Key */
    if (pSoftChan->bKeyChange)
    {
        ret = HAL_Cipher_SetKey(hardWareChn, &(pSoftChan->stCtrl));
        if (HI_SUCCESS != ret)
        {
            return ret;
        }
        pSoftChan->bKeyChange = HI_FALSE;
    }
    else
    {
        ;
    }


    currentPtr = pChan->unInData.stPkgNMng.u32CurrentPtr;

    for (i = 0; i < pkgNum; i++)
    {
        pTmpDataPkg = pBuf2Process + i;
        pInBuf = pChan->pstInBuf + currentPtr;
        pOutBuf = pChan->pstOutBuf + currentPtr;


        /* set addr */
        pInBuf->u32DataAddr = pTmpDataPkg->u32src;
        pInBuf->U32DataLen = pTmpDataPkg->u32length;

        pOutBuf->u32DataAddr = pTmpDataPkg->u32dest;
        pOutBuf->U32DataLen = pTmpDataPkg->u32length;

        /* set IV */
        if (pSoftChan->bIVChange)
        {
            memcpy(pChan->astCipherIVValue[currentPtr].pu32VirAddr,
                pSoftChan->stCtrl.u32IV, CI_IV_SIZE);
            mb();
            pInBuf->u32IVStartAddr
                = pChan->astCipherIVValue[currentPtr].u32PhyAddr;

            pInBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_IVSET_BIT);
        }
        else
        {
#if 0
            pInBuf->u32Flags &= ~(1 << CI_BUF_LIST_FLAG_IVSET_BIT);
#else  /* for multi pkg task, reset IV(use the user configed IV ) each time. */
            memcpy(pChan->astCipherIVValue[currentPtr].pu32VirAddr,
                pSoftChan->stCtrl.u32IV, CI_IV_SIZE);
            mb();
            pInBuf->u32IVStartAddr = pChan->astCipherIVValue[currentPtr].u32PhyAddr;

            pInBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_IVSET_BIT);
#endif

        }


        pChan->au32WitchSoftChn[currentPtr] = softChnId;
        pChan->au32CallBackArg[currentPtr] = callBackArg;
        pSoftChan->u32PrivateData = callBackArg;
        if ((i + 1) == pkgNum)
        {
            pChan->bNeedCallback[currentPtr] = HI_TRUE ;

            /* just set each node to End_of_list, <--- changed by q46153, 20111108, only the last pkg need this. */
            pInBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_EOL_BIT);
            pOutBuf->u32Flags |= (1 << CI_BUF_LIST_FLAG_EOL_BIT);
        }
        else
        {
            pChan->bNeedCallback[currentPtr] = HI_FALSE ;
        }


        currentPtr++;
        if (currentPtr >=  CIPHER_MAX_LIST_NUM)
        {
            currentPtr = 0;
        }

        /* save list Node */
        pChan->unInData.stPkgNMng.u32CurrentPtr = currentPtr;
        pChan->unInData.stPkgNMng.u32TotalPkg++;
        pChan->unOutData.stPkgNMng.u32TotalPkg++;
    }


    ret = HAL_Cipher_Config(hardWareChn, pTmpDataPkg->bDecrypt,
                            pSoftChan->bIVChange, &(pSoftChan->stCtrl));
    pSoftChan->bIVChange = HI_FALSE;

    HAL_Cipher_SetIntThreshold(pChan->chnId, CIPHER_INT_TYPE_OUT_BUF, pkgNum);

    HAL_Cipher_GetOutBufCnt(hardWareChn, &BusyCnt);
    HAL_Cipher_SetInBufCnt(hardWareChn, pkgNum); /* commit task */
    HI_INFO_CIPHER("%s: pkg:%#x.\n", pTmpDataPkg->bDecrypt ? "Dec" : "ENC",   pkgNum);

    return ret;
}
#endif

/*
*/
HI_S32 DRV_CIPHER_CreatTask(HI_U32 softChnId, HI_DRV_CIPHER_TASK_S *pTask, HI_U32 *pKey, HI_U32 *pIV)
{
    HI_S32 ret;
    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pSoftChan = &g_stCipherSoftChans[softChnId];
    pChan = &g_stCipherChans[pSoftChan->u32HardWareChn];

    if (pKey)
    {
        pSoftChan->bKeyChange = HI_TRUE;
        memcpy(pSoftChan->stCtrl.u32Key, pKey, CI_KEY_SIZE);
    }

    if (pIV)
    {
        pSoftChan->bIVChange = HI_TRUE;
        memcpy(pSoftChan->stCtrl.u32IV, pIV, CI_IV_SIZE);
    }

    HAL_Cipher_SetIntThreshold(pChan->chnId, CIPHER_INT_TYPE_OUT_BUF, 1);

    if (CIPHER_PKGx1_CHAN == pSoftChan->u32HardWareChn)
    {
        ret = DRV_CipherStartSinglePkgChn(softChnId, &(pTask->stData2Process));
    }
    else
    {
        ret = DRV_CipherStartMultiPkgChn(softChnId, &(pTask->stData2Process), pTask->u32CallBackArg);
    }

    if (HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("can't create task, ERR=%#x.\n", ret);
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 DRV_CipherDataDoneSinglePkg(HI_U32 chnId)
{
    CIPHER_CHAN_S *pChan;
    CIPHER_SOFTCHAN_S *pSoftChan;

    pChan = &g_stCipherChans[chnId];
    HI_DEBUG_CIPHER("Data DONE, hwChn:%d\n", chnId);
    pSoftChan = &g_stCipherSoftChans[chnId];

    if (pSoftChan->pfnCallBack)
    {
        pSoftChan->pfnCallBack(pSoftChan->u32PrivateData);
    }
    return HI_SUCCESS;
}

HI_S32 DRV_CipherDataDoneMultiPkg(HI_U32 chnId)
{
    HI_S32 ret;
    HI_U32 currentPtr = 0;
    HI_U32 softChnId = 0;
    HI_U32 fullCnt = 0;
    HI_U32 i, idx = 0;
    CIPHER_CHAN_S *pChan = NULL;
    CIPHER_SOFTCHAN_S *pSoftChan = NULL;
    CI_BUF_LIST_ENTRY_S *pInBuf = NULL;
    CI_BUF_LIST_ENTRY_S *pOutBuf = NULL;

    pChan = &g_stCipherChans[chnId];
    HI_DEBUG_CIPHER("Data DONE, hwChn:%d\n", chnId);

    currentPtr = pChan->unOutData.stPkgNMng.u32CurrentPtr;

    HI_DEBUG_CIPHER("Data DONE, hwChn:%u, currentPtr=%u\n", chnId, currentPtr);

    /* get the finished output data buffer count */
    ret = HAL_Cipher_GetOutBufFull(chnId, &fullCnt);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }
    idx = currentPtr;

    if(idx >= CIPHER_MAX_LIST_NUM)
    {
        HI_ERR_CIPHER("idx error: idx=%u, chnId=%d \n", idx, chnId);
        return HI_FAILURE;
    }

    if (fullCnt > 0) /* have list entry */
    {
        for (i = 0; i < fullCnt; i++)
        {
//            idx = currentPtr;

            softChnId = pChan->au32WitchSoftChn[idx];
            pChan->au32WitchSoftChn[idx] = CIPHER_INVALID_CHN;

            pSoftChan = &g_stCipherSoftChans[softChnId];
            pSoftChan->u32LastPkg = idx;
            HI_DEBUG_CIPHER("softChnId=%d, idx=%u, needCallback:%d\n", softChnId, idx, pChan->bNeedCallback[idx]);
            if (pSoftChan->pfnCallBack && pChan->bNeedCallback[idx])
            {
                HI_DEBUG_CIPHER("CallBack function\n");
                pSoftChan->pfnCallBack(pSoftChan->u32PrivateData);
            }

            pInBuf = pChan->pstInBuf + idx;  /* reset the flag of each pkg */
            pInBuf->u32Flags = 0;

            pOutBuf = pChan->pstOutBuf + idx; /* reset the flag of each pkg */
            pOutBuf->u32Flags = 0;

            idx++;
            if (idx >= CIPHER_MAX_LIST_NUM)
            {
                idx = 0;
            }
        }

        pChan->unOutData.stPkgNMng.u32CurrentPtr = idx;
        HAL_Cipher_SetInBufEmpty(chnId, fullCnt);  /* -  */
        HAL_Cipher_SetOutBufFull(chnId, fullCnt);  /* -  */
        HAL_Cipher_SetOutBufCnt(chnId, fullCnt);   /* +  */
    }
    else
    {
        HI_U32 regValue = 0xabcd;

        HI_ERR_CIPHER("Data done, but fullCnt=0, chn%d\n", chnId);

        HAL_Cipher_GetIntState(&regValue);
        HI_ERR_CIPHER("INTSt:%#x\n", regValue);

        HAL_Cipher_GetIntEnState(&regValue);
        HI_ERR_CIPHER("INTEnSt:%#x\n", regValue);

        HAL_Cipher_GetRawIntState(&regValue);
        HI_ERR_CIPHER("INTRawSt:%#x\n", regValue);

        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/* interrupt routine, callback */
irqreturn_t DRV_Cipher_ISR(HI_S32 irq, HI_VOID *devId)
{
    HI_U32 i;
    HI_U32 INTValue = 0;

    HAL_Cipher_GetIntState(&INTValue);
    HAL_Cipher_ClrIntState(INTValue);

    HI_DEBUG_CIPHER(" in the isr INTValue=%#x!\n", INTValue);

    if (INTValue >> 8 & 0x1) /* single pkg */
    {
        DRV_CipherDataDoneSinglePkg(0);
    }

    for(i = 1; i < CIPHER_CHAN_NUM; i++)
    {
        if ((INTValue >> (i+8)) & 0x1)
        {
            DRV_CipherDataDoneMultiPkg(i);
        }
    }
//    HAL_Cipher_ClrIntState();
    return IRQ_HANDLED;
}


HI_S32 DRV_CIPHER_Init(HI_VOID)
{
    HI_U32 i,j, hwChnId;
    HI_S32 ret;
    HI_U32 bufSizeChn = 0; /* all the buffer list size, included data buffer size and IV buffer size */
    HI_U32 databufSizeChn = 0; /* max list number data buffer size */
    HI_U32 ivbufSizeChn = 0; /* all the list IV size */
    HI_U32 bufSizeTotal = 0; /* all the channel buffer size */
    MMZ_BUFFER_S   cipherListBuf;
    CIPHER_CHAN_S *pChan;

    memset(&g_stCipherComm, 0, sizeof(g_stCipherComm));
    memset(&g_stCipherChans, 0, sizeof(g_stCipherChans));
    memset(&g_stCipherSoftChans, 0, sizeof(g_stCipherSoftChans));

    for (i = 0; i < CIPHER_SOFT_CHAN_NUM; i++)
    {
        g_stCipherOsrChn[i].g_bSoftChnOpen = HI_FALSE;
        g_stCipherOsrChn[i].g_bDataDone = HI_FALSE;
        g_stCipherOsrChn[i].pWichFile = NULL;
        init_waitqueue_head(&(g_stCipherOsrChn[i].cipher_wait_queue));
        g_stCipherOsrChn[i].pstDataPkg = NULL;
    }

/*
==========================channel-1=============================
*----------------------------------------------------------------------
*| +++++++++++++++++++                               +++++++++++++++++++  |
*| +byte1|byte2|byte3|byte4 +       ... ...                 +byte1|byte2|byte3|byte4 +  |inBuf
*| +++++++++++++++++++                               +++++++++++++++++++  |
*|             list-1                              ... ...                              list-128(MAX_LIST)    |
*----------------------------------------------------------------------
*| +++++++++++++++++++                               +++++++++++++++++++  |
*| +byte1|byte2|byte3|byte4 +       ... ...                 +byte1|byte2|byte3|byte4 +  |outBuf
*| +++++++++++++++++++                               +++++++++++++++++++  |
*|             list-1                              ... ...                              list-128(MAX_LIST)    |
*----------------------------------------------------------------------
*| +++++++++++++++++++                               +++++++++++++++++++  |
*| +byte1|byte2|byte3|byte4 +       ... ...                 +byte1|byte2|byte3|byte4 +  |keyBuf
*| +++++++++++++++++++                               +++++++++++++++++++  |
*|             list-1                              ... ...                              list-128(MAX_LIST)    |
*----------------------------------------------------------------------
=============================================================
...
...
...
==========================channel-7=============================
*----------------------------------------------------------------------
*| +++++++++++++++++++                               +++++++++++++++++++  |
*| +byte1|byte2|byte3|byte4 +       ... ...                 +byte1|byte2|byte3|byte4 +  |inBuf
*| +++++++++++++++++++                               +++++++++++++++++++  |
*|             list-1                              ... ...                              list-128(MAX_LIST)    |
*----------------------------------------------------------------------
*| +++++++++++++++++++                               +++++++++++++++++++  |
*| +byte1|byte2|byte3|byte4 +       ... ...                 +byte1|byte2|byte3|byte4 +  |outBuf
*| +++++++++++++++++++                               +++++++++++++++++++  |
*|             list-1                              ... ...                              list-128(MAX_LIST)    |
*----------------------------------------------------------------------
*| +++++++++++++++++++                               +++++++++++++++++++  |
*| +byte1|byte2|byte3|byte4 +       ... ...                 +byte1|byte2|byte3|byte4 +  |keyBuf
*| +++++++++++++++++++                               +++++++++++++++++++  |
*|             list-1                              ... ...                              list-128(MAX_LIST)    |
*----------------------------------------------------------------------
=============================================================
*/

    databufSizeChn = sizeof(CI_BUF_LIST_ENTRY_S) * CIPHER_MAX_LIST_NUM;
    ivbufSizeChn = CI_IV_SIZE * CIPHER_MAX_LIST_NUM;
    bufSizeChn = (databufSizeChn * 2) + ivbufSizeChn;/* inBuf + outBuf + keyBuf */
    bufSizeTotal = bufSizeChn * (CIPHER_PKGxN_CHAN_MAX - CIPHER_PKGxN_CHAN_MIN + 1) ; /* only 7 channels need buf */

    HAL_Cipher_Init();
    HAL_Cipher_DisableAllInt();

    /* allocate 7 channels size */
    ret = HI_DRV_MMZ_AllocAndMap("CIPHER_ChnBuf",NULL, bufSizeTotal, 0, &(cipherListBuf));
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Can NOT get mem for cipher, init failed, exit...\n");
        return HI_FAILURE;
    }
    else
    {
        memset((void*)(cipherListBuf.u32StartVirAddr), 0, cipherListBuf.u32Size);

        /* save the whole memory info, included physical address, virtual address and their size */
        memcpy(&(g_stCipherComm.stPhyBuf), &(cipherListBuf), sizeof(g_stCipherComm.stPhyBuf));
    }

    HI_DEBUG_CIPHER("TOTAL BUF: %#x/%#x", cipherListBuf.u32StartPhyAddr, cipherListBuf.u32StartVirAddr);

    /* assign hardware channel ID from 0 to 7 */
    for (i = 0; i <= CIPHER_PKGxN_CHAN_MAX; i++)
    {
        pChan = &g_stCipherChans[i];
        pChan->chnId = i;
    }

/*
channel layout
==============================================================
|
|
==============================================================
/\                                     /\                                      /\
 |              IV buf                  |             IN buf                    |             OUT buf
startPhyAddr
==============================================================
|
|
==============================================================
/\                                     /\                                      /\
 |              IV buf                  |             IN buf                    |             OUT buf
 startVirAddr
*/
    for (i = 0; i < CIPHER_PKGxN_CHAN_MAX; i++)
    {
        /* config channel from 1 to 7 */
        hwChnId = i+CIPHER_PKGxN_CHAN_MIN;
        pChan = &g_stCipherChans[hwChnId];

        pChan->astCipherIVValue[0].u32PhyAddr = cipherListBuf.u32StartPhyAddr + (i * bufSizeChn);
        pChan->astCipherIVValue[0].pu32VirAddr = (HI_U32 *)(cipherListBuf.u32StartVirAddr + (i * bufSizeChn));

        for (j = 1; j < CIPHER_MAX_LIST_NUM; j++)
        {
            pChan->astCipherIVValue[j].u32PhyAddr = pChan->astCipherIVValue[0].u32PhyAddr + (CI_IV_SIZE * j);
            pChan->astCipherIVValue[j].pu32VirAddr = (HI_U32*)(((HI_U32)pChan->astCipherIVValue[0].pu32VirAddr) + (CI_IV_SIZE * j));

            pChan->bNeedCallback[j] = HI_FALSE;
        }

        pChan->pstInBuf = (CI_BUF_LIST_ENTRY_S*)((HI_U32)(pChan->astCipherIVValue[0].pu32VirAddr) + ivbufSizeChn);
        pChan->pstOutBuf = (CI_BUF_LIST_ENTRY_S*)((HI_U32)(pChan->pstInBuf) + databufSizeChn);

        HAL_Cipher_SetBufAddr(hwChnId, CIPHER_BUF_TYPE_IN, pChan->astCipherIVValue[0].u32PhyAddr + ivbufSizeChn);
        HAL_Cipher_SetBufAddr(hwChnId, CIPHER_BUF_TYPE_OUT, pChan->astCipherIVValue[0].u32PhyAddr + ivbufSizeChn + databufSizeChn);

        DRV_CipherInitHardWareChn(hwChnId);


    }

    /* debug info */
    for (i = 0; i < CIPHER_PKGxN_CHAN_MAX; i++)
    {
        hwChnId = i+CIPHER_PKGxN_CHAN_MIN;
        pChan = &g_stCipherChans[hwChnId];

        HI_INFO_CIPHER("Chn%02x, IV:%#x/%p In:%#x/%p, Out:%#x/%p.\n", i,
            pChan->astCipherIVValue[0].u32PhyAddr,
            pChan->astCipherIVValue[0].pu32VirAddr,
            pChan->astCipherIVValue[0].u32PhyAddr + ivbufSizeChn, pChan->pstInBuf,
            pChan->astCipherIVValue[0].u32PhyAddr + ivbufSizeChn + databufSizeChn, pChan->pstOutBuf );
    }

    HAL_Cipher_ClrIntState(0xffffffff);

    /* request irq */
    /* CIPHER_IRQ_NUMBER is valid for linux-3.x.y but invalid for linux-4.4.y
     * irq number is defined in linux-4.4.y/arch/arm/boot/dts/hi3716mvxxx.dts for linux-4.4.y
     */
    ret = osal_request_irq(CIPHER_IRQ_NUMBER, DRV_Cipher_ISR, IRQF_SHARED, "cipher", &g_stCipherComm);
    if(HI_SUCCESS != ret)
    {
        HAL_Cipher_DisableAllInt();
        HAL_Cipher_ClrIntState(0xffffffff);

        HI_ERR_CIPHER("Irq request failure, ret=%#x.", ret);
        HI_DRV_MMZ_UnmapAndRelease(&(g_stCipherComm.stPhyBuf));
        return HI_FAILURE;
    }

#if defined(CHIP_TYPE_hi3719mv100) || defined(CHIP_TYPE_hi3718mv100) || defined(CHIP_TYPE_hi3798mv100_a) || defined(CHIP_TYPE_hi3798mv100)
    HAL_Cipher_EnableAllSecChn();
#endif
    return HI_SUCCESS;
}

HI_VOID DRV_CIPHER_DeInit(HI_VOID)
{
    HI_U32 i, hwChnId;

    HAL_Cipher_DisableAllInt();
    HAL_Cipher_ClrIntState(0xffffffff);

    for (i = 0; i < CIPHER_PKGxN_CHAN_MAX; i++)
    {
        hwChnId = i+CIPHER_PKGxN_CHAN_MIN;
        DRV_CipherDeInitHardWareChn(hwChnId);
    }

    /* free irq */
    osal_free_irq(CIPHER_IRQ_NUMBER, "cipher", &g_stCipherComm);

    HI_DRV_MMZ_UnmapAndRelease(&(g_stCipherComm.stPhyBuf));

    HAL_Cipher_DeInit();

    return;
}

HI_VOID HI_DRV_CIPHER_Suspend(HI_VOID)
{
    DRV_CIPHER_DeInit();

    return;
}

HI_S32 HI_DRV_CIPHER_Resume(HI_VOID)
{
    HI_U32 i, j, hwChnId;
    HI_S32 ret = HI_SUCCESS;
    HI_U32 bufSizeChn = 0;      /* all the buffer list size, included data buffer size and IV buffer size */
    HI_U32 databufSizeChn = 0;  /* max list number data buffer size */
    HI_U32 ivbufSizeChn = 0;    /* all the list IV size */
    HI_U32 bufSizeTotal = 0;    /* all the channel buffer size */
    MMZ_BUFFER_S   cipherListBuf;
    CIPHER_CHAN_S *pChan;

    memset(&g_stCipherComm, 0, sizeof(g_stCipherComm));
    memset(&g_stCipherChans, 0, sizeof(g_stCipherChans));

    databufSizeChn = sizeof(CI_BUF_LIST_ENTRY_S) * CIPHER_MAX_LIST_NUM;
    ivbufSizeChn = CI_IV_SIZE * CIPHER_MAX_LIST_NUM;
    bufSizeChn = (databufSizeChn * 2) + ivbufSizeChn;/* inBuf + outBuf + keyBuf */
    bufSizeTotal = bufSizeChn * (CIPHER_PKGxN_CHAN_MAX - CIPHER_PKGxN_CHAN_MIN + 1) ; /* only 7 channels need buf */

    HAL_Cipher_Init();
#ifdef CFG_HI_CIPHER_HASH_SUPPORT
    HAL_Cipher_HashSoftReset();
#endif
    HAL_Cipher_DisableAllInt();

    /* allocate 7 channels size */
    ret = HI_DRV_MMZ_AllocAndMap("CIPHER_ChnBuf", NULL, bufSizeTotal, 0, &(cipherListBuf));
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Can NOT get mem for cipher, init failed, exit...\n");
        return ret;
    }
    else
    {
        memset((void*)(cipherListBuf.u32StartVirAddr), 0, cipherListBuf.u32Size);

        /* save the whole memory info, included physical address, virtual address and their size */
        memcpy(&(g_stCipherComm.stPhyBuf), &(cipherListBuf), sizeof(g_stCipherComm.stPhyBuf));
    }

    /* assign hardware channel ID from 0 to 7 */
    for (i = 0; i <= CIPHER_PKGxN_CHAN_MAX; i++)
    {
        pChan = &g_stCipherChans[i];
        pChan->chnId = i;
    }

    for (i = 0; i < CIPHER_PKGxN_CHAN_MAX; i++)
    {
        /* config channel from 1 to 7 */
        hwChnId = i + CIPHER_PKGxN_CHAN_MIN;
        pChan = &g_stCipherChans[hwChnId];

        pChan->astCipherIVValue[0].u32PhyAddr
            = cipherListBuf.u32StartPhyAddr + (i * bufSizeChn);
        pChan->astCipherIVValue[0].pu32VirAddr
            = (HI_U32*)(cipherListBuf.u32StartVirAddr + (i * bufSizeChn));

        for (j = 1; j < CIPHER_MAX_LIST_NUM; j++)
        {
            pChan->astCipherIVValue[j].u32PhyAddr
                = pChan->astCipherIVValue[0].u32PhyAddr + (CI_IV_SIZE * j);
            pChan->astCipherIVValue[j].pu32VirAddr
                = (HI_U32*)(((HI_U32)pChan->astCipherIVValue[0].pu32VirAddr) + (CI_IV_SIZE * j));

            pChan->bNeedCallback[j] = HI_FALSE;
        }

        pChan->pstInBuf = (CI_BUF_LIST_ENTRY_S*)((HI_U32)(pChan->astCipherIVValue[0].pu32VirAddr) + ivbufSizeChn);
        pChan->pstOutBuf = (CI_BUF_LIST_ENTRY_S*)((HI_U32)(pChan->pstInBuf) + databufSizeChn);

        HAL_Cipher_SetBufAddr(hwChnId, CIPHER_BUF_TYPE_IN,
            pChan->astCipherIVValue[0].u32PhyAddr + ivbufSizeChn);
        HAL_Cipher_SetBufAddr(hwChnId, CIPHER_BUF_TYPE_OUT,
            pChan->astCipherIVValue[0].u32PhyAddr + ivbufSizeChn + databufSizeChn);

        DRV_CipherInitHardWareChn(hwChnId);
    }

    HAL_Cipher_ClrIntState(0xffffffff);

    /* request irq */
    ret = osal_request_irq(CIPHER_IRQ_NUMBER, DRV_Cipher_ISR, IRQF_SHARED, "cipher", &g_stCipherComm);
    if(HI_SUCCESS != ret)
    {
        HAL_Cipher_DisableAllInt();
        HAL_Cipher_ClrIntState(0xffffffff);

        HI_ERR_CIPHER("Irq request failure, ret=%#x.", ret);
        HI_DRV_MMZ_UnmapAndRelease(&(g_stCipherComm.stPhyBuf));
        return ret;
    }

    for(i = 0; i < CIPHER_CHAN_NUM; i++)
    {
        if (g_stCipherSoftChans[i].bOpen)
        {
            DRV_CIPHER_OpenChn(i);
            HI_DRV_CIPHER_ConfigChn(i, &g_stCipherSoftChans[i].stCtrl);
        }
    }

#if defined(CHIP_TYPE_hi3719mv100) || defined(CHIP_TYPE_hi3718mv100) || defined(CHIP_TYPE_hi3798mv100_a) || defined(CHIP_TYPE_hi3798mv100)
    HAL_Cipher_EnableAllSecChn();
#endif
#ifdef CFG_HI_CIPHER_HDCP_SUPPORT
    DRV_CIPHER_Hdcp_Resume();
#endif

    return HI_SUCCESS;
}

HI_S32 HI_DRV_CIPHER_GetHandleConfig(CIPHER_Config_CTRL *pstCipherConfig)
{
    CIPHER_SOFTCHAN_S *pSoftChan = NULL;
    HI_U32 u32SoftChanId = 0;

    if(pstCipherConfig == NULL)
    {
        HI_ERR_CIPHER("Error! NULL pointer!\n");
        return HI_FAILURE;
    }

    if(down_interruptible(&g_CipherMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }

    u32SoftChanId = HI_HANDLE_GET_CHNID(pstCipherConfig->CIHandle);
    CIPHER_CheckHandle(u32SoftChanId);

    pSoftChan = &g_stCipherSoftChans[u32SoftChanId];
    memcpy(&pstCipherConfig->CIpstCtrl, &(pSoftChan->stCtrl), sizeof(HI_UNF_CIPHER_CTRL_S));

	up(&g_CipherMutexKernel);
    return HI_SUCCESS;
}

HI_S32 DRV_CIPHER_CreateHandle(CIPHER_HANDLE_S *pstCIHandle)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 i = 0;
    HI_HANDLE hCipherchn = 0;
    HI_U32 softChnId = 0;

    if ( NULL == pstCIHandle)
    {
        HI_ERR_CIPHER("Invalid params!\n");
        return HI_FAILURE;
    }

    if ( HI_UNF_CIPHER_TYPE_NORMAL != pstCIHandle->stCipherAtts.enCipherType )
    {
        if(HI_UNF_CIPHER_TYPE_BUTT <= pstCIHandle->stCipherAtts.enCipherType)
        {
            HI_ERR_CIPHER("Invalid cipher type!\n");
            return HI_FAILURE;
        }
        if (0 == g_stCipherOsrChn[0].g_bSoftChnOpen)
        {
            i = 0;
            if (HI_UNF_CIPHER_TYPE_COPY_AVOID == pstCIHandle->stCipherAtts.enCipherType)
            {
#ifdef CFG_HI_CIPHER_HDCP_SUPPORT
                (HI_VOID)DRV_CIPHER_SetHdcpModeEn(CIPHER_HDCP_MODE_NO_HDCP_KEY);
#endif
            }
        }
        else
        {
            i = CIPHER_INVALID_CHN;
        }
    }
    else
    {
        for(i = CIPHER_PKGxN_CHAN_MIN; i < CIPHER_SOFT_CHAN_NUM; i++)
        {
            if (0 == g_stCipherOsrChn[i].g_bSoftChnOpen)
            {
                break;
            }
        }
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

    hCipherchn = HI_HANDLE_MAKEHANDLE(HI_ID_CIPHER, 0, softChnId);

    ret = DRV_CIPHER_OpenChn(softChnId);
    if (HI_SUCCESS != ret)
    {
        HI_VFREE(HI_ID_CIPHER, g_stCipherOsrChn[i].pstDataPkg);
        g_stCipherOsrChn[i].pstDataPkg = NULL;
        return HI_FAILURE;
    }

    pstCIHandle->hCIHandle = hCipherchn;

    return HI_SUCCESS;
}


HI_S32 HI_DRV_CIPHER_CreateHandle(CIPHER_HANDLE_S *pstCIHandle)
{
	HI_S32 ret = HI_SUCCESS;

    if(down_interruptible(&g_CipherMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }

	ret = DRV_CIPHER_CreateHandle(pstCIHandle);

	up(&g_CipherMutexKernel);

	return ret;
}

HI_S32 DRV_CIPHER_DestroyHandle(HI_HANDLE hCipherchn)
{
    HI_U32 softChnId = 0;
	HI_S32 ret = HI_SUCCESS;

    softChnId = HI_HANDLE_GET_CHNID(hCipherchn);
    CIPHER_CheckHandle(softChnId);

    if (g_stCipherOsrChn[softChnId].pstDataPkg)
    {
        HI_VFREE(HI_ID_CIPHER, g_stCipherOsrChn[softChnId].pstDataPkg);
        g_stCipherOsrChn[softChnId].pstDataPkg = NULL;
    }

    g_stCipherOsrChn[softChnId].g_bSoftChnOpen = HI_FALSE;
    g_stCipherOsrChn[softChnId].pWichFile = NULL;

    ret = DRV_CIPHER_CloseChn(softChnId);

	return ret;
}


HI_S32 HI_DRV_CIPHER_DestroyHandle(HI_HANDLE hCipherchn)
{
	HI_S32 ret = HI_SUCCESS;

    if(down_interruptible(&g_CipherMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }

	ret = DRV_CIPHER_DestroyHandle(hCipherchn);

	up(&g_CipherMutexKernel);

	return ret;
}

HI_S32 DRV_CIPHER_Encrypt(CIPHER_DATA_S *pstCIData)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 softChnId = 0;
    HI_DRV_CIPHER_TASK_S stCITask;
    HI_U32 u32BlockSize = 8;

    memset(&stCITask, 0, sizeof(stCITask));
    softChnId = HI_HANDLE_GET_CHNID(pstCIData->CIHandle);
    CIPHER_CheckHandle(softChnId);

    if (g_stCipherSoftChans[softChnId].stCtrl.enAlg == HI_UNF_CIPHER_ALG_AES)
    {
        u32BlockSize = 16;
        if ( (pstCIData->u32DataLength == 0) 
            || (pstCIData->u32DataLength % 16 != 0))
        {
            HI_ERR_CIPHER("Invalid encrypt length, must be multiple of 16 bytes!\n");
            return HI_FAILURE;
        }
    }
        
    if ( 0 != softChnId )
    {
        stCITask.stData2Process.u32src = pstCIData->ScrPhyAddr;
        stCITask.stData2Process.u32dest = pstCIData->DestPhyAddr;
        stCITask.stData2Process.u32length = pstCIData->u32DataLength;
        stCITask.stData2Process.bDecrypt = HI_FALSE;
        stCITask.u32CallBackArg = softChnId;

        HI_INFO_CIPHER("Start to Encrypt, chnNum = %#x!\n", softChnId);

        g_stCipherOsrChn[softChnId].g_bDataDone = HI_FALSE;

        ret = DRV_CIPHER_CreatTask(softChnId,&stCITask, NULL, NULL);
        if (HI_SUCCESS != ret)
        {
            return ret;
        }

        if (0 == wait_event_interruptible_timeout(g_stCipherOsrChn[softChnId].cipher_wait_queue,
                    g_stCipherOsrChn[softChnId].g_bDataDone != HI_FALSE, 2000))
        {
            HI_ERR_CIPHER("Encrypt time out! \n");
            return HI_FAILURE;
        }

        HI_INFO_CIPHER("Encrypt OK, chnNum = %#x!\n", softChnId);

        return HI_SUCCESS;
    }
    else
    {
        MMZ_BUFFER_S stSrcMmzBuf;
        MMZ_BUFFER_S stDestMmzBuf;
        HI_U32 u32Offset = 0;

        if ( pstCIData->u32DataLength % u32BlockSize != 0)
        {
            HI_ERR_CIPHER("Invalid encrypt length, must be multiple of 16 bytes!\n");
            return HI_FAILURE;
        }

        stSrcMmzBuf.u32Size = pstCIData->u32DataLength;
        stSrcMmzBuf.u32StartPhyAddr = pstCIData->ScrPhyAddr;
        ret = HI_DRV_MMZ_Map(&stSrcMmzBuf);
        if ( HI_FAILURE == ret)
        {
            HI_ERR_CIPHER("DRV SRC MMZ MAP ERROR!\n");
            return ret;
        }

        stDestMmzBuf.u32Size = pstCIData->u32DataLength;
        stDestMmzBuf.u32StartPhyAddr = pstCIData->DestPhyAddr;
        ret = HI_DRV_MMZ_Map(&stDestMmzBuf);
        if ( HI_FAILURE == ret)
        {
            HI_ERR_CIPHER("DRV DEST MMZ MAP ERROR!\n");
            HI_DRV_MMZ_Unmap(&stSrcMmzBuf);
            return ret;
        }

		while(u32Offset < pstCIData->u32DataLength)
		{
		    memcpy((HI_U8 *)(stCITask.stData2Process.u32DataPkg), (HI_U8 *)stSrcMmzBuf.u32StartVirAddr + u32Offset, u32BlockSize);
		    stCITask.stData2Process.u32length = u32BlockSize;
		    stCITask.stData2Process.bDecrypt = HI_FALSE;
		    stCITask.u32CallBackArg = softChnId;

		    ret = DRV_CIPHER_CreatTask(softChnId, &stCITask, NULL, NULL);
		    if (HI_SUCCESS != ret)
		    { 
	            HI_ERR_CIPHER("Cipher create task failed!\n");
	            HI_DRV_MMZ_Unmap(&stSrcMmzBuf);
	            HI_DRV_MMZ_Unmap(&stDestMmzBuf);
	            return HI_FAILURE;
		    }

		    memcpy((HI_U8 *)stDestMmzBuf.u32StartVirAddr + u32Offset, (HI_U8 *)(stCITask.stData2Process.u32DataPkg), u32BlockSize);
		    u32Offset += u32BlockSize;
		}

        HI_DRV_MMZ_Unmap(&stSrcMmzBuf);
        HI_DRV_MMZ_Unmap(&stDestMmzBuf);
        return HI_SUCCESS;
    }
}

HI_S32 HI_DRV_CIPHER_Encrypt(CIPHER_DATA_S *pstCIData)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32TotalSize = 0;
    CIPHER_DATA_S stCIData;

    if(down_interruptible(&g_CipherMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }

    stCIData.CIHandle = pstCIData->CIHandle;
    
	while (u32TotalSize < pstCIData->u32DataLength)
	{
		stCIData.u32DataLength = pstCIData->u32DataLength - u32TotalSize;
		if (stCIData.u32DataLength > CIPHER_MAX_NODE_BUF_SIZE)
		{
			stCIData.u32DataLength = CIPHER_MAX_NODE_BUF_SIZE;
		}

        stCIData.ScrPhyAddr  = pstCIData->ScrPhyAddr  + u32TotalSize;
        stCIData.DestPhyAddr = pstCIData->DestPhyAddr + u32TotalSize;
        u32TotalSize += stCIData.u32DataLength;
        
	    ret = DRV_CIPHER_Encrypt(&stCIData);
        if (ret != HI_SUCCESS)
        {
            break;
        }
    }

    up(&g_CipherMutexKernel); 

    return ret;
}

HI_S32 DRV_CIPHER_Decrypt(CIPHER_DATA_S *pstCIData)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 softChnId = 0;
    HI_DRV_CIPHER_TASK_S pCITask;
    HI_U32 u32BlockSize = 8;

    if(NULL == pstCIData)
    {
        HI_ERR_CIPHER("Invalid param!\n");
        return HI_FAILURE;
    }

    softChnId = HI_HANDLE_GET_CHNID(pstCIData->CIHandle);
    CIPHER_CheckHandle(softChnId);

    if (g_stCipherSoftChans[softChnId].stCtrl.enAlg == HI_UNF_CIPHER_ALG_AES)
    {
        u32BlockSize = 16;
        if ( (pstCIData->u32DataLength == 0) 
            || (pstCIData->u32DataLength % 16 != 0))
        {
            HI_ERR_CIPHER("Invalid encrypt length, must be multiple of 16 bytes!\n");
            return HI_FAILURE;
        }
    }
    
    if ( 0 != softChnId)
    {
        pCITask.stData2Process.u32src = pstCIData->ScrPhyAddr;
        pCITask.stData2Process.u32dest = pstCIData->DestPhyAddr;
        pCITask.stData2Process.u32length = pstCIData->u32DataLength;
        pCITask.stData2Process.bDecrypt = HI_TRUE;

        pCITask.u32CallBackArg=softChnId;

        HI_INFO_CIPHER("Start to Decrypt, chnNum = %#x!\n", softChnId);

        g_stCipherOsrChn[softChnId].g_bDataDone = HI_FALSE;

        ret = DRV_CIPHER_CreatTask(softChnId,&pCITask,NULL,NULL);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_CIPHER("Cipher create task failed!\n");
            return ret;
        }

        if (0== wait_event_interruptible_timeout(g_stCipherOsrChn[softChnId].cipher_wait_queue,
                    g_stCipherOsrChn[softChnId].g_bDataDone != HI_FALSE, 2000))
        {
            HI_ERR_CIPHER("Decrypt time out \n");
            return HI_FAILURE;
        }

        HI_INFO_CIPHER("Decrypt OK, chnNum = %#x!\n", softChnId);

        return HI_SUCCESS;
    }
    else
    {
        MMZ_BUFFER_S stSrcMmzBuf;
        MMZ_BUFFER_S stDestMmzBuf;
        HI_U32 u32Offset = 0;

        if ( pstCIData->u32DataLength % u32BlockSize != 0)
        {
            HI_ERR_CIPHER("Invalid decrypt length, must be multiple of 16 bytes!\n");
            return HI_FAILURE;
        }

        stSrcMmzBuf.u32Size = pstCIData->u32DataLength;
        stSrcMmzBuf.u32StartPhyAddr = pstCIData->ScrPhyAddr;
        ret = HI_DRV_MMZ_Map(&stSrcMmzBuf);
        if ( HI_FAILURE == ret)
        {
            HI_ERR_CIPHER("DRV SRC MMZ MAP ERROR!\n");
            return HI_FAILURE;
        }

        stDestMmzBuf.u32Size = pstCIData->u32DataLength;
        stDestMmzBuf.u32StartPhyAddr = pstCIData->DestPhyAddr;
        ret = HI_DRV_MMZ_Map(&stDestMmzBuf);
        if ( HI_FAILURE == ret)
        {
            HI_ERR_CIPHER("DRV DEST MMZ MAP ERROR!\n");
            HI_DRV_MMZ_Unmap(&stSrcMmzBuf);
            return HI_FAILURE;
        }

		while(u32Offset < pstCIData->u32DataLength)
		{
		    memcpy((HI_U8 *)(pCITask.stData2Process.u32DataPkg), (HI_U8 *)stSrcMmzBuf.u32StartVirAddr + u32Offset, u32BlockSize);
		    pCITask.stData2Process.u32length = u32BlockSize;
		    pCITask.stData2Process.bDecrypt = HI_TRUE;
		    pCITask.u32CallBackArg = softChnId;

		    ret = DRV_CIPHER_CreatTask(softChnId, &pCITask, NULL, NULL);
		    if (HI_SUCCESS != ret)
		    { 
	            HI_ERR_CIPHER("Cipher create task failed!\n");
	            HI_DRV_MMZ_Unmap(&stSrcMmzBuf);
	            HI_DRV_MMZ_Unmap(&stDestMmzBuf);
	            return HI_FAILURE;
		    }

		    memcpy((HI_U8 *)stDestMmzBuf.u32StartVirAddr + u32Offset, (HI_U8 *)(pCITask.stData2Process.u32DataPkg), u32BlockSize);
		    u32Offset += u32BlockSize;
		}

        HI_DRV_MMZ_Unmap(&stSrcMmzBuf);
        HI_DRV_MMZ_Unmap(&stDestMmzBuf);

        return HI_SUCCESS;
    }
}

HI_S32 HI_DRV_CIPHER_Decrypt(CIPHER_DATA_S *pstCIData)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32TotalSize = 0;
    CIPHER_DATA_S stCIData;

    if(down_interruptible(&g_CipherMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }

    stCIData.CIHandle = pstCIData->CIHandle;
    
	while (u32TotalSize < pstCIData->u32DataLength)
	{
		stCIData.u32DataLength = pstCIData->u32DataLength - u32TotalSize;
		if (stCIData.u32DataLength > CIPHER_MAX_NODE_BUF_SIZE)
		{
			stCIData.u32DataLength = CIPHER_MAX_NODE_BUF_SIZE;
		}

        stCIData.ScrPhyAddr  = pstCIData->ScrPhyAddr  + u32TotalSize;
        stCIData.DestPhyAddr = pstCIData->DestPhyAddr + u32TotalSize;
        u32TotalSize += stCIData.u32DataLength;
        
	    ret = DRV_CIPHER_Decrypt(&stCIData);
        if (ret != HI_SUCCESS)
        {
            break;
        }
    }

    up(&g_CipherMutexKernel); 

    return ret;
}

#ifdef CFG_HI_CIPHER_MULTI_PACKGET
HI_S32 HI_DRV_CIPHER_EncryptMulti(CIPHER_DATA_S *pstCIData)
{
    HI_U32 i = 0;
    HI_U32 softChnId = 0;
    static HI_DRV_CIPHER_DATA_INFO_S  tmpData[CIPHER_MAX_LIST_NUM];
    HI_UNF_CIPHER_DATA_S *pTmp = NULL;
    HI_U32 pkgNum = 0;
    HI_S32 ret = HI_SUCCESS;

    if(NULL == pstCIData)
    {
        HI_ERR_CIPHER("Invalid params!\n");
        return HI_FAILURE;
    }

    if(down_interruptible(&g_CipherMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }

    softChnId = HI_HANDLE_GET_CHNID(pstCIData->CIHandle);
    CIPHER_CheckHandle(softChnId);

    pkgNum = pstCIData->u32DataLength;
    if (pkgNum > CIPHER_MAX_LIST_NUM)
    {
        HI_ERR_CIPHER("Error: you send too many pkg(%d), must < %d.\n",pkgNum, CIPHER_MAX_LIST_NUM);
		up(&g_CipherMutexKernel);
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if (copy_from_user(g_stCipherOsrChn[softChnId].pstDataPkg, (void*)pstCIData->ScrPhyAddr,
                       pkgNum * sizeof(HI_UNF_CIPHER_DATA_S)))
    {
        HI_ERR_CIPHER("copy data from user fail!\n");
		up(&g_CipherMutexKernel);
        return HI_FAILURE;
    }

    for (i = 0; i < pstCIData->u32DataLength; i++)
    {
        pTmp = g_stCipherOsrChn[softChnId].pstDataPkg + i;
        if (g_stCipherSoftChans[softChnId].stCtrl.enAlg == HI_UNF_CIPHER_ALG_AES)
        {
            if ( (pTmp->u32ByteLength == 0)|| (pTmp->u32ByteLength % 16 != 0))
            {
                HI_ERR_CIPHER("Invalid encrypt length, must be multiple of 16 bytes!\n");
                up(&g_CipherMutexKernel);
                return HI_FAILURE;
            }
        }
        tmpData[i].bDecrypt = HI_FALSE;
        tmpData[i].u32src = pTmp->u32SrcPhyAddr;
        tmpData[i].u32dest = pTmp->u32DestPhyAddr;
        tmpData[i].u32length = pTmp->u32ByteLength;
    }

    HI_INFO_CIPHER("Start to DecryptMultiPkg, chnNum = %#x, pkgNum=%d!\n", softChnId, pkgNum);

    g_stCipherOsrChn[softChnId].g_bDataDone = HI_FALSE;

    ret = DRV_CIPHER_CreatMultiPkgTask(softChnId, tmpData, pkgNum, softChnId);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Cipher create multi task failed!\n");
		up(&g_CipherMutexKernel);
        return ret;
    }

    if (0== wait_event_interruptible_timeout(g_stCipherOsrChn[softChnId].cipher_wait_queue,
                g_stCipherOsrChn[softChnId].g_bDataDone != HI_FALSE, 200))
    {
        HI_ERR_CIPHER("Decrypt time out \n");
		up(&g_CipherMutexKernel);
        return HI_FAILURE;
    }

    HI_INFO_CIPHER("Decrypt OK, chnNum = %#x!\n", softChnId);

	up(&g_CipherMutexKernel);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_CIPHER_DecryptMulti(CIPHER_DATA_S *pstCIData)
{
    HI_U32 i;
    HI_U32 softChnId = 0;
    static HI_DRV_CIPHER_DATA_INFO_S  tmpData[CIPHER_MAX_LIST_NUM];
    HI_UNF_CIPHER_DATA_S *pTmp = NULL;
    HI_U32 pkgNum = 0;
    HI_S32 ret = HI_SUCCESS;

    if(NULL == pstCIData)
    {
        HI_ERR_CIPHER("Invalid params!\n");
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if(down_interruptible(&g_CipherMutexKernel))
    {
    	HI_ERR_CIPHER("down_interruptible failed!\n");
        return HI_FAILURE;
    }

    softChnId = HI_HANDLE_GET_CHNID(pstCIData->CIHandle);
    CIPHER_CheckHandle(softChnId);

    pkgNum = pstCIData->u32DataLength;
    if (pkgNum > CIPHER_MAX_LIST_NUM)
    {
        HI_ERR_CIPHER("Error: you send too many pkg(%d), must < %d.\n",pkgNum, CIPHER_MAX_LIST_NUM);
		up(&g_CipherMutexKernel);
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if (copy_from_user(g_stCipherOsrChn[softChnId].pstDataPkg, (void*)pstCIData->ScrPhyAddr,
                       pkgNum * sizeof(HI_UNF_CIPHER_DATA_S)))
    {
        HI_ERR_CIPHER("copy data from user fail!\n");
		up(&g_CipherMutexKernel);
        return HI_FAILURE;
    }

    for (i = 0; i < pstCIData->u32DataLength; i++)
    {
        pTmp = g_stCipherOsrChn[softChnId].pstDataPkg + i;
        if (g_stCipherSoftChans[softChnId].stCtrl.enAlg == HI_UNF_CIPHER_ALG_AES)
        {
            if ( (pTmp->u32ByteLength == 0)|| (pTmp->u32ByteLength % 16 != 0))
            {
                HI_ERR_CIPHER("Invalid encrypt length, must be multiple of 16 bytes!\n");
                up(&g_CipherMutexKernel);
                return HI_FAILURE;
            }
        }
        tmpData[i].bDecrypt = HI_TRUE;
        tmpData[i].u32src = pTmp->u32SrcPhyAddr;
        tmpData[i].u32dest = pTmp->u32DestPhyAddr;
        tmpData[i].u32length = pTmp->u32ByteLength;
    }

    HI_INFO_CIPHER("Start to DecryptMultiPkg, chnNum = %#x, pkgNum=%d!\n", softChnId, pkgNum);

    g_stCipherOsrChn[softChnId].g_bDataDone = HI_FALSE;

    ret = DRV_CIPHER_CreatMultiPkgTask(softChnId, tmpData, pkgNum, softChnId);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CIPHER("Cipher create multi task failed!\n");
		up(&g_CipherMutexKernel);
        return ret;
    }

    if (0== wait_event_interruptible_timeout(g_stCipherOsrChn[softChnId].cipher_wait_queue,
                g_stCipherOsrChn[softChnId].g_bDataDone != HI_FALSE, 200))
    {
        HI_ERR_CIPHER("Decrypt time out \n");
		up(&g_CipherMutexKernel);
        return HI_FAILURE;
    }

    HI_INFO_CIPHER("Decrypt OK, chnNum = %#x!\n", softChnId);

	up(&g_CipherMutexKernel);
    return HI_SUCCESS;
}
#endif

HI_S32 DRV_CIPHER_Open(struct inode * inode, struct file * file)
{
    HI_S32 ret = HI_SUCCESS;

    ret = HI_DRV_MODULE_GetFunction(HI_ID_CA, (HI_VOID**)&s_pAdvcaFunc);
    if ( (HI_SUCCESS != ret) || (NULL == s_pAdvcaFunc) )
    {
    //    HI_ERR_CIPHER("Get advca function failed.\n");
    //    return -1;
    }
	
    return 0;
}

HI_S32 DRV_CIPHER_Release(struct inode * inode, struct file * file)
{
    HI_U32 i;

    for (i = 0; i < CIPHER_SOFT_CHAN_NUM; i++)
    {
            DRV_CIPHER_CloseChn(i);
            g_stCipherOsrChn[i].g_bSoftChnOpen = HI_FALSE;
            g_stCipherOsrChn[i].pWichFile = NULL;
            if (g_stCipherOsrChn[i].pstDataPkg)
            {
                HI_VFREE(HI_ID_CIPHER, g_stCipherOsrChn[i].pstDataPkg);
                g_stCipherOsrChn[i].pstDataPkg = NULL;
        }
    }

    return 0;
}

HI_S32 HI_DRV_CIPHER_SoftReset()
{
    HI_S32 ret = HI_SUCCESS;

    (HI_VOID)HI_DRV_CIPHER_Suspend();

    ret = HI_DRV_CIPHER_Resume();
    if( HI_SUCCESS != ret )
    {
        HI_ERR_CIPHER("Cipher Soft Reset failed in cipher resume!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 DRV_CIPHER_CheckRsaData(HI_U8 *N, HI_U8 *E, HI_U8 *MC, HI_U32 u32Len)
{
    HI_U32 i;

    /*MC > 0*/
    for(i=0; i<u32Len; i++)
    {
        if(MC[i] > 0)
        {
            break;
        }
    }
    if(i>=u32Len)
    {
        HI_ERR_CIPHER("RSA M/C is zero, error!\n");
        return HI_ERR_CIPHER_INVALID_PARA; 
    }

    /*MC < N*/
    for(i=0; i<u32Len; i++)
    {
        if(MC[i] < N[i])
        {
            break;
        }
    }
    if(i>=u32Len)
    {
        HI_ERR_CIPHER("RSA M/C is larger than N, error!\n");
        return HI_ERR_CIPHER_INVALID_PARA; 
    }

    /*E > 1*/
    for(i=0; i<u32Len; i++)
    {
        if(E[i] > 0)
        {
            break;
        }
    }
    if(i>=u32Len)
    {
        HI_ERR_CIPHER("RSA D/E is zero, error!\n");
        return HI_ERR_CIPHER_INVALID_PARA; 
    }

//    HI_PRINT_HEX("N", N, u32Len);
//    HI_PRINT_HEX("K", E, u32Len);
    
    return HI_SUCCESS;
}


HI_S32 DRV_CIPHER_CalcRsa(CIPHER_RSA_DATA_S *pCipherRsaData)
{
    static HI_U8  N[CIPHER_MAX_RSA_KEY_LEN];
    static HI_U8  K[CIPHER_MAX_RSA_KEY_LEN];
    static HI_U8  M[CIPHER_MAX_RSA_KEY_LEN];
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32KeyLen;
    CIPHER_RSA_DATA_S stCipherRsaData;
    HI_U8 *p;

    if(pCipherRsaData == HI_NULL)
    {
        HI_ERR_CIPHER("Invalid params!\n");
        return HI_ERR_CIPHER_INVALID_PARA;
    }

    if ((pCipherRsaData->pu8Input == HI_NULL) ||(pCipherRsaData->pu8Output== HI_NULL)
        || (pCipherRsaData->pu8N == HI_NULL) || (pCipherRsaData->pu8K == HI_NULL)) 
    {
        HI_ERR_CIPHER("para is null.\n");
        HI_ERR_CIPHER("pu8Input:0x%p, pu8Output:0x%p, pu8N:0x%p, pu8K:0x%p\n", pCipherRsaData->pu8Input, pCipherRsaData->pu8Output, pCipherRsaData->pu8N,pCipherRsaData->pu8K);
        return HI_ERR_CIPHER_INVALID_POINT;
    }

    if(pCipherRsaData->u32DataLen != pCipherRsaData->u16NLen)
    {
        HI_ERR_CIPHER("Error, DataLen != u16NLen!\n");
        return HI_ERR_CIPHER_INVALID_PARA; 
    }

    if(pCipherRsaData->u16KLen > pCipherRsaData->u16NLen)
    {
        HI_ERR_CIPHER("Error, KLen > u16NLen!\n");
        return HI_ERR_CIPHER_INVALID_PARA; 
    }

    memset(N, 0, sizeof(N));
    memset(K, 0, sizeof(K));
    memset(M, 0, sizeof(M));

    /*Only support the key width of 1024,2048 and 4096*/
    if (pCipherRsaData->u16NLen <= 128)
    {
        u32KeyLen = 128;
    }
    else if (pCipherRsaData->u16NLen <= 256)
    {
        u32KeyLen = 256;
    }
    else if (pCipherRsaData->u16NLen <= 512)
    {
        u32KeyLen = 512;
    }
    else 
    {
        HI_ERR_CIPHER("u16NLen(0x%x) is invalid\n", pCipherRsaData->u16NLen);
        return HI_ERR_CIPHER_INVALID_POINT;
    }

    /*if dataLen < u32KeyLen, padding 0 before data*/
    p = N + (u32KeyLen - pCipherRsaData->u16NLen);
    if (copy_from_user(p, pCipherRsaData->pu8N, pCipherRsaData->u16NLen))
    {
        HI_ERR_CIPHER("copy data from user fail!\n");
        return HI_FAILURE;
    }
    p = K + (u32KeyLen - pCipherRsaData->u16KLen);
    if (copy_from_user(p, pCipherRsaData->pu8K, pCipherRsaData->u16KLen))
    {
        HI_ERR_CIPHER("copy data from user fail!\n");
        return HI_FAILURE;
    }
    p = M + (u32KeyLen - pCipherRsaData->u32DataLen);
    if (copy_from_user(p, pCipherRsaData->pu8Input, pCipherRsaData->u32DataLen))
    {
        HI_ERR_CIPHER("copy data from user fail!\n");
        return HI_FAILURE;
    }

    stCipherRsaData.pu8N = N;
    stCipherRsaData.pu8K = K;
    stCipherRsaData.pu8Input = M;
    stCipherRsaData.u16NLen = u32KeyLen;
    stCipherRsaData.u16KLen = u32KeyLen;
    stCipherRsaData.u32DataLen = u32KeyLen;
    stCipherRsaData.pu8Output = M;
    
	ret = DRV_CIPHER_CalcRsa_SW(&stCipherRsaData);
    if( HI_SUCCESS != ret )
    {
        return HI_FAILURE;
    }

    if (copy_to_user(pCipherRsaData->pu8Output, M+(u32KeyLen - pCipherRsaData->u16NLen), 
            pCipherRsaData->u16NLen))
    {
        HI_ERR_CIPHER("copy data to user fail!\n");
        return HI_FAILURE;
    }

	return ret;  
}

HI_S32 HI_DRV_CIPHER_CalcRsa(CIPHER_RSA_DATA_S *pCipherRsaData)
{
	HI_S32 ret = HI_SUCCESS;

	if(pCipherRsaData == HI_NULL)
	{
	    HI_ERR_CIPHER("Invalid params!\n");
	    return HI_ERR_CIPHER_INVALID_PARA;
	}

	if(down_interruptible(&g_RsaMutexKernel))
	{
		HI_ERR_CIPHER("down_interruptible failed!\n");
		return HI_FAILURE;
	}
       
	ret = DRV_CIPHER_CalcRsa(pCipherRsaData);

	up(&g_RsaMutexKernel);

	return ret;  
}



EXPORT_SYMBOL(HI_DRV_CIPHER_CreateHandle);
EXPORT_SYMBOL(HI_DRV_CIPHER_ConfigChn);
EXPORT_SYMBOL(HI_DRV_CIPHER_DestroyHandle);
EXPORT_SYMBOL(HI_DRV_CIPHER_Encrypt);
EXPORT_SYMBOL(HI_DRV_CIPHER_Decrypt);
#ifdef CFG_HI_CIPHER_MULTI_PACKGET
EXPORT_SYMBOL(HI_DRV_CIPHER_EncryptMulti);
EXPORT_SYMBOL(HI_DRV_CIPHER_DecryptMulti);
#endif
EXPORT_SYMBOL(HI_DRV_CIPHER_GetHandleConfig);
EXPORT_SYMBOL(HI_DRV_CIPHER_SoftReset);
EXPORT_SYMBOL(HI_DRV_CIPHER_Resume);
EXPORT_SYMBOL(HI_DRV_CIPHER_Suspend);

