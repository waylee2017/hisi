/*******************************************************************************
 *              Copyright 2005 - 2011, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName:    hi_e2prom.h
 * Description: This is internal include file for i2c
 *
 * History:
 * Version      	Date            Author       DefectNum    Description
 *  0.01    2011-03-15     chenqiang      NULL       Create this file
 ******************************************************************************/
#ifndef __DRV_I2C_EXT_H_
#define __DRV_I2C_EXT_H_

#include "hi_type.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
#define HI_I2C_MAX_NUM 		4
#else
#define HI_I2C_MAX_NUM 		5
#endif

#define HI_ERR_I2C_INVALID_PARA                     (HI_S32)(0x80440004)
#define HI_ERR_I2C_NULL_PTR                         (HI_S32)(0x80440005)
#define HI_ERR_I2C_WRITE_TIMEOUT                    (HI_S32)(0x80440008)
#define HI_ERR_I2C_READ_TIMEOUT                     (HI_S32)(0x80440009)
#define HI_ERR_I2C_READ_ACK_ERR             		(HI_S32)(0x8044000A)

/**Inter-integrated (I2C) channel used by the tuner*/
/**CNcomment:TUNER使用的I2C通道*/
#if 0
typedef enum hiUNF_TUNER_I2cChannel
{
    HI_UNF_I2C_CHANNEL_0 = 0, /**<I2C channel 0*/                               /**<CNcomment:I2C通道0*/
    HI_UNF_I2C_CHANNEL_1, /**<I2C channel 1*/                               /**<CNcomment:I2C通道1*/
    HI_UNF_I2C_CHANNEL_2, /**<I2C channel 2*/                               /**<CNcomment:I2C通道2*/
    HI_UNF_I2C_CHANNEL_3, /**<I2C channel 3*/                               /**<CNcomment:I2C通道3*/
    HI_UNF_I2C_CHANNEL_4, /**<I2C channel 4*/   							/**<CNcomment:I2C通道3*/
    HI_UNF_I2C_CHANNEL_MAX /**<Invalid value*/                               /**<CNcomment:非法边界值*/
} HI_UNF_TUNER_I2C_CHANNEL_E;
#endif

HI_S32 HI_DRV_I2C_SetRate(HI_U32 I2cNum, HI_U32 I2cRate);
HI_S32 HI_DRV_I2C_WriteConfig(HI_U32 I2cNum, HI_U8 I2cDevAddr);
HI_S32 HI_DRV_I2C_Write(HI_U32 I2cNum, HI_U8 I2cDevAddr, HI_U32 I2cRegAddr, HI_U32 I2cRegAddrByteNum, HI_U8 *pData, HI_U32 DataLen);
HI_S32 HI_DRV_I2C_Read(HI_U32 I2cNum, HI_U8 I2cDevAddr, HI_U32 I2cRegAddr, HI_U32 I2cRegAddrByteNum, HI_U8 * pData, HI_U32 DataLen);
HI_S32 HI_DRV_I2C_Read_SiLabs(HI_U32 I2cNum, HI_U8 I2cDevAddr, HI_U32 I2cRegAddr, HI_U32 I2cRegAddrByteNum, HI_U8 * pData, HI_U32 DataLen);
HI_S32 HI_DRV_I2C_Init(HI_VOID);
HI_VOID HI_DRV_I2C_Exit(HI_VOID);


#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif


