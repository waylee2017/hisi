/******************************************************************************
 *
 * Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
 *
 * This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
 *  and may not be copied, reproduced, modified, disclosed to others, published or used, in
 * whole or in part, without the express prior written permission of Hisilicon.
 *

 ******************************************************************************
  File Name     : drv_reg_proc.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2014/6/13
  Description   :
  History       :
  Date          : 2014/6/13
  Author        : l00271847
  Modification  :
*******************************************************************************/

#ifndef __DRV_REG_PROC_H__
#define __DRV_REG_PROC_H__

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

//#include "common_proc.h"
#include "hi_error_mpi.h"
#include "hi_drv_proc.h"
#include "hi_unf_hdmi.h"
#include "drv_hdmi.h"
#include "hi_type.h"
#include "drv_hdmi_debug.h"
#include "si_hlviic.h"
#include "si_defstx.h"

#define MAX_ENTRY_NAME_LEN (31)

//typedef struct struCMPI_Proc_IntfParam HDMI_PROC_INTFPARAM;

//HI3716Cv200 Series
#if    defined(CHIP_TYPE_hi3716cv200)   \
    || defined(CHIP_TYPE_hi3716cv200es) \
    || defined(CHIP_TYPE_hi3716mv400)   \
    || defined(CHIP_TYPE_hi3718cv100)   \
    || defined(CHIP_TYPE_hi3719cv100)   \
    || defined(CHIP_TYPE_hi3719mv100_a) \
    || defined(CHIP_TYPE_hi3718mv100)   \
    || defined(CHIP_TYPE_hi3719mv100)   \
    || defined(CHIP_TYPE_hi3798mv100_a) \
    || defined(CHIP_TYPE_hi3798mv100) 

#define HDMI_TX_BASE_ADDR     0xf8ce0000L
#define HDMI_TX_PHY_ADDR      0xf8ce1800L

//for colorbar
#define VDP_DHD_0_CTRL        0xf8ccc000L 
#define VDP_DHD_1_CTRL        0xf8ccc400L

/*--NO MODIFY : COMMENT BY CODINGPARTNER--
typedef union
{
    struct
    {
        HI_U32 hdcp_mode_en         : 1;    // [0]
        HI_U32 tx_read              : 1;    // [1]
        HI_U32 hdcp_rootkey_sel     : 2;    // [3:2]
        HI_U32 rx_read              : 1;    // [4]
        HI_U32 rx_sel               : 1;    // [5]
        HI_U32 reserved             : 26;   // [31:6]
    } bits;
    HI_U32 u32;
} CIPHER_HDCP_MODE_CTRL_U;  //Offset:0x820
*/ // bit[0]/bit[1] set to 1
#define CIPHER_HDCP_MODE_CRL  0xF9A00820L


#elif defined(CHIP_TYPE_hi3796cv100_a) \
|| defined(CHIP_TYPE_hi3796cv100)      \
|| defined(CHIP_TYPE_hi3798cv100_a)    \
|| defined(CHIP_TYPE_hi3798cv100)

#define HDMI_TX_BASE_ADDR     0xff100000L
    
    
#define HDMI_TX_PHY_ADDR      0xff101800L
    
    //for colorbar
#define VDP_DHD_0_CTRL        0xff12c000L 
#define VDP_DHD_1_CTRL        0xff12c400L
    
    //Is there any change?
#define CIPHER_HDCP_MODE_CRL  0xF9A00820L  

#elif defined(CHIP_TYPE_hi3716mv310)    \
    || defined(CHIP_TYPE_hi3716mv320)   \
    || defined(CHIP_TYPE_hi3716mv330)

#define HDMI_TX_BASE_ADDR     0x10170000L
#define HDMI_TX_PHY_ADDR      0x10171800L

//for colorbar
#define VDP_DHD_0_CTRL  0x10200008
#define VDP_DHD_1_CTRL  0x10200408

//Is there any change?
#define CIPHER_HDCP_MODE_CRL  0x600E0820L  

//#ifdef VDP_DHD_0_CTRL
//#undef VDP_DHD_0_CTRL
//#endif
//#define VDP_DHD_0_CTRL  0x10200008
//
//#ifdef VDP_DHD_1_CTRL
//#undef VDP_DHD_1_CTRL
//#endif
#endif


// some reg 
// for 3716cv200EC Version bit15~bit8 ori:0x40,ec:0x41
#define EC_3716CV200_VER      0xF8a9007c



HI_S32 DRV_HDMI_WriteRegister(HI_U32 u32RegAddr, HI_U32 u32Value);
HI_S32 DRV_HDMI_ReadRegister(HI_U32 u32RegAddr, HI_U32 *pu32Value);

HI_U8 DRV_ReadByte_8BA(HI_U8 Bus, HI_U8 SlaveAddr, HI_U8 RegAddr);
void DRV_WriteByte_8BA(HI_U8 Bus, HI_U8 SlaveAddr, HI_U8 RegAddr, HI_U8 Data);
HI_U16 DRV_ReadWord_8BA(HI_U8 Bus, HI_U8 SlaveAddr, HI_U8 RegAddr);
HI_U8 DRV_ReadByte_16BA(HI_U8 Bus, HI_U8 SlaveAddr, HI_U16 RegAddr);
HI_U16 DRV_ReadWord_16BA(HI_U8 Bus, HI_U8 SlaveAddr, HI_U16 RegAddr);
void DRV_WriteWord_8BA(HI_U8 Bus, HI_U8 SlaveAddr, HI_U8 RegAddr, HI_U16 Data);
void DRV_WriteWord_16BA(HI_U8 Bus, HI_U8 SlaveAddr, HI_U16 RegAddr, HI_U16 Data);
void DRV_WriteByte_16BA(HI_U8 Bus, HI_U8 SlaveAddr, HI_U16 RegAddr, HI_U8 Data);
HI_S32 DRV_BlockRead_8BAS(I2CShortCommandType * I2CCommand, HI_U8 * Data);
HI_U8 DRV_BlockWrite_8BAS( I2CShortCommandType * I2CCommand, HI_U8 * Data );
//HI_U8 DRV_HDMI_HWReset(HI_U32 u32Enable);



#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif  /* __DRV_GLOBAL_H__ */

/*------------------------------------END-------------------------------------*/

