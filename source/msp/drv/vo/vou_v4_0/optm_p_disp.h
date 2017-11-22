
/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name     : optm_p_disp.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2009/1/16
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/
#ifndef __OPTM_P_DISP_H__
#define __OPTM_P_DISP_H__

#include "optm_basic.h"
#include "optm_alg_api.h"
#include "optm_define.h"
#include "optm_disp.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */


/**************************************************************
 *                system-related definitions                  *
 **************************************************************/


/*
//addresses of system-control registers
#define    SYS_CLK_EN_REG 0x101e0038
#define    SYS_CLK_DIS_REG 0x101e003c
#define    SYS_SOFT_RESET_RET 0x101e0048
#define    VOU_CLK_SEL_REG 0x101e0054
#define    VOU_DAC_CTL_REG 0x101e0060
*/

#define    BUFFER_LEN_7K   		  0x1C00
#define    BUFFER_LEN_16K  		  0x4000

#define    TTX_BLOCK_NUM          20
#define    TTX_PES_MIN_LEN   	  92
#define    TTX_PES_MAX_LEN        (1656-6)
#define    TTX_RAW_PACKET_LENGTH  46
#define    TTX_PACKET_LENGTH      176

#define    CC_BLOCK_NUM           20
#define    WSS_BLOCK_NUM          20
#define    VBI_PES_MIN_LEN        15
#define    VBI_PES_MAX_LEN   	  (184-6)

typedef enum tagCC_SEND_STEP_E
{
    CC_SENDSTEP_START  = 0x0000,
    CC_SENDSTEP_PROCESSING,       
    CC_SENDSTEP_END
} CC_SEND_STEP_E;

typedef union tagOPTM_DISP_UP_FLAG_U
{
    struct
    {
        HI_U32 Order      : 1;
        HI_U32 Bgc        : 1; 
        HI_U32 Lcd        : 1;
        HI_U32 Bright     : 1;
        
        HI_U32 Contrast   : 1; 
        HI_U32 Saturation : 1; 
        HI_U32 Hue        : 1; 
        HI_U32 Mcvn       : 1; 

        HI_U32 Ttx        : 1; 
        HI_U32 Wss        : 1; 
        HI_U32 Fmt        : 1; 
        
        HI_U32 Acc        : 1; 
        HI_U32 ColorTemp  : 1;
        HI_U32 Reserve    : 19;
    } Bits;
    HI_U32 u32Value;
}OPTM_DISP_UP_FLAG_U;

typedef struct tagOPTM_DISP_SUB_LAYER_S
{
	HI_S32             HalLayerNum;      /* sub layer number */
	HAL_DISP_LAYER_E   HalLayer[3];      /* sublayer */
}OPTM_DISP_SUB_LAYER_S;

/*  display channel  */
typedef struct  tagOPTM_DISP_S
{
    HI_BOOL                    bOpened;
    
    /* display channel ID */
    HAL_DISP_OUTPUTCHANNEL_E   enDispHalId;

    HI_BOOL                    bEnable;

    HI_BOOL                    bAttaHDate;
    HI_BOOL                    bAttaSDate;
    HI_S32                     s32DateCh;

    HI_UNF_DISP_E              enSrcDisp;
    HI_UNF_DISP_E              enDstDisp;

    /* user-settable properties */
    HI_OPTM_DISP_ATTR_S        OptmDispAttr;
    volatile OPTM_DISP_UP_FLAG_U  unUpFlag;
    HI_U32                        u32ChangeTimingStep; /* it is a counter for system-switch which needs two interrupts */
    

    /* inner properties */
    OPTM_CS_E                  enSrcCS;
    OPTM_CS_E                  enDstCS;

    OPTM_DISP_SUB_LAYER_S      SubLayer[HI_UNF_DISP_LAYER_BUTT]; /* superposition sub-layer*/
} OPTM_DISP_S;

typedef struct hiTTX_DATA_BLOCK_S
{
	struct list_head List;
    HI_U8    *pTtxDataVirtAddr;             /* virtual address of BUFFER kernel */
    HI_U32   TtxStartAddr;                  /* start physical address of TTX data */
    HI_U32   TtxEndAddr;                    /* end physical address of TTX data */
    HI_U32   TtxDataLine;                   /* transform line of TTX data */
	HI_U32   TtxDataExtLine;                /* extended transform line of TTX data */
	HI_BOOL  TtxSeqFlag;                    /* sending order of TTX data, HI_TRUE is sent from MSB */
    HI_U8    TtxPackConut;
}TTX_DATA_BLOCK_S;

typedef struct hiCC_DATA_BLOCK_S
{
	struct list_head List;
	HI_BOOL  TopFlag;
	HI_BOOL  BottomFlag;
	HI_U16   TopLine;
	HI_U16   BottomLine;
	HI_U16   TopData;
	HI_U16   BottomData;
}CC_DATA_BLOCK_S;

typedef struct hiWSS_DATA_BLOCK_S
{
	struct list_head List;
	HI_U16   TopData;
}WSS_DATA_BLOCK_S;

typedef struct TTX_SEND_S
{
    MMZ_BUFFER_S       TtxPesBuf;
    HI_U8              *pPesBufVirtAddr;
    HI_U32             TtxPesBufWrite;

    MMZ_BUFFER_S       TtxDataBuf;
    HI_U8              *pTtxBufVirtAddr;

    struct list_head   TtxBlockFreeHead;
    struct list_head   TtxBlockBusyHead;
    TTX_DATA_BLOCK_S   TtxDataBlock[TTX_BLOCK_NUM];
    struct list_head   *pTtxBusyList;
    TTX_DATA_BLOCK_S   *pTtxBusyBlock;
    HI_BOOL            TtxBusyFlag;
    HI_BOOL            TtxListFlag;
}TTX_SEND_S;

typedef struct VBI_SEND_S
{
    MMZ_BUFFER_S           VbiPesBuf;
    HI_U8                  *pPesBufVirtAddr;
    HI_U32                 VbiPesBufWrite;

    struct list_head       CcBlockFreeHead;
    struct list_head       CcBlockBusyHead;
    CC_DATA_BLOCK_S        CcDataBlock[CC_BLOCK_NUM];
    struct list_head       *pCcBusyList;
    CC_DATA_BLOCK_S        *pCcBusyBlock;
    HI_BOOL                CcListFlag;
    CC_SEND_STEP_E           CcSendStep;

    struct list_head       WssBlockFreeHead;
    struct list_head       WssBlockBusyHead;
    WSS_DATA_BLOCK_S       WssDataBlock[WSS_BLOCK_NUM];
    struct list_head       *pWssBusyList;
    WSS_DATA_BLOCK_S       *pWssBusyBlock;
    HI_BOOL                WssListFlag;

    HI_UNF_DISP_WSS_DATA_S  WssData;
}VBI_SEND_S;

typedef struct CC_SEND_S
{
   HI_BOOL TopFlag;
   HI_BOOL BottomFlag;
   HI_U16 TopData;
   HI_U16 BottomData; 
   HI_U16 TopLine;
   HI_U16 BottomLine;
}CC_SEND_S;

	
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /*  __OPTM_P_DISP_H__  */
