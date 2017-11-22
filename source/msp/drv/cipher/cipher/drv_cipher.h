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

#ifndef __DRV_CIPHER_H__
#define __DRV_CIPHER_H__

/* add include here */
#include <linux/fs.h>
#include "hal_cipher.h"
#include "drv_cipher_ioctl.h"
#include "drv_cipher_hdcp.h"
#include "hi_type.h"
#include "hi_debug.h"
#include "hi_common.h"
#include "hi_drv_mmz.h"
#include "hi_kernel_adapt.h"



#ifdef __cplusplus
extern "C" {
#endif

typedef struct hiCIPHER_COMM_S
{
    MMZ_BUFFER_S        stPhyBuf;
} CIPHER_COMM_S;

typedef struct hiCIPHER_OSR_CHN_S
{
    HI_BOOL g_bSoftChnOpen;                 /* mark soft channel open or not*/
    HI_BOOL g_bDataDone;                    /* mark the data done or not */
    wait_queue_head_t cipher_wait_queue;    /* mutex method */
    struct file *pWichFile;                 /* which file need to operate */

    HI_UNF_CIPHER_DATA_S *pstDataPkg;
    HI_U32                u32DataPkgNum;
}CIPHER_OSR_CHN_S;


/***************************** Macro Definition ******************************/
#define CIPHER_DEFAULT_INT_NUM    1
#define CIPHER_SOFT_CHAN_NUM      CIPHER_CHAN_NUM
#define CIPHER_INVALID_CHN        (0xffffffff)

HI_S32 DRV_CIPHER_ReadReg(HI_U32 addr, HI_U32 *pVal);
HI_S32 DRV_CIPHER_WriteReg(HI_U32 addr, HI_U32 Val);
HI_S32 DRV_CIPHER_Init(HI_VOID);
HI_VOID DRV_CIPHER_DeInit(HI_VOID);
HI_S32 DRV_CIPHER_Open(struct inode * inode, struct file * file);
HI_S32 DRV_CIPHER_Release(struct inode * inode, struct file * file);
HI_S32 DRV_CIPHER_OpenChn(HI_U32 softChnId);
HI_S32 DRV_CIPHER_CloseChn(HI_U32 softChnId);
HI_S32 DRV_CIPHER_CreatTask(HI_U32 softChnId, HI_DRV_CIPHER_TASK_S *pTask, HI_U32 *pKey, HI_U32 *pIV);
HI_S32 DRV_CIPHER_CreateHandle(CIPHER_HANDLE_S * pstCIHandle);
HI_S32 DRV_CIPHER_ConfigChn(HI_U32 softChnId,HI_UNF_CIPHER_CTRL_S * pConfig);
HI_S32 DRV_CIPHER_Encrypt(CIPHER_DATA_S * pstCIData);
HI_S32 DRV_CIPHER_Decrypt(CIPHER_DATA_S * pstCIData);
HI_S32 DRV_CIPHER_DestroyHandle(HI_HANDLE hCipherchn);



#ifdef __cplusplus
}
#endif
#endif /* __DRV_CIPHER_H__ */
