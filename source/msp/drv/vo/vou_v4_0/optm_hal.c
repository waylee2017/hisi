























































/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : optm_hal.c
Version             : Initial Draft
Author              :
Created             : 2014/08/06
Description         :
Function List       :
History             :
Date                       Author                   Modification
2014/08/06                                          Created file
******************************************************************************/

/*********************************add include here******************************/

#include "optm_basic.h"
#ifdef CHIP_TYPE_hi3716mv330
#include "optm_reg_mv330.h"
#else
#include "optm_reg.h"
#endif
#include "optm_hal.h"

/***************************** Macro Definition ******************************/
#if (FPGA_TEST)

#define HAL_PRINT(x...)


/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/

volatile S_VOU_V400_REGS_TYPE *pVoReg = NULL;

HI_U32 g_u32LnkLstRegValue[NODE_REG_NUM + NODE_REG_NUM_ADD];
HI_U32 g_u32LnkLstRegUpdate[NODE_REG_NUM + NODE_REG_NUM_ADD];
HI_U32 g_u32LnkLstRegOffset[NODE_REG_NUM + NODE_REG_NUM_ADD];

HI_U32 g_u32LnkLstEnable         = 0;
HI_U32 g_s32OptmHalInitFlag      = 0;
HAL_OPTM_VERSION g_u32VouVersion = HAL_OPTM_VERSION_V200;

/* settings of superposition priorities */
static HI_U8 g_u8OptmMixerPriority[2][5];



/******************************* API realization *****************************/

HI_U32 RegRead(volatile HI_U32 *a)
{
    {
        return (*(a));
    }
}

HI_VOID RegWrite(volatile HI_U32* a, HI_U32 b)
{
    {
        *a = b; /* ENV cfg */
    }

    return ;
}


/* settings of superposition priorities for disp-channel*/
HI_VOID Vou_SetCbmMixerPrioReg(HI_U8 u8MixerId)
{
    if (u8MixerId == 1)
    {
      U_CBMMIX1 CBMMIX1;

         CBMMIX1.u32 = RegRead(&(pVoReg->CBMMIX1.u32));

         CBMMIX1.bits.mixer_prio0 = g_u8OptmMixerPriority[0][0];
         CBMMIX1.bits.mixer_prio1 = g_u8OptmMixerPriority[0][1];
         CBMMIX1.bits.mixer_prio2 = g_u8OptmMixerPriority[0][2];
         CBMMIX1.bits.mixer_prio3 = g_u8OptmMixerPriority[0][3];
         RegWrite(&(pVoReg->CBMMIX1.u32), CBMMIX1.u32);
    }
    else
    {
       U_CBMMIX2 CBMMIX2;

       CBMMIX2.u32 = RegRead(&(pVoReg->CBMMIX2.u32));
       CBMMIX2.bits.mixer_prio0 = g_u8OptmMixerPriority[1][0];
       CBMMIX2.bits.mixer_prio1 = g_u8OptmMixerPriority[1][1];
       RegWrite(&(pVoReg->CBMMIX2.u32), CBMMIX2.u32);
    }
}

HI_VOID Vou_GetCbmMixerPrio(HI_U8 u8MixerId, HI_U8 *pu8Prio)
{
    if (u8MixerId == 1)
    {
         *pu8Prio++ = g_u8OptmMixerPriority[0][0];
         *pu8Prio++ = g_u8OptmMixerPriority[0][1];
         *pu8Prio++ = g_u8OptmMixerPriority[0][2];
         *pu8Prio      = g_u8OptmMixerPriority[0][3];
    }
    else
    {
         *pu8Prio++ = g_u8OptmMixerPriority[1][0];
         *pu8Prio++ = g_u8OptmMixerPriority[1][1];
    }
}

HI_VOID Vou_SetCbmMixerPrioNew(HI_U8 u8MixerId, HI_U8 *pu8Prio)
{
    if (u8MixerId == 1)
    {
          g_u8OptmMixerPriority[0][0] = *pu8Prio++;
          g_u8OptmMixerPriority[0][1] = *pu8Prio++;
          g_u8OptmMixerPriority[0][2] = *pu8Prio++;
          g_u8OptmMixerPriority[0][3] = *pu8Prio;
    }
    else
    {
          g_u8OptmMixerPriority[1][0] = *pu8Prio++;
          g_u8OptmMixerPriority[1][1] = *pu8Prio;
    }
    Vou_SetCbmMixerPrioReg(u8MixerId);
}


/* settings of superposition priorities for disp-channel*/
HI_VOID OPTM_HAL_SetCbmMixerPrio(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U8 *pu8Prio)
{
    if (HAL_DISP_CHANNEL_DHD == enDisp)
    {
        U_CBMMIX1 CBMMIX1;
        g_u8OptmMixerPriority[0][0] = *pu8Prio++;
        g_u8OptmMixerPriority[0][1] = *pu8Prio++;
        g_u8OptmMixerPriority[0][2] = *pu8Prio++;
        g_u8OptmMixerPriority[0][3] = *pu8Prio++;
        g_u8OptmMixerPriority[0][4] = *pu8Prio;

        CBMMIX1.u32 = RegRead(&(pVoReg->CBMMIX1.u32));

        CBMMIX1.bits.mixer_prio0 = g_u8OptmMixerPriority[0][0];
        CBMMIX1.bits.mixer_prio1 = g_u8OptmMixerPriority[0][1];
        CBMMIX1.bits.mixer_prio2 = g_u8OptmMixerPriority[0][2];
        CBMMIX1.bits.mixer_prio3 = g_u8OptmMixerPriority[0][3];
        CBMMIX1.bits.mixer_prio4 = g_u8OptmMixerPriority[0][4];

        RegWrite(&(pVoReg->CBMMIX1.u32), CBMMIX1.u32);

    }
    else
    {
        U_CBMMIX2 CBMMIX2;

        g_u8OptmMixerPriority[1][0] = *pu8Prio++;
        g_u8OptmMixerPriority[1][1] = *pu8Prio;

        CBMMIX2.u32 = RegRead(&(pVoReg->CBMMIX2.u32));
        CBMMIX2.bits.mixer_prio0 = g_u8OptmMixerPriority[1][0];
        CBMMIX2.bits.mixer_prio1 = g_u8OptmMixerPriority[1][1];
        RegWrite(&(pVoReg->CBMMIX2.u32), CBMMIX2.u32);
    }
}

/***************************************
 *             SDK use it.             *
 *                                     *
 *       initialize registers          *
 ***************************************/
#if 0
static HI_S32 s_s32VxdIfirFilterCoefV101[2][8]=
{
    {0x3e5, 0x32, 0x39b, 0x14e, 0x14e, 0x39b ,0x32, 0x3e5},
    {0x3ec, 0x2d, 0x39f, 0x148, 0x148, 0x39f, 0x2d, 0x3ec},
};
#endif
static HI_S32 s_s32VxdIfirFilterCoefV200[8]=
{-11, 15, -20, 28, -40, 61, -107, 330};

/*{0, 2, -7, 15, -27, 49, -97, 321};*/
/* corresponding to
   {0x0, 0x002, 0x3f9, 0x00f, 0x3e5, 0x031, 0x39f, 0x141} */

HI_S32 OPTM_HAL_SetIfirCoef(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_UNF_ENC_FMT_E enFmt)
{


    return 0;
}

HI_U32 OPTM_HAL_BaseRegInit(HI_U32 U32RegVirAddr)
{
    pVoReg = (S_VOU_V400_REGS_TYPE*) U32RegVirAddr;
    return HI_SUCCESS;
}

HI_VOID HAL_Initial(HI_U32 U32RegVirAddr)
{
    HI_S32 i, j;
    U_VOCTRL VOCTRLtmp;
    //U_VHDWBC1STRD VHDWBC1STRDtmp;
    U_DHDVTTHD DHDVTTHDtmp;
    U_DSDVTTHD DSDVTTHDtmp;
    U_DHDVTTHD3 DHDVTTHD3tmp;
    U_DSDCTRL   DSDCTRLtmp;
    U_VHDCTRL   U_VHDCTRLtmp;
    //U_VADCTRL   U_VADCTRLtmp;
    U_VSDCTRL   U_VSDCTRLtmp;
    //U_VEDCTRL   U_VEDCTRLtmp;
    //U_DACBANDGAP DACBANDGAP;

    pVoReg = (S_VOU_V400_REGS_TYPE *)U32RegVirAddr;

   /* map mv200 reg struct */
   // pVoReg_v200 = (S_VOU_V400_REGS_TYPE_V200*)U32RegVirAddr;
    g_u32VouVersion = HAL_GetChipsetVouVersion();
    /* memset((void*)pVoReg, 0, sizeof(S_VOU_V400_REGS_TYPE)); */

    /* RegWrite((HI_U32)(0x10120000), 0x44440); */
    VOCTRLtmp.u32 = pVoReg->VOCTRL.u32;
    VOCTRLtmp.bits.arb_mode = 0;
#ifdef CHIP_TYPE_hi3716mv330
    VOCTRLtmp.bits.outstd_rid1 = 4;
    VOCTRLtmp.bits.outstd_rid0 = 4;
    VOCTRLtmp.bits.vo_id_sel   = 0;
    VOCTRLtmp.bits.outstd_wid0 = 4;
    VOCTRLtmp.bits.outstd_wid1 = 4;
#else
    VOCTRLtmp.bits.outstd_rid1 = 7;
    VOCTRLtmp.bits.outstd_rid0 = 7;
    VOCTRLtmp.bits.vo_id_sel   = 0;
    VOCTRLtmp.bits.outstd_wid0 = 7;
    VOCTRLtmp.bits.outstd_wid1 = 7;
#endif
    VOCTRLtmp.bits.vo_ck_gt_en = 1;
    pVoReg->VOCTRL.u32 = VOCTRLtmp.u32;

    /* screen all interrupts */
    pVoReg->VOINTMSK.u32 = 0;
#if 0
    /* tmp set */
    pVoReg->VOMUX.u32 = 0x57f;
#endif
    DHDVTTHDtmp.u32 = pVoReg->DHDVTTHD.u32;
    DHDVTTHDtmp.bits.vtmgthd1 = 30;
    DHDVTTHDtmp.bits.vtmgthd2 = 80;
    pVoReg->DHDVTTHD.u32 = DHDVTTHDtmp.u32;

    DSDVTTHDtmp.u32 = pVoReg->DSDVTTHD.u32;
    DSDVTTHDtmp.bits.vtmgthd1 = 80;
    DSDVTTHDtmp.bits.vtmgthd2 = 40;
    pVoReg->DSDVTTHD.u32 = DSDVTTHDtmp.u32;

    /** no output for MIXER */
    /* pVoReg->CBMMIX1.u32 = 0; */
    /* pVoReg->CBMMIX2.u32 = 0; */

   // VHDWBC1STRDtmp.u32 = pVoReg->VHDWBC1STRD.u32;
    //VHDWBC1STRDtmp.bits.req_interval = 20;
   // pVoReg->VHDWBC1STRD.u32 = VHDWBC1STRDtmp.u32;

    /*************************************************
     *              VHD default settings             *
     *************************************************/
    /** field update */
    U_VHDCTRLtmp.u32 = pVoReg->VHDCTRL.u32;
    U_VHDCTRLtmp.bits.vup_mode = 1;
    U_VHDCTRLtmp.bits.ifir_mode  = 3;
    pVoReg->VHDCTRL.u32 = U_VHDCTRLtmp.u32;


    /*************************************************
     *              VAD default settings             *
     *************************************************/
    //U_VADCTRLtmp.u32 = pVoReg->VADCTRL.u32;
    //U_VADCTRLtmp.bits.vup_mode = 1;
    //U_VADCTRLtmp.bits.ifir_mode  = 3;
   // pVoReg->VADCTRL.u32 = U_VADCTRLtmp.u32;


   /*************************************************
     *              VED default settings             *
     *************************************************/
    //U_VEDCTRLtmp.u32 = pVoReg->VEDCTRL.u32;
    //U_VEDCTRLtmp.bits.vup_mode = 1;
    //U_VEDCTRLtmp.bits.ifir_mode  = 3;
    //pVoReg->VEDCTRL.u32 = U_VEDCTRLtmp.u32;


     /*************************************************
     *              VSD default settings             *
     *************************************************/
    U_VSDCTRLtmp.u32 = pVoReg->VSDCTRL.u32;
    U_VSDCTRLtmp.bits.vup_mode = 1;
    U_VSDCTRLtmp.bits.ifir_mode  = 3;
    pVoReg->VSDCTRL.u32 = U_VSDCTRLtmp.u32;


    /*************************************************
     *      set HDATE default coefficents            *
     *************************************************/
#if 0
    pVoReg->HDATE_SRC_13_COEF1.u32  = 0x1f0001;
    pVoReg->HDATE_SRC_13_COEF2.u32  = 0x6003b;
    pVoReg->HDATE_SRC_13_COEF3.u32  = 0x6f000a;
    pVoReg->HDATE_SRC_13_COEF4.u32  = 0x2800ef;
    pVoReg->HDATE_SRC_13_COEF5.u32  = 0x1a40017;
    pVoReg->HDATE_SRC_13_COEF6.u32  = 0x14003e4;
    pVoReg->HDATE_SRC_13_COEF7.u32  = 0x1400220;
    pVoReg->HDATE_SRC_13_COEF8.u32  = 0x3a403e4;
    pVoReg->HDATE_SRC_13_COEF9.u32  = 0x280017;
    pVoReg->HDATE_SRC_13_COEF10.u32 = 0xef00ef;
    pVoReg->HDATE_SRC_13_COEF11.u32 = 0x6000a;
    pVoReg->HDATE_SRC_13_COEF12.u32 = 0x3f003b;
    pVoReg->HDATE_SRC_13_COEF13.u32 = 0x1;
#else

    pVoReg->HDATE_SRC_13_COEF1.u32= 0x00010000;
    pVoReg->HDATE_SRC_13_COEF2.u32=0x07fd0000;
    pVoReg->HDATE_SRC_13_COEF3.u32= 0x00070000;
    pVoReg->HDATE_SRC_13_COEF4.u32=0x07f30000;
    pVoReg->HDATE_SRC_13_COEF5.u32=0x00160000;
    pVoReg->HDATE_SRC_13_COEF6.u32= 0x07db0000;
    pVoReg->HDATE_SRC_13_COEF7.u32=0x003d07ff;
    pVoReg->HDATE_SRC_13_COEF8.u32= 0x078e0003;
    pVoReg->HDATE_SRC_13_COEF9.u32=0x014c07f2;
    pVoReg->HDATE_SRC_13_COEF10.u32= 0x014c0218;
    pVoReg->HDATE_SRC_13_COEF11.u32=0x0;
    pVoReg->HDATE_SRC_13_COEF12.u32=0x0;
    pVoReg->HDATE_SRC_13_COEF13.u32= 0x0;


#endif

#if 0 /** test */
    /* close all functional modules */
    Vou_SetWbcEnable(HAL_DISP_LAYER_WBC0, 0);
    Vou_SetWbcEnable(HAL_DISP_LAYER_WBC1, 0);
#endif

    for(i=0; i<2; i++)
      for(j=0;j<5;j++)
      {
            g_u8OptmMixerPriority[i][j] = 0;
      }

    DHDVTTHD3tmp.u32 = pVoReg->DHDVTTHD3.u32;
    DHDVTTHD3tmp.bits.vtmgthd4 = 100;
    pVoReg->DHDVTTHD3.u32 = DHDVTTHD3tmp.u32;

    DSDCTRLtmp.u32 = pVoReg->DSDCTRL.u32;
    DSDCTRLtmp.bits.trigger_en = 1;
    pVoReg->DSDCTRL.u32 = DSDCTRLtmp.u32;

    g_u32LnkLstEnable = 0;

    /* IFIR filter coefficients */

    Vou_SetIfirCoef(HAL_DISP_LAYER_VIDEO1, s_s32VxdIfirFilterCoefV200);
    Vou_SetIfirCoef(HAL_DISP_LAYER_VIDEO3, s_s32VxdIfirFilterCoefV200);
    //Vou_SetIfirCoef(HAL_DISP_LAYER_VIDEO4, s_s32VxdIfirFilterCoefV200);

    /** initialization of DAC settings */

    VOCTRLtmp.u32 = pVoReg->VOCTRL.u32;
    //VOCTRLtmp.bits.outstd_wid1 = 2;
    //VOCTRLtmp.bits.vo_wrid1_en = 1;
    pVoReg->VOCTRL.u32 = VOCTRLtmp.u32;

#ifdef CHIP_TYPE_hi3716mv330
    Vou_SetDeshoot();
    /* HDATE Low power config */
    pVoReg->HDATE_POW_SAV = 0x7;
#endif

    /* complementary ?*/
    g_s32OptmHalInitFlag = 1;

    return;
}

HI_VOID HAL_DeInitial(HI_VOID)
{
    g_s32OptmHalInitFlag = 0;
    g_u32LnkLstEnable = 0;
}

HI_VOID OPTM_HAL_GetVersion(HI_U32 *pVersion1, HI_U32 *pVersion2)
{
    *pVersion1 = RegRead(&(pVoReg->VOUVERSION1.u32));
    *pVersion2 = RegRead(&(pVoReg->VOUVERSION2.u32));
    return;
}

/* Get Vou version of current chipset for version-branches!
 *
 * Note: If a new VOU version is developed, please add it
 * into the bottom of HAL_OPTM_VERSION above HAL_OPTM_VERSION_BUTT!!
 */
HAL_OPTM_VERSION HAL_GetChipsetVouVersion(HI_VOID)
{
    HI_U32 vn1,vn2;

    vn1 = RegRead(&(pVoReg->VOUVERSION1.u32));
    vn2 = RegRead(&(pVoReg->VOUVERSION2.u32));

    if(   (OPTM_V101_VERSION1 == vn1)
       && (OPTM_V101_VERSION2 == vn2)
       )//v101
    {
        return HAL_OPTM_VERSION_V101;
    }
    else if(   (OPTM_V200_VERSION1 == vn1)
            && (OPTM_V200_VERSION2 == vn2)
            )//v200
    {
        return HAL_OPTM_VERSION_V200;
    }
    else if ((OPTM_V300_VERSION1 == vn1)
        || (OPTM_V300_VERSION2 == vn2))
    {
          return HAL_OPTM_VERSION_V300;
    }
    else//default
    {
        return HAL_OPTM_VERSION_BUTT;
    }
}

#ifdef HI_DISP_VGA_SUPPORT
/* rgb_order, 0:RGB mode; 1:BGR mode. */
HI_VOID OPTM_HAL_SetVgaOutputOrder(HI_U32 vga_intf_order)
{
    U_VOMUX VOMUX;

    /* new change for V200!!
     * VOMUX[14], which is previously reserved,
     * has been assigned to change VGA output order of RGB.
     */
    VOMUX.u32              = RegRead(&(pVoReg->VOMUX.u32));
    VOMUX.bits.vga_order &= 0x2;//14
    VOMUX.bits.vga_order |= vga_intf_order;
    RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

    //DEBUG_PRINTK("#vga_intf_order-->%d\n",vga_intf_order);

    return;
}
#endif

HI_U32 g_DispChnWidth[2];
HI_U32 g_DispChnHeight[2];

HI_S32 OPTM_HAL_SetDispChWnd(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 w, HI_U32 h)
{
    if (HAL_DISP_CHANNEL_DHD == enChan)
    {
        g_DispChnWidth[0] = w;
        g_DispChnHeight[0] = h;
        return HI_SUCCESS;
    }
    else if (HAL_DISP_CHANNEL_DSD == enChan)
    {
        g_DispChnWidth[1] = w;
        g_DispChnHeight[1] = h;
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}

HI_S32 OPTM_HAL_GetDispChWnd(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 *pw, HI_U32 *ph)
{
      if (HAL_DISP_CHANNEL_DHD == enChan)
      {
            *pw = g_DispChnWidth[0];
            *ph = g_DispChnHeight[0];
               return HI_SUCCESS;
      }
      else if (HAL_DISP_CHANNEL_DSD == enChan)
      {
            *pw = g_DispChnWidth[1];
            *ph = g_DispChnHeight[1];
               return HI_SUCCESS;
      }
      else
      {
               return HI_FAILURE;
      }
}

/* open or close of linked-list mode */
HI_VOID OPTM_HAL_SetListFlag(HI_BOOL bEnable)
{
    if (bEnable == HI_TRUE)
    {
        g_u32LnkLstEnable = 1;
    }
    else
    {
        g_u32LnkLstEnable = 0;
    }
}

#if 0
/*
 * in the beginning of setting for linked-list, the settings of logic are fetched and saved
 * in local variables
 */
HI_VOID OPTM_HAL_RstListNode(HAL_DISP_LAYER_E enLayer)
{
    memcpy(g_u32LnkLstRegValue, (HI_U32 *)(&(pVoReg->VHDCTRL.u32)), NODE_REG_NUM*sizeof(HI_U32));
    memset(g_u32LnkLstRegUpdate, 0, (NODE_REG_NUM + NODE_REG_NUM_ADD)*sizeof(HI_U32));
}


/*
 * get linked-list node, address is the input;
 * return value is the length of current node, Unit: WORD(128bit)
 */
HI_S32 OPTM_HAL_GetListNode(HAL_DISP_LAYER_E enLayer, HI_U32 *pu32NodeAddr)
{
    HI_U32 ii = 0;
    /* LinkList update register number. */
    HI_U32 u32NodeRegNum= NODE_REG_NUM + NODE_REG_NUM_ADD;
    /* current total node number: u32NodeCfgCnt(value cfg num) +1(regup cfg num)+1(next node addr word). */
    /* word number: ((u32NodeCfgCnt+1)+2)/3 + 1(next node addr used a whole word) -1(DUT need to do so). */
    HI_U32 u32WordNum = 0;
    /* HI_U32 *upCfg    = g_u32LnkLstRegValue; */
    /* HI_U32 *upOffset = g_u32LnkLstRegOffset; */

    /* regupdate cfg. */
    g_u32LnkLstRegUpdate[u32NodeRegNum - 1] = 1;
    g_u32LnkLstRegValue[u32NodeRegNum - 1]    = 1;
    g_u32LnkLstRegOffset[u32NodeRegNum - 1]   = 0x41;

    /* cfg data write ddr except next node addr. */
    g_u32LnkLstRegUpdate[1] = 0;
    for (ii = 0; ii < u32NodeRegNum; ii++)
    {
        if (g_u32LnkLstRegUpdate[ii] == 1)
     {
         *(pu32NodeAddr + u32WordNum/3*4 + u32WordNum%3) = g_u32LnkLstRegValue[ii];
            if (u32WordNum%3 == 0)
                *(pu32NodeAddr + u32WordNum/3*4 + 3) = (g_u32LnkLstRegOffset[ii] << (u32WordNum%3*9));
            else
                *(pu32NodeAddr + u32WordNum/3*4 + 3) += (g_u32LnkLstRegOffset[ii] << (u32WordNum%3*9));

            u32WordNum++;
     }
        /*
         * jj = 0;
         * *(pu32NodeAddr + ii*4 + jj) = *(upCfg + ii*3 + jj);
         * jj++;
         * *(pu32NodeAddr + ii*4 + jj) = *(upCfg + ii*3 + jj);
         * jj++;
         * *(pu32NodeAddr + ii*4 + jj) = *(upCfg + ii*3 + jj);
         * jj++;
         * *(pu32NodeAddr + ii*4 + jj) = (*(upOffset + ii*3 + 2)<<16) + (*(upOffset + ii*3 + 1) <<8) + *(upOffset + ii*3 + 0);
         */
    }
    u32WordNum = (u32WordNum+2)/3;

    /* next node addr cfg. */
    *(pu32NodeAddr + u32WordNum*4 + 0) = 0;
    *(pu32NodeAddr + u32WordNum*4 + 1) = 0;
    *(pu32NodeAddr + u32WordNum*4 + 2) = 0;
    *(pu32NodeAddr + u32WordNum*4 + 3) = 0;
    u32WordNum += 1;

    /* reset all register update bits. */
    memset(g_u32LnkLstRegUpdate, 0, u32NodeRegNum*sizeof(HI_U32));

    return u32WordNum;
}
#endif

/** set DSD interrupt following DHD */
/** set DSD interrupt following DHD */
HI_VOID OPTM_HAL_SetTrigger(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_BOOL bEnable)
{
    if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDCTRL DSDCTRLtmp;
        DSDCTRLtmp.u32 = pVoReg->DSDCTRL.u32;
        DSDCTRLtmp.bits.trigger_en = bEnable;
        pVoReg->DSDCTRL.u32 = DSDCTRLtmp.u32;
    }
}

HI_VOID OPTM_HAL_SetSync(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_BOOL bEnable)
{
    if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDCTRL DSDCTRLtmp;

        DSDCTRLtmp.u32 = pVoReg->DSDCTRL.u32;

        if ((HI_BOOL)DSDCTRLtmp.bits.dhd_syc_en != bEnable)
        {
            DSDCTRLtmp.bits.dhd_syc_en = bEnable;
            pVoReg->DSDCTRL.u32 = DSDCTRLtmp.u32;
        }
    }
}

/***************************************************************************************
* func          : OPTM_HAL_GetDispWH
* description   : CNcomment:根据制式获取显示分辨率 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_U32  OPTM_HAL_GetDispWH(HAL_DISP_OUTPUTCHANNEL_E enChan)
{
    HI_U32 u32WH = 0;

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDVSYNC DHDVSYNC;
        U_DHDHSYNC1 DHDHSYNC1;

        /* VOU VHD CHANNEL enable */
        DHDVSYNC.u32 = RegRead(&(pVoReg->DHDVSYNC.u32));
        DHDHSYNC1.u32 = RegRead(&(pVoReg->DHDHSYNC1.u32));
        u32WH = ((HI_U32)(DHDHSYNC1.bits.hact + 1)<<16);
        u32WH |= (DHDVSYNC.bits.vact+1);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDVSYNC DSDVSYNC;
        U_DSDHSYNC1 DSDHSYNC1;

        /* VOU VHD CHANNEL enable */
        DSDVSYNC.u32 = RegRead(&(pVoReg->DSDVSYNC.u32));
        DSDHSYNC1.u32 = RegRead(&(pVoReg->DSDHSYNC1.u32));
        u32WH = ((HI_U32)(DSDHSYNC1.bits.hact+1)<<16);
        u32WH |= (DSDVSYNC.bits.vact+1);
    }
    else
    {
        HAL_PRINT("Wrong CHANNEL ID\n");
        /* return HI_FALSE; */
    }

    return u32WH;
}


/***************************************************************************************
* func          : Vou_GetDisplayChOfLayer
* description   : CNcomment:根据图层返回显示通道 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HAL_DISP_OUTPUTCHANNEL_E Vou_GetDisplayChOfLayer(HAL_DISP_LAYER_E enLayer)
{
    HAL_DISP_OUTPUTCHANNEL_E enChan;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
		case HAL_DISP_LAYER_GFX2:
		case HAL_DISP_LAYER_GFX3:
        {
            enChan = HAL_DISP_CHANNEL_DHD;
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            U_CBMATTR CBMATTR;
            CBMATTR.u32 = RegRead(&(pVoReg->CBMATTR.u32));
            enChan = (CBMATTR.u32 & 1) ? HAL_DISP_CHANNEL_DHD : HAL_DISP_CHANNEL_DSD;
            break;
        }
        default:
        {
            enChan = HAL_DISP_CHANNEL_DHD;
        }
    }

    return enChan;
}


/***************************************************************************************
* func          : Vou_SetGfxUpMode
* description   : CNcomment: 设置更新模式 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID Vou_SetGfxUpMode(HAL_DISP_LAYER_E enLayer, HI_U32 u32bFeild)
{
    U_G0CTRL G0CTRL;
    U_G1CTRL G1CTRL;
	U_G2CTRL G2CTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
            G0CTRL.bits.upd_mode = u32bFeild;
            RegWrite(&(pVoReg->G0CTRL.u32), G0CTRL.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
            G1CTRL.bits.upd_mode = u32bFeild;
            RegWrite(&(pVoReg->G1CTRL.u32), G1CTRL.u32);

            break;
        }
		case HAL_DISP_LAYER_GFX2:
		case HAL_DISP_LAYER_GFX3:
	    {
	        G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
	        G2CTRL.bits.upd_mode = u32bFeild;
	        RegWrite(&(pVoReg->G2CTRL.u32), G2CTRL.u32);

	        break;
	    }
        default:
        {
            HAL_PRINT("Error,%s select wrong layer ID\n", __FUNCTION__);
            return ;
        }
    }

    return ;
}


/** synchronized sequence */
HI_BOOL HAL_DISP_SetIntfSync(HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_SYNCINFO_S stSyncInfo)
{
    U_DHDCTRL DHDCTRL;
    U_DHDVSYNC DHDVSYNC;
    U_DHDHSYNC1 DHDHSYNC1;
    U_DHDHSYNC2 DHDHSYNC2;
    U_DHDVPLUS DHDVPLUS;
    U_DHDPWR DHDPWR;

    U_DSDCTRL DSDCTRL;
    U_DSDVSYNC DSDVSYNC;
    U_DSDHSYNC1 DSDHSYNC1;
    U_DSDHSYNC2 DSDHSYNC2;
    U_DSDVPLUS DSDVPLUS;
    U_DSDPWR DSDPWR;

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        DHDCTRL.u32 = pVoReg->DHDCTRL.u32;
        DHDCTRL.bits.iop   = stSyncInfo.bIop;
        DHDCTRL.bits.intfb = stSyncInfo.u8Intfb;
        DHDCTRL.bits.synm  = stSyncInfo.bSynm;
        DHDCTRL.bits.idv = stSyncInfo.bIdv;
        DHDCTRL.bits.ihs = stSyncInfo.bIhs;
        DHDCTRL.bits.ivs = stSyncInfo.bIvs;

        pVoReg->DHDCTRL.u32 = DHDCTRL.u32;

        /* Config VHD interface horizontal timming */
        if (DHDCTRL.bits.intfb == 0) /* 2clk/pixel */
        {
            DHDHSYNC1.u32 = pVoReg->DHDHSYNC1.u32;
            DHDHSYNC2.u32 = pVoReg->DHDHSYNC2.u32;
            DHDHSYNC1.bits.hact = stSyncInfo.u16Hact - 1;
            DHDHSYNC1.bits.hbb = (stSyncInfo.u16Hbb) * 2 - 1;
            DHDHSYNC2.bits.hfb = (stSyncInfo.u16Hfb) * 2 - 1;
            DHDHSYNC2.bits.hmid = (stSyncInfo.u16Hmid) * 2 - 1;
            pVoReg->DHDHSYNC1.u32 = DHDHSYNC1.u32;
            pVoReg->DHDHSYNC2.u32 = DHDHSYNC2.u32;
        }
        else
        {
            DHDHSYNC1.u32 = pVoReg->DHDHSYNC1.u32;
            DHDHSYNC2.u32 = pVoReg->DHDHSYNC2.u32;
            DHDHSYNC1.bits.hact = stSyncInfo.u16Hact - 1;
            DHDHSYNC1.bits.hbb = stSyncInfo.u16Hbb - 1;
            DHDHSYNC2.bits.hfb = stSyncInfo.u16Hfb - 1;
            DHDHSYNC2.bits.hmid = stSyncInfo.u16Hmid - 1;
            pVoReg->DHDHSYNC1.u32 = DHDHSYNC1.u32;
            pVoReg->DHDHSYNC2.u32 = DHDHSYNC2.u32;
        }

        /* Config VHD interface veritical timming */
        DHDVSYNC.u32 = pVoReg->DHDVSYNC.u32;
        DHDVSYNC.bits.vact = stSyncInfo.u16Vact - 1;
        DHDVSYNC.bits.vbb = stSyncInfo.u16Vbb - 1;
        DHDVSYNC.bits.vfb = stSyncInfo.u16Vfb - 1;
        pVoReg->DHDVSYNC.u32 = DHDVSYNC.u32;

        /* Config VHD interface veritical bottom timming,no use in progressive mode */
        DHDVPLUS.u32 = pVoReg->DHDVPLUS.u32;
        DHDVPLUS.bits.bvact = stSyncInfo.u16Bvact - 1;
        DHDVPLUS.bits.bvbb   = stSyncInfo.u16Bvbb - 1;
        DHDVPLUS.bits.bvfb   = stSyncInfo.u16Bvfb - 1;
        pVoReg->DHDVPLUS.u32 = DHDVPLUS.u32;

        /* Config VHD interface veritical bottom timming, */
        DHDPWR.u32 = pVoReg->DHDPWR.u32;
        DHDPWR.bits.hpw = stSyncInfo.u16Hpw - 1;
        DHDPWR.bits.vpw = stSyncInfo.u16Vpw - 1;
        pVoReg->DHDPWR.u32 = DHDPWR.u32;
    }

#if 0
    else if (enChan == HAL_DISP_CHANNEL_DAD)
    {
        /* VOU VAD CHANNEL enable*/
        DADCTRL.u32 = s_pVoReg->DADCTRL.u32;
        DADCTRL.bits.iop   = stSyncInfo.bIop;
        DADCTRL.bits.intfb = stSyncInfo.u8Intfb;
        DADCTRL.bits.synm  = stSyncInfo.bSynm;
        DADCTRL.bits.idv = stSyncInfo.bIdv;
        DADCTRL.bits.ihs = stSyncInfo.bIhs;
        DADCTRL.bits.ivs = stSyncInfo.bIvs;
        s_pVoReg->DADCTRL.u32 = DADCTRL.u32;

        /* Config VAD interface horizontal timming*/
        if (DADCTRL.bits.intfb == 0)
        {
            DADHSYNC1.u32 = s_pVoReg->DADHSYNC1.u32;
            DADHSYNC2.u32 = s_pVoReg->DADHSYNC2.u32;
            DADHSYNC1.bits.hact = stSyncInfo.u16Hact - 1;
            DADHSYNC1.bits.hbb = (stSyncInfo.u16Hbb) * 2 - 1;
            DADHSYNC2.bits.hfb = (stSyncInfo.u16Hfb) * 2 - 1;
            s_pVoReg->DADHSYNC1.u32 = DADHSYNC1.u32;
            s_pVoReg->DADHSYNC2.u32 = DADHSYNC2.u32;
        }
        else
        {
            DADHSYNC1.u32 = s_pVoReg->DADHSYNC1.u32;
            DADHSYNC2.u32 = s_pVoReg->DADHSYNC2.u32;
            DADHSYNC1.bits.hact = stSyncInfo.u16Hact - 1;
            DADHSYNC1.bits.hbb = stSyncInfo.u16Hbb - 1;
            DADHSYNC2.bits.hfb = stSyncInfo.u16Hfb - 1;
            s_pVoReg->DADHSYNC1.u32 = DADHSYNC1.u32;
            s_pVoReg->DADHSYNC2.u32 = DADHSYNC2.u32;
        }

        /* Config VAD interface veritical timming*/
        DADVSYNC.u32 = s_pVoReg->DHDVSYNC.u32;
        DADVSYNC.bits.vact = stSyncInfo.u16Vact - 1;
        DADVSYNC.bits.vbb = stSyncInfo.u16Vbb - 1;
        DADVSYNC.bits.vfb = stSyncInfo.u16Vfb - 1;
        s_pVoReg->DADVSYNC.u32 = DADVSYNC.u32;

        /* Config VAD interface veritical bottom timming,no use in progressive mode*/
        DADVPLUS.u32 = s_pVoReg->DADVPLUS.u32;
        DADVPLUS.bits.bvact = stSyncInfo.u16Bvact - 1;
        DADVPLUS.bits.bvbb   = stSyncInfo.u16Bvbb - 1;
        DADVPLUS.bits.bvfb   = stSyncInfo.u16Bvfb - 1;
        s_pVoReg->DADVPLUS.u32 = DADVPLUS.u32;

        /* Config VAD interface veritical bottom timming,*/
        DADPWR.u32 = s_pVoReg->DADPWR.u32;
        DADPWR.bits.hpw = stSyncInfo.u16Hpw - 1;
        DADPWR.bits.vpw = stSyncInfo.u16Vpw - 1;
        s_pVoReg->DADPWR.u32 = DADPWR.u32;
    }
#endif
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        /* VOU VSD CHANNEL enable */
        DSDCTRL.u32 = pVoReg->DSDCTRL.u32;
        DSDCTRL.bits.iop   = stSyncInfo.bIop;
        DSDCTRL.bits.intfb = stSyncInfo.u8Intfb;
        DSDCTRL.bits.synm  = stSyncInfo.bSynm;
        DSDCTRL.bits.idv = stSyncInfo.bIdv;
        DSDCTRL.bits.ihs = stSyncInfo.bIhs;
        DSDCTRL.bits.ivs = stSyncInfo.bIvs;
        pVoReg->DSDCTRL.u32 = DSDCTRL.u32;

        /* Config VSD interface horizontal timming */
        if(   (DSDCTRL.bits.intfb == 0)
            ||(DSDCTRL.bits.intfb == 2))
        {
            DSDHSYNC1.u32 = pVoReg->DSDHSYNC1.u32;
            DSDHSYNC2.u32 = pVoReg->DSDHSYNC2.u32;
            DSDHSYNC1.bits.hact = stSyncInfo.u16Hact - 1;
            DSDHSYNC1.bits.hbb = (stSyncInfo.u16Hbb) * 2 - 1;
            DSDHSYNC2.bits.hfb = (stSyncInfo.u16Hfb) * 2 - 1;
            pVoReg->DSDHSYNC1.u32 = DSDHSYNC1.u32;
            pVoReg->DSDHSYNC2.u32 = DSDHSYNC2.u32;
        }
        else
        {
            DSDHSYNC1.u32 = pVoReg->DSDHSYNC1.u32;
            DSDHSYNC2.u32 = pVoReg->DSDHSYNC2.u32;
            DSDHSYNC1.bits.hact = stSyncInfo.u16Hact - 1;
            DSDHSYNC1.bits.hbb = stSyncInfo.u16Hbb - 1;
            DSDHSYNC2.bits.hfb = stSyncInfo.u16Hfb - 1;
            pVoReg->DSDHSYNC1.u32 = DSDHSYNC1.u32;
            pVoReg->DSDHSYNC2.u32 = DSDHSYNC2.u32;
        }

        /* Config VSD interface veritical timming */
        DSDVSYNC.u32 = pVoReg->DSDVSYNC.u32;
        DSDVSYNC.bits.vact = stSyncInfo.u16Vact - 1;
        DSDVSYNC.bits.vbb = stSyncInfo.u16Vbb - 1;
        DSDVSYNC.bits.vfb = stSyncInfo.u16Vfb - 1;
        pVoReg->DSDVSYNC.u32 = DSDVSYNC.u32;

        /* Config VSD interface veritical bottom timming,no use in progressive mode */
        DSDVPLUS.u32 = pVoReg->DSDVPLUS.u32;
        DSDVPLUS.bits.bvact = stSyncInfo.u16Bvact - 1;
        DSDVPLUS.bits.bvbb   = stSyncInfo.u16Bvbb - 1;
        DSDVPLUS.bits.bvfb   = stSyncInfo.u16Bvfb - 1;
        pVoReg->DSDVPLUS.u32 = DSDVPLUS.u32;

        /* Config VSD interface veritical bottom timming, */
        DSDPWR.u32 = pVoReg->DSDPWR.u32;
        DSDPWR.bits.hpw = stSyncInfo.u16Hpw - 1;
        DSDPWR.bits.vpw = stSyncInfo.u16Vpw - 1;
        pVoReg->DSDPWR.u32 = DSDPWR.u32;
    }
    else
    {
        return HI_FALSE;
    }

    return HI_TRUE;
}

HI_VOID OPTM_HAL_SetVideoMixerPrio(HAL_DISP_LAYER_E enP2Layer, HAL_DISP_LAYER_E enP1Layer, HAL_DISP_LAYER_E enP0Layer)
{
    /*no mixv */
    #if 0
    unsigned int pro[5]={1, 2, 0 ,3, 0};

        U_CBMMIX1 CBMMIX1;
        CBMMIX1.u32 = RegRead(&(pVoReg->CBMMIX1.u32));
        CBMMIX1.bits.mixer_v_pro1 = pro[enP1Layer];
        CBMMIX1.bits.mixer_v_pro0 = pro[enP0Layer];
        CBMMIX1.bits.mixer_v_pro2 = pro[enP2Layer];

        RegWrite(&(pVoReg->CBMMIX1.u32), CBMMIX1.u32);


        #endif
    return;
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
HI_VOID OPTM_HAL_SetGammaCoef(HAL_DISP_OUTPUTCHANNEL_E enChn, HI_U16 *upR, HI_U16 *upG, HI_U16 *upB)
{
    U_DHDGAMMAN DHDGAMMAN[33];
    HI_U32 ii = 0;
    memset(DHDGAMMAN,0,sizeof(DHDGAMMAN));

    switch(enChn)
    {
        case HAL_DISP_CHANNEL_DHD:
        {
            for (ii = 0; ii < 33; ii++)
            {
                DHDGAMMAN[ii].bits.gamma_datarn = upR[ii];
                DHDGAMMAN[ii].bits.gamma_datagn = upG[ii];
                DHDGAMMAN[ii].bits.gamma_databn = upB[ii];
                RegWrite(&(pVoReg->DHDGAMMAN[ii].u32), DHDGAMMAN[ii].u32);
            }
            break;
        }
        default:
        {
            HAL_PRINT("Error! OPTM_HAL_SetGammaCoef() Select Wrong Channel ID!\n");
            break;
        }
    }
}
#endif

HI_VOID OPTM_HAL_DEBUG_ReadReg(HI_U32 u32Index, HI_U32 *pu32Value)
{
    pu32Value[0] = pVoReg->VHDHLCOEF[4].u32;
    pu32Value[1] = pVoReg->VHDVLCOEF[4].u32;
    return;
}

/** query the input resolution of video layer */
HI_VOID OPTM_HAL_DieLayerInReso(HAL_DISP_LAYER_E enLayer, HI_U32 *pu32W, HI_U32 *pu32H)
{
    switch (enLayer)
    {
    case HAL_DISP_LAYER_VIDEO1:
    {
        U_VHDIRESO VHDIRESO;
        VHDIRESO.u32 = RegRead(&(pVoReg->VHDIRESO.u32));
        *pu32H = VHDIRESO.bits.ih + 1;
        *pu32W = VHDIRESO.bits.iw + 1;

        break;
    }
    default:
        break;
    }
}

#ifdef HI_DISP_CC_SUPPORT
HI_VOID OPTM_HAL_CCSetSeq(HI_BOOL CCSeq)
{
    U_DATE_COEFF1 DATE_COEFF1;

    DATE_COEFF1.u32 = pVoReg->DATE_COEFF1.u32;

    DATE_COEFF1.bits.cc_seq = CCSeq;
    pVoReg->DATE_COEFF1.u32 = DATE_COEFF1.u32;
    return;
}

HI_VOID OPTM_HAL_CCLineConfig(HI_BOOL TopEnable, HI_BOOL BottomEnable, HI_U16 TopLine, HI_U16 BottomLine)
{
    U_DATE_COEFF11 CCConfig;

    CCConfig.u32 = pVoReg->CCConfig.u32;

    CCConfig.bits.cc_enf1 = TopEnable;
    CCConfig.bits.cc_enf2 = BottomEnable;
    CCConfig.bits.date_clf1 = TopLine;
    CCConfig.bits.date_clf2 = BottomLine;
    pVoReg->CCConfig.u32 = CCConfig.u32;
    return;
}

HI_VOID OPTM_HAL_CCDataConfig(HI_U16 TopData, HI_U16 BottomData)
{
    U_DATE_COEFF12 CCData;

    CCData.u32 = pVoReg->CCData.u32;

    CCData.bits.cc_f1data = TopData;
    CCData.bits.cc_f2data = BottomData;
    pVoReg->CCData.u32 = CCData.u32;
    return;
}
#endif

HI_VOID Vou_SetAcmEnableExt(HAL_DISP_LAYER_E enLayer, HAL_ACMBLK_ID_E enAcmId, HI_U32 bAcmEn)
{
    if (enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        U_VHDACM0 VHDACM0;

        /* set vou vhd acm enable */
        VHDACM0.u32 = RegRead(&(pVoReg->VHDACM0.u32));

        switch(enAcmId)
        {
            case HAL_ACMBLK_ID0 :
            {
                VHDACM0.bits.acm0_en = bAcmEn;
                break;
            }
            case HAL_ACMBLK_ID1 :
            {
                VHDACM0.bits.acm1_en = bAcmEn;
                break;
            }
            case HAL_ACMBLK_ID2 :
            {
                VHDACM0.bits.acm2_en = bAcmEn;
                break;
            }
            case HAL_ACMBLK_ID3 :
            {
                VHDACM0.bits.acm3_en = bAcmEn;
                break;
            }
            case HAL_ACMBLK_ALL :
            {
                VHDACM0.bits.acm0_en = bAcmEn;
                VHDACM0.bits.acm1_en = bAcmEn;
                VHDACM0.bits.acm2_en = bAcmEn;
                VHDACM0.bits.acm3_en = bAcmEn;
                break;
            }
            default:
            {
                HAL_PRINT("Error, Wrong ACM block ID!\n");
            }
        }

        RegWrite(&(pVoReg->VHDACM0.u32), VHDACM0.u32);

    }
    else
    {
        U_VSDACM0 VSDACM0;

        /* set vou vhd acm enable */
        VSDACM0.u32 = RegRead(&(pVoReg->VSDACM0.u32));

        switch(enAcmId)
        {
            case HAL_ACMBLK_ID0 :
            {
                VSDACM0.bits.acm0_en = bAcmEn;
                break;
            }
            case HAL_ACMBLK_ID1 :
            {
                VSDACM0.bits.acm1_en = bAcmEn;
                break;
            }
            case HAL_ACMBLK_ID2 :
            {
                VSDACM0.bits.acm2_en = bAcmEn;
                break;
            }
            case HAL_ACMBLK_ID3 :
            {
                VSDACM0.bits.acm3_en = bAcmEn;
                break;
            }
            case HAL_ACMBLK_ALL :
            {
                VSDACM0.bits.acm0_en = bAcmEn;
                VSDACM0.bits.acm1_en = bAcmEn;
                VSDACM0.bits.acm2_en = bAcmEn;
                VSDACM0.bits.acm3_en = bAcmEn;
                break;
            }
            default:
            {
                HAL_PRINT("Error, Wrong ACM block ID!\n");
            }
        }

        RegWrite(&(pVoReg->VSDACM0.u32), VSDACM0.u32);
    }

    return ;
}

HI_VOID Vou_SetAcmCoefExt(HAL_DISP_LAYER_E enLayer, HAL_ACMBLK_ID_E enAcmId, HAL_DISP_ACMBLKINFO_S stCoef)
{
    if (enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        U_VHDACM0 VHDACM0;
        U_VHDACM1 VHDACM1;
        U_VHDACM2 VHDACM2;
        U_VHDACM3 VHDACM3;
        U_VHDACM4 VHDACM4;
        U_VHDACM5 VHDACM5;
        U_VHDACM6 VHDACM6;
        U_VHDACM7 VHDACM7;

        if((enAcmId == HAL_ACMBLK_ID0)||(enAcmId == HAL_ACMBLK_ALL))
        {
            VHDACM0.u32 = RegRead(&(pVoReg->VHDACM0.u32));
            VHDACM1.u32 = RegRead(&(pVoReg->VHDACM1.u32));

            VHDACM0.bits.acm_fir_blk = stCoef.u8UIndex;
            VHDACM0.bits.acm_sec_blk = stCoef.u8VIndex;

            VHDACM0.bits.acm_a_u_off = (stCoef.s8UOffsetA);
            VHDACM0.bits.acm_b_u_off = (stCoef.s8UOffsetB);
            VHDACM0.bits.acm_c_u_off = (stCoef.s8UOffsetC);
            VHDACM0.bits.acm_d_u_off = (stCoef.s8UOffsetD);

            VHDACM1.bits.acm_a_v_off = (stCoef.s8VOffsetA);
            VHDACM1.bits.acm_b_v_off = (stCoef.s8VOffsetB);
            VHDACM1.bits.acm_c_v_off = (stCoef.s8VOffsetC);
            VHDACM1.bits.acm_d_v_off = (stCoef.s8VOffsetD);

            RegWrite(&(pVoReg->VHDACM0.u32), VHDACM0.u32);
            RegWrite(&(pVoReg->VHDACM1.u32), VHDACM1.u32);
        }

        if((enAcmId == HAL_ACMBLK_ID1)||(enAcmId == HAL_ACMBLK_ALL))
        {
            VHDACM2.u32 = RegRead(&(pVoReg->VHDACM2.u32));
            VHDACM3.u32 = RegRead(&(pVoReg->VHDACM3.u32));

            VHDACM2.bits.acm_fir_blk = stCoef.u8UIndex;
            VHDACM2.bits.acm_sec_blk = stCoef.u8VIndex;

            VHDACM2.bits.acm_a_u_off = (stCoef.s8UOffsetA);
            VHDACM2.bits.acm_b_u_off = (stCoef.s8UOffsetB);
            VHDACM2.bits.acm_c_u_off = (stCoef.s8UOffsetC);
            VHDACM2.bits.acm_d_u_off = (stCoef.s8UOffsetD);

            VHDACM3.bits.acm_a_v_off = (stCoef.s8VOffsetA);
            VHDACM3.bits.acm_b_v_off = (stCoef.s8VOffsetB);
            VHDACM3.bits.acm_c_v_off = (stCoef.s8VOffsetC);
            VHDACM3.bits.acm_d_v_off = (stCoef.s8VOffsetD);

            RegWrite(&(pVoReg->VHDACM2.u32), VHDACM2.u32);
            RegWrite(&(pVoReg->VHDACM3.u32), VHDACM3.u32);
        }

        if((enAcmId == HAL_ACMBLK_ID2)||(enAcmId == HAL_ACMBLK_ALL))
        {
            VHDACM4.u32 = RegRead(&(pVoReg->VHDACM4.u32));
            VHDACM5.u32 = RegRead(&(pVoReg->VHDACM5.u32));

            VHDACM4.bits.acm_fir_blk = stCoef.u8UIndex;
            VHDACM4.bits.acm_sec_blk = stCoef.u8VIndex;

            VHDACM4.bits.acm_a_u_off = (stCoef.s8UOffsetA);
            VHDACM4.bits.acm_b_u_off = (stCoef.s8UOffsetB);
            VHDACM4.bits.acm_c_u_off = (stCoef.s8UOffsetC);
            VHDACM4.bits.acm_d_u_off = (stCoef.s8UOffsetD);

            VHDACM5.bits.acm_a_v_off = (stCoef.s8VOffsetA);
            VHDACM5.bits.acm_b_v_off = (stCoef.s8VOffsetB);
            VHDACM5.bits.acm_c_v_off = (stCoef.s8VOffsetC);
            VHDACM5.bits.acm_d_v_off = (stCoef.s8VOffsetD);

            RegWrite(&(pVoReg->VHDACM4.u32), VHDACM4.u32);
            RegWrite(&(pVoReg->VHDACM5.u32), VHDACM5.u32);
        }

        if((enAcmId == HAL_ACMBLK_ID3)||(enAcmId == HAL_ACMBLK_ALL))
        {
            VHDACM6.u32 = RegRead(&(pVoReg->VHDACM6.u32));
            VHDACM7.u32 = RegRead(&(pVoReg->VHDACM7.u32));

            VHDACM6.bits.acm_fir_blk = stCoef.u8UIndex;
            VHDACM6.bits.acm_sec_blk = stCoef.u8VIndex;

            VHDACM6.bits.acm_a_u_off = (stCoef.s8UOffsetA);
            VHDACM6.bits.acm_b_u_off = (stCoef.s8UOffsetB);
            VHDACM6.bits.acm_c_u_off = (stCoef.s8UOffsetC);
            VHDACM6.bits.acm_d_u_off = (stCoef.s8UOffsetD);

            VHDACM7.bits.acm_a_v_off = (stCoef.s8VOffsetA);
            VHDACM7.bits.acm_b_v_off = (stCoef.s8VOffsetB);
            VHDACM7.bits.acm_c_v_off = (stCoef.s8VOffsetC);
            VHDACM7.bits.acm_d_v_off = (stCoef.s8VOffsetD);

            RegWrite(&(pVoReg->VHDACM6.u32), VHDACM6.u32);
            RegWrite(&(pVoReg->VHDACM7.u32), VHDACM7.u32);
        }

    }
    else
    {
        U_VSDACM0 VSDACM0;
        U_VSDACM1 VSDACM1;
        U_VSDACM2 VSDACM2;
        U_VSDACM3 VSDACM3;
        U_VSDACM4 VSDACM4;
        U_VSDACM5 VSDACM5;
        U_VSDACM6 VSDACM6;
        U_VSDACM7 VSDACM7;

        if((enAcmId == HAL_ACMBLK_ID0)||(enAcmId == HAL_ACMBLK_ALL))
        {
            VSDACM0.u32 = RegRead(&(pVoReg->VSDACM0.u32));
            VSDACM1.u32 = RegRead(&(pVoReg->VSDACM1.u32));

            VSDACM0.bits.acm_fir_blk = stCoef.u8UIndex;
            VSDACM0.bits.acm_sec_blk = stCoef.u8VIndex;

            VSDACM0.bits.acm_a_u_off = (stCoef.s8UOffsetA);
            VSDACM0.bits.acm_b_u_off = (stCoef.s8UOffsetB);
            VSDACM0.bits.acm_c_u_off = (stCoef.s8UOffsetC);
            VSDACM0.bits.acm_d_u_off = (stCoef.s8UOffsetD);

            VSDACM1.bits.acm_a_v_off = (stCoef.s8VOffsetA);
            VSDACM1.bits.acm_b_v_off = (stCoef.s8VOffsetB);
            VSDACM1.bits.acm_c_v_off = (stCoef.s8VOffsetC);
            VSDACM1.bits.acm_d_v_off = (stCoef.s8VOffsetD);

            RegWrite(&(pVoReg->VSDACM0.u32), VSDACM0.u32);
            RegWrite(&(pVoReg->VSDACM1.u32), VSDACM1.u32);
        }

        if((enAcmId == HAL_ACMBLK_ID1)||(enAcmId == HAL_ACMBLK_ALL))
        {
            VSDACM2.u32 = RegRead(&(pVoReg->VSDACM2.u32));
            VSDACM3.u32 = RegRead(&(pVoReg->VSDACM3.u32));

            VSDACM2.bits.acm_fir_blk = stCoef.u8UIndex;
            VSDACM2.bits.acm_sec_blk = stCoef.u8VIndex;

            VSDACM2.bits.acm_a_u_off = (stCoef.s8UOffsetA);
            VSDACM2.bits.acm_b_u_off = (stCoef.s8UOffsetB);
            VSDACM2.bits.acm_c_u_off = (stCoef.s8UOffsetC);
            VSDACM2.bits.acm_d_u_off = (stCoef.s8UOffsetD);

            VSDACM3.bits.acm_a_v_off = (stCoef.s8VOffsetA);
            VSDACM3.bits.acm_b_v_off = (stCoef.s8VOffsetB);
            VSDACM3.bits.acm_c_v_off = (stCoef.s8VOffsetC);
            VSDACM3.bits.acm_d_v_off = (stCoef.s8VOffsetD);

            RegWrite(&(pVoReg->VSDACM2.u32), VSDACM2.u32);
            RegWrite(&(pVoReg->VSDACM3.u32), VSDACM3.u32);
        }

        if((enAcmId == HAL_ACMBLK_ID2)||(enAcmId == HAL_ACMBLK_ALL))
        {
            VSDACM4.u32 = RegRead(&(pVoReg->VSDACM4.u32));
            VSDACM5.u32 = RegRead(&(pVoReg->VSDACM5.u32));

            VSDACM4.bits.acm_fir_blk = stCoef.u8UIndex;
            VSDACM4.bits.acm_sec_blk = stCoef.u8VIndex;

            VSDACM4.bits.acm_a_u_off = (stCoef.s8UOffsetA);
            VSDACM4.bits.acm_b_u_off = (stCoef.s8UOffsetB);
            VSDACM4.bits.acm_c_u_off = (stCoef.s8UOffsetC);
            VSDACM4.bits.acm_d_u_off = (stCoef.s8UOffsetD);

            VSDACM5.bits.acm_a_v_off = (stCoef.s8VOffsetA);
            VSDACM5.bits.acm_b_v_off = (stCoef.s8VOffsetB);
            VSDACM5.bits.acm_c_v_off = (stCoef.s8VOffsetC);
            VSDACM5.bits.acm_d_v_off = (stCoef.s8VOffsetD);

            RegWrite(&(pVoReg->VSDACM4.u32), VSDACM4.u32);
            RegWrite(&(pVoReg->VSDACM5.u32), VSDACM5.u32);
        }

        if((enAcmId == HAL_ACMBLK_ID3)||(enAcmId == HAL_ACMBLK_ALL))
        {
            VSDACM6.u32 = RegRead(&(pVoReg->VSDACM6.u32));
            VSDACM7.u32 = RegRead(&(pVoReg->VSDACM7.u32));

            VSDACM6.bits.acm_fir_blk = stCoef.u8UIndex;
            VSDACM6.bits.acm_sec_blk = stCoef.u8VIndex;

            VSDACM6.bits.acm_a_u_off = (stCoef.s8UOffsetA);
            VSDACM6.bits.acm_b_u_off = (stCoef.s8UOffsetB);
            VSDACM6.bits.acm_c_u_off = (stCoef.s8UOffsetC);
            VSDACM6.bits.acm_d_u_off = (stCoef.s8UOffsetD);

            VSDACM7.bits.acm_a_v_off = (stCoef.s8VOffsetA);
            VSDACM7.bits.acm_b_v_off = (stCoef.s8VOffsetB);
            VSDACM7.bits.acm_c_v_off = (stCoef.s8VOffsetC);
            VSDACM7.bits.acm_d_v_off = (stCoef.s8VOffsetD);

            RegWrite(&(pVoReg->VSDACM6.u32), VSDACM6.u32);
            RegWrite(&(pVoReg->VSDACM7.u32), VSDACM7.u32);
        }

    }


    return ;
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
/** query the background color */
HI_VOID Vou_GetCbmBkg(HI_U32 bMixerId, HAL_DISP_BKCOLOR_S *pstBkg)
{
    U_CBMBKG1 CBMBKG1;
    U_CBMBKG2 CBMBKG2;
    U_CBMBKGV CBMBKGV;

    pstBkg->u8Bkg_a = 0;
    if(bMixerId == 0)
    {
        CBMBKG1.u32 = RegRead(&(pVoReg->CBMBKG1.u32));
        pstBkg->u8Bkg_y  = CBMBKG1.bits.cbm_bkgy1;
        pstBkg->u8Bkg_cb = CBMBKG1.bits.cbm_bkgcb1;
        pstBkg->u8Bkg_cr = CBMBKG1.bits.cbm_bkgcr1;
    }
    else if(bMixerId == 1)
    {
        CBMBKG2.u32 = RegRead(&(pVoReg->CBMBKG2.u32));
        pstBkg->u8Bkg_y  = CBMBKG2.bits.cbm_bkgy2;
        pstBkg->u8Bkg_cb = CBMBKG2.bits.cbm_bkgcb2;
        pstBkg->u8Bkg_cr = CBMBKG2.bits.cbm_bkgcr2;
    }
    else if(bMixerId == 2)
    {
        CBMBKGV.u32 = RegRead(&(pVoReg->CBMBKGV.u32));
        pstBkg->u8Bkg_y  = CBMBKGV.bits.cbm_bkgy_v;
        pstBkg->u8Bkg_cb = CBMBKGV.bits.cbm_bkgcb_v;
        pstBkg->u8Bkg_cr = CBMBKGV.bits.cbm_bkgcr_v;
    }
    else
    {
        HAL_PRINT("Error! Vou_GetCbmBkg() Select Wrong mixer ID\n");
        pstBkg->u8Bkg_y  = 0;
        pstBkg->u8Bkg_cb = 0;
        pstBkg->u8Bkg_cr = 0;
    }

    return ;
}
#endif

#ifdef  HI_DISP_MACROVISION_SUPPORT
/** set macrovision */
HI_BOOL OPTM_HAL_DATE_SetMcvn(HI_S32 nCh, HI_U32 *pu32Value)
{
    HI_U32 Value;

    if (0 == nCh)
    {
        RegWrite(&(pVoReg->DATE_COEFF2.u32), 1);

        Value = RegRead(&(pVoReg->DATE_COEFF2.u32));
        if (Value != 1)
        {
            return HI_FALSE;
        }

        RegWrite(&(pVoReg->DATE_COEFF2.u32), pu32Value[0]);
        RegWrite(&(pVoReg->DATE_COEFF3.u32), pu32Value[1]);
        RegWrite(&(pVoReg->DATE_COEFF4.u32), pu32Value[2]);
        RegWrite(&(pVoReg->DATE_COEFF5.u32), pu32Value[3]);
        RegWrite(&(pVoReg->DATE_COEFF6.u32), pu32Value[4]);
    }

    return HI_TRUE;
}

/* Get mcvn capability */
HI_BOOL OPTM_HAL_GetMcvnState(HAL_DISP_OUTPUTCHANNEL_E enChn)
{
    HI_BOOL bState = HI_FALSE;

    if (HAL_DISP_CHANNEL_DHD == enChn)
    {
        U_HDATE_STATE HDATE_STATE;

        HDATE_STATE.u32 = RegRead(&(pVoReg->HDATE_STATE.u32));
        bState = HDATE_STATE.bits.mv_en_pin;
    }
    else if (HAL_DISP_CHANNEL_DSD == enChn)
    {
        HI_U32 nValue;

        nValue = RegRead(&(pVoReg->DATE_COEFF6.u32));
        bState = (HI_BOOL)((nValue >> 31) & 1);
    }

    return bState;
}


HI_VOID OPTM_HAL_SetMcvnEnable(HAL_DISP_OUTPUTCHANNEL_E enChn, HI_BOOL bEnable)
{
    U_HDATE_VBI_CTRL HDATE_VBI_CTRL;

    if (HAL_DISP_CHANNEL_DHD == enChn)
    {
        HDATE_VBI_CTRL.u32 = RegRead(&(pVoReg->HDATE_VBI_CTRL.u32));
        HDATE_VBI_CTRL.bits.mv_en = bEnable;
        RegWrite(&(pVoReg->HDATE_VBI_CTRL.u32), HDATE_VBI_CTRL.u32);
    }
    else
    {
    }
}
#endif
#endif


/*********************************************************
 *          This is defined for EDA or PC test           *
 *********************************************************/
#if (EDA_TEST | PC_TEST)
#ifndef HI_ADVCA_FUNCTION_RELEASE
#define HAL_PRINT HI_PRINT
#else
#define HAL_PRINT(x...)
#endif

extern Driver *u_drv;

S_VOU_V400_REGS_TYPE *pVoReg = new S_VOU_V400_REGS_TYPE;

/* local var define */
HAL_DISP_SYNCINFO_S  dhd_SyncInfo;
HAL_DISP_SYNCINFO_S  dad_SyncInfo;
HAL_DISP_SYNCINFO_S  dsd_SyncInfo;

HI_U32 RegReadEx(HI_U32* a)
{
#if EDA_TEST
    HI_U32 addr = VO_BASE_ADDR + ((HI_U32)a - (HI_U32)pVoReg);

    return u_drv->apb_read(addr);
#else
    return (*(a));
#endif
}

HI_U32 RegRead(HI_U32 a)
{
#if EDA_TEST
    HI_U32 addr = VO_BASE_ADDR + ((HI_U32)a - (HI_U32)pVoReg);

    return u_drv->apb_read(addr);
#else
    return 0;
#endif
}

HI_VOID RegWrite(HI_U32 a, HI_U32 b)
{
#if EDA_TEST
    u_drv->apb_write(a, b);
    // *a = b;       /*  ENV cfg */
#endif
    return ;
}

HI_VOID HAL_Initial(HI_U32 U32RegVirAddr)
{
    HI_S32 i, j;
    U_VOCTRL VOCTRLtmp;
    //U_VHDWBC1STRD VHDWBC1STRDtmp;
    U_DHDVTTHD DHDVTTHDtmp;
    U_DSDVTTHD DSDVTTHDtmp;

    pVoReg = (S_VOU_V400_REGS_TYPE *)U32RegVirAddr;

    /* memset((void*)pVoReg, 0, sizeof(S_VOU_V400_REGS_TYPE)); */

    /* RegWrite((HI_U32)(0x10120000), 0x44440); */
    VOCTRLtmp.u32 = pVoReg->VOCTRL.u32;
    VOCTRLtmp.bits.arb_mode = 0;
    VOCTRLtmp.bits.outstd_rid1 = 4;
    VOCTRLtmp.bits.outstd_rid0 = 4;
    VOCTRLtmp.bits.vo_id_sel    = 0;
    VOCTRLtmp.bits.outstd_wid0 = 4;
    VOCTRLtmp.bits.outstd_wid1 = 4;
    pVoReg->VOCTRL.u32 = VOCTRLtmp.u32;

    /* screen all interrupts */
    pVoReg->VOINTMSK.u32 = 0;
#if 0
    /* tmp set */
    pVoReg->VOMUX.u32 = 0x57f;
#endif
    DHDVTTHDtmp.u32 = pVoReg->DHDVTTHD.u32;
    DHDVTTHDtmp.bits.vtmgthd1 = 50;
    DHDVTTHDtmp.bits.vtmgthd2 = 80;
    pVoReg->DHDVTTHD.u32 = DHDVTTHDtmp.u32;

    DSDVTTHDtmp.u32 = pVoReg->DSDVTTHD.u32;
    DSDVTTHDtmp.bits.vtmgthd1 = 40;
    DSDVTTHDtmp.bits.vtmgthd2 = 40;
    pVoReg->DSDVTTHD.u32 = DSDVTTHDtmp.u32;

    /* no output for MIXER */
    pVoReg->CBMMIX1.u32 = 0;
    pVoReg->CBMMIX2.u32 = 0;

   // VHDWBC1STRDtmp.u32 = pVoReg->VHDWBC1STRD.u32;
   // VHDWBC1STRDtmp.bits.req_interval = 300;
    //pVoReg->VHDWBC1STRD.u32 = VHDWBC1STRDtmp.u32;

    /*
     * pVoReg->VHDWBC1STRD.bits.req_interval = 1023;
     * pVoReg->WBC0CTRL.bits.req_interval    = 1023;
     */

    /* close all functional modules, DxD, VxD, Gx */
    Vou_SetWbcEnable(HAL_DISP_LAYER_WBC0, 0);
    //Vou_SetWbcEnable(HAL_DISP_LAYER_WBC1, 0);

    return;
}

HI_VOID Vou_SetPdDefThd(HAL_DISP_LAYER_E enLayer)
{
    HI_U32 u32HistThd[4]   = {8,16,32,64};
    HI_U32 u32UmThd[3]     = {8,32,64};
    HI_U32 u32PccThd[4]    = {16,32,64,128};
    HI_U32 u32ItDiffThd[4] = {4,8,16,32};

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            Vou_SetPdDirMch    (enLayer, 0);
            Vou_SetPdStlBlkThd (enLayer, 0);
            Vou_SetPdDiffThd   (enLayer, 30);
            Vou_SetPdCoringTkr (enLayer, 128);
            Vou_SetPdCoringNorm(enLayer, 16);
            Vou_SetPdCoringBlk (enLayer, rand()%256);
            Vou_SetPdPccHthd   (enLayer, 16);

            Vou_SetPdLasiThd   (enLayer, 20);
            Vou_SetPdEdgeThd   (enLayer, 15);


            Vou_SetPdHistThd   (enLayer, u32HistThd);
            Vou_SetPdUmThd     (enLayer, u32UmThd);
            Vou_SetPdPccVthd   (enLayer, u32PccThd);
            Vou_SetPdItDiffThd (enLayer, u32ItDiffThd);

            /* Vou_SetPdBlkPos (enLayer, HI_U32 u32Mode, HI_U32 u32PosX, HI_U32 u32PosY); */
            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdDefThd() Select Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}


#endif


/****************************************************************************
 *          There are common functions for both EDA and FPGA, SDK           *
 ****************************************************************************/


/*-----------------------------------INTF------------------------------------*/
HI_VOID HAL_DISP_SetDacMux(HAL_DISP_OUTPUTSEL_E enChan, HAL_DISP_MUXINTF_E enIntf)
{
    U_VOMUX VOMUX;

    switch(enChan)
    {
        case HAL_DISP_OUTPUTSEL_DAC0:
        {
            VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
            VOMUX.bits.dac0_sel = enIntf;
            RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

            break;
        }
        case HAL_DISP_OUTPUTSEL_DAC1:
        {
            VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
            VOMUX.bits.dac1_sel = enIntf;
            RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

            break;
        }
        case HAL_DISP_OUTPUTSEL_DAC2:
        {
            VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
            VOMUX.bits.dac2_sel = enIntf;
            RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

            break;
        }
        case HAL_DISP_OUTPUTSEL_DAC3:
        {
            VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
            VOMUX.bits.dac3_sel = enIntf;
            RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

            break;
        }
        case HAL_DISP_OUTPUTSEL_DAC4:
        {
            VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
            VOMUX.bits.dac4_sel = enIntf;
            RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

            break;
        }
        case HAL_DISP_OUTPUTSEL_DAC5:
        {
            VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
            VOMUX.bits.dac5_sel = enIntf;
            RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Wrong DAC Select\n");
            return ;
        }
    }
    return ;
}

/** set the switch status of disp channels */
HI_VOID HAL_DISP_SetIntfEnable(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bTrue)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDCTRL DHDCTRL;

        /* VOU VHD CHANNEL disable */
        DHDCTRL.u32 = RegRead(&(pVoReg->DHDCTRL.u32));
        DHDCTRL.bits.intf_en = bTrue;
        RegWrite(&(pVoReg->DHDCTRL.u32), DHDCTRL.u32);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDCTRL DSDCTRL;

        /* VOU VSD CHANNEL disable */
        DSDCTRL.u32 = RegRead(&(pVoReg->DSDCTRL.u32));
        DSDCTRL.bits.intf_en = bTrue;
        RegWrite(&(pVoReg->DSDCTRL.u32), DSDCTRL.u32);
    }
    else
    {
        HAL_PRINT("Error,close wrong channel ID\n");

        /* return ; */
    }
}

/** query interface sequence */
HI_VOID  HAL_DISP_GetIntfEnable(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 *bTrue)
{
    *bTrue = 0;
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDCTRL DHDCTRL;

        /* VOU VHD CHANNEL disable */
        DHDCTRL.u32 = RegRead(&(pVoReg->DHDCTRL.u32));
        *bTrue = DHDCTRL.bits.intf_en;
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDCTRL DSDCTRL;

        /* VOU VSD CHANNEL disable */
        DSDCTRL.u32 = RegRead(&(pVoReg->DSDCTRL.u32));
        *bTrue = DSDCTRL.bits.intf_en;
    }
    else
    {
        HAL_PRINT("Error,close wrong channel ID\n");

        /* return ; */
    }
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
/** configuration of interface sequence */
HI_VOID  HAL_DISP_OpenIntf(HAL_DISP_OUTPUTCHANNEL_E enChan,
                                     HAL_DISP_SYNCINFO_S stSyncInfo)
{
    if(enChan == HAL_DISP_CHANNEL_DHD)
    {
       U_DHDCTRL DHDCTRL;
       U_DHDVSYNC DHDVSYNC;
       U_DHDVPLUS DHDVPLUS;
       U_DHDPWR DHDPWR;

        /* VOU VHD CHANNEL enable  */
        DHDCTRL.u32 = RegRead(&(pVoReg->DHDCTRL.u32));
        DHDCTRL.bits.iop   = stSyncInfo.bIop;
        DHDCTRL.bits.intfb = stSyncInfo.u8Intfb;
        DHDCTRL.bits.synm  = stSyncInfo.bSynm;
        DHDCTRL.bits.idv   = stSyncInfo.bIdv;
        DHDCTRL.bits.ihs   = stSyncInfo.bIhs;
        DHDCTRL.bits.ivs   = stSyncInfo.bIvs;
        RegWrite(&(pVoReg->DHDCTRL.u32), DHDCTRL.u32);

        /* Config VHD interface horizontal timming */
        if (DHDCTRL.bits.intfb == 0) /* 2clk/pixel */
        {
            U_DHDHSYNC1 DHDHSYNC1;
            U_DHDHSYNC2 DHDHSYNC2;

            DHDHSYNC1.u32 = RegRead(&(pVoReg->DHDHSYNC1.u32));
            DHDHSYNC2.u32 = RegRead(&(pVoReg->DHDHSYNC2.u32));
            DHDHSYNC1.bits.hact = stSyncInfo.u16Hact -1;
            DHDHSYNC1.bits.hbb  = (stSyncInfo.u16Hbb)*2-1;
            DHDHSYNC2.bits.hfb  = (stSyncInfo.u16Hfb)*2-1;
            RegWrite(&(pVoReg->DHDHSYNC1.u32), DHDHSYNC1.u32);
            RegWrite(&(pVoReg->DHDHSYNC2.u32), DHDHSYNC2.u32);
        }
        else
        {
            U_DHDHSYNC1 DHDHSYNC1;
            U_DHDHSYNC2 DHDHSYNC2;

            DHDHSYNC1.u32 = RegRead(&(pVoReg->DHDHSYNC1.u32));
            DHDHSYNC2.u32 = RegRead(&(pVoReg->DHDHSYNC2.u32));
            DHDHSYNC1.bits.hact = stSyncInfo.u16Hact -1;
            DHDHSYNC1.bits.hbb  = stSyncInfo.u16Hbb -1;
            DHDHSYNC2.bits.hfb  = stSyncInfo.u16Hfb -1;
            RegWrite(&(pVoReg->DHDHSYNC1.u32), DHDHSYNC1.u32);
            RegWrite(&(pVoReg->DHDHSYNC2.u32), DHDHSYNC2.u32);
        }

        /* Config VHD interface veritical timming */
        DHDVSYNC.u32 = RegRead(&(pVoReg->DHDVSYNC.u32));
        DHDVSYNC.bits.vact = stSyncInfo.u16Vact  -1;
        DHDVSYNC.bits.vbb = stSyncInfo.u16Vbb - 1;
        DHDVSYNC.bits.vfb =  stSyncInfo.u16Vfb - 1;
        RegWrite(&(pVoReg->DHDVSYNC.u32), DHDVSYNC.u32);

        /* Config VHD interface veritical bottom timming,no use in progressive mode */
        DHDVPLUS.u32 = RegRead(&(pVoReg->DHDVPLUS.u32));
        DHDVPLUS.bits.bvact = stSyncInfo.u16Bvact - 1;
        DHDVPLUS.bits.bvbb = stSyncInfo.u16Bvbb - 1;
        DHDVPLUS.bits.bvfb =  stSyncInfo.u16Bvfb - 1;
        RegWrite(&(pVoReg->DHDVPLUS.u32), DHDVPLUS.u32);

        /* Config VHD interface veritical bottom timming,  */
        DHDPWR.u32 = RegRead(&(pVoReg->DHDPWR.u32));
        DHDPWR.bits.hpw = stSyncInfo.u16Hpw - 1;
        DHDPWR.bits.vpw = stSyncInfo.u16Vpw - 1;
        RegWrite(&(pVoReg->DHDPWR.u32), DHDPWR.u32);

        /*
         * DHDCTRL.u32 = RegRead(&(pVoReg->DHDCTRL.u32));
         * DHDCTRL.bits.intf_en = 1;
         * RegWrite(&(pVoReg->DHDCTRL.u32), DHDCTRL.u32);
         */
    }
    else if(enChan == HAL_DISP_CHANNEL_DSD)
    {
       U_DSDCTRL DSDCTRL;
       U_DSDHSYNC1 DSDHSYNC1;
       U_DSDHSYNC2 DSDHSYNC2;
       U_DSDVSYNC DSDVSYNC;
       U_DSDVPLUS DSDVPLUS;
       U_DSDPWR DSDPWR;

        /* VOU VSD CHANNEL enable  */
        DSDCTRL.u32 = RegRead(&(pVoReg->DSDCTRL.u32));
        DSDCTRL.bits.iop = stSyncInfo.bIop;
        DSDCTRL.bits.intfb = stSyncInfo.u8Intfb;
        DSDCTRL.bits.synm = stSyncInfo.bSynm;
        DSDCTRL.bits.idv = stSyncInfo.bIdv;
        DSDCTRL.bits.ihs = stSyncInfo.bIhs;
        DSDCTRL.bits.ivs = stSyncInfo.bIvs;
        RegWrite(&(pVoReg->DSDCTRL.u32), DSDCTRL.u32);

        /* Config VSD interface horizontal timming */
        if(DSDCTRL.bits.intfb == 0)
        {
            DSDHSYNC1.u32 = RegRead(&(pVoReg->DSDHSYNC1.u32));
            DSDHSYNC2.u32 = RegRead(&(pVoReg->DSDHSYNC2.u32));
            DSDHSYNC1.bits.hact = stSyncInfo.u16Hact -1;
            DSDHSYNC1.bits.hbb  = (stSyncInfo.u16Hbb)*2-1;
            DSDHSYNC2.bits.hfb  = (stSyncInfo.u16Hfb)*2-1;
            RegWrite(&(pVoReg->DSDHSYNC1.u32), DSDHSYNC1.u32);
            RegWrite(&(pVoReg->DSDHSYNC2.u32), DSDHSYNC2.u32);
        }
        else
        {
            DSDHSYNC1.u32 = RegRead(&(pVoReg->DSDHSYNC1.u32));
            DSDHSYNC2.u32 = RegRead(&(pVoReg->DSDHSYNC2.u32));
            DSDHSYNC1.bits.hact = stSyncInfo.u16Hact -1;
            DSDHSYNC1.bits.hbb  = stSyncInfo.u16Hbb -1;
            DSDHSYNC2.bits.hfb  = stSyncInfo.u16Hfb -1;
            RegWrite(&(pVoReg->DSDHSYNC1.u32), DSDHSYNC1.u32);
            RegWrite(&(pVoReg->DSDHSYNC2.u32), DSDHSYNC2.u32);
        }

        /* Config VSD interface veritical timming */
        DSDVSYNC.u32 = RegRead(&(pVoReg->DSDVSYNC.u32));
        DSDVSYNC.bits.vact = stSyncInfo.u16Vact  -1;
        DSDVSYNC.bits.vbb = stSyncInfo.u16Vbb - 1;
        DSDVSYNC.bits.vfb =  stSyncInfo.u16Vfb - 1;
        RegWrite(&(pVoReg->DSDVSYNC.u32), DSDVSYNC.u32);

        /* Config VSD interface veritical bottom timming,no use in progressive mode */
        DSDVPLUS.u32 = RegRead(&(pVoReg->DSDVPLUS.u32));
        DSDVPLUS.bits.bvact = stSyncInfo.u16Bvact - 1;
        DSDVPLUS.bits.bvbb = stSyncInfo.u16Bvbb - 1;
        DSDVPLUS.bits.bvfb =  stSyncInfo.u16Bvfb - 1;
        RegWrite(&(pVoReg->DSDVPLUS.u32), DSDVPLUS.u32);

        /* Config VSD interface veritical bottom timming,  */
        DSDPWR.u32 = RegRead(&(pVoReg->DSDPWR.u32));
        DSDPWR.bits.hpw = stSyncInfo.u16Hpw - 1;
        DSDPWR.bits.vpw = stSyncInfo.u16Vpw - 1 ;
        RegWrite(&(pVoReg->DSDPWR.u32), DSDPWR.u32);

        /*
         * DSDCTRL.u32 = RegRead(&(pVoReg->DSDCTRL.u32));
         * DSDCTRL.bits.intf_en = 1;
         * RegWrite(&(pVoReg->DSDCTRL.u32), DSDCTRL.u32);
         */
    }
    else
    {
        /* printf("Error,open wrong chnnel ID\n"); */
        return ;
    }

    return;
}

HI_VOID  HAL_DISP_CloseIntf(HAL_DISP_OUTPUTCHANNEL_E enChan)
{
    U_DHDCTRL DHDCTRL;
    U_DSDCTRL DSDCTRL;


    if(enChan == HAL_DISP_CHANNEL_DHD)
    {
        /* VOU VHD CHANNEL disable  */
        DHDCTRL.u32 = RegRead(&(pVoReg->DHDCTRL.u32));
        DHDCTRL.bits.intf_en = 0;
        RegWrite(&(pVoReg->DHDCTRL.u32), DHDCTRL.u32);

    }
    else if(enChan == HAL_DISP_CHANNEL_DSD)
    {
        /* VOU VSD CHANNEL disable  */
        DSDCTRL.u32 = RegRead(&(pVoReg->DSDCTRL.u32));
        DSDCTRL.bits.intf_en = 0;
        RegWrite(&(pVoReg->DSDCTRL.u32), DSDCTRL.u32);
    }
    else
    {
        HAL_PRINT("Error,close wrong channel ID\n");
        return ;
    }


    return ;
}
#endif

/* set data format of interface */
/* BT656/BT1220: 422 format, LCD/VGA: 444 format,  HDMI depends on demand */
HI_VOID HAL_DISP_SetIntfDataFmt(HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_INTFDATAFMT_E stIntfDataFmt)
{
    U_DHDCTRL DHDCTRL;

    /* U_DADCTRL  DADCTRL; */
    U_DSDCTRL DSDCTRL;

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        /* VOU VHD CHANNEL enable */
        DHDCTRL.u32 = pVoReg->DHDCTRL.u32;
        DHDCTRL.bits.intfdm = stIntfDataFmt;
        pVoReg->DHDCTRL.u32 = DHDCTRL.u32;
    }

#if 0
    else if (enChan == HAL_DISP_CHANNEL_DAD)
    {
        /* VOU VAD CHANNEL enable*/
        DADCTRL.u32 = pVoReg->DADCTRL.u32;
        DADCTRL.bits.intfdm = stIntfDataFmt;
        pVoReg->DADCTRL.u32 = DADCTRL.u32;
    }
#endif
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        /* VOU VSD CHANNEL enable */
        DSDCTRL.u32 = pVoReg->DSDCTRL.u32;
        DSDCTRL.bits.intfdm = stIntfDataFmt;
        pVoReg->DSDCTRL.u32 = DSDCTRL.u32;
    }
    else
    {
        return ;
    }

    return ;
}

/** set the coefficients for color space transformation of disp channel */
HI_VOID HAL_DISP_SetIntfCscCoefEx(HAL_DISP_OUTPUTCHANNEL_E enChan,
                                IntfCscCoef_S *pstCscCoef)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDCSCP0 DHDCSCP0;
        U_DHDCSCP1 DHDCSCP1;
        U_DHDCSCP2 DHDCSCP2;
        U_DHDCSCP3 DHDCSCP3;
        U_DHDCSCP4 DHDCSCP4;

        DHDCSCP0.u32 = RegRead(&(pVoReg->DHDCSCP0.u32));
        DHDCSCP0.bits.cscp00 = pstCscCoef->csc_coef00;
        DHDCSCP0.bits.cscp01 = pstCscCoef->csc_coef01;
        RegWrite(&(pVoReg->DHDCSCP0.u32), DHDCSCP0.u32);

        DHDCSCP1.u32 = RegRead(&(pVoReg->DHDCSCP1.u32));
        DHDCSCP1.bits.cscp02 = pstCscCoef->csc_coef02;
        DHDCSCP1.bits.cscp10 = pstCscCoef->csc_coef10;
        RegWrite(&(pVoReg->DHDCSCP1.u32), DHDCSCP1.u32);

        DHDCSCP2.u32 = RegRead(&(pVoReg->DHDCSCP2.u32));
        DHDCSCP2.bits.cscp11 = pstCscCoef->csc_coef11;
        DHDCSCP2.bits.cscp12 = pstCscCoef->csc_coef12;
        RegWrite(&(pVoReg->DHDCSCP2.u32), DHDCSCP2.u32);

        DHDCSCP3.u32 = RegRead(&(pVoReg->DHDCSCP3.u32));
        DHDCSCP3.bits.cscp20 = pstCscCoef->csc_coef20;
        DHDCSCP3.bits.cscp21 = pstCscCoef->csc_coef21;
        RegWrite(&(pVoReg->DHDCSCP3.u32), DHDCSCP3.u32);

        DHDCSCP4.u32 = RegRead(&(pVoReg->DHDCSCP4.u32));
        DHDCSCP4.bits.cscp22 = pstCscCoef->csc_coef22;
        RegWrite(&(pVoReg->DHDCSCP4.u32), DHDCSCP4.u32);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDCSCP0 DSDCSCP0;
        U_DSDCSCP1 DSDCSCP1;
        U_DSDCSCP2 DSDCSCP2;
        U_DSDCSCP3 DSDCSCP3;
        U_DSDCSCP4 DSDCSCP4;

        DSDCSCP0.u32 = RegRead(&(pVoReg->DSDCSCP0.u32));
        DSDCSCP0.bits.cscp00 = pstCscCoef->csc_coef00;
        DSDCSCP0.bits.cscp01 = pstCscCoef->csc_coef01;
        RegWrite(&(pVoReg->DSDCSCP0.u32), DSDCSCP0.u32);

        DSDCSCP1.u32 = RegRead(&(pVoReg->DSDCSCP1.u32));
        DSDCSCP1.bits.cscp02 = pstCscCoef->csc_coef02;
        DSDCSCP1.bits.cscp10 = pstCscCoef->csc_coef10;
        RegWrite(&(pVoReg->DSDCSCP1.u32), DSDCSCP1.u32);

        DSDCSCP2.u32 = RegRead(&(pVoReg->DSDCSCP2.u32));
        DSDCSCP2.bits.cscp11 = pstCscCoef->csc_coef11;
        DSDCSCP2.bits.cscp12 = pstCscCoef->csc_coef12;
        RegWrite(&(pVoReg->DSDCSCP2.u32), DSDCSCP2.u32);

        DSDCSCP3.u32 = RegRead(&(pVoReg->DSDCSCP3.u32));
        DSDCSCP3.bits.cscp20 = pstCscCoef->csc_coef20;
        DSDCSCP3.bits.cscp21 = pstCscCoef->csc_coef21;
        RegWrite(&(pVoReg->DSDCSCP3.u32), DSDCSCP3.u32);

        DSDCSCP4.u32 = RegRead(&(pVoReg->DSDCSCP4.u32));
        DSDCSCP4.bits.cscp22 = pstCscCoef->csc_coef22;
        RegWrite(&(pVoReg->DSDCSCP4.u32), DSDCSCP4.u32);
    }
    else
    {
        HAL_PRINT("Wrong CHANNEL ID\n");
    }
}

/** set CSC DC component of disp channel */
HI_VOID HAL_DISP_SetIntfCscDcCoef(HAL_DISP_OUTPUTCHANNEL_E enChan,
                                  IntfCscDcCoef_S *pstCscDcCoef)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDCSCIDC DHDCSCIDC;
        U_DHDCSCODC DHDCSCODC;

        DHDCSCIDC.u32 = RegRead(&(pVoReg->DHDCSCIDC.u32));
        DHDCSCIDC.bits.cscidc2 = pstCscDcCoef->csc_in_dc2;
        DHDCSCIDC.bits.cscidc1 = pstCscDcCoef->csc_in_dc1;
        DHDCSCIDC.bits.cscidc0 = pstCscDcCoef->csc_in_dc0;
        RegWrite(&(pVoReg->DHDCSCIDC.u32), DHDCSCIDC.u32);

        DHDCSCODC.u32 = RegRead(&(pVoReg->DHDCSCODC.u32));
        DHDCSCODC.bits.cscodc2 = pstCscDcCoef->csc_out_dc2;
        DHDCSCODC.bits.cscodc1 = pstCscDcCoef->csc_out_dc1;
        DHDCSCODC.bits.cscodc0 = pstCscDcCoef->csc_out_dc0;
        RegWrite(&(pVoReg->DHDCSCODC.u32), DHDCSCODC.u32);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDCSCIDC DSDCSCIDC;
        U_DSDCSCODC DSDCSCODC;

        DSDCSCIDC.u32 = RegRead(&(pVoReg->DSDCSCIDC.u32));
        DSDCSCIDC.bits.cscidc2 = pstCscDcCoef->csc_in_dc2;
        DSDCSCIDC.bits.cscidc1 = pstCscDcCoef->csc_in_dc1;
        DSDCSCIDC.bits.cscidc0 = pstCscDcCoef->csc_in_dc0;
        RegWrite(&(pVoReg->DSDCSCIDC.u32), DSDCSCIDC.u32);

        DSDCSCODC.u32 = RegRead(&(pVoReg->DSDCSCODC.u32));
        DSDCSCODC.bits.cscodc2 = pstCscDcCoef->csc_out_dc2;
        DSDCSCODC.bits.cscodc1 = pstCscDcCoef->csc_out_dc1;
        DSDCSCODC.bits.cscodc0 = pstCscDcCoef->csc_out_dc0;
        RegWrite(&(pVoReg->DSDCSCODC.u32), DSDCSCODC.u32);
    }
    else
    {
        HAL_PRINT("Wrong CHANNEL ID\n");
    }
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
/** set CSC switch status of disp channel */
HI_VOID  HAL_DISP_SetIntfCscEna(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bEnable)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDCSCIDC DHDCSCIDC;

        DHDCSCIDC.u32 = RegRead(&(pVoReg->DHDCSCIDC.u32));
        DHDCSCIDC.bits.csc_en = bEnable;
        RegWrite(&(pVoReg->DHDCSCIDC.u32), DHDCSCIDC.u32);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
    U_DSDCSCIDC DSDCSCIDC;

        DSDCSCIDC.u32 = RegRead(&(pVoReg->DSDCSCIDC.u32));
        DSDCSCIDC.bits.csc_en = bEnable;
        RegWrite(&(pVoReg->DSDCSCIDC.u32), DSDCSCIDC.u32);
    }
    else
    {
        HAL_PRINT("Wrong CHANNEL ID\n");

       /* return ; */
    }

    /* return ; */
}
#endif

/** set interrupt mode of disp channel */
HI_VOID HAL_DISP_SetVtThdMode(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 uThdNo, HI_U32 uFieldMode)
{
    U_DHDVTTHD3 DHDVTTHD3;
    U_DSDVTTHD3 DSDVTTHD3;

      if (enChan == HAL_DISP_CHANNEL_DHD)
      {
          U_DHDVTTHD DHDVTTHD;

          if(uThdNo == 1)
          {
              DHDVTTHD.u32 = RegRead(&(pVoReg->DHDVTTHD.u32));
              DHDVTTHD.bits.thd1_mode = uFieldMode;
              RegWrite(&(pVoReg->DHDVTTHD.u32), DHDVTTHD.u32);
          }
          else if(uThdNo == 2)
          {
              DHDVTTHD.u32 = RegRead(&(pVoReg->DHDVTTHD.u32));
              DHDVTTHD.bits.thd2_mode = uFieldMode;
              RegWrite(&(pVoReg->DHDVTTHD.u32), DHDVTTHD.u32);
          }
          else if(uThdNo == 3)
          {
              DHDVTTHD3.u32 = RegRead(&(pVoReg->DHDVTTHD3.u32));
              DHDVTTHD3.bits.thd3_mode = uFieldMode;
              RegWrite(&(pVoReg->DHDVTTHD3.u32), DHDVTTHD3.u32);
          }
          else if(uThdNo == 4)
          {
              DHDVTTHD3.u32 = RegRead(&(pVoReg->DHDVTTHD3.u32));
              DHDVTTHD3.bits.thd4_mode = uFieldMode;
              RegWrite(&(pVoReg->DHDVTTHD3.u32), DHDVTTHD3.u32);
          }

      }
      else if (enChan == HAL_DISP_CHANNEL_DSD)
      {
          U_DSDVTTHD DSDVTTHD;

           if(uThdNo == 1)
           {
               DSDVTTHD.u32 = RegRead(&(pVoReg->DSDVTTHD.u32));
               DSDVTTHD.bits.thd1_mode = uFieldMode;
               RegWrite(&(pVoReg->DSDVTTHD.u32), DSDVTTHD.u32);
           }
           else if(uThdNo == 2)
          {
               DSDVTTHD.u32 = RegRead(&(pVoReg->DSDVTTHD.u32));
               DSDVTTHD.bits.thd2_mode = uFieldMode;
               RegWrite(&(pVoReg->DSDVTTHD.u32), DSDVTTHD.u32);
           }
           else if(uThdNo == 3)
           {
               DSDVTTHD3.u32 = RegRead(&(pVoReg->DSDVTTHD3.u32));
               DSDVTTHD3.bits.thd3_mode = uFieldMode;
               RegWrite(&(pVoReg->DSDVTTHD3.u32), DSDVTTHD3.u32);
           }

      }
}


/** set interrupt threshold of disp channel */
HI_VOID HAL_DISP_SetVtThd(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 uThdNo, HI_U32 vtthd)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDVTTHD DHDVTTHD;
        U_DHDVTTHD3 DHDVTTHD3;

          if(uThdNo == 1)
          {
              DHDVTTHD.u32 = RegRead(&(pVoReg->DHDVTTHD.u32));
              DHDVTTHD.bits.vtmgthd1 = vtthd;

              RegWrite(&(pVoReg->DHDVTTHD.u32), DHDVTTHD.u32);
          }
          else if(uThdNo == 2)
          {
              DHDVTTHD.u32 = RegRead(&(pVoReg->DHDVTTHD.u32));
              DHDVTTHD.bits.vtmgthd2 = vtthd;
              RegWrite(&(pVoReg->DHDVTTHD.u32), DHDVTTHD.u32);
          }
          else if(uThdNo == 3)
          {
              DHDVTTHD3.u32 = RegRead(&(pVoReg->DHDVTTHD3.u32));
              DHDVTTHD3.bits.vtmgthd3 = vtthd;
              RegWrite(&(pVoReg->DHDVTTHD3.u32), DHDVTTHD3.u32);
          }
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDVTTHD DSDVTTHD;
        U_DSDVTTHD3 DSDVTTHD3;

           if(uThdNo == 1)
           {
               DSDVTTHD.u32 = RegRead(&(pVoReg->DSDVTTHD.u32));
               DSDVTTHD.bits.vtmgthd1 = vtthd;
               RegWrite(&(pVoReg->DSDVTTHD.u32), DSDVTTHD.u32);
           }
           else if(uThdNo == 2)
          {
               DSDVTTHD.u32 = RegRead(&(pVoReg->DSDVTTHD.u32));
               DSDVTTHD.bits.vtmgthd2 = vtthd;
               RegWrite(&(pVoReg->DSDVTTHD.u32), DSDVTTHD.u32);
           }
           else if(uThdNo == 3)
           {
               DSDVTTHD3.u32 = RegRead(&(pVoReg->DSDVTTHD3.u32));
               DSDVTTHD3.bits.vtmgthd3 = vtthd;
               RegWrite(&(pVoReg->DSDVTTHD3.u32), DSDVTTHD3.u32);
           }
    }
}

/*============================================================================== */
HI_VOID  HAL_DISP_EnableLayer(HAL_DISP_LAYER_E enLayer, HI_U32 bEnable)

{
    U_VHDCTRL VHDCTRL;
    //U_VADCTRL VADCTRL;
    //U_VEDCTRL VEDCTRL;
    U_VSDCTRL VSDCTRL;
    U_G0CTRL G0CTRL;
    U_G1CTRL G1CTRL;
    U_G2CTRL G2CTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
            VHDCTRL.bits.surface_en = bEnable;
            RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
            VSDCTRL.bits.surface_en = bEnable;
            RegWrite(&(pVoReg->VSDCTRL.u32), VSDCTRL.u32);

            break;
        }

        case HAL_DISP_LAYER_GFX0:
        {
            G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
            G0CTRL.bits.surface_en = bEnable;
            RegWrite(&(pVoReg->G0CTRL.u32), G0CTRL.u32);
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
            G1CTRL.bits.surface_en = bEnable;
            RegWrite(&(pVoReg->G1CTRL.u32), G1CTRL.u32);
            break;
        }
        case HAL_DISP_LAYER_GFX2:
        {
            G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
            G2CTRL.bits.zone1_en = bEnable;
            G2CTRL.bits.surface_en = (G2CTRL.bits.zone1_en | G2CTRL.bits.zone2_en);
            RegWrite(&(pVoReg->G2CTRL.u32), G2CTRL.u32);
            break;
        }
        case HAL_DISP_LAYER_GFX3:
        {
            G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
            G2CTRL.bits.surface_en = bEnable;
            G2CTRL.bits.zone2_en = bEnable;
            G2CTRL.bits.surface_en = (G2CTRL.bits.zone1_en | G2CTRL.bits.zone2_en);
            RegWrite(&(pVoReg->G2CTRL.u32), G2CTRL.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error,HAL_DISP_EnableLayer() Wrong layer ID\n");
            return ;
        }
    }

    return ;
}

// add cr addr and stride for planar pixel format, by q212453
HI_VOID HAL_DISP_SetLayerCrAddr(HAL_DISP_LAYER_E enLayer,HI_U8  u8Chan,
                                HI_U32 u32CrAddr, HI_U16 u16CrStr)
{
    U_VHDCCRADDR VHDCCRADDR;
    U_VHDLCRADDR VHDLCRADDR;
    U_VHDNCRADDR VHDNCRADDR;

    U_VHDCRSTRIDE VHDCRSTRIDE;

    if (enLayer == HAL_DISP_LAYER_VIDEO1)
    {
       if (u8Chan == 0)
       {
           VHDCCRADDR.u32 = u32CrAddr;
           RegWrite(&(pVoReg->VHDCCRADDR.u32), VHDCCRADDR.u32);
       }
       else if (u8Chan == 1)
       {
           VHDLCRADDR.u32 = u32CrAddr;
           RegWrite(&(pVoReg->VHDLCRADDR.u32), VHDLCRADDR.u32);
       }
       else
       {
           VHDNCRADDR.u32 = u32CrAddr;
           RegWrite(&(pVoReg->VHDNCRADDR.u32), VHDNCRADDR.u32);
       }

       VHDCRSTRIDE.u32 = RegRead(&(pVoReg->VHDCRSTRIDE.u32));
       VHDCRSTRIDE.bits.surface_crstride = u16CrStr;
       RegWrite(&(pVoReg->VHDCRSTRIDE.u32), VHDCRSTRIDE.u32);

    }
    else
    {
        HAL_PRINT("Error,set stride select wrong layer ID, planar format!\n");

        return ;
    }

    return;
}

HI_VOID HAL_DISP_SetLayerAddr(HAL_DISP_LAYER_E enLayer,HI_U8  u8Chan,
                                         HI_U32 u32LAddr,HI_U32 u32CAddr,
                                         HI_U16 u16LStr, HI_U16 u16CStr)
{
    U_VHDCADDR VHDCADDR;
    U_VHDCCADDR VHDCCADDR;
    U_VHDLADDR VHDLADDR;
    U_VHDLCADDR VHDLCADDR;
    U_VHDNADDR VHDNADDR;
    U_VHDNCADDR VHDNCADDR;
    U_VHDSTRIDE VHDSTRIDE;
    //U_VADSTRIDE VADSTRIDE;
    //U_VADCADDR VADCADDR;
    //U_VADCCADDR VADCCADDR;
    U_VSDCADDR VSDCADDR;
    U_VSDCCADDR VSDCCADDR;
    U_VSDSTRIDE VSDSTRIDE;

    //U_VEDSTRIDE VEDSTRIDE;
    //U_VEDCADDR VEDCADDR;
    //U_VEDCCADDR VEDCCADDR;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            if(u8Chan == 0)
            {
                VHDCADDR.u32 = u32LAddr;
                VHDCCADDR.u32 = u32CAddr;
                RegWrite(&(pVoReg->VHDCADDR.u32), VHDCADDR.u32);
                RegWrite(&(pVoReg->VHDCCADDR.u32), VHDCCADDR.u32);

                /* set stride just according to current frame */
                VHDSTRIDE.u32 = RegRead(&(pVoReg->VHDSTRIDE.u32));
                VHDSTRIDE.bits.surface_stride = u16LStr;
                VHDSTRIDE.bits.surface_cstride = u16CStr;
                RegWrite(&(pVoReg->VHDSTRIDE.u32), VHDSTRIDE.u32);
            }
            else if(u8Chan == 1)
            {
                VHDLADDR.u32 = u32LAddr;
                VHDLCADDR.u32 = u32CAddr;
                RegWrite(&(pVoReg->VHDLADDR.u32), VHDLADDR.u32);
                RegWrite(&(pVoReg->VHDLCADDR.u32), VHDLCADDR.u32);
            }
            else
            {
                VHDNADDR.u32 = u32LAddr;
                VHDNCADDR.u32 = u32CAddr;
                RegWrite(&(pVoReg->VHDNADDR.u32), VHDNADDR.u32);
                RegWrite(&(pVoReg->VHDNCADDR.u32), VHDNCADDR.u32);
            }

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDCADDR.u32  = u32LAddr;
            VSDCCADDR.u32 = u32CAddr;
            RegWrite(&(pVoReg->VSDCADDR.u32), VSDCADDR.u32);
            RegWrite(&(pVoReg->VSDCCADDR.u32), VSDCCADDR.u32);

            VSDSTRIDE.u32 = RegRead(&(pVoReg->VSDSTRIDE.u32));
            VSDSTRIDE.bits.surface_stride = u16LStr;
            VSDSTRIDE.bits.surface_cstride = u16CStr;
            RegWrite(&(pVoReg->VSDSTRIDE.u32), VSDSTRIDE.u32);
            break;
        }

        default:
        {
            HAL_PRINT("Error,set stride select wrong layer ID\n");
            return ;
        }
    }

    return ;
}

/***************************************************************************************
* func          : HAL_DISP_SetLayerDataFmt
* description   : CNcomment: 设置layer 像素格式 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID  HAL_DISP_SetLayerDataFmt(HAL_DISP_LAYER_E enLayer,
                                                  HAL_DISP_PIXELFORMAT_E  enDataFmt)
{
    U_VHDCTRL VHDCTRL;
    //U_VADCTRL VADCTRL;
    //U_VEDCTRL VEDCTRL;
    U_VSDCTRL VSDCTRL;
    U_G0CTRL G0CTRL;
    U_G1CTRL G1CTRL;
    U_G2CTRL G2CTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
            VHDCTRL.bits.ifmt = enDataFmt;
            RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {

            VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
            VSDCTRL.bits.ifmt = enDataFmt;
            RegWrite(&(pVoReg->VSDCTRL.u32), VSDCTRL.u32);

            break;
        }

        case HAL_DISP_LAYER_GFX0:
        {
            G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
            G0CTRL.bits.ifmt = enDataFmt;
            RegWrite(&(pVoReg->G0CTRL.u32), G0CTRL.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
            G1CTRL.bits.ifmt = enDataFmt;
            RegWrite(&(pVoReg->G1CTRL.u32), G1CTRL.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX2:
        case HAL_DISP_LAYER_GFX3:
        {
            G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
            G2CTRL.bits.ifmt = enDataFmt;
            RegWrite(&(pVoReg->G2CTRL.u32), G2CTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error, HAL_DISP_SetLayerDataFmt() Data format select wrong layer ID\n");
            return ;
        }
    }
    return ;
}

/***************************************************************************************
* func          : HAL_DISP_SetRegUpNoRatio
* description   : CNcomment:更新寄存器 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID  HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_E enLayer)
{
    U_VHDUPD VHDUPD;
    U_VSDUPD VSDUPD;
    U_G0UPD G0UPD;
    U_G1UPD G1UPD;
    U_WBC0UPD WBC0UPD;
    U_WBC2UPD WBC2UPD;
    U_WBC3UPD WBC3UPD;
    U_G2UPD G2UPD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            /* VHD layer register update */
            VHDUPD.bits.regup = 0x1;
            RegWrite(&(pVoReg->VHDUPD.u32), VHDUPD.u32);
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            /* VSD layer register update */
            VSDUPD.bits.regup = 0x1;
            RegWrite(&(pVoReg->VSDUPD.u32), VSDUPD.u32);
            break;
        }

        case HAL_DISP_LAYER_GFX0:
        {
            /* G0 layer register update */
            G0UPD.bits.regup = 0x1;
            RegWrite(&(pVoReg->G0UPD.u32), G0UPD.u32);
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            /* G1 layer register update */
            G1UPD.bits.regup = 0x1;
            RegWrite(&(pVoReg->G1UPD.u32), G1UPD.u32);
            break;
        }
        case HAL_DISP_LAYER_GFX2:
        case HAL_DISP_LAYER_GFX3:
        {
            /* G2 layer register update */
            G2UPD.bits.regup = 0x1;
            RegWrite(&(pVoReg->G2UPD.u32), G2UPD.u32);
            break;
        }
        case HAL_DISP_LAYER_WBC0:
        {
            /* G1 layer register update */
            WBC0UPD.bits.regup = 0x1;
            RegWrite(&(pVoReg->WBC0UPD.u32), WBC0UPD.u32);

            break;
        }
        case HAL_DISP_LAYER_WBC2:
        {
            /* G1 layer register update */
            WBC2UPD.bits.regup = 0x1;
            RegWrite(&(pVoReg->WBC2UPD.u32), WBC2UPD.u32);
            break;
        }
        case HAL_DISP_LAYER_WBC3:
        {
            /* WBC3 register update */
            WBC3UPD.bits.regup = 0x1;
            RegWrite(&(pVoReg->WBC3UPD.u32), WBC3UPD.u32);

            break;
        }

        default:
        {
            HAL_PRINT("Error,Register update wrong layer ID\n");
            return ;
        }
    }

    return ;
}


HI_VOID  HAL_DISP_SetReadMode(HAL_DISP_LAYER_E enLayer,
                                        HAL_DISP_DATARMODE_E enLRMode,
                                        HAL_DISP_DATARMODE_E enCRMode)
{
    U_VHDCTRL VHDCTRL;
    //U_VADCTRL VADCTRL;
    U_VSDCTRL VSDCTRL;
    //U_VEDCTRL VEDCTRL;

    /* VHD read data mode */
    if(enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
        VHDCTRL.bits.lm_rmode = enLRMode;
        VHDCTRL.bits.chm_rmode = enCRMode;
        RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);
    }

    else if(enLayer == HAL_DISP_LAYER_VIDEO3)
    {
        VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
        VSDCTRL.bits.lm_rmode = enLRMode;
        VSDCTRL.bits.chm_rmode = enCRMode;
        RegWrite(&(pVoReg->VSDCTRL.u32), VSDCTRL.u32);
    }
    else
    {
        HAL_PRINT("Error, set data read mode select wrong layer ID\n");
        return ;
    }
    return ;
}

HI_VOID  HAL_DISP_SetIntfClip(HAL_DISP_OUTPUTCHANNEL_E enChan,
                                        HAL_DISP_CLIP_S stClipData)
{
    U_DHDCTRL DHDCTRL;
    U_DHDCLIPL DHDCLIPL;
    U_DHDCLIPH DHDCLIPH;
    U_DSDCTRL DSDCTRL;
    U_DSDCLIPL DSDCLIPL;
    U_DSDCLIPH DSDCLIPH;

    if(enChan == HAL_DISP_CHANNEL_DHD)
    {
        DHDCTRL.u32 = RegRead(&(pVoReg->DHDCTRL.u32));
        DHDCTRL.bits.clipen = stClipData.bClipEn;
        RegWrite(&(pVoReg->DHDCTRL.u32), DHDCTRL.u32);

        DHDCLIPL.u32 = RegRead(&(pVoReg->DHDCLIPL.u32));
        DHDCLIPL.bits.clipcl2 = stClipData.u16ClipLow_y;
        DHDCLIPL.bits.clipcl1 = stClipData.u16ClipLow_cb;
        DHDCLIPL.bits.clipcl0 = stClipData.u16ClipLow_cr;
        RegWrite(&(pVoReg->DHDCLIPL.u32), DHDCLIPL.u32);

        DHDCLIPH.u32 = RegRead(&(pVoReg->DHDCLIPH.u32));
        DHDCLIPH.bits.clipch2 = stClipData.u16ClipHigh_y;
        DHDCLIPH.bits.clipch1 = stClipData.u16ClipHigh_cb;
        DHDCLIPH.bits.clipch0 = stClipData.u16ClipHigh_cr;
        RegWrite(&(pVoReg->DHDCLIPH.u32), DHDCLIPH.u32);
    }
    else if(enChan == HAL_DISP_CHANNEL_DSD)
    {
        DSDCTRL.u32 = RegRead(&(pVoReg->DSDCTRL.u32));
        DSDCTRL.bits.clipen = stClipData.bClipEn;
        RegWrite(&(pVoReg->DSDCTRL.u32), DSDCTRL.u32);

        DSDCLIPL.u32 = RegRead(&(pVoReg->DSDCLIPL.u32));
        DSDCLIPL.bits.clipcl2 = stClipData.u16ClipLow_y;
        DSDCLIPL.bits.clipcl1 = stClipData.u16ClipLow_cb;
        DSDCLIPL.bits.clipcl0 = stClipData.u16ClipLow_cr;
        RegWrite(&(pVoReg->DSDCLIPL.u32), DSDCLIPL.u32);

        DSDCLIPH.u32 = RegRead(&(pVoReg->DSDCLIPH.u32));
        DSDCLIPH.bits.clipch2 = stClipData.u16ClipHigh_y;
        DSDCLIPH.bits.clipch1 = stClipData.u16ClipHigh_cb;
        DSDCLIPH.bits.clipch0 = stClipData.u16ClipHigh_cr;
        RegWrite(&(pVoReg->DSDCLIPH.u32), DSDCLIPH.u32);
    }
    else
    {
            HAL_PRINT("Error,Set clip select wrong channel ID\n");
        return ;
    }

    return ;
}

HI_VOID HAL_DISP_SaveDXD(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32RegVirAddr)
{
    S_VOU_V400_REGS_TYPE  *pVouReg;

    pVouReg = (S_VOU_V400_REGS_TYPE *)u32RegVirAddr;

    /* save DHD and HDate Reg */
    if (HAL_DISP_CHANNEL_DHD == enChan)
    {
        memcpy((HI_VOID *)(&(pVouReg->DHDCTRL)), (HI_VOID *)(&(pVoReg->DHDCTRL)), 0x100);
        memcpy((HI_VOID *)(&(pVouReg->HDATE_VERSION)), (HI_VOID *)(&(pVoReg->HDATE_VERSION)), 0x100);

        pVouReg->DHDCTRL.bits.intf_en = 0;

    }
    /* save DSD and SDate Reg */
    else
    {
        memcpy((HI_VOID *)(&(pVouReg->DSDCTRL)), (HI_VOID *)(&(pVoReg->DSDCTRL)), 0x100);
        memcpy((HI_VOID *)(&(pVouReg->DATE_COEFF0)), (HI_VOID *)(&(pVoReg->DATE_COEFF0)), 0x200);

        pVouReg->DSDCTRL.bits.intf_en = 0;
    }

    return;
}

HI_VOID HAL_DISP_RestoreDXD(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32RegVirAddr)
{
    S_VOU_V400_REGS_TYPE  *pVouReg;

    pVouReg = (S_VOU_V400_REGS_TYPE *)u32RegVirAddr;

    /* restore DHD and HDate Reg */
    if (HAL_DISP_CHANNEL_DHD == enChan)
    {
        memcpy((HI_VOID *)(&(pVoReg->DHDCTRL)), (HI_VOID *)(&(pVouReg->DHDCTRL)), 0x100);
        memcpy((HI_VOID *)(&(pVoReg->HDATE_VERSION)), (HI_VOID *)(&(pVouReg->HDATE_VERSION)), 0x100);
    }
    /* restore DSD and SDate Reg */
    else
    {
        memcpy((HI_VOID *)(&(pVoReg->DSDCTRL)), (HI_VOID *)(&(pVouReg->DSDCTRL)), 0x100);
        memcpy((HI_VOID *)(&(pVoReg->DATE_COEFF0)), (HI_VOID *)(&(pVouReg->DATE_COEFF0)), 0x200);
    }

    return;
}

HI_VOID HAL_DISP_SaveCommon(HI_U32 u32RegVirAddr)
{
    S_VOU_V400_REGS_TYPE  *pVouReg;

    pVouReg = (S_VOU_V400_REGS_TYPE *)u32RegVirAddr;

    /* backup VOU main-control registers */
    memcpy((HI_VOID *)(&(pVouReg->VOCTRL)), (HI_VOID *)(&(pVoReg->VOCTRL)), 0x100);

    /* backup VOU mixer-control registers */
    memcpy((HI_VOID *)(&(pVouReg->CBMBKG1)), (HI_VOID *)(&(pVoReg->CBMBKG1)), 0x100);

    /* backup VOU WBC0-control registers */
    //memcpy((HI_VOID *)(&(pVouReg->WBC0CTRL)), (HI_VOID *)(&(pVoReg->WBC0CTRL)), 0x100);

    /* backup VOU WBC2-contrl registers */
    //memcpy((HI_VOID *)(&(pVouReg->WBC2CTRL)), (HI_VOID *)(&(pVoReg->WBC2CTRL)), 0x100);

    return;
}

HI_VOID HAL_DISP_RestoreCommon(HI_U32 u32RegVirAddr)
{
    S_VOU_V400_REGS_TYPE  *pVouReg;

    pVouReg = (S_VOU_V400_REGS_TYPE *)u32RegVirAddr;

    /* restore VOU main-control registers */
    memcpy((HI_VOID *)(&(pVoReg->VOCTRL)), (HI_VOID *)(&(pVouReg->VOCTRL)), 0x100);

    /* restore VOU mixer-control registers */
    memcpy((HI_VOID *)(&(pVoReg->CBMBKG1)), (HI_VOID *)(&(pVouReg->CBMBKG1)), 0x100);

    /* restore VOU WBC0-control registers */
    //memcpy((HI_VOID *)(&(pVoReg->WBC0CTRL)), (HI_VOID *)(&(pVouReg->WBC0CTRL)), 0x100);

    /* restore VOU WBC2-control registers */
    //memcpy((HI_VOID *)(&(pVoReg->WBC2CTRL)), (HI_VOID *)(&(pVouReg->WBC2CTRL)), 0x100);

    if (pVouReg->ACCAD.u32 != 0)
    {
        HAL_SetDispParaUpd(HAL_DISP_CHANNEL_DHD, HAL_DISP_COEFMODE_ACC);
    }

    if (pVouReg->DHDGAMMAAD.u32 != 0)
    {
        HAL_SetDispParaUpd(HAL_DISP_CHANNEL_DHD, HAL_DISP_COEFMODE_GAM);
    }


    return;
}

/** set source address of graphic layer */
HI_VOID Vou_SetGfxAddr(HAL_DISP_LAYER_E enLayer, HI_U32 u32LAddr)
{
    switch (enLayer)
    {
    case HAL_DISP_LAYER_GFX0:
    {
        U_G0ADDR G0ADDR;

        G0ADDR.u32 = u32LAddr;
        RegWrite(&(pVoReg->G0ADDR.u32), G0ADDR.u32);
        break;
    }
    case HAL_DISP_LAYER_GFX1:
    {
        U_G1ADDR G1ADDR;

        G1ADDR.u32 = u32LAddr;
        RegWrite(&(pVoReg->G1ADDR.u32), G1ADDR.u32);
        break;
    }
	case HAL_DISP_LAYER_GFX2:
    {
        U_ZONE1ADDR ZONE1ADDR;

        ZONE1ADDR.u32 = u32LAddr;
        RegWrite(&(pVoReg->ZONE1ADDR.u32), ZONE1ADDR.u32);
        break;
    }
	case HAL_DISP_LAYER_GFX3:
    {
        U_ZONE2ADDR ZONE2ADDR;

        ZONE2ADDR.u32 = u32LAddr;
        RegWrite(&(pVoReg->ZONE2ADDR.u32), ZONE2ADDR.u32);
        break;
    }
    default:
    {
        HAL_PRINT("Error,Set graphic layer stride select wrong layer ID\n");

        /* return ; */
    }
    }

    /* return ; */
}


/***************************************************************************************
* func          : Vou_SetGfxStride
* description   : CNcomment: 设置layer stride CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID Vou_SetGfxStride(HAL_DISP_LAYER_E enLayer, HI_U16 u16pitch)
{
    switch (enLayer)
    {
    case HAL_DISP_LAYER_GFX0:
    {
        U_G0STRIDE G0STRIDE;

        G0STRIDE.u32 = RegRead(&(pVoReg->G0STRIDE.u32));
        G0STRIDE.bits.surface_stride = u16pitch;
        RegWrite(&(pVoReg->G0STRIDE.u32), G0STRIDE.u32);

        break;
    }
    case HAL_DISP_LAYER_GFX1:
    {
        U_G1STRIDE G1STRIDE;

        G1STRIDE.u32 = RegRead(&(pVoReg->G1STRIDE.u32));
        G1STRIDE.bits.surface_stride = u16pitch;
        RegWrite(&(pVoReg->G1STRIDE.u32), G1STRIDE.u32);

        break;
    }
	case HAL_DISP_LAYER_GFX2:
    {
        U_ZONE1STRIDE ZONE1STRIDE;

        ZONE1STRIDE.u32 = RegRead(&(pVoReg->ZONE1STRIDE.u32));
        ZONE1STRIDE.bits.surface_stride = u16pitch;
        RegWrite(&(pVoReg->ZONE1STRIDE.u32), ZONE1STRIDE.u32);

        break;
    }
	case HAL_DISP_LAYER_GFX3:
    {
        U_ZONE2STRIDE ZONE2STRIDE;

        ZONE2STRIDE.u32 = RegRead(&(pVoReg->ZONE2STRIDE.u32));
        ZONE2STRIDE.bits.surface_stride = u16pitch;
        RegWrite(&(pVoReg->ZONE2STRIDE.u32), ZONE2STRIDE.u32);

        break;
    }
    default:
    {
        HAL_PRINT("Error,Set graphic layer stride select wrong layer ID\n");

        /* return ; */
    }
    }

    /* return ; */
}


/***************************************************************************************
* func          : Vou_SetGfxExt
* description   : CNcomment: 层输入位图Bit位扩展模式。CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID Vou_SetGfxExt(HAL_DISP_LAYER_E enLayer, HAL_GFX_BITEXTEND_E enMode)
{
    U_G0CTRL G0CTRL;
    U_G1CTRL G1CTRL;
    U_G2CTRL G2CTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
            G0CTRL.bits.bitext = enMode;
            RegWrite(&(pVoReg->G0CTRL.u32), G0CTRL.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
            G1CTRL.bits.bitext = enMode;
            RegWrite(&(pVoReg->G1CTRL.u32), G1CTRL.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX2:
		case HAL_DISP_LAYER_GFX3:
        {
            G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
            G2CTRL.bits.bitext = enMode;
            RegWrite(&(pVoReg->G2CTRL.u32), G2CTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error,Set graphic data extend select wrong layer ID\n");
            return ;
        }
    }

    return ;
}


/***************************************************************************************
* func          : Vou_SetGfxPalpha
* description   : CNcomment: 设置全局alpha CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID Vou_SetGfxPalpha(HAL_DISP_LAYER_E enLayer,
                                   HI_U32 bAlphaEn,HI_U32 bArange,
                                   HI_U8 u8Alpha0,HI_U8 u8Alpha1)
{
    U_G0CBMPARA G0CBMPARA;
    U_G0CKEYMIN G0CKEYMIN;
    U_G0CKEYMAX G0CKEYMAX;
    U_G1CBMPARA G1CBMPARA;
    U_G1CKEYMIN G1CKEYMIN;
    U_G1CKEYMAX G1CKEYMAX;
    U_G2CBMPARA G2CBMPARA;
    U_G2CKEYMIN G2CKEYMIN;
    U_G2CKEYMAX G2CKEYMAX;

    
    U_G0CTRL G0CTRL;
    U_G2CTRL G2CTRL;

    G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
    G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
    
    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            G0CBMPARA.u32 = RegRead(&(pVoReg->G0CBMPARA.u32));
            G0CBMPARA.bits.palpha_en = bAlphaEn;
            RegWrite(&(pVoReg->G0CBMPARA.u32), G0CBMPARA.u32);

            G0CKEYMIN.u32 = RegRead(&(pVoReg->G0CKEYMIN.u32));
            G0CKEYMIN.bits.va1 = u8Alpha1;
            RegWrite(&(pVoReg->G0CKEYMIN.u32), G0CKEYMIN.u32);

            G0CKEYMAX.u32 = RegRead(&(pVoReg->G0CKEYMAX.u32));
            G0CKEYMAX.bits.va0 = u8Alpha0;
            RegWrite(&(pVoReg->G0CKEYMAX.u32), G0CKEYMAX.u32);

            G0CBMPARA.u32 = RegRead(&(pVoReg->G0CBMPARA.u32));
            G0CBMPARA.bits.palpha_range = bArange;
            RegWrite(&(pVoReg->G0CBMPARA.u32), G0CBMPARA.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CBMPARA.u32 = RegRead(&(pVoReg->G1CBMPARA.u32));
        #ifdef CHIP_TYPE_hi3716mv330
            G1CBMPARA.bits.palpha_en = 0x1;
        #else
            if ((1 == G0CTRL.bits.surface_en) && (1 == G2CTRL.bits.surface_en))
            {
                G1CBMPARA.bits.palpha_en = 0x1;
            }
            else
            {
                G1CBMPARA.bits.palpha_en = bAlphaEn;
            }
        #endif
            RegWrite(&(pVoReg->G1CBMPARA.u32), G1CBMPARA.u32);

            G1CKEYMIN.u32 = RegRead(&(pVoReg->G1CKEYMIN.u32));
            G1CKEYMIN.bits.va1 = u8Alpha1;
            RegWrite(&(pVoReg->G1CKEYMIN.u32), G1CKEYMIN.u32);

            G1CKEYMAX.u32 = RegRead(&(pVoReg->G1CKEYMAX.u32));
            G1CKEYMAX.bits.va0 = u8Alpha0;
            RegWrite(&(pVoReg->G1CKEYMAX.u32), G1CKEYMAX.u32);

            G1CBMPARA.u32 = RegRead(&(pVoReg->G1CBMPARA.u32));
            G1CBMPARA.bits.palpha_range = bArange;
            RegWrite(&(pVoReg->G1CBMPARA.u32), G1CBMPARA.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX2:
		case HAL_DISP_LAYER_GFX3:
        {
            G2CBMPARA.u32 = RegRead(&(pVoReg->G2CBMPARA.u32));
            G2CBMPARA.bits.palpha_en = bAlphaEn;
            RegWrite(&(pVoReg->G2CBMPARA.u32), G2CBMPARA.u32);

            G2CKEYMIN.u32 = RegRead(&(pVoReg->G2CKEYMIN.u32));
            G2CKEYMIN.bits.va1 = u8Alpha1;
            RegWrite(&(pVoReg->G2CKEYMIN.u32), G2CKEYMIN.u32);

            G2CKEYMAX.u32 = RegRead(&(pVoReg->G2CKEYMAX.u32));
            G2CKEYMAX.bits.va0 = u8Alpha0;
            RegWrite(&(pVoReg->G2CKEYMAX.u32), G2CKEYMAX.u32);

            G2CBMPARA.u32 = RegRead(&(pVoReg->G2CBMPARA.u32));
            G2CBMPARA.bits.palpha_range = bArange;
            RegWrite(&(pVoReg->G2CBMPARA.u32), G2CBMPARA.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error,Set graphic pixel alpha select wrong layer ID\n");
            return ;
        }
    }

    return ;
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
/***************************************************************************************
* func          : Vou_SetGfxPalphaRange
* description   : CNcomment: 设置alpha域 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID Vou_SetGfxPalphaRange(HAL_DISP_LAYER_E enLayer, HI_U32 bArange)
{
    U_G0CBMPARA G0CBMPARA;
    U_G1CBMPARA G1CBMPARA;
    U_G2CBMPARA G2CBMPARA;
    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            G0CBMPARA.u32 = RegRead(&(pVoReg->G0CBMPARA.u32));
            G0CBMPARA.bits.palpha_range = bArange;
            RegWrite(&(pVoReg->G0CBMPARA.u32), G0CBMPARA.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CBMPARA.u32 = RegRead(&(pVoReg->G1CBMPARA.u32));
            G1CBMPARA.bits.palpha_range = bArange;
            RegWrite(&(pVoReg->G1CBMPARA.u32), G1CBMPARA.u32);

            break;
        }
		case HAL_DISP_LAYER_GFX2:
        {
            G2CBMPARA.u32 = RegRead(&(pVoReg->G2CBMPARA.u32));
            G2CBMPARA.bits.palpha_range = bArange;
            RegWrite(&(pVoReg->G2CBMPARA.u32), G2CBMPARA.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error,Vou_SetGfxPalphaRange() Set graphic pixel alpha select wrong layer ID\n");
            return ;
        }
    }

    return ;
}
#endif

/***************************************************************************************
* func          : Vou_SetLayerGalpha
* description   : CNcomment: 设置图层alpha CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID Vou_SetLayerGalpha(HAL_DISP_LAYER_E enLayer,HI_U8 u8Alpha0)
{
    U_VHDCBMPARA VHDCBMPARA;
    U_VSDCBMPARA VSDCBMPARA;
    U_G0CBMPARA G0CBMPARA;
    U_G1CBMPARA G1CBMPARA;
    U_G2CBMPARA G2CBMPARA;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCBMPARA.u32 = RegRead(&(pVoReg->VHDCBMPARA.u32));
            VHDCBMPARA.bits.galpha = u8Alpha0;
            RegWrite(&(pVoReg->VHDCBMPARA.u32), VHDCBMPARA.u32);

            break;
        }
        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDCBMPARA.u32 = RegRead(&(pVoReg->VSDCBMPARA.u32));
            VSDCBMPARA.bits.galpha = u8Alpha0;
            RegWrite(&(pVoReg->VSDCBMPARA.u32), VSDCBMPARA.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {

            G0CBMPARA.u32 = RegRead(&(pVoReg->G0CBMPARA.u32));
            G0CBMPARA.bits.galpha = u8Alpha0;
            RegWrite(&(pVoReg->G0CBMPARA.u32), G0CBMPARA.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CBMPARA.u32 = RegRead(&(pVoReg->G1CBMPARA.u32));
            G1CBMPARA.bits.galpha = u8Alpha0;
            RegWrite(&(pVoReg->G1CBMPARA.u32), G1CBMPARA.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX2:
        case HAL_DISP_LAYER_GFX3:
        {
            G2CBMPARA.u32 = RegRead(&(pVoReg->G2CBMPARA.u32));
            G2CBMPARA.bits.galpha = u8Alpha0;
            RegWrite(&(pVoReg->G2CBMPARA.u32), G2CBMPARA.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error,Set global alpha select wrong layer ID\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetGfxKey(HAL_DISP_LAYER_E enLayer,
                                HI_U32  bkeyEn,
                                HAL_GFX_KEY_S stKey )
{
    U_G0CKEYMAX G0CKEYMAX;
    U_G0CKEYMIN G0CKEYMIN;
    U_G0CBMPARA G0CBMPARA;
    U_G1CKEYMAX G1CKEYMAX;
    U_G1CKEYMIN G1CKEYMIN;
    U_G1CBMPARA G1CBMPARA;
    U_G2CKEYMAX G2CKEYMAX;
    U_G2CKEYMIN G2CKEYMIN;
    U_G2CBMPARA G2CBMPARA;


    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            G0CKEYMAX.u32 = RegRead(&(pVoReg->G0CKEYMAX.u32));
            G0CKEYMAX.bits.keyr_max = stKey.u8Key_r_max;
            G0CKEYMAX.bits.keyg_max = stKey.u8Key_g_max;
            G0CKEYMAX.bits.keyb_max = stKey.u8Key_b_max;
            RegWrite(&(pVoReg->G0CKEYMAX.u32), G0CKEYMAX.u32);

            G0CKEYMIN.u32 = RegRead(&(pVoReg->G0CKEYMIN.u32));
            G0CKEYMIN.bits.keyr_min = stKey.u8Key_r_min;
            G0CKEYMIN.bits.keyg_min = stKey.u8Key_g_min;
            G0CKEYMIN.bits.keyb_min = stKey.u8Key_b_min;
            RegWrite(&(pVoReg->G0CKEYMIN.u32), G0CKEYMIN.u32);

            G0CBMPARA.u32 = RegRead(&(pVoReg->G0CBMPARA.u32));
            G0CBMPARA.bits.key_en = bkeyEn;
            G0CBMPARA.bits.key_mode = stKey.bKeyMode;
            RegWrite(&(pVoReg->G0CBMPARA.u32), G0CBMPARA.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CKEYMAX.u32 = RegRead(&(pVoReg->G1CKEYMAX.u32));
            G1CKEYMAX.bits.keyr_max = stKey.u8Key_r_max;
            G1CKEYMAX.bits.keyg_max = stKey.u8Key_g_max;
            G1CKEYMAX.bits.keyb_max = stKey.u8Key_b_max;
            RegWrite(&(pVoReg->G1CKEYMAX.u32), G1CKEYMAX.u32);

            G1CKEYMIN.u32 = RegRead(&(pVoReg->G1CKEYMIN.u32));
            G1CKEYMIN.bits.keyr_min = stKey.u8Key_r_min;
            G1CKEYMIN.bits.keyg_min = stKey.u8Key_g_min;
            G1CKEYMIN.bits.keyb_min = stKey.u8Key_b_min;
            RegWrite(&(pVoReg->G1CKEYMIN.u32), G1CKEYMIN.u32);

            G1CBMPARA.u32 = RegRead(&(pVoReg->G1CBMPARA.u32));
            G1CBMPARA.bits.key_en = bkeyEn;
            G1CBMPARA.bits.key_mode = stKey.bKeyMode;
            RegWrite(&(pVoReg->G1CBMPARA.u32), G1CBMPARA.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX2:
		case HAL_DISP_LAYER_GFX3:
        {
            G2CKEYMAX.u32 = RegRead(&(pVoReg->G2CKEYMAX.u32));
            G2CKEYMAX.bits.keyr_max = stKey.u8Key_r_max;
            G2CKEYMAX.bits.keyg_max = stKey.u8Key_g_max;
            G2CKEYMAX.bits.keyb_max = stKey.u8Key_b_max;
            RegWrite(&(pVoReg->G2CKEYMAX.u32), G2CKEYMAX.u32);

            G2CKEYMIN.u32 = RegRead(&(pVoReg->G2CKEYMIN.u32));
            G2CKEYMIN.bits.keyr_min = stKey.u8Key_r_min;
            G2CKEYMIN.bits.keyg_min = stKey.u8Key_g_min;
            G2CKEYMIN.bits.keyb_min = stKey.u8Key_b_min;
            RegWrite(&(pVoReg->G2CKEYMIN.u32), G2CKEYMIN.u32);

            G2CBMPARA.u32 = RegRead(&(pVoReg->G2CBMPARA.u32));
            G2CBMPARA.bits.key_en = bkeyEn;
            G2CBMPARA.bits.key_mode = stKey.bKeyMode;
            RegWrite(&(pVoReg->G2CBMPARA.u32), G2CBMPARA.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error,Vou_SetGfxKey() Set key select wrong layer ID\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetGfxKeyThd(HAL_DISP_LAYER_E enLayer,
                                HAL_GFX_KEY_S stKey)
{
    U_G0CKEYMAX G0CKEYMAX;
    U_G0CKEYMIN G0CKEYMIN;
    U_G1CKEYMAX G1CKEYMAX;
    U_G1CKEYMIN G1CKEYMIN;
	U_G2CKEYMAX G2CKEYMAX;
    U_G2CKEYMIN G2CKEYMIN;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            G0CKEYMAX.u32 = RegRead(&(pVoReg->G0CKEYMAX.u32));
            G0CKEYMAX.bits.keyr_max = stKey.u8Key_r_max;
            G0CKEYMAX.bits.keyg_max = stKey.u8Key_g_max;
            G0CKEYMAX.bits.keyb_max = stKey.u8Key_b_max;
            RegWrite(&(pVoReg->G0CKEYMAX.u32), G0CKEYMAX.u32);

            G0CKEYMIN.u32 = RegRead(&(pVoReg->G0CKEYMIN.u32));
            G0CKEYMIN.bits.keyr_min = stKey.u8Key_r_min;
            G0CKEYMIN.bits.keyg_min = stKey.u8Key_g_min;
            G0CKEYMIN.bits.keyb_min = stKey.u8Key_b_min;
            RegWrite(&(pVoReg->G0CKEYMIN.u32), G0CKEYMIN.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CKEYMAX.u32 = RegRead(&(pVoReg->G1CKEYMAX.u32));
            G1CKEYMAX.bits.keyr_max = stKey.u8Key_r_max;
            G1CKEYMAX.bits.keyg_max = stKey.u8Key_g_max;
            G1CKEYMAX.bits.keyb_max = stKey.u8Key_b_max;
            RegWrite(&(pVoReg->G1CKEYMAX.u32), G1CKEYMAX.u32);

            G1CKEYMIN.u32 = RegRead(&(pVoReg->G1CKEYMIN.u32));
            G1CKEYMIN.bits.keyr_min = stKey.u8Key_r_min;
            G1CKEYMIN.bits.keyg_min = stKey.u8Key_g_min;
            G1CKEYMIN.bits.keyb_min = stKey.u8Key_b_min;
            RegWrite(&(pVoReg->G1CKEYMIN.u32), G1CKEYMIN.u32);

            break;
        }
		case HAL_DISP_LAYER_GFX2:
        {
            G2CKEYMAX.u32 = RegRead(&(pVoReg->G2CKEYMAX.u32));
            G2CKEYMAX.bits.keyr_max = stKey.u8Key_r_max;
            G2CKEYMAX.bits.keyg_max = stKey.u8Key_g_max;
            G2CKEYMAX.bits.keyb_max = stKey.u8Key_b_max;
            RegWrite(&(pVoReg->G2CKEYMAX.u32), G2CKEYMAX.u32);

            G2CKEYMIN.u32 = RegRead(&(pVoReg->G2CKEYMIN.u32));
            G2CKEYMIN.bits.keyr_min = stKey.u8Key_r_min;
            G2CKEYMIN.bits.keyg_min = stKey.u8Key_g_min;
            G2CKEYMIN.bits.keyb_min = stKey.u8Key_b_min;
            RegWrite(&(pVoReg->G2CKEYMIN.u32), G2CKEYMIN.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error,Vou_SetGfxKeyThd() Set key select wrong layer ID\n");
            return ;
        }
    }

    return ;
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
HI_VOID Vou_SetGfxMskThd(HAL_DISP_LAYER_E enLayer, HAL_GFX_MASK_S stMsk)
{
    U_G0CMASK G0CMASK;
    U_G1CMASK G1CMASK;
    U_G2CMASK G2CMASK;
    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            G0CMASK.u32 = RegRead(&(pVoReg->G0CMASK.u32));
            G0CMASK.bits.kmsk_r = stMsk.u8Mask_r;
            G0CMASK.bits.kmsk_g = stMsk.u8Mask_g;
            G0CMASK.bits.kmsk_b = stMsk.u8Mask_b;
            RegWrite(&(pVoReg->G0CMASK.u32), G0CMASK.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CMASK.u32 = RegRead(&(pVoReg->G1CMASK.u32));
            G1CMASK.bits.kmsk_r = stMsk.u8Mask_r;
            G1CMASK.bits.kmsk_g = stMsk.u8Mask_g;
            G1CMASK.bits.kmsk_b = stMsk.u8Mask_b;
            RegWrite(&(pVoReg->G1CMASK.u32), G1CMASK.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX2:
        {
            G2CMASK.u32 = RegRead(&(pVoReg->G2CMASK.u32));
            G2CMASK.bits.kmsk_r = stMsk.u8Mask_r;
            G2CMASK.bits.kmsk_g = stMsk.u8Mask_g;
            G2CMASK.bits.kmsk_b = stMsk.u8Mask_b;
            RegWrite(&(pVoReg->G2CMASK.u32), G2CMASK.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetGfxMskThd() Set Mask Select Wrong Layer ID\n");
            return ;
        }
    }

    return ;
}
#endif

HI_VOID OPTM_HAL_SetGfxZorder(HAL_DISP_LAYER_E enLayer, HI_U32 u32Enable)
{
    U_G0CBMPARA G0CBMPARA;
    U_G1CBMPARA G1CBMPARA;
    U_G2CBMPARA G2CBMPARA;
    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        case HAL_DISP_LAYER_GFX2:
        case HAL_DISP_LAYER_GFX3:
        {
            G0CBMPARA.u32 = RegRead(&(pVoReg->G0CBMPARA.u32));
            G1CBMPARA.u32 = RegRead(&(pVoReg->G1CBMPARA.u32));
            G2CBMPARA.u32 = RegRead(&(pVoReg->G2CBMPARA.u32));

            G2CBMPARA.bits.mix_prio = u32Enable;
            RegWrite(&(pVoReg->G2CBMPARA.u32), G2CBMPARA.u32);

            if(0 == u32Enable){
                G1CBMPARA.bits.galpha  = G0CBMPARA.bits.galpha;
            }else{
                G1CBMPARA.bits.galpha = G2CBMPARA.bits.galpha;
            }
            RegWrite(&(pVoReg->G1CBMPARA.u32), G1CBMPARA.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error,OPTM_HAL_SetGfxZorder() Wrong layer ID\n");
            return ;
        }
    }
}

HI_VOID OPTM_HAL_GetGfxZorder(HAL_DISP_LAYER_E enLayer, HI_U32* u32Enable)
{
    U_G2CBMPARA G2CBMPARA;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        case HAL_DISP_LAYER_GFX2:
        case HAL_DISP_LAYER_GFX3:
        {
            G2CBMPARA.u32 = RegRead(&(pVoReg->G2CBMPARA.u32));
            *u32Enable = G2CBMPARA.bits.mix_prio;
            break;
        }
        default:
        {
            HAL_PRINT("Error,OPTM_HAL_GetGfxZorder() Wrong layer ID\n");
            return ;
        }
    }
}

#if 0
HI_VOID Vou_SetMixerAttr(HAL_DISP_LAYER_E enLayer,HAL_DISP_OUTPUTCHANNEL_E enChan)
{
    U_CBMATTR CBMATTR;
    U_CBMMIX1 CBMMIX1;
    U_CBMMIX2 CBMMIX2;

    CBMATTR.u32 = RegRead(&(pVoReg->CBMATTR.u32));
    CBMMIX1.u32 = RegRead(&(pVoReg->CBMMIX1.u32));
    CBMMIX2.u32 = RegRead(&(pVoReg->CBMMIX2.u32));
    if(enChan == HAL_DISP_CHANNEL_DHD)
    {
        if(enLayer == HAL_DISP_LAYER_GFX1)
        {
            CBMATTR.bits.sur_attr0 = 1;
            CBMMIX1.bits.mixer_prio3 = 4;
            CBMMIX2.bits.mixer_prio1 = 0;
        }
        else
        {
            CBMATTR.bits.sur_attr1 = 1;
            CBMMIX1.bits.mixer_prio4 = 5;
            CBMMIX2.bits.mixer_prio2 = 0;
        }
    }
    else
    {
        if(enLayer == HAL_DISP_LAYER_GFX1)
        {
            CBMATTR.bits.sur_attr0 = 0;
            CBMMIX2.bits.mixer_prio1 = 2;
            CBMMIX1.bits.mixer_prio3 = 0;
        }
        else
        {
            CBMATTR.bits.sur_attr1 = 0;
            CBMMIX2.bits.mixer_prio2 = 5;
            CBMMIX1.bits.mixer_prio4 = 0;
        }
    }
    RegWrite(&(pVoReg->CBMATTR.u32), CBMATTR.u32);
    RegWrite(&(pVoReg->CBMMIX1.u32), CBMMIX1.u32);
    RegWrite(&(pVoReg->CBMMIX2.u32), CBMMIX2.u32);

    return ;
}
#endif


HI_VOID Vou_SetCbmMixerVideoEn(HI_U32 uMixerVideoEn)
{
    U_CBMMIX1 CBMMIX1;

    CBMMIX1.u32 = RegRead(&(pVoReg->CBMMIX1.u32));
    CBMMIX1.bits.mixer_v_en = uMixerVideoEn;
    RegWrite(&(pVoReg->CBMMIX1.u32), CBMMIX1.u32);

    return;
}

HI_VOID Vou_SetCbmVmixerAlphaSel(HI_U32 u32Data)
{
    U_CBMMIX1 CBMMIX1;

    CBMMIX1.u32 = RegRead(&(pVoReg->CBMMIX1.u32));
    CBMMIX1.bits.bk_v_alpha_sel = u32Data;
    RegWrite(&(pVoReg->CBMMIX1.u32), CBMMIX1.u32);

    return;
}


#if 0
HI_VOID Vou_SetCbmMixerVideoPrio(HAL_DISP_LAYER_E enLayer, HI_U32 uMixerVideoPrio)
{
    U_CBMMIX1 CBMMIX1;

    if(enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        MyAssert(uMixerVideoPrio <= 1);
        CBMMIX1.u32 = RegRead(&(pVoReg->CBMMIX1.u32));
        CBMMIX1.bits.mixer_v_pro0 = (uMixerVideoPrio == 0)?0:1;
        CBMMIX1.bits.mixer_v_pro1 = (uMixerVideoPrio == 1)?0:1;
        RegWrite(&(pVoReg->CBMMIX1.u32), CBMMIX1.u32);
    }
    else
    {
        CBMMIX1.u32 = RegRead(&(pVoReg->CBMMIX1.u32));
        if(uMixerVideoPrio < 2)
        {
            MyAssert(uMixerVideoPrio <= 1);
            CBMMIX1.bits.mixer_v_pro0 = (uMixerVideoPrio == 0)?1:0;
            CBMMIX1.bits.mixer_v_pro1 = (uMixerVideoPrio == 1)?1:0;
        }
        else
        {
            CBMMIX1.bits.mixer_v_pro0 = 1;
            CBMMIX1.bits.mixer_v_pro1 = 1;
        }
        RegWrite(&(pVoReg->CBMMIX1.u32), CBMMIX1.u32);
    }

    return;
}
#endif

HI_VOID Vou_SetCbmAttr(HAL_DISP_OUTPUTCHANNEL_E enChan)
{
    U_CBMATTR CBMATTR;


    if(enChan == HAL_DISP_CHANNEL_DHD)
    {
        CBMATTR.u32 = RegRead(&(pVoReg->CBMATTR.u32));
        CBMATTR.bits.sur_attr0 = 1;
        RegWrite(&(pVoReg->CBMATTR.u32), CBMATTR.u32);
    }
    else
    {
        CBMATTR.u32 = RegRead(&(pVoReg->CBMATTR.u32));
        CBMATTR.bits.sur_attr0 = 0;
        RegWrite(&(pVoReg->CBMATTR.u32), CBMATTR.u32);
    }

    return ;
}

HI_VOID Vou_SetCbmBkg(HI_U32 bMixerId, HAL_DISP_BKCOLOR_S stBkg)
{
    U_CBMBKG1 CBMBKG1;
    U_CBMBKG2 CBMBKG2;
    U_CBMBKGV CBMBKGV;

    if(bMixerId == 0)
    {
        /* HC layer mixer link */
        CBMBKG1.u32 = RegRead(&(pVoReg->CBMBKG1.u32));
        CBMBKG1.bits.cbm_bkgy1 = stBkg.u8Bkg_y;
        CBMBKG1.bits.cbm_bkgcb1 = stBkg.u8Bkg_cb;
        CBMBKG1.bits.cbm_bkgcr1 = stBkg.u8Bkg_cr;
        RegWrite(&(pVoReg->CBMBKG1.u32), CBMBKG1.u32);
    }
    else if(bMixerId == 1)
    {
        /* HC layer mixer link */
        CBMBKG2.u32 = RegRead(&(pVoReg->CBMBKG2.u32));
        CBMBKG2.bits.cbm_bkgy2 = stBkg.u8Bkg_y;
        CBMBKG2.bits.cbm_bkgcb2 = stBkg.u8Bkg_cb;
        CBMBKG2.bits.cbm_bkgcr2 = stBkg.u8Bkg_cr;
        RegWrite(&(pVoReg->CBMBKG2.u32), CBMBKG2.u32);
    }
    else if(bMixerId == 2)
    {
        /* HC layer mixer link */
        CBMBKGV.u32 = RegRead(&(pVoReg->CBMBKGV.u32));
        CBMBKGV.bits.cbm_bkgy_v  = stBkg.u8Bkg_y;
        CBMBKGV.bits.cbm_bkgcb_v = stBkg.u8Bkg_cb;
        CBMBKGV.bits.cbm_bkgcr_v = stBkg.u8Bkg_cr;
        RegWrite(&(pVoReg->CBMBKGV.u32), CBMBKGV.u32);
    }
    else
    {
        HAL_PRINT("Error! Vou_SetCbmBkg() Select Wrong mixer ID\n");
    }

    return ;
}

HI_VOID Vou_SetLayerBkg(HAL_DISP_LAYER_E enLayer,HAL_DISP_BKCOLOR_S stBkg)
{
    U_VHDBK VHDBK;
    //U_VADBK VADBK;
    U_VSDBK VSDBK;
    //U_VEDBK VEDBK;

    if(enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        VHDBK.u32 = RegRead(&(pVoReg->VHDBK.u32));
        VHDBK.bits.vbk_alpha = stBkg.u8Bkg_a;
        VHDBK.bits.vbk_y = stBkg.u8Bkg_y;
        VHDBK.bits.vbk_cb = stBkg.u8Bkg_cb;
        VHDBK.bits.vbk_cr = stBkg.u8Bkg_cr;
        RegWrite(&(pVoReg->VHDBK.u32), VHDBK.u32);
    }
    else if(enLayer == HAL_DISP_LAYER_VIDEO3)
    {
        VSDBK.u32 = RegRead(&(pVoReg->VSDBK.u32));
        VSDBK.bits.vbk_alpha = stBkg.u8Bkg_a;
        VSDBK.bits.vbk_y = stBkg.u8Bkg_y;
        VSDBK.bits.vbk_cb = stBkg.u8Bkg_cb;
        VSDBK.bits.vbk_cr = stBkg.u8Bkg_cr;
        RegWrite(&(pVoReg->VSDBK.u32), VSDBK.u32);
    }

    else
    {
        HAL_PRINT("Error,Set background color select wrong channel ID\n");
        return ;
    }

    return ;
}

HI_VOID HAL_SetFieldOrder(HAL_DISP_LAYER_E enLayer, HAL_VHD_FOD_E uFieldOrder)
{
    U_VHDCTRL VHDCTRL;
    //U_VADCTRL VADCTRL;
    U_VSDCTRL VSDCTRL;
    //U_VEDCTRL VEDCTRL;

    if(enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
        VHDCTRL.bits.bfield_first = uFieldOrder;
        RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);
    }
    else if(enLayer == HAL_DISP_LAYER_VIDEO3)
    {
        VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
        VSDCTRL.bits.bfield_first = uFieldOrder;
        RegWrite(&(pVoReg->VSDCTRL.u32), VSDCTRL.u32);
    }
    else
    {
        HAL_PRINT("Error! Vou_SetFieldOrder select wrong channel ID\n");
        return ;
    }

    return ;
}

/***************************************************************************************
* func          : HAL_SetCoefAddr
* description   : CNcomment: 设置csc 系数地址寄存器 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID  HAL_SetCoefAddr(HAL_DISP_LAYER_E enLayer,
                                   HAL_DISP_COEFMODE_E enMode,
                                   HI_U32 u32Addr)
{
    U_VHDHCOEFAD VHDHCOEFAD;
    U_VHDVCOEFAD VHDVCOEFAD;
    //U_VADHCOEFAD VADHCOEFAD;
    //U_VADVCOEFAD VADVCOEFAD;
    U_VSDHCOEFAD VSDHCOEFAD;
    U_VSDVCOEFAD VSDVCOEFAD;
    U_G0HCOEFAD G0HCOEFAD;
    U_G0VCOEFAD G0VCOEFAD;
    U_G0CLUTAD G0CLUTAD;
    U_G1HCOEFAD G1HCOEFAD;
    U_G1VCOEFAD G1VCOEFAD;
    U_G1CLUTAD G1CLUTAD;
    U_G0CLUTAD G2CLUTAD;
    //U_VEDHCOEFAD VEDHCOEFAD;
    //U_VEDVCOEFAD VEDVCOEFAD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR)
            {
                VHDHCOEFAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->VHDHCOEFAD.u32), VHDHCOEFAD.u32);
            }
            else if(enMode == HAL_DISP_COEFMODE_VER)
            {
                VHDVCOEFAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->VHDVCOEFAD.u32), VHDVCOEFAD.u32);
            }
            else
            {
                HAL_PRINT("Error,VHD Wrong coef mode\n");
            }
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR)
            {
                VSDHCOEFAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->VSDHCOEFAD.u32), VSDHCOEFAD.u32);
            }
            else if(enMode == HAL_DISP_COEFMODE_VER)
            {
                VSDVCOEFAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->VSDVCOEFAD.u32), VSDVCOEFAD.u32);
            }
            else
            {
                HAL_PRINT("Error,VSD Wrong coef mode\n");
            }
            break;
        }

        case HAL_DISP_LAYER_WBC0:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR)
            {
                VSDHCOEFAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->VSDHCOEFAD.u32), VSDHCOEFAD.u32);
            }
            else if(enMode == HAL_DISP_COEFMODE_VER)
            {
                VSDVCOEFAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->VSDVCOEFAD.u32), VSDVCOEFAD.u32);
            }
            else
            {
                HAL_PRINT("Error,WBC0 Wrong coef mode\n");
            }
            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            /* G0 layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR)
            {
                G0HCOEFAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->G0HCOEFAD.u32), G0HCOEFAD.u32);
            }
            else if(enMode == HAL_DISP_COEFMODE_VER)
            {
                G0VCOEFAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->G0VCOEFAD.u32), G0VCOEFAD.u32);
            }
            else if(enMode == HAL_DISP_COEFMODE_LUT)
            {
                G0CLUTAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->G0CLUTAD.u32), G0CLUTAD.u32);
            }
            else
            {
                HAL_PRINT("Error,G0 Wrong coef mode\n");
            }
            break;

        }
        case HAL_DISP_LAYER_WBC2:
        case HAL_DISP_LAYER_GFX1:
        {
            /* G1 layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR)
            {
                G1HCOEFAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->G1HCOEFAD.u32), G1HCOEFAD.u32);
            }
            else if(enMode == HAL_DISP_COEFMODE_VER)
            {
                G1VCOEFAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->G1VCOEFAD.u32), G1VCOEFAD.u32);
            }
            else if(enMode == HAL_DISP_COEFMODE_LUT)
            {
                G1CLUTAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->G1CLUTAD.u32), G1CLUTAD.u32);
            }
            else
            {
                HAL_PRINT("Error,G1 Wrong coef mode\n");
            }
            break;
        }
        case HAL_DISP_LAYER_GFX2:
		case HAL_DISP_LAYER_GFX3:
        {
            /* G2 layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_LUT)
            {
                G2CLUTAD.bits.coef_addr = u32Addr;
                RegWrite(&(pVoReg->G2CLUTAD.u32), G2CLUTAD.u32);
            }
            else
            {
                HAL_PRINT("Error,G2 Wrong coef mode\n");
            }
            break;
        }
        default:
        {
            HAL_PRINT("Error, Wrong coef addr layer select!\n");
            return ;
        }
    }

    return ;
}

/** Vou set coef or lut read update */
HI_VOID  HAL_SetLayerParaUpd(HAL_DISP_LAYER_E enLayer,
                                  HAL_DISP_COEFMODE_E enMode)
{
    U_VOPARAUP VOPARAUP;

    VOPARAUP.u32 = RegRead(&(pVoReg->VOPARAUP.u32));

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vhd_hcoef_upd = 0x1;
            }

            if(enMode == HAL_DISP_COEFMODE_VER || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vhd_vcoef_upd = 0x1;
            }

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vsd_hcoef_upd = 0x1;
            }

            if(enMode == HAL_DISP_COEFMODE_VER || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vsd_vcoef_upd = 0x1;
            }

            break;
        }

        case HAL_DISP_LAYER_WBC0:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vsd_hcoef_upd = 0x1;
            }

            if(enMode == HAL_DISP_COEFMODE_VER || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.vsd_vcoef_upd = 0x1;
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.g0_hcoef_upd = 0x1;
            }

            if(enMode == HAL_DISP_COEFMODE_VER || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.g0_vcoef_upd = 0x1;
            }

            if (enMode == HAL_DISP_COEFMODE_LUT || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.g0_lut_upd = 0x1;
            }

            break;
        }
        case HAL_DISP_LAYER_WBC2:
        case HAL_DISP_LAYER_GFX1:
        {
            /* VHD layer coef addr */
            if(enMode == HAL_DISP_COEFMODE_HOR || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.g1_hcoef_upd = 0x1;
            }

            if(enMode == HAL_DISP_COEFMODE_VER || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.g1_vcoef_upd = 0x1;
            }

            if (enMode == HAL_DISP_COEFMODE_LUT || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.g1_lut_upd = 0x1;
            }

            break;
        }
    	case HAL_DISP_LAYER_GFX2:
    	case HAL_DISP_LAYER_GFX3:
    	{
    	    /* G2 layer coef addr */
    	    if (enMode == HAL_DISP_COEFMODE_LUT || enMode == HAL_DISP_COEFMODE_ALL)
    	    {
    		    VOPARAUP.bits.g2_lut_upd = 0x1;
    	    }

    	    break;
    	}

        default:
        {
            HAL_PRINT("Error, Wrong coef update layer select\n");
            return ;
        }
    }

    RegWrite(&(pVoReg->VOPARAUP.u32), VOPARAUP.u32);

    return ;
}


/** Vou set coef or lut read update */
HI_VOID  HAL_SetDispParaUpd(HAL_DISP_OUTPUTCHANNEL_E enChan,
                                  HAL_DISP_COEFMODE_E enMode)
{
    U_VOPARAUP VOPARAUP;

    VOPARAUP.u32 = RegRead(&(pVoReg->VOPARAUP.u32));

    switch(enChan)
    {
        case HAL_DISP_CHANNEL_DHD:
        {
            if (enMode == HAL_DISP_COEFMODE_ACC || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.video_acc_upd = 0x1;
            }

            if (enMode == HAL_DISP_COEFMODE_GAM || enMode == HAL_DISP_COEFMODE_ALL)
            {
                VOPARAUP.bits.dhd_gamma_upd = 0x1;
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error, Wrong coef update layer select\n");
            return ;
        }
    }

    RegWrite(&(pVoReg->VOPARAUP.u32), VOPARAUP.u32);

    return ;
}

/** Vou zoom enable */
HI_VOID  HAL_SetZmeEnable(HAL_DISP_LAYER_E enLayer,
                                    HAL_DISP_ZMEMODE_E enMode,
                                    HI_U32 bEnable)
{
    U_VHDHSP VHDHSP;
    U_VHDVSP VHDVSP;
    //U_VADHSP VADHSP;
    //U_VADVSP VADVSP;
    U_VSDHSP VSDHSP;
    U_VSDVSP VSDVSP;
    U_G0HSP G0HSP;
    U_G0VSP G0VSP;
    U_G1HSP G1HSP;
    U_G1VSP G1VSP;

    //U_VEDHSP VEDHSP;
    //U_VEDVSP VEDVSP;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {


            /* VHD layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDHSP.u32 = RegRead(&(pVoReg->VHDHSP.u32));
                VHDHSP.bits.hlmsc_en = bEnable;

                VHDHSP.bits.hlfir_en = 1;
                RegWrite(&(pVoReg->VHDHSP.u32), VHDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_HORC)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDHSP.u32 = RegRead(&(pVoReg->VHDHSP.u32));
                VHDHSP.bits.hchmsc_en = bEnable;

                VHDHSP.bits.hchfir_en = 1;

                RegWrite(&(pVoReg->VHDHSP.u32), VHDHSP.u32);
            }


#if 0
            if((enMode == HAL_DISP_ZMEMODE_NONL)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDHSP.u32 = RegRead(&(pVoReg->VHDHSP.u32));
                /* VHDHSP.bits.non_lnr_en = bEnable; */
                VHDHSP.bits.non_lnr_en = 0;
                RegWrite(&(pVoReg->VHDHSP.u32), VHDHSP.u32);
            }
#endif
            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDVSP.u32 = RegRead(&(pVoReg->VHDVSP.u32));
                VHDVSP.bits.vlmsc_en = bEnable;
                VHDVSP.bits.vlfir_en = 1;
                RegWrite(&(pVoReg->VHDVSP.u32), VHDVSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERC)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDVSP.u32 = RegRead(&(pVoReg->VHDVSP.u32));
                VHDVSP.bits.vchmsc_en = bEnable;
                VHDVSP.bits.vchfir_en = 1;
                RegWrite(&(pVoReg->VHDVSP.u32), VHDVSP.u32);
            }
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {


            /* VSD layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));
                VSDHSP.bits.hlmsc_en = bEnable;

                VSDHSP.bits.hlfir_en = 1;

                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_HORC)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));
                VSDHSP.bits.hchmsc_en = bEnable;

                VSDHSP.bits.hchfir_en = 1;


                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }
#if 0
            if((enMode == HAL_DISP_ZMEMODE_NONL)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));
                VSDHSP.bits.non_lnr_en = bEnable;
                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }
#endif
            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vlmsc_en = bEnable;
                VSDVSP.bits.vlfir_en = 1;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERC)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vchmsc_en = bEnable;
                VSDVSP.bits.vchfir_en = 1;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }
#if !(FPGA_TEST)
            Vou_SetZmeSource(HAL_DISP_LAYER_VIDEO3);
#endif
            break;
        }

        case HAL_DISP_LAYER_WBC0:
        {
            /* VSD layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));
                VSDHSP.bits.hlmsc_en = bEnable;

                VSDHSP.bits.hlfir_en = 1;

                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_HORC)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));
                VSDHSP.bits.hchmsc_en = bEnable;

                VSDHSP.bits.hchfir_en = 1;


                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }
#if 0
            if((enMode == HAL_DISP_ZMEMODE_NONL)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));
                VSDHSP.bits.non_lnr_en = bEnable;
                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }
#endif
            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vlmsc_en = bEnable;
                VSDVSP.bits.vlfir_en = 1;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERC)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vchmsc_en = bEnable;
                VSDVSP.bits.vchfir_en = 1;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }
#if !(FPGA_TEST)
            Vou_SetZmeSource(HAL_DISP_LAYER_WBC0);
#endif
            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            /* graphic0 layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0HSP.u32 = RegRead(&(pVoReg->G0HSP.u32));
                G0HSP.bits.hsc_en = bEnable;

                /* G0HSP.bits.hfir_en = 1; */
                /* G0HSP.bits.hafir_en = 1; */
                RegWrite(&(pVoReg->G0HSP.u32), G0HSP.u32);
            }


            if((enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0VSP.u32 = RegRead(&(pVoReg->G0VSP.u32));
                G0VSP.bits.vsc_en = bEnable;

                /* G0VSP.bits.vfir_en = 1; */
                /* G0VSP.bits.vafir_en = 1; */
                RegWrite(&(pVoReg->G0VSP.u32), G0VSP.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_WBC2:
        case HAL_DISP_LAYER_GFX1:
        {
            /* graphic1 layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1HSP.u32 = RegRead(&(pVoReg->G1HSP.u32));
                G1HSP.bits.hsc_en = bEnable;

                /* G1HSP.bits.hfir_en = 1; */
                /* G1HSP.bits.hafir_en = 1; */
                RegWrite(&(pVoReg->G1HSP.u32), G1HSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1VSP.u32 = RegRead(&(pVoReg->G1VSP.u32));
                G1VSP.bits.vsc_en = bEnable;

                /* G1VSP.bits.vfir_en = 1;  */
                /* G1VSP.bits.vafir_en = 1; */
                RegWrite(&(pVoReg->G1VSP.u32), G1VSP.u32);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error, Wrong zoom enable layer select!\n");
            return ;
        }
    }
    return ;
}

HI_VOID HAL_SetZmeFirEnable(HAL_DISP_LAYER_E enLayer, HAL_DISP_ZMEMODE_E enMode, HI_U32 bEnable)
{
    U_VHDHSP VHDHSP;
    U_VHDVSP VHDVSP;
    //U_VADHSP VADHSP;
    //U_VADVSP VADVSP;
    U_VSDHSP VSDHSP;
    U_VSDVSP VSDVSP;
    U_G0HSP G0HSP;
    U_G0VSP G0VSP;
    U_G1HSP G1HSP;
    U_G1VSP G1VSP;

    //U_VEDHSP VEDHSP;
    //U_VEDVSP VEDVSP;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            /* VHD layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDHSP.u32 = RegRead(&(pVoReg->VHDHSP.u32));
                VHDHSP.bits.hlfir_en = bEnable;
                RegWrite(&(pVoReg->VHDHSP.u32), VHDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_HORC)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDHSP.u32 = RegRead(&(pVoReg->VHDHSP.u32));

                VHDHSP.bits.hchfir_en = bEnable;

                RegWrite(&(pVoReg->VHDHSP.u32), VHDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDVSP.u32 = RegRead(&(pVoReg->VHDVSP.u32));
                VHDVSP.bits.vlfir_en = bEnable;
                RegWrite(&(pVoReg->VHDVSP.u32), VHDVSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERC)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDVSP.u32 = RegRead(&(pVoReg->VHDVSP.u32));
                VHDVSP.bits.vchfir_en = bEnable;
                RegWrite(&(pVoReg->VHDVSP.u32), VHDVSP.u32);
            }

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            /* VSD layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));

                VSDHSP.bits.hlfir_en = bEnable;
                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_HORC)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));

                VSDHSP.bits.hchfir_en = bEnable;

                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vlfir_en = bEnable;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERC)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vchfir_en = bEnable;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }

            break;
        }

        case HAL_DISP_LAYER_WBC0:
        {
            /* VSD layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));

                VSDHSP.bits.hlfir_en = bEnable;
                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_HORC)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));

                VSDHSP.bits.hchfir_en = bEnable;

                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vlfir_en = bEnable;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERC)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vchfir_en = bEnable;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            /* g0 layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0HSP.u32 = RegRead(&(pVoReg->G0HSP.u32));
                G0HSP.bits.hfir_en = bEnable;
                RegWrite(&(pVoReg->G0HSP.u32), G0HSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_ALPHA)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0HSP.u32 = RegRead(&(pVoReg->G0HSP.u32));
                G0HSP.bits.hafir_en = bEnable;
                RegWrite(&(pVoReg->G0HSP.u32), G0HSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0VSP.u32 = RegRead(&(pVoReg->G0VSP.u32));
                G0VSP.bits.vfir_en = bEnable;
                RegWrite(&(pVoReg->G0VSP.u32), G0VSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_ALPHAV)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0VSP.u32 = RegRead(&(pVoReg->G0VSP.u32));
                G0VSP.bits.vafir_en = bEnable;
                RegWrite(&(pVoReg->G0VSP.u32), G0VSP.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_WBC2:
        case HAL_DISP_LAYER_GFX1:
        {
            /* g1 layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1HSP.u32 = RegRead(&(pVoReg->G1HSP.u32));
                G1HSP.bits.hfir_en = bEnable;
                RegWrite(&(pVoReg->G1HSP.u32), G1HSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_ALPHA)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1HSP.u32 = RegRead(&(pVoReg->G1HSP.u32));
                G1HSP.bits.hafir_en = bEnable;
                RegWrite(&(pVoReg->G1HSP.u32), G1HSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1VSP.u32 = RegRead(&(pVoReg->G1VSP.u32));
                G1VSP.bits.vfir_en = bEnable;
                RegWrite(&(pVoReg->G1VSP.u32), G1VSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_ALPHAV)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1VSP.u32 = RegRead(&(pVoReg->G1VSP.u32));
                G1VSP.bits.vafir_en = bEnable;
                RegWrite(&(pVoReg->G1VSP.u32), G1VSP.u32);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error, Wrong zoom fir enable layer select!\n");
            return ;
        }
    }
    return ;
}

/* Vou set Median filter enable */
HI_VOID  HAL_SetMidEnable(HAL_DISP_LAYER_E enLayer,
                                    HAL_DISP_ZMEMODE_E enMode,
                                    HI_U32 bEnable)
{
    U_VHDHSP VHDHSP;
    U_VHDVSP VHDVSP;
    //U_VADHSP VADHSP;
    //U_VADVSP VADVSP;
    U_VSDHSP VSDHSP;
    U_VSDVSP VSDVSP;
    U_G0HSP G0HSP;
    U_G0VSP G0VSP;
    U_G1HSP G1HSP;
    U_G1VSP G1VSP;

    //U_VEDHSP VEDHSP;
    //U_VEDVSP VEDVSP;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            /* VHD layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDHSP.u32 = RegRead(&(pVoReg->VHDHSP.u32));
                VHDHSP.bits.hlmid_en = bEnable;
                RegWrite(&(pVoReg->VHDHSP.u32), VHDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_HORC)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDHSP.u32 = RegRead(&(pVoReg->VHDHSP.u32));
                VHDHSP.bits.hchmid_en = bEnable;
                RegWrite(&(pVoReg->VHDHSP.u32), VHDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDVSP.u32 = RegRead(&(pVoReg->VHDVSP.u32));
                VHDVSP.bits.vlmid_en = bEnable;
                RegWrite(&(pVoReg->VHDVSP.u32), VHDVSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERC)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDVSP.u32 = RegRead(&(pVoReg->VHDVSP.u32));
                VHDVSP.bits.vchmid_en = bEnable;
                RegWrite(&(pVoReg->VHDVSP.u32), VHDVSP.u32);
            }
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            /* VSD layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));
                VSDHSP.bits.hlmid_en = bEnable;
                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_HORC)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));
                VSDHSP.bits.hchmid_en = bEnable;
                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vlmid_en = bEnable;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERC)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vchmid_en = bEnable;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }

            break;
        }

        case HAL_DISP_LAYER_WBC0:
        {
            /* VSD layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));
                VSDHSP.bits.hlmid_en = bEnable;
                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_HORC)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));
                VSDHSP.bits.hchmid_en = bEnable;
                RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vlmid_en = bEnable;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERC)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vchmid_en = bEnable;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            /* G0 layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL) || (enMode == HAL_DISP_ZMEMODE_HOR) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0HSP.u32 = RegRead(&(pVoReg->G0HSP.u32));
                G0HSP.bits.hlmid_en = bEnable;
                RegWrite(&(pVoReg->G0HSP.u32), G0HSP.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_HORC) || (enMode == HAL_DISP_ZMEMODE_HOR) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0HSP.u32 = RegRead(&(pVoReg->G0HSP.u32));
                G0HSP.bits.hchmid_en = bEnable;
                RegWrite(&(pVoReg->G0HSP.u32), G0HSP.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_ALPHA) || (enMode == HAL_DISP_ZMEMODE_HOR) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0HSP.u32 = RegRead(&(pVoReg->G0HSP.u32));
                G0HSP.bits.hamid_en = bEnable;
                RegWrite(&(pVoReg->G0HSP.u32), G0HSP.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_VERL) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0VSP.u32 = RegRead(&(pVoReg->G0VSP.u32));
                G0VSP.bits.vlmid_en = bEnable;
                RegWrite(&(pVoReg->G0VSP.u32), G0VSP.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_VERC) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0VSP.u32 = RegRead(&(pVoReg->G0VSP.u32));
                G0VSP.bits.vchmid_en = bEnable;
                RegWrite(&(pVoReg->G0VSP.u32), G0VSP.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_ALPHAV) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0VSP.u32 = RegRead(&(pVoReg->G0VSP.u32));
                G0VSP.bits.vamid_en = bEnable;
                RegWrite(&(pVoReg->G0VSP.u32), G0VSP.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_WBC2:
        case HAL_DISP_LAYER_GFX1:
        {
            /* G1 layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL) || (enMode == HAL_DISP_ZMEMODE_HOR) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1HSP.u32 = RegRead(&(pVoReg->G1HSP.u32));
                G1HSP.bits.hlmid_en = bEnable;
                RegWrite(&(pVoReg->G1HSP.u32), G1HSP.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_HORC) || (enMode == HAL_DISP_ZMEMODE_HOR) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1HSP.u32 = RegRead(&(pVoReg->G1HSP.u32));
                G1HSP.bits.hchmid_en = bEnable;
                RegWrite(&(pVoReg->G1HSP.u32), G1HSP.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_ALPHA) || (enMode == HAL_DISP_ZMEMODE_HOR) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1HSP.u32 = RegRead(&(pVoReg->G1HSP.u32));
                G1HSP.bits.hamid_en = bEnable;
                RegWrite(&(pVoReg->G1HSP.u32), G1HSP.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_VERL) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1VSP.u32 = RegRead(&(pVoReg->G1VSP.u32));
                G1VSP.bits.vlmid_en = bEnable;
                RegWrite(&(pVoReg->G1VSP.u32), G1VSP.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_VERC) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1VSP.u32 = RegRead(&(pVoReg->G1VSP.u32));
                G1VSP.bits.vchmid_en = bEnable;
                RegWrite(&(pVoReg->G1VSP.u32), G1VSP.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_ALPHAV) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1VSP.u32 = RegRead(&(pVoReg->G1VSP.u32));
                G1VSP.bits.vamid_en = bEnable;
                RegWrite(&(pVoReg->G1VSP.u32), G1VSP.u32);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error, Wrong median enable layer select!\n");
            return ;
        }
    }
    return ;
}

HI_VOID Vou_SetZmeSource(HAL_DISP_LAYER_E enLayer)
{
    U_VSDCTRL VSDCTRL;

    if(enLayer ==  HAL_DISP_LAYER_VIDEO3)
    {
        VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
        VSDCTRL.bits.resource_sel = 0;
        RegWrite(&(pVoReg->VSDCTRL.u32), VSDCTRL.u32);
    }
    else if(enLayer == HAL_DISP_LAYER_WBC0)
    {
        VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
        VSDCTRL.bits.resource_sel = 1;
        RegWrite(&(pVoReg->VSDCTRL.u32), VSDCTRL.u32);
    }
    else
    {
        HAL_PRINT("Error! Wrong Layer ID!\n");
        return ;
    }

    return ;
}

/***************************************************************************************
* func          : Vou_SetGfxZmeLink
* description   : CNcomment: 缩放单元放置位置 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID Vou_SetGfxZmeLink  (HAL_DISP_LAYER_E enLayer, HI_U32 uLinkSel)
{
    U_G1CTRL G1CTRL;

    if(enLayer ==  HAL_DISP_LAYER_GFX1)
    {
        G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
        G1CTRL.bits.g1_sel_zme = uLinkSel;
        RegWrite(&(pVoReg->G1CTRL.u32), G1CTRL.u32);
    }
    else
    {
        HAL_PRINT("Error! Vou_SetGfxZmeLink() Wrong Layer ID!\n");
    }

    return ;
}


/* set the mode of sequence synchronization */
HI_VOID HAL_DISP_SetIntfSyncMode(HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_SYNC_MODE_E Mode)
{
    U_DHDCTRL DHDCTRL;

    /* U_DADCTRL DADCTRL; */

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        DHDCTRL.u32 = pVoReg->DHDCTRL.u32;
        DHDCTRL.bits.synm   = Mode;
        pVoReg->DHDCTRL.u32 = DHDCTRL.u32;
    }

#if 0
    else if (enChan == HAL_DISP_CHANNEL_DAD)
    {
        DADCTRL.u32 = pVoReg->DADCTRL.u32;
        DADCTRL.bits.synm   = Mode;
        pVoReg->DADCTRL.u32 = DADCTRL.u32;
    }
#endif
    else
    {
        return ;
    }

    return ;
}

/** set the data bit-width for output */
HI_VOID HAL_DISP_SetIntfBitWidth(HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_BIT_WIDTH_E Width)
{
    U_DHDCTRL DHDCTRL;

    /* U_DADCTRL DADCTRL; */

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        DHDCTRL.u32 = pVoReg->DHDCTRL.u32;
        DHDCTRL.bits.intfb  = Width;
        pVoReg->DHDCTRL.u32 = DHDCTRL.u32;
    }

#if 0
    else if (enChan == HAL_DISP_CHANNEL_DAD)
    {
        DADCTRL.u32 = pVoReg->DADCTRL.u32;
        DADCTRL.bits.intfb  = Width;
        pVoReg->DADCTRL.u32 = DADCTRL.u32;
    }
#endif
    else
    {
        return ;
    }

    return ;
}


HI_VOID HAL_SetHfirOrder(HAL_DISP_LAYER_E enLayer, HI_U32 uHfirOrder)
{
    U_VHDHSP VHDHSP;
    //U_VADHSP VADHSP;
    U_VSDHSP VSDHSP;
    U_G0HSP G0HSP;
    U_G1HSP G1HSP;

    //U_VEDHSP VEDHSP;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDHSP.u32 = RegRead(&(pVoReg->VHDHSP.u32));

            VHDHSP.bits.hfir_order = uHfirOrder;


            RegWrite(&(pVoReg->VHDHSP.u32), VHDHSP.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));

            VSDHSP.bits.hfir_order = uHfirOrder;


            RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);

            break;
        }

        case HAL_DISP_LAYER_WBC0:
        {
            VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));

            VSDHSP.bits.hfir_order = uHfirOrder;


            RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            G0HSP.u32 = RegRead(&(pVoReg->G0HSP.u32));
            G0HSP.bits.hfir_order = uHfirOrder;
            RegWrite(&(pVoReg->G0HSP.u32), G0HSP.u32);

            break;
        }
        case HAL_DISP_LAYER_WBC2:
        case HAL_DISP_LAYER_GFX1:
        {
            G1HSP.u32 = RegRead(&(pVoReg->G1HSP.u32));
            G1HSP.bits.hfir_order = uHfirOrder;
            RegWrite(&(pVoReg->G1HSP.u32), G1HSP.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! HAL_SetHfirOrder layer type is error!\n");
            return ;
        }
    }

    return ;
}


HI_VOID HAL_SetZmeVerTap(HAL_DISP_LAYER_E enLayer, HAL_DISP_ZMEMODE_E enMode, HI_U32 uVerTap)
{

    if (  (enMode == HAL_DISP_ZMEMODE_HORL) || (enMode == HAL_DISP_ZMEMODE_HOR) \
       || (enMode == HAL_DISP_ZMEMODE_HORC))
    {
        HAL_PRINT("Error! HAL_SetZmeVerTap enMode is error!\n");
    }

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
			U_VHDVSP VHDVSP;
#if 0
            if ((enMode == HAL_DISP_ZMEMODE_VERL) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDVSP.u32 = RegRead(&(pVoReg->VHDVSP.u32));
                VHDVSP.bits.vsc_luma_tap = uVerTap;
                RegWrite(&(pVoReg->VHDVSP.u32), VHDVSP.u32);
            }
#endif
            if ((enMode == HAL_DISP_ZMEMODE_VERC) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDVSP.u32 = RegRead(&(pVoReg->VHDVSP.u32));
                VHDVSP.bits.vsc_chroma_tap = uVerTap;
                RegWrite(&(pVoReg->VHDVSP.u32), VHDVSP.u32);
            }
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
			U_VSDVSP VSDVSP;
#if 0
            if ((enMode == HAL_DISP_ZMEMODE_VERL) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vsc_luma_tap = uVerTap;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }
#endif
            if ((enMode == HAL_DISP_ZMEMODE_VERC) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vsc_chroma_tap = uVerTap;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }

            break;
        }

        case HAL_DISP_LAYER_WBC0:
        {
			U_VSDVSP VSDVSP;
#if 0
            if ((enMode == HAL_DISP_ZMEMODE_VERL) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vsc_luma_tap = uVerTap;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }
#endif

            if ((enMode == HAL_DISP_ZMEMODE_VERC) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
                VSDVSP.bits.vsc_chroma_tap = uVerTap;
                RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0VSP G0VSP;
            if ((enMode == HAL_DISP_ZMEMODE_VERL) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0VSP.u32 = RegRead(&(pVoReg->G0VSP.u32));
                G0VSP.bits.vsc_luma_tap = uVerTap;
                RegWrite(&(pVoReg->G0VSP.u32), G0VSP.u32);
            }
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        case HAL_DISP_LAYER_WBC2:
        {
            U_G1VSP G1VSP;
            if ((enMode == HAL_DISP_ZMEMODE_VERL) || (enMode == HAL_DISP_ZMEMODE_VER) || (enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1VSP.u32 = RegRead(&(pVoReg->G1VSP.u32));
                G1VSP.bits.vsc_luma_tap = uVerTap;
                RegWrite(&(pVoReg->G1VSP.u32), G1VSP.u32);
            }
            break;
        }
        default:
        {
            HAL_PRINT("Error! HAL_SetZmeVerTap layer type is error!\n");
            return ;
        }
    }

    return ;
}




HI_VOID HAL_SetZmeVerType(HAL_DISP_LAYER_E enLayer, HI_U32 uVerType)
{
    switch(enLayer)
    {
#ifndef __BOOT__
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDVSP VHDVSP;
            VHDVSP.u32 = RegRead(&(pVoReg->VHDVSP.u32));
            VHDVSP.bits.zme_in_fmt = uVerType;
            RegWrite(&(pVoReg->VHDVSP.u32), VHDVSP.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            U_VSDVSP VSDVSP;
            VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
            VSDVSP.bits.zme_in_fmt = uVerType;
            RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);

            break;
        }

        case HAL_DISP_LAYER_WBC0:
        {
            U_VSDVSP VSDVSP;
            VSDVSP.u32 = RegRead(&(pVoReg->VSDVSP.u32));
            VSDVSP.bits.zme_in_fmt = uVerType;
            RegWrite(&(pVoReg->VSDVSP.u32), VSDVSP.u32);

            break;
        }
#endif
        default:
        {
            HAL_PRINT("Error! HAL_SetZmeVerType layer type is error!\n");
            return ;
        }
    }

    return ;
}


/** Vou set zoom inital phase */
HI_VOID  HAL_SetZmePhase(HAL_DISP_LAYER_E enLayer,
                                   HAL_DISP_ZMEMODE_E enMode,
                                   HI_S32 s32Phase)
{
    U_VHDHLOFFSET VHDHLOFFSET;
    U_VHDHCOFFSET VHDHCOFFSET;
    U_VHDVOFFSET VHDVOFFSET;
    //U_VADHLOFFSET VADHLOFFSET;
    //U_VADHCOFFSET VADHCOFFSET;
    //U_VADVOFFSET VADVOFFSET;
    U_VSDHLOFFSET VSDHLOFFSET;
    U_VSDHCOFFSET VSDHCOFFSET;
    U_VSDVOFFSET VSDVOFFSET;
    U_G0HOFFSET G0HOFFSET;
    U_G0VOFFSET G0VOFFSET;
    U_G1HOFFSET G1HOFFSET;
    U_G1VOFFSET G1VOFFSET;

    //U_VEDHLOFFSET VEDHLOFFSET;
    //U_VEDHCOFFSET VEDHCOFFSET;
    //U_VEDVOFFSET  VEDVOFFSET;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            /* VHD layer zoom enable */
            if((enMode == HAL_DISP_ZMEMODE_HORL) || (enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDHLOFFSET.u32 = RegRead(&(pVoReg->VHDHLOFFSET.u32));
                VHDHLOFFSET.bits.hor_loffset = s32Phase;
                RegWrite(&(pVoReg->VHDHLOFFSET.u32), VHDHLOFFSET.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_HORC) || (enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDHCOFFSET.u32 = RegRead(&(pVoReg->VHDHCOFFSET.u32));
                VHDHCOFFSET.bits.hor_coffset = s32Phase;
                RegWrite(&(pVoReg->VHDHCOFFSET.u32), VHDHCOFFSET.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDVOFFSET.u32 = RegRead(&(pVoReg->VHDVOFFSET.u32));
                VHDVOFFSET.bits.vluma_offset = s32Phase;
                RegWrite(&(pVoReg->VHDVOFFSET.u32), VHDVOFFSET.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERC)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VHDVOFFSET.u32 = RegRead(&(pVoReg->VHDVOFFSET.u32));
                VHDVOFFSET.bits.vchroma_offset = s32Phase;
                RegWrite(&(pVoReg->VHDVOFFSET.u32), VHDVOFFSET.u32);
            }

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            if((enMode == HAL_DISP_ZMEMODE_HORL) || (enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHLOFFSET.u32 = RegRead(&(pVoReg->VSDHLOFFSET.u32));
                VSDHLOFFSET.bits.hor_loffset = s32Phase;
                RegWrite(&(pVoReg->VSDHLOFFSET.u32), VSDHLOFFSET.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_HORC) || (enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHCOFFSET.u32 = RegRead(&(pVoReg->VSDHCOFFSET.u32));
                VSDHCOFFSET.bits.hor_coffset = s32Phase;
                RegWrite(&(pVoReg->VSDHCOFFSET.u32), VSDHCOFFSET.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVOFFSET.u32 = RegRead(&(pVoReg->VSDVOFFSET.u32));
                VSDVOFFSET.bits.vluma_offset = s32Phase;
                RegWrite(&(pVoReg->VSDVOFFSET.u32), VSDVOFFSET.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERC)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVOFFSET.u32 = RegRead(&(pVoReg->VSDVOFFSET.u32));
                VSDVOFFSET.bits.vchroma_offset = s32Phase;
                RegWrite(&(pVoReg->VSDVOFFSET.u32), VSDVOFFSET.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_WBC0:
        {
            if((enMode == HAL_DISP_ZMEMODE_HORL) || (enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHLOFFSET.u32 = RegRead(&(pVoReg->VSDHLOFFSET.u32));
                VSDHLOFFSET.bits.hor_loffset = s32Phase;
                RegWrite(&(pVoReg->VSDHLOFFSET.u32), VSDHLOFFSET.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_HORC) || (enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDHCOFFSET.u32 = RegRead(&(pVoReg->VSDHCOFFSET.u32));
                VSDHCOFFSET.bits.hor_coffset = s32Phase;
                RegWrite(&(pVoReg->VSDHCOFFSET.u32), VSDHCOFFSET.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERL)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVOFFSET.u32 = RegRead(&(pVoReg->VSDVOFFSET.u32));
                VSDVOFFSET.bits.vluma_offset = s32Phase;
                RegWrite(&(pVoReg->VSDVOFFSET.u32), VSDVOFFSET.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERC)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                VSDVOFFSET.u32 = RegRead(&(pVoReg->VSDVOFFSET.u32));
                VSDVOFFSET.bits.vchroma_offset = s32Phase;
                RegWrite(&(pVoReg->VSDVOFFSET.u32), VSDVOFFSET.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0HOFFSET.u32 = RegRead(&(pVoReg->G0HOFFSET.u32));
                G0HOFFSET.bits.hor_loffset = (s32Phase);
                RegWrite(&(pVoReg->G0HOFFSET.u32), G0HOFFSET.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_HORC)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0HOFFSET.u32 = RegRead(&(pVoReg->G0HOFFSET.u32));
                G0HOFFSET.bits.hor_coffset = (s32Phase);
                RegWrite(&(pVoReg->G0HOFFSET.u32), G0HOFFSET.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERT)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G0VOFFSET.u32 = RegRead(&(pVoReg->G0HOFFSET.u32));
                G0VOFFSET.bits.vtp_offset = (s32Phase);
                RegWrite(&(pVoReg->G0VOFFSET.u32), G0VOFFSET.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_VERB)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {/**
              **这里I和P有差异
              **/
                G0VOFFSET.u32 = RegRead(&(pVoReg->G0VOFFSET.u32));
                G0VOFFSET.bits.vbtm_offset = (s32Phase);
                RegWrite(&(pVoReg->G0VOFFSET.u32), G0VOFFSET.u32);
            }
            break;
        }
        case HAL_DISP_LAYER_WBC2:
        case HAL_DISP_LAYER_GFX1:
        {
            if((enMode == HAL_DISP_ZMEMODE_HORL)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1HOFFSET.u32 = RegRead(&(pVoReg->G1HOFFSET.u32));
                G1HOFFSET.bits.hor_loffset = (s32Phase);
                RegWrite(&(pVoReg->G1HOFFSET.u32), G1HOFFSET.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_HORC)||(enMode == HAL_DISP_ZMEMODE_HOR)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1HOFFSET.u32 = RegRead(&(pVoReg->G1HOFFSET.u32));
                G1HOFFSET.bits.hor_coffset = (s32Phase);
                RegWrite(&(pVoReg->G1HOFFSET.u32), G1HOFFSET.u32);
            }

            if((enMode == HAL_DISP_ZMEMODE_VERT)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1VOFFSET.u32 = RegRead(&(pVoReg->G1HOFFSET.u32));
                G1VOFFSET.bits.vtp_offset = (s32Phase);
                RegWrite(&(pVoReg->G1VOFFSET.u32), G1VOFFSET.u32);
            }
            if((enMode == HAL_DISP_ZMEMODE_VERB)||(enMode == HAL_DISP_ZMEMODE_VER)||(enMode == HAL_DISP_ZMEMODE_ALL))
            {
                G1VOFFSET.u32 = RegRead(&(pVoReg->G1VOFFSET.u32));
                G1VOFFSET.bits.vbtm_offset = (s32Phase);
                RegWrite(&(pVoReg->G1VOFFSET.u32), G1VOFFSET.u32);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error, Wrong phase layer select!\n");
            return ;
        }
    }
    return ;
}

HI_VOID HAL_SetZmeReso(HAL_DISP_LAYER_E enLayer, HAL_DISP_RECT_S stZmeReso)
{
    U_VHDZMEIRESO VHDZMEIRESO;
    U_VHDZMEORESO VHDZMEORESO;
    //U_VADZMEIRESO VADZMEIRESO;
   // U_VADZMEORESO VADZMEORESO;
    U_VSDZMEIRESO VSDZMEIRESO;
    U_VSDZMEORESO VSDZMEORESO;
    U_G0ZMEIRESO G0ZMEIRESO;
    U_G0ZMEORESO G0ZMEORESO;
    U_G1ZMEIRESO G1ZMEIRESO;
    U_G1ZMEORESO G1ZMEORESO;

    //U_VEDZMEIRESO VEDZMEIRESO;
    //U_VEDZMEORESO VEDZMEORESO;


    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDZMEIRESO.u32 = RegRead(&(pVoReg->VHDZMEIRESO.u32));
            VHDZMEIRESO.bits.iw = stZmeReso.u32InWidth  - 1;
            VHDZMEIRESO.bits.ih = stZmeReso.u32InHeight - 1;
            RegWrite(&(pVoReg->VHDZMEIRESO.u32), VHDZMEIRESO.u32);

            VHDZMEORESO.u32 = RegRead(&(pVoReg->VHDZMEORESO.u32));
            VHDZMEORESO.bits.ow = stZmeReso.u32OutWidth  - 1;
            VHDZMEORESO.bits.oh = stZmeReso.u32OutHeight - 1;
            RegWrite(&(pVoReg->VHDZMEORESO.u32), VHDZMEORESO.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDZMEIRESO.u32 = RegRead(&(pVoReg->VSDZMEIRESO.u32));
            VSDZMEIRESO.bits.iw = stZmeReso.u32InWidth  - 1;
            VSDZMEIRESO.bits.ih = stZmeReso.u32InHeight - 1;
            RegWrite(&(pVoReg->VSDZMEIRESO.u32), VSDZMEIRESO.u32);

            VSDZMEORESO.u32 = RegRead(&(pVoReg->VSDZMEORESO.u32));
            VSDZMEORESO.bits.ow = stZmeReso.u32OutWidth  - 1;
            VSDZMEORESO.bits.oh = stZmeReso.u32OutHeight - 1;
            RegWrite(&(pVoReg->VSDZMEORESO.u32), VSDZMEORESO.u32);

            break;
        }

        case HAL_DISP_LAYER_WBC0:
        {
            VSDZMEIRESO.u32 = RegRead(&(pVoReg->VSDZMEIRESO.u32));
            VSDZMEIRESO.bits.iw = stZmeReso.u32InWidth  - 1;
            VSDZMEIRESO.bits.ih = stZmeReso.u32InHeight - 1;
            RegWrite(&(pVoReg->VSDZMEIRESO.u32), VSDZMEIRESO.u32);

            VSDZMEORESO.u32 = RegRead(&(pVoReg->VSDZMEORESO.u32));
            VSDZMEORESO.bits.ow = stZmeReso.u32OutWidth  - 1;
            VSDZMEORESO.bits.oh = stZmeReso.u32OutHeight - 1;
            RegWrite(&(pVoReg->VSDZMEORESO.u32), VSDZMEORESO.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            G0ZMEIRESO.u32 = RegRead(&(pVoReg->G0ZMEIRESO.u32));
            G0ZMEIRESO.bits.iw = stZmeReso.u32InWidth  - 1;
            G0ZMEIRESO.bits.ih = stZmeReso.u32InHeight - 1;
            RegWrite(&(pVoReg->G0ZMEIRESO.u32), G0ZMEIRESO.u32);

            G0ZMEORESO.u32 = RegRead(&(pVoReg->G0ZMEORESO.u32));
            G0ZMEORESO.bits.ow = stZmeReso.u32OutWidth  - 1;
            G0ZMEORESO.bits.oh = stZmeReso.u32OutHeight - 1;
            RegWrite(&(pVoReg->G0ZMEORESO.u32), G0ZMEORESO.u32);

            break;
        }
        case HAL_DISP_LAYER_WBC2:
        case HAL_DISP_LAYER_GFX1:
        {
            G1ZMEIRESO.u32 = RegRead(&(pVoReg->G1ZMEIRESO.u32));
            G1ZMEIRESO.bits.iw = stZmeReso.u32InWidth  - 1;
            G1ZMEIRESO.bits.ih = stZmeReso.u32InHeight - 1;
            RegWrite(&(pVoReg->G1ZMEIRESO.u32), G1ZMEIRESO.u32);

            G1ZMEORESO.u32 = RegRead(&(pVoReg->G1ZMEORESO.u32));
            G1ZMEORESO.bits.ow = stZmeReso.u32OutWidth  - 1;
            G1ZMEORESO.bits.oh = stZmeReso.u32OutHeight - 1;
            RegWrite(&(pVoReg->G1ZMEORESO.u32), G1ZMEORESO.u32);


            break;
        }
        default:
        {
            HAL_PRINT("Error, HAL_SetZmeReso layer is error!\n");
            return ;
        }
    }

    return ;
}


/*
 * DIE CFG
 */
HI_VOID HAL_DieAddr(HAL_DISP_LAYER_E enLayer, HI_U32 uDieAddr)
{
    U_VHDDIEADDR VHDDIEADDR;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIEADDR.u32 = uDieAddr;
            RegWrite(&(pVoReg->VHDDIEADDR.u32), VHDDIEADDR.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error! HAL_DieAddr don't have the layer except HD or AD!\n");
            break;
        }
    }

    return ;
}

HI_VOID Vou_SetDieEnable(HAL_DISP_LAYER_E enLayer, HI_U32 bDieLumEn, HI_U32 bDieChmEn)
{
    U_VHDDIECTRL VHDDIECTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIECTRL.u32 = RegRead(&(pVoReg->VHDDIECTRL.u32));
            VHDDIECTRL.bits.die_luma_en = bDieLumEn;
            VHDDIECTRL.bits.die_chroma_en = bDieChmEn;
            RegWrite(&(pVoReg->VHDDIECTRL.u32), VHDDIECTRL.u32);
            HAL_PRINT("bDieLumEn %d bDieChmEn %d\n", bDieLumEn,bDieChmEn);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieEnable() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieOutSel(HAL_DISP_LAYER_E enLayer, HI_U32 bOutSel)
{
    U_VHDDIECTRL VHDDIECTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIECTRL.u32 = RegRead(&(pVoReg->VHDDIECTRL.u32));
            VHDDIECTRL.bits.die_out_sel_l = bOutSel;
            RegWrite(&(pVoReg->VHDDIECTRL.u32), VHDDIECTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieOutSel() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieChmOutSel(HAL_DISP_LAYER_E enLayer, HI_U32 bOutSel)
{
    U_VHDDIECTRL VHDDIECTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIECTRL.u32 = RegRead(&(pVoReg->VHDDIECTRL.u32));
            VHDDIECTRL.bits.die_out_sel_c = bOutSel;
            RegWrite(&(pVoReg->VHDDIECTRL.u32), VHDDIECTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieChmOutSel() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieChmMode(HAL_DISP_LAYER_E enLayer, HI_U32 bChmMode)
{
    U_VHDDIECTRL VHDDIECTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIECTRL.u32 = RegRead(&(pVoReg->VHDDIECTRL.u32));
            VHDDIECTRL.bits.die_chmmode = bChmMode;
            RegWrite(&(pVoReg->VHDDIECTRL.u32), VHDDIECTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieChmMode() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieStpRst(HAL_DISP_LAYER_E enLayer, HI_U32 bRstEn)
{
    U_VHDDIECTRL VHDDIECTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIECTRL.u32 = RegRead(&(pVoReg->VHDDIECTRL.u32));

            /* VHDDIECTRL.bits.stinfo_rst = bRstEn; */

            VHDDIECTRL.bits.die_rst = bRstEn;
            RegWrite(&(pVoReg->VHDDIECTRL.u32), VHDDIECTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieStpRst() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieStpUpdate(HAL_DISP_LAYER_E enLayer, HI_U32 bUpdateEn)
{
    U_VHDDIECTRL VHDDIECTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            if (bUpdateEn == 0)
            {
                VHDDIECTRL.u32 = RegRead(&(pVoReg->VHDDIECTRL.u32));
                VHDDIECTRL.bits.stinfo_stop = 1;
                RegWrite(&(pVoReg->VHDDIECTRL.u32), VHDDIECTRL.u32);
            }
            else
            {
                VHDDIECTRL.u32 = RegRead(&(pVoReg->VHDDIECTRL.u32));
                VHDDIECTRL.bits.stinfo_stop = 0;
                RegWrite(&(pVoReg->VHDDIECTRL.u32), VHDDIECTRL.u32);
            }

            break;

        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieStpUpdate() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieDirInten(HAL_DISP_LAYER_E enLayer, HI_U32 dData)
{
    U_VHDDIEINTEN VHDDIEINTEN;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIEINTEN.u32 = RegRead(&(pVoReg->VHDDIEINTEN.u32));

            /* VHDDIEINTEN.bits.dir_inten  = dData*4; */
            VHDDIEINTEN.bits.dir_inten  = (HI_U32)dData;

            RegWrite(&(pVoReg->VHDDIEINTEN.u32), VHDDIEINTEN.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieDirInten() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieVerDirInten(HAL_DISP_LAYER_E enLayer, HI_U32 dData)
{
    U_VHDDIEINTEN VHDDIEINTEN;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIEINTEN.u32 = RegRead(&(pVoReg->VHDDIEINTEN.u32));

            /* VHDDIEINTEN.bits.dir_inten_ver  = dData*4; */
            VHDDIEINTEN.bits.dir_inten_ver  = (HI_U32)dData;
            RegWrite(&(pVoReg->VHDDIEINTEN.u32), VHDDIEINTEN.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieVerDirInten() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieVerMinInten(HAL_DISP_LAYER_E enLayer, HI_S16 s16Data)
{
    U_VHDDIEINTEN VHDDIEINTEN;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIEINTEN.u32 = RegRead(&(pVoReg->VHDDIEINTEN.u32));
            VHDDIEINTEN.bits.ver_min_inten  = s16Data;
            RegWrite(&(pVoReg->VHDDIEINTEN.u32), VHDDIEINTEN.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieVerMinInten() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieScale(HAL_DISP_LAYER_E enLayer, HI_U8 u8Data)
{
    U_VHDDIESCALE VHDDIESCALE;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIESCALE.u32 = RegRead(&(pVoReg->VHDDIESCALE.u32));
            VHDDIESCALE.bits.range_scale  = u8Data;
            RegWrite(&(pVoReg->VHDDIESCALE.u32), VHDDIESCALE.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieScale() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}


HI_VOID Vou_SetDieCkGain(HAL_DISP_LAYER_E enLayer, HI_U8 u8CkId, HI_U32 dData)
{
    U_VHDDIECHECK1 VHDDIECHECK1;
    U_VHDDIECHECK2 VHDDIECHECK2;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            if(u8CkId == 1)
            {
                VHDDIECHECK1.u32 = RegRead(&(pVoReg->VHDDIECHECK1.u32));

                /* VHDDIECHECK1.bits.ck_gain  = dData*4; */
                VHDDIECHECK1.bits.ck_gain  = (HI_U32)dData;
                RegWrite(&(pVoReg->VHDDIECHECK1.u32), VHDDIECHECK1.u32);
            }
            else if(u8CkId == 2)
            {
                VHDDIECHECK2.u32 = RegRead(&(pVoReg->VHDDIECHECK2.u32));

                /* VHDDIECHECK2.bits.ck_gain  = dData*4; */
                VHDDIECHECK2.bits.ck_gain  = (HI_U32)dData;
                RegWrite(&(pVoReg->VHDDIECHECK2.u32), VHDDIECHECK2.u32);
            }
            else
            {
                HAL_PRINT("Error! Vou_SetDieCkGain() Selected Wrong CHECK Module ID!\n");
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieScale() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieCkGnRange(HAL_DISP_LAYER_E enLayer, HI_U8 u8CkId, HI_U32 dData)
{
    U_VHDDIECHECK1 VHDDIECHECK1;
    U_VHDDIECHECK2 VHDDIECHECK2;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            if(u8CkId == 1)
            {
                VHDDIECHECK1.u32 = RegRead(&(pVoReg->VHDDIECHECK1.u32));

                /* VHDDIECHECK1.bits.ck_range_gain  = dData*4; */
                VHDDIECHECK1.bits.ck_range_gain  = (HI_U32)dData;
                RegWrite(&(pVoReg->VHDDIECHECK1.u32), VHDDIECHECK1.u32);
            }
            else if(u8CkId == 2)
            {
                VHDDIECHECK2.u32 = RegRead(&(pVoReg->VHDDIECHECK2.u32));

                /* VHDDIECHECK2.bits.ck_range_gain  = dData*4; */
                VHDDIECHECK2.bits.ck_range_gain  = (HI_U32)dData;
                RegWrite(&(pVoReg->VHDDIECHECK2.u32), VHDDIECHECK2.u32);
            }
            else
            {
                HAL_PRINT("Error! Vou_SetDieCkGnRange() Selected Wrong check Module ID!\n");
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieCkGnRange() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieCkMaxRange(HAL_DISP_LAYER_E enLayer, HI_U8 u8CkId, HI_U8 u8Data)
{
    U_VHDDIECHECK1 VHDDIECHECK1;
    U_VHDDIECHECK2 VHDDIECHECK2;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            if(u8CkId == 1)
            {
                VHDDIECHECK1.u32 = RegRead(&(pVoReg->VHDDIECHECK1.u32));
                VHDDIECHECK1.bits.ck_max_range  = u8Data;
                RegWrite(&(pVoReg->VHDDIECHECK1.u32), VHDDIECHECK1.u32);
            }
            else if(u8CkId == 2)
            {
                VHDDIECHECK2.u32 = RegRead(&(pVoReg->VHDDIECHECK2.u32));
                VHDDIECHECK2.bits.ck_max_range  = u8Data;
                RegWrite(&(pVoReg->VHDDIECHECK2.u32), VHDDIECHECK2.u32);
            }
            else
            {
                HAL_PRINT("Error! Vou_SetDieCkMaxRange() Selected Wrong check Module ID!\n");
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieCkMaxRange() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieDirMult(HAL_DISP_LAYER_E enLayer, HI_U32 u32Dir, HI_U32 u32Data)
{
    U_VHDDIEDIR0_3      VHDDIEDIR0_3;
    U_VHDDIEDIR4_7      VHDDIEDIR4_7;
    U_VHDDIEDIR8_11     VHDDIEDIR8_11;
    U_VHDDIEDIR12_14    VHDDIEDIR12_14;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            if((u32Dir == HAL_DIE_DIRMULT_00) || (u32Dir == HAL_DIE_DIRMULT_00_03) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR0_3.u32 = RegRead(&(pVoReg->VHDDIEDIR0_3.u32));
                VHDDIEDIR0_3.bits.dir0_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR0_3.u32), VHDDIEDIR0_3.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_01) || (u32Dir == HAL_DIE_DIRMULT_00_03) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR0_3.u32 = RegRead(&(pVoReg->VHDDIEDIR0_3.u32));
                VHDDIEDIR0_3.bits.dir1_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR0_3.u32), VHDDIEDIR0_3.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_02) || (u32Dir == HAL_DIE_DIRMULT_00_03) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR0_3.u32 = RegRead(&(pVoReg->VHDDIEDIR0_3.u32));
                VHDDIEDIR0_3.bits.dir2_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR0_3.u32), VHDDIEDIR0_3.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_03) || (u32Dir == HAL_DIE_DIRMULT_00_03) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR0_3.u32 = RegRead(&(pVoReg->VHDDIEDIR0_3.u32));
                VHDDIEDIR0_3.bits.dir3_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR0_3.u32), VHDDIEDIR0_3.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_04) || (u32Dir == HAL_DIE_DIRMULT_04_07) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR4_7.u32 = RegRead(&(pVoReg->VHDDIEDIR4_7.u32));
                VHDDIEDIR4_7.bits.dir4_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR4_7.u32), VHDDIEDIR4_7.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_05) || (u32Dir == HAL_DIE_DIRMULT_04_07) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR4_7.u32 = RegRead(&(pVoReg->VHDDIEDIR4_7.u32));
                VHDDIEDIR4_7.bits.dir5_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR4_7.u32), VHDDIEDIR4_7.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_06) || (u32Dir == HAL_DIE_DIRMULT_04_07) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR4_7.u32 = RegRead(&(pVoReg->VHDDIEDIR4_7.u32));
                VHDDIEDIR4_7.bits.dir6_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR4_7.u32), VHDDIEDIR4_7.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_07) || (u32Dir == HAL_DIE_DIRMULT_04_07) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR4_7.u32 = RegRead(&(pVoReg->VHDDIEDIR4_7.u32));
                VHDDIEDIR4_7.bits.dir7_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR4_7.u32), VHDDIEDIR4_7.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_08) || (u32Dir == HAL_DIE_DIRMULT_08_11) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR8_11.u32 = RegRead(&(pVoReg->VHDDIEDIR8_11.u32));
                VHDDIEDIR8_11.bits.dir8_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR8_11.u32), VHDDIEDIR8_11.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_09) || (u32Dir == HAL_DIE_DIRMULT_08_11) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR8_11.u32 = RegRead(&(pVoReg->VHDDIEDIR8_11.u32));
                VHDDIEDIR8_11.bits.dir9_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR8_11.u32), VHDDIEDIR8_11.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_10) || (u32Dir == HAL_DIE_DIRMULT_08_11) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR8_11.u32 = RegRead(&(pVoReg->VHDDIEDIR8_11.u32));
                VHDDIEDIR8_11.bits.dir10_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR8_11.u32), VHDDIEDIR8_11.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_11) || (u32Dir == HAL_DIE_DIRMULT_08_11) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR8_11.u32 = RegRead(&(pVoReg->VHDDIEDIR8_11.u32));
                VHDDIEDIR8_11.bits.dir11_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR8_11.u32), VHDDIEDIR8_11.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_12) || (u32Dir == HAL_DIE_DIRMULT_12_14) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR12_14.u32 = RegRead(&(pVoReg->VHDDIEDIR12_14.u32));
                VHDDIEDIR12_14.bits.dir12_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR12_14.u32), VHDDIEDIR12_14.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_13) || (u32Dir == HAL_DIE_DIRMULT_12_14) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR12_14.u32 = RegRead(&(pVoReg->VHDDIEDIR12_14.u32));
                VHDDIEDIR12_14.bits.dir13_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR12_14.u32), VHDDIEDIR12_14.u32);
            }
            else if((u32Dir == HAL_DIE_DIRMULT_14) || (u32Dir == HAL_DIE_DIRMULT_12_14) || (u32Dir == HAL_DIE_DIRMULT_ALL))
            {
                VHDDIEDIR12_14.u32 = RegRead(&(pVoReg->VHDDIEDIR12_14.u32));
                VHDDIEDIR12_14.bits.dir14_mult  = u32Data;
                RegWrite(&(pVoReg->VHDDIEDIR12_14.u32), VHDDIEDIR12_14.u32);
            }
            else
            {
                HAL_PRINT("Error! Vou_SetDieDirMult() Selected Wrong Dir ID!\n");
                return ;
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieDirMult() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieCkEnh(HAL_DISP_LAYER_E enLayer, HI_U32 u32Enh)
{
    U_VHDDIEINTEN VHDDIEINTEN;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIEINTEN.u32 = RegRead(&(pVoReg->VHDDIEINTEN.u32));
            VHDDIEINTEN.bits.dir_ck_enh  = u32Enh;
            RegWrite(&(pVoReg->VHDDIEINTEN.u32), VHDDIEINTEN.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieCkEnh() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieMfMax(HAL_DISP_LAYER_E enLayer, HI_U32 u32LumMd, HI_U32 u32ChmMd)
{
    U_VHDDIELMA2 VHDDIELMA2;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIELMA2.u32 = RegRead(&(pVoReg->VHDDIELMA2.u32));
            VHDDIELMA2.bits.luma_mf_max    = u32LumMd;
            VHDDIELMA2.bits.chroma_mf_max  = u32ChmMd;
            RegWrite(&(pVoReg->VHDDIELMA2.u32), VHDDIELMA2.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieMfMax() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}


HI_VOID Vou_SetDieDefThd(HAL_DISP_LAYER_E enLayer)
{
    HI_U32 ii;
    HI_U8 u8QThd[3]    = {16,48,96};
    HI_U8 u8ReqThd[4]  = {0,32,96,255};
    HI_U8 u8DirThd[15] = {40,24,32,27,18,15,12,11,9,8,7,6,5,5,3};

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            Vou_SetDieLumaMode   (enLayer, HAL_DIE_MODE_5FILED);
            Vou_SetDieChmMode    (enLayer, HAL_DIE_MODE_5FILED);

            Vou_SetDieStpUpdate  (enLayer, HI_TRUE);
            Vou_SetDieStpRst     (enLayer, HI_FALSE);
            Vou_SetDieOutSel     (enLayer, HI_FALSE);

            Vou_SetDieDirInten   (enLayer,   1*4);
            Vou_SetDieVerDirInten(enLayer,     2);
            Vou_SetDieVerMinInten(enLayer, -4000);

            Vou_SetDieScale      (enLayer, 2);

            Vou_SetDieCkGain     (enLayer, 1, 1*4);
            Vou_SetDieCkGnRange  (enLayer, 1, 1*4);
            Vou_SetDieCkMaxRange (enLayer, 1,  30);

            Vou_SetDieCkGain     (enLayer, 2, 1*4);
            Vou_SetDieCkGnRange  (enLayer, 2, 1*4);
            Vou_SetDieCkMaxRange (enLayer, 2,  30);

            /* new die default function */
            Vou_SetDieLumaQTab   (enLayer, u8QThd);
            Vou_SetDieLumaReqTab (enLayer, u8ReqThd);
            Vou_SetDieScaleRatio (enLayer, 1*16);
            Vou_SetDieWinSize    (enLayer, 2);
            Vou_SetDieSceMax     (enLayer, 0);
            Vou_SetDieQrstMax    (enLayer, 0);

            Vou_SetDieChmCcrEnable(enLayer, 0);
            Vou_SetDieChmMaOffset (enLayer, 8);
            Vou_SetDieXchmMax     (enLayer, 255);
            Vou_SetDieCcrDetect   (enLayer, 8, 32, 8);
            Vou_SetDieSimilar     (enLayer, 0, 255);

            Vou_SetDieMfMax       (enLayer, 0, 0);
            Vou_SetDieCkEnh       (enLayer, 1);

            for(ii=0;ii<15;ii++)
            {
                Vou_SetDieDirMult (enLayer, ii, u8DirThd[ii]);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieDefThd() Select Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

/* pilot new die drivers */
HI_VOID Vou_SetDieLumaMode(HAL_DISP_LAYER_E enLayer, HI_U32 bLumaMode)
{
    U_VHDDIECTRL VHDDIECTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIECTRL.u32 = RegRead(&(pVoReg->VHDDIECTRL.u32));
            VHDDIECTRL.bits.die_lmmode = bLumaMode;
            RegWrite(&(pVoReg->VHDDIECTRL.u32), VHDDIECTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieLumaMode() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieLumaQTab(HAL_DISP_LAYER_E enLayer, HI_U8 * up8Thd)
{
    U_VHDDIELMA0 VHDDIELMA0;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIELMA0.u32 = RegRead(&(pVoReg->VHDDIELMA0.u32));
            VHDDIELMA0.bits.luma_qtbl1 = up8Thd[0];
            VHDDIELMA0.bits.luma_qtbl2 = up8Thd[1];
            VHDDIELMA0.bits.luma_qtbl3 = up8Thd[2];
            RegWrite(&(pVoReg->VHDDIELMA0.u32), VHDDIELMA0.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieLumaQTab() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieLumaReqTab(HAL_DISP_LAYER_E enLayer, HI_U8 * up8Thd)
{
    U_VHDDIELMA1 VHDDIELMA1;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIELMA1.u32 = RegRead(&(pVoReg->VHDDIELMA1.u32));
            VHDDIELMA1.bits.luma_reqtbl0 = up8Thd[0];
            VHDDIELMA1.bits.luma_reqtbl1 = up8Thd[1];
            VHDDIELMA1.bits.luma_reqtbl2 = up8Thd[2];
            VHDDIELMA1.bits.luma_reqtbl3 = up8Thd[3];
            RegWrite(&(pVoReg->VHDDIELMA1.u32), VHDDIELMA1.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieLumaReqTab() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieScaleRatio(HAL_DISP_LAYER_E enLayer, HI_U32 u32Ratio)
{
    U_VHDDIELMA0 VHDDIELMA0;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIELMA0.u32 = RegRead(&(pVoReg->VHDDIELMA0.u32));
            VHDDIELMA0.bits.scale_ratio_ppd = u32Ratio;
            RegWrite(&(pVoReg->VHDDIELMA0.u32), VHDDIELMA0.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieScaleRatio() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieWinSize(HAL_DISP_LAYER_E enLayer, HI_U32 u32Size)
{
    U_VHDDIELMA2 VHDDIELMA2;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIELMA2.u32 = RegRead(&(pVoReg->VHDDIELMA2.u32));
            VHDDIELMA2.bits.luma_win_size = u32Size;
            RegWrite(&(pVoReg->VHDDIELMA2.u32), VHDDIELMA2.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieWinSize() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieSceMax(HAL_DISP_LAYER_E enLayer, HI_U32 u32Sel)
{
    U_VHDDIELMA2 VHDDIELMA2;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIELMA2.u32 = RegRead(&(pVoReg->VHDDIELMA2.u32));
            VHDDIELMA2.bits.luma_scesdf_max = u32Sel;
            RegWrite(&(pVoReg->VHDDIELMA2.u32), VHDDIELMA2.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieSceMax() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieQrstMax(HAL_DISP_LAYER_E enLayer, HI_U32 u32Sel)
{
    U_VHDDIELMA2 VHDDIELMA2;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIELMA2.u32 = RegRead(&(pVoReg->VHDDIELMA2.u32));
            VHDDIELMA2.bits.luma_qrst_max = u32Sel;
            RegWrite(&(pVoReg->VHDDIELMA2.u32), VHDDIELMA2.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieQrstMax() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieStEnable(HAL_DISP_LAYER_E enLayer, HAL_DIE_STMD_E enMd, HI_U32 u32Enable)
{
    U_VHDDIELMA2 VHDDIELMA2;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIELMA2.u32 = RegRead(&(pVoReg->VHDDIELMA2.u32));
            if(enMd == HAL_DIE_STMD_Q)
            {
                VHDDIELMA2.bits.die_st_qrst_en = u32Enable;
            }
            else if(enMd == HAL_DIE_STMD_N)
            {
                VHDDIELMA2.bits.die_st_n_en = u32Enable;
            }
            else if(enMd == HAL_DIE_STMD_M)
            {
                VHDDIELMA2.bits.die_st_m_en = u32Enable;
            }
            else if(enMd == HAL_DIE_STMD_L)
            {
                VHDDIELMA2.bits.die_st_l_en = u32Enable;
            }
            else if(enMd == HAL_DIE_STMD_K)
            {
                VHDDIELMA2.bits.die_st_k_en = u32Enable;
            }
            else
            {
                HAL_PRINT("Error! Vou_SetDieStEnable() Selected Wrong St Mode!\n");
            }
            RegWrite(&(pVoReg->VHDDIELMA2.u32), VHDDIELMA2.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieStEnable() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieStAddr(HAL_DISP_LAYER_E enLayer, HAL_DIE_STMD_E enMd, HI_U32 u32Addr)
{
    U_VHDDIESTKADDR     VHDDIESTKADDR;
    U_VHDDIESTLADDR     VHDDIESTLADDR;
    U_VHDDIESTMADDR     VHDDIESTMADDR;
    U_VHDDIESTNADDR     VHDDIESTNADDR;
    U_VHDDIESTSQTRADDR  VHDDIESTSQTRADDR;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            if(enMd == HAL_DIE_STMD_Q)
            {
                VHDDIESTSQTRADDR.u32 = u32Addr;
                RegWrite(&(pVoReg->VHDDIESTSQTRADDR.u32), VHDDIESTSQTRADDR.u32);
            }
            else if(enMd == HAL_DIE_STMD_N)
            {
                VHDDIESTNADDR.u32 = u32Addr;
                RegWrite(&(pVoReg->VHDDIESTNADDR.u32), VHDDIESTNADDR.u32);
            }
            else if(enMd == HAL_DIE_STMD_M)
            {
                VHDDIESTMADDR.u32 = u32Addr;
                RegWrite(&(pVoReg->VHDDIESTMADDR.u32), VHDDIESTMADDR.u32);
            }
            else if(enMd == HAL_DIE_STMD_L)
            {
                VHDDIESTLADDR.u32 = u32Addr;
                RegWrite(&(pVoReg->VHDDIESTLADDR.u32), VHDDIESTLADDR.u32);
            }
            else if(enMd == HAL_DIE_STMD_K)
            {
                VHDDIESTKADDR.u32 = u32Addr;
                RegWrite(&(pVoReg->VHDDIESTKADDR.u32), VHDDIESTKADDR.u32);
            }
            else
            {
                HAL_PRINT("Error! Vou_SetDieStAddr() Selected Wrong St Mode!\n");
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieStAddr() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}


HI_VOID Vou_SetDieAddr(HAL_DISP_LAYER_E enLayer, HAL_DIE_STMD_E enMd, HI_U32 *pu32AddrCtrl, HI_S32 nRepeat)
{
    HI_U32 u32AddrCtrltmp;
    HI_U32 u32_w_addr;
    HI_U32 u32_st_addr;
    HI_U32 u32_k_addr;
    HI_U32 u32_qr_addr;
    HI_U32 u32_l_addr;
    HI_U32 u32_m_addr;
    HI_U32 u32_n_addr;
    HI_U32 ii;

    if (nRepeat == 0)
    {
        u32AddrCtrltmp = pu32AddrCtrl[6];
        for(ii=6;ii>0;ii--)
        {
            pu32AddrCtrl[ii] = pu32AddrCtrl[ii-1];
        }
        pu32AddrCtrl[0] = u32AddrCtrltmp;
    }

    u32_w_addr  = pu32AddrCtrl[0];
    u32_st_addr = pu32AddrCtrl[1];
    u32_k_addr  = pu32AddrCtrl[2];
    u32_qr_addr = pu32AddrCtrl[3];
    u32_l_addr  = pu32AddrCtrl[4];
    u32_m_addr  = pu32AddrCtrl[6];
    u32_n_addr  = pu32AddrCtrl[6];

    HAL_DieAddr     (enLayer, u32_w_addr);
    Vou_SetDieStAddr(enLayer, HAL_DIE_STMD_K, u32_k_addr);
    Vou_SetDieStAddr(enLayer, HAL_DIE_STMD_L, u32_l_addr);
    Vou_SetDieStAddr(enLayer, HAL_DIE_STMD_M, u32_m_addr);
    Vou_SetDieStAddr(enLayer, HAL_DIE_STMD_N, u32_n_addr);

    if(enMd == HAL_DIE_STMD_KLQR || enMd == HAL_DIE_STMD_KLQRM)
    {
        Vou_SetDieStAddr(enLayer, HAL_DIE_STMD_Q, u32_qr_addr);
    }
    else
    {
        Vou_SetDieStAddr(enLayer, HAL_DIE_STMD_Q, u32_st_addr);
    }
}


HI_VOID Vou_SetDieChmCcrEnable(HAL_DISP_LAYER_E enLayer, HI_U32 u32En)
{
    U_VHDCCRSCLR0 VHDCCRSCLR0;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCCRSCLR0.u32 = RegRead(&(pVoReg->VHDCCRSCLR0.u32));
            VHDCCRSCLR0.bits.chroma_ccr_en = u32En;
            RegWrite(&(pVoReg->VHDCCRSCLR0.u32), VHDCCRSCLR0.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieChmCcrEnable() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieChmMaOffset(HAL_DISP_LAYER_E enLayer, HI_U32 u32Off)
{
    U_VHDCCRSCLR0 VHDCCRSCLR0;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCCRSCLR0.u32 = RegRead(&(pVoReg->VHDCCRSCLR0.u32));
            VHDCCRSCLR0.bits.chroma_ma_offset = u32Off;
            RegWrite(&(pVoReg->VHDCCRSCLR0.u32), VHDCCRSCLR0.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieChmMaOffset() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieXchmMax(HAL_DISP_LAYER_E enLayer, HI_U32 u32Max)
{
    U_VHDCCRSCLR1 VHDCCRSCLR1;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCCRSCLR1.u32 = RegRead(&(pVoReg->VHDCCRSCLR1.u32));
            VHDCCRSCLR1.bits.max_xchroma = u32Max;
            RegWrite(&(pVoReg->VHDCCRSCLR1.u32), VHDCCRSCLR1.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieXchmMax() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieCcrDetect(HAL_DISP_LAYER_E enLayer, HI_U32 u32Thd, HI_U32 u32Max, HI_U32 u32Bld)
{
    U_VHDCCRSCLR0 VHDCCRSCLR0;
    U_VHDCCRSCLR1 VHDCCRSCLR1;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCCRSCLR0.u32 = RegRead(&(pVoReg->VHDCCRSCLR0.u32));
            VHDCCRSCLR1.u32 = RegRead(&(pVoReg->VHDCCRSCLR1.u32));

            VHDCCRSCLR0.bits.no_ccr_detect_thd = u32Thd;
            VHDCCRSCLR0.bits.no_ccr_detect_max = u32Max;

            VHDCCRSCLR1.bits.no_ccr_detect_blend = u32Bld;

            RegWrite(&(pVoReg->VHDCCRSCLR0.u32), VHDCCRSCLR0.u32);
            RegWrite(&(pVoReg->VHDCCRSCLR1.u32), VHDCCRSCLR1.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieCcrDetect() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetDieSimilar(HAL_DISP_LAYER_E enLayer, HI_U32 u32Thd, HI_U32 u32Max)
{
    U_VHDCCRSCLR1 VHDCCRSCLR1;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCCRSCLR1.u32 = RegRead(&(pVoReg->VHDCCRSCLR1.u32));
            VHDCCRSCLR1.bits.similar_thd = u32Thd;
            VHDCCRSCLR1.bits.similar_max = u32Max;
            RegWrite(&(pVoReg->VHDCCRSCLR1.u32), VHDCCRSCLR1.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieSimilar() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

/* HI_VOID Vou_SetDieStMode(HAL_DISP_LAYER_E enLayer, HAL_DIE_STMD_E enMd) */
HI_VOID Vou_SetDieStMode(HAL_DISP_LAYER_E enLayer, HI_U32 enMd)
{
//    U_VHDDIELMA2 VHDDIELMA2;

    switch(enMd)
    {
        case HAL_DIE_STMD_KLM:
        {
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_Q, HI_FALSE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_N, HI_FALSE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_M, HI_TRUE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_L, HI_TRUE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_K, HI_TRUE);

            break;
        }
        case HAL_DIE_STMD_KLQR:
        {
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_Q, HI_TRUE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_N, HI_FALSE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_M, HI_FALSE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_L, HI_TRUE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_K, HI_TRUE);
            break;
        }
        case HAL_DIE_STMD_KLQRM:
        {
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_Q, HI_TRUE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_N, HI_FALSE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_M, HI_TRUE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_L, HI_TRUE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_K, HI_TRUE);
            break;
        }
        case HAL_DIE_STMD_STKLM:
        {
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_Q, HI_FALSE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_N, HI_FALSE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_M, HI_TRUE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_L, HI_TRUE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_K, HI_TRUE);
            break;
        }
        case HAL_DIE_STMD_DISALL:
        {
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_Q, HI_FALSE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_N, HI_FALSE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_M, HI_FALSE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_L, HI_FALSE);
            Vou_SetDieStEnable(enLayer, HAL_DIE_STMD_K, HI_FALSE);
            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieStMode() Selected Wrong Layer ID!\n");
            return ;
        }
    }

#if 0
    U_VHDDIELMA2 VHDDIELMA2;
    VHDDIELMA2.u32 = RegRead(&(pVoReg->VHDDIELMA2.u32));
    VHDDIELMA2.bits.die_st_mode = enMd;
    RegWrite(&(pVoReg->VHDDIELMA2.u32), VHDDIELMA2.u32);
#endif
    return ;
}

//add by c57657
HI_VOID Vou_SetDieMidThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32MidThd)
{
    U_VHDDIELMA2 VHDDIELMA2;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIELMA2.u32 = RegRead(&(pVoReg->VHDDIELMA2.u32));
            VHDDIELMA2.bits.die_mid_thd  = u32MidThd;
            RegWrite(&(pVoReg->VHDDIELMA2.u32), VHDDIELMA2.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieMidThd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdDirMch(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDCTRL VHDPDCTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDCTRL.u32 = RegRead(&(pVoReg->VHDPDCTRL.u32));
            VHDPDCTRL.bits.dir_mch_l = u32Data;
            RegWrite(&(pVoReg->VHDPDCTRL.u32), VHDPDCTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdDirMch() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdChmDirMch(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDCTRL VHDPDCTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDCTRL.u32 = RegRead(&(pVoReg->VHDPDCTRL.u32));
            VHDPDCTRL.bits.dir_mch_c = u32Data;
            RegWrite(&(pVoReg->VHDPDCTRL.u32), VHDPDCTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdChmDirMch() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdBlkPos(HAL_DISP_LAYER_E enLayer, HI_U32 u32Mode, HI_U32 u32PosX, HI_U32 u32PosY)
{
    U_VHDPDBLKPOS0 VHDPDBLKPOS0;
    U_VHDPDBLKPOS1 VHDPDBLKPOS1;

    u32PosX = (u32PosX == 0)?1:u32PosX;
    u32PosY = (u32PosY == 0)?1:u32PosY;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            if(u32Mode == 0)
            {
                VHDPDBLKPOS0.u32 = RegRead(&(pVoReg->VHDPDBLKPOS0.u32));
                VHDPDBLKPOS0.bits.blk_x = u32PosX - 1;
                VHDPDBLKPOS0.bits.blk_y = u32PosY - 1;
                RegWrite(&(pVoReg->VHDPDBLKPOS0.u32), VHDPDBLKPOS0.u32);
            }
            else if(u32Mode == 1)
            {
                VHDPDBLKPOS1.u32 = RegRead(&(pVoReg->VHDPDBLKPOS1.u32));
                VHDPDBLKPOS1.bits.blk_x = u32PosX - 1;
                VHDPDBLKPOS1.bits.blk_y = u32PosY - 1;
                RegWrite(&(pVoReg->VHDPDBLKPOS1.u32), VHDPDBLKPOS1.u32);
            }
            else
            {
                HAL_PRINT("Error! Vou_SetPdBlkPos() Selected Wrong Mode ID!\n");
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdBlkPos() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdStlBlkThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDBLKTHD VHDPDBLKTHD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDBLKTHD.u32 = RegRead(&(pVoReg->VHDPDBLKTHD.u32));
            VHDPDBLKTHD.bits.stillblk_thd = u32Data;
            RegWrite(&(pVoReg->VHDPDBLKTHD.u32), VHDPDBLKTHD.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdStlBlkThd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdDiffThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDBLKTHD VHDPDBLKTHD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDBLKTHD.u32 = RegRead(&(pVoReg->VHDPDBLKTHD.u32));
            VHDPDBLKTHD.bits.diff_movblk_thd = u32Data;
            RegWrite(&(pVoReg->VHDPDBLKTHD.u32), VHDPDBLKTHD.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdDiffThd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdHistThd(HAL_DISP_LAYER_E enLayer, HI_U32 * u32Data)
{
    U_VHDPDHISTTHD VHDPDHISTTHD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDHISTTHD.u32 = RegRead(&(pVoReg->VHDPDHISTTHD.u32));
            VHDPDHISTTHD.bits.hist_thd0 = u32Data[0];
            VHDPDHISTTHD.bits.hist_thd1 = u32Data[1];
            VHDPDHISTTHD.bits.hist_thd2 = u32Data[2];
            VHDPDHISTTHD.bits.hist_thd3 = u32Data[3];
            RegWrite(&(pVoReg->VHDPDHISTTHD.u32), VHDPDHISTTHD.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdHistThd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdUmThd(HAL_DISP_LAYER_E enLayer, HI_U32 * u32Data)
{
    U_VHDPDUMTHD VHDPDUMTHD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDUMTHD.u32 = RegRead(&(pVoReg->VHDPDUMTHD.u32));
            VHDPDUMTHD.bits.um_thd0 = u32Data[0];
            VHDPDUMTHD.bits.um_thd1 = u32Data[1];
            VHDPDUMTHD.bits.um_thd2 = u32Data[2];
            RegWrite(&(pVoReg->VHDPDUMTHD.u32), VHDPDUMTHD.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdUmThd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdCoringTkr(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDPCCCORING VHDPDPCCCORING;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDPCCCORING.u32 = RegRead(&(pVoReg->VHDPDPCCCORING.u32));
            VHDPDPCCCORING.bits.coring_tkr = u32Data;
            RegWrite(&(pVoReg->VHDPDPCCCORING.u32), VHDPDPCCCORING.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdCoringTkr() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdCoringBlk(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDPCCCORING VHDPDPCCCORING;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDPCCCORING.u32 = RegRead(&(pVoReg->VHDPDPCCCORING.u32));
            VHDPDPCCCORING.bits.coring_blk = u32Data;
            RegWrite(&(pVoReg->VHDPDPCCCORING.u32), VHDPDPCCCORING.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdCoringBlk() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdCoringNorm(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDPCCCORING VHDPDPCCCORING;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDPCCCORING.u32 = RegRead(&(pVoReg->VHDPDPCCCORING.u32));
            VHDPDPCCCORING.bits.coring_norm = u32Data;
            RegWrite(&(pVoReg->VHDPDPCCCORING.u32), VHDPDPCCCORING.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdCoringNorm() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdPccHthd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDPCCHTHD VHDPDPCCHTHD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDPCCHTHD.u32 = RegRead(&(pVoReg->VHDPDPCCHTHD.u32));
            VHDPDPCCHTHD.bits.pcc_hthd = u32Data;
            RegWrite(&(pVoReg->VHDPDPCCHTHD.u32), VHDPDPCCHTHD.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdPccHthd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdPccVthd(HAL_DISP_LAYER_E enLayer, HI_U32 * u32Data)
{
    U_VHDPDPCCVTHD VHDPDPCCVTHD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDPCCVTHD.u32 = RegRead(&(pVoReg->VHDPDPCCVTHD.u32));
            VHDPDPCCVTHD.bits.pcc_vthd0 = u32Data[0];
            VHDPDPCCVTHD.bits.pcc_vthd1 = u32Data[1];
            VHDPDPCCVTHD.bits.pcc_vthd2 = u32Data[2];
            VHDPDPCCVTHD.bits.pcc_vthd3 = u32Data[3];
            RegWrite(&(pVoReg->VHDPDPCCVTHD.u32), VHDPDPCCVTHD.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdPccVthd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdSmtEnable(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDCTRL VHDPDCTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDCTRL.u32 = RegRead(&(pVoReg->VHDPDCTRL.u32));
            VHDPDCTRL.bits.edge_smooth_en = u32Data;
            RegWrite(&(pVoReg->VHDPDCTRL.u32), VHDPDCTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdSmtEnable() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdSmtThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDCTRL VHDPDCTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDCTRL.u32 = RegRead(&(pVoReg->VHDPDCTRL.u32));
            VHDPDCTRL.bits.edge_smooth_ratio = u32Data;
            RegWrite(&(pVoReg->VHDPDCTRL.u32), VHDPDCTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdSmtThd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdItDiffThd(HAL_DISP_LAYER_E enLayer, HI_U32 * u32Data)
{
    U_VHDPDITDIFFVTHD VHDPDITDIFFVTHD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDITDIFFVTHD.u32 = RegRead(&(pVoReg->VHDPDITDIFFVTHD.u32));
            VHDPDITDIFFVTHD.bits.itdiff_vthd0 = u32Data[0];
            VHDPDITDIFFVTHD.bits.itdiff_vthd1 = u32Data[1];
            VHDPDITDIFFVTHD.bits.itdiff_vthd2 = u32Data[2];
            VHDPDITDIFFVTHD.bits.itdiff_vthd3 = u32Data[3];
            RegWrite(&(pVoReg->VHDPDITDIFFVTHD.u32), VHDPDITDIFFVTHD.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdItDiffThd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdLasiThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDLASITHD VHDPDLASITHD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDLASITHD.u32 = RegRead(&(pVoReg->VHDPDLASITHD.u32));
            VHDPDLASITHD.bits.lasi_thd = u32Data;
            RegWrite(&(pVoReg->VHDPDLASITHD.u32), VHDPDLASITHD.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdLasiThd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdEdgeThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDLASITHD VHDPDLASITHD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDLASITHD.u32 = RegRead(&(pVoReg->VHDPDLASITHD.u32));
            VHDPDLASITHD.bits.edge_thd = u32Data;
            RegWrite(&(pVoReg->VHDPDLASITHD.u32), VHDPDLASITHD.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdEdgeThd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}


HI_VOID Vou_SetDieStWbcMd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDDIECTRL VHDDIECTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIECTRL.u32 = RegRead(&(pVoReg->VHDDIECTRL.u32));
            VHDDIECTRL.bits.die_st_wbc_mode = u32Data;
            RegWrite(&(pVoReg->VHDDIECTRL.u32), VHDDIECTRL.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieStWbcMd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}
HI_VOID Vou_SetDieStUpdMd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDDIECTRL VHDDIECTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIECTRL.u32 = RegRead(&(pVoReg->VHDDIECTRL.u32));
            VHDDIECTRL.bits.die_st_upd_mode = u32Data;
            RegWrite(&(pVoReg->VHDDIECTRL.u32), VHDDIECTRL.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieStUpdMd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}
HI_VOID Vou_SetDieSadThd(HAL_DISP_LAYER_E enLayer, HI_U8 u8Thd)
{
    U_VHDDIELMA2 VHDDIELMA2;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDIELMA2.u32 = RegRead(&(pVoReg->VHDDIELMA2.u32));
            VHDDIELMA2.bits.die_sad_thd = u8Thd;
            RegWrite(&(pVoReg->VHDDIELMA2.u32), VHDDIELMA2.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetDieSadThd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}
HI_U32 Vou_GetPdStatic(HAL_DISP_LAYER_E enLayer, HI_U32 u32Mode)
{
    /* U_VHDPDCTRL VHDPDCTRL; */
    HI_U32 u32GetData = 0;
    HI_U32 u32RdAddr  = 0;

    if(enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        u32RdAddr = (HI_U32)(VO_BASE_ADDR + (HI_U32)(&(pVoReg->VHDPDFRMITDIFF.u32) + u32Mode) - (HI_U32)(pVoReg));
        u32GetData = RegRead((HI_U32 *)u32RdAddr);

        /* cout << hex << "read register addr = 0x" << u32RdAddr << endl; */
        /* cout << hex << "u32GetData = 0x" << u32GetData << endl; */
    }
    else
    {
        HAL_PRINT("Error! Vou_GetPdStatic() Selected Wrong Layer ID!\n");
        return 0;
    }

    return u32GetData;
}


/***************************************************************************************
* func          : Vou_SetWbcEnable
* description   : CNcomment: WBC回写使能 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID Vou_SetWbcEnable(HAL_DISP_LAYER_E enLayer, HI_U32 bEnable)
{
        U_WBC0CTRL WBC0CTRL;
        U_WBC2CTRL WBC2CTRL;
        U_WBC3CTRL WBC3CTRL;

    if (enLayer == HAL_DISP_LAYER_WBC0)
    {
        WBC0CTRL.u32 = RegRead(&(pVoReg->WBC0CTRL.u32));
        WBC0CTRL.bits.wbc0_en = bEnable;
        RegWrite(&(pVoReg->WBC0CTRL.u32), WBC0CTRL.u32);
    }

    else if (enLayer == HAL_DISP_LAYER_WBC2)
    {
        WBC2CTRL.u32 = RegRead(&(pVoReg->WBC2CTRL.u32));
        WBC2CTRL.bits.wbc2_en = bEnable;
        RegWrite(&(pVoReg->WBC2CTRL.u32), WBC2CTRL.u32);
    }
    else if (enLayer == HAL_DISP_LAYER_WBC3)
    {
        WBC3CTRL.u32 = RegRead(&(pVoReg->WBC3CTRL.u32));
        WBC3CTRL.bits.wbc3_en = bEnable;
        RegWrite(&(pVoReg->WBC3CTRL.u32), WBC3CTRL.u32);
    }
    else
        HAL_PRINT("Error! Vou_SetWbcEnable enLayer error!\n");

    return ;
}

HI_VOID Vou_SetWbcAddr(HAL_DISP_LAYER_E enLayer, HI_U32 u32Addr)
{
    U_WBC0ADDR WBC0ADDR;
    //U_VHDWBC1ADDR VHDWBC1ADDR;
    U_WBC2ADDR WBC2ADDR;
    U_WBC3ADDR WBC3ADDR;

    if (enLayer == HAL_DISP_LAYER_WBC0)
    {
        WBC0ADDR.u32 = u32Addr;
        RegWrite(&(pVoReg->WBC0ADDR.u32), WBC0ADDR.u32);
    }

    else if (enLayer == HAL_DISP_LAYER_WBC2)
    {
        WBC2ADDR.u32 = u32Addr;
        RegWrite(&(pVoReg->WBC2ADDR.u32), WBC2ADDR.u32);
    }
    else if (enLayer == HAL_DISP_LAYER_WBC3)
    {
        WBC3ADDR.u32 = u32Addr;
        RegWrite(&(pVoReg->WBC3ADDR.u32), WBC3ADDR.u32);
    }
    else
        HAL_PRINT("Error! Vou_SetWbcAddr enLayer error!\n");

    return ;
}

HI_VOID Vou_SetWbcStride(HAL_DISP_LAYER_E enLayer, HI_U16 u16Str)
{
    U_WBC0STRIDE WBC0STRIDE;
    //U_VHDWBC1STRD VHDWBC1STRD;
    U_WBC2STRIDE WBC2STRIDE;
    U_WBC3STRIDE WBC3STRIDE;

    if (enLayer == HAL_DISP_LAYER_WBC0)
    {
        WBC0STRIDE.u32 = RegRead(&(pVoReg->WBC0STRIDE.u32));
        WBC0STRIDE.bits.wbc0stride = u16Str;
        RegWrite(&(pVoReg->WBC0STRIDE.u32), WBC0STRIDE.u32);
    }

    else if (enLayer == HAL_DISP_LAYER_WBC2)
    {
        WBC2STRIDE.u32 = RegRead(&(pVoReg->WBC2STRIDE.u32));
        WBC2STRIDE.bits.wbc2stride = u16Str;
        RegWrite(&(pVoReg->WBC2STRIDE.u32), WBC2STRIDE.u32);
    }
    else if (enLayer == HAL_DISP_LAYER_WBC3)
    {
        WBC3STRIDE.u32 = RegRead(&(pVoReg->WBC3STRIDE.u32));
        WBC3STRIDE.bits.wbc3stride = u16Str;
        RegWrite(&(pVoReg->WBC3STRIDE.u32), WBC3STRIDE.u32);
    }
    else
        HAL_PRINT("Error! Vou_SetWbcStride enLayer error!\n");

    return ;
}

#ifdef CHIP_TYPE_hi3716mv330
HI_VOID Vou_SetWbcCAddr(HAL_DISP_LAYER_E enLayer, HI_U32 u32Addr)
{
    if (enLayer == HAL_DISP_LAYER_WBC0)
    {
        RegWrite(&(pVoReg->WBC0CADDR), u32Addr);
    }
    else
        HAL_PRINT("Error! Vou_SetWbcCAddr enLayer error!\n");

    return ;
}

HI_VOID Vou_SetWbcCStride(HAL_DISP_LAYER_E enLayer, HI_U16 u16Str)
{
    U_WBC0STRIDE WBC0STRIDE;

    if (enLayer == HAL_DISP_LAYER_WBC0)
    {
        WBC0STRIDE.u32 = RegRead(&(pVoReg->WBC0STRIDE.u32));
        WBC0STRIDE.bits.wbc0cstride = u16Str;
        RegWrite(&(pVoReg->WBC0STRIDE.u32), WBC0STRIDE.u32);
    }
    else
        HAL_PRINT("Error! Vou_SetWbcStride enLayer error!\n");

    return ;
}
#endif

HI_VOID Vou_SetWbcMd(HAL_WBC_RESOSEL_E enMdSel)
{
    U_VHDCTRL VHDCTRL;

    VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
    VHDCTRL.bits.resource_sel = enMdSel;
    RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);

    return ;
}

HI_VOID Vou_SetWbcDfpSel(HAL_WBC_DFPSEL_E enSel)
{
    U_WBC0CTRL WBC0CTRL;

    WBC0CTRL.u32 = RegRead(&(pVoReg->WBC0CTRL.u32));
    WBC0CTRL.bits.dfp_sel = enSel;
    RegWrite(&(pVoReg->WBC0CTRL.u32), WBC0CTRL.u32);
    return ;
}

HI_VOID Vou_SetWbcCropEx(HAL_DISP_LAYER_E enLayer, HI_RECT_S stRect)
{
    U_WBC2FCROP WBC2FCROP;
    U_WBC2LCROP WBC2LCROP;
    U_WBC0FCROP WBC0FCROP;
    U_WBC0LCROP WBC0LCROP;

    U_WBC3FCROP WBC3FCROP;
    U_WBC3LCROP WBC3LCROP;
    if (enLayer == HAL_DISP_LAYER_WBC0)
    {
        WBC0FCROP.u32 = RegRead(&(pVoReg->WBC0FCROP.u32));
        WBC0FCROP.bits.wfcrop = stRect.s32X;
        WBC0FCROP.bits.hfcrop =  stRect.s32Y;
        RegWrite(&(pVoReg->WBC0FCROP.u32), WBC0FCROP.u32);

        WBC0LCROP.u32 = RegRead(&(pVoReg->WBC0LCROP.u32));
        WBC0LCROP.bits.wlcrop = stRect.s32X + stRect.s32Width - 1;
        WBC0LCROP.bits.hlcrop = stRect.s32Y + stRect.s32Height - 1;
        RegWrite(&(pVoReg->WBC0LCROP.u32), WBC0LCROP.u32);
    }
    if (enLayer == HAL_DISP_LAYER_WBC2)
    {

        WBC2FCROP.u32 = RegRead(&(pVoReg->WBC2FCROP.u32));
        WBC2FCROP.bits.wfcrop = stRect.s32X;
        WBC2FCROP.bits.hfcrop = stRect.s32Y;
        RegWrite(&(pVoReg->WBC2FCROP.u32), WBC2FCROP.u32);

        WBC2LCROP.u32 = RegRead(&(pVoReg->WBC2LCROP.u32));
        WBC2LCROP.bits.wlcrop = stRect.s32X + stRect.s32Width - 1;
        WBC2LCROP.bits.hlcrop = stRect.s32Y + stRect.s32Height - 1;
        RegWrite(&(pVoReg->WBC2LCROP.u32), WBC2LCROP.u32);
    }
    if (enLayer == HAL_DISP_LAYER_WBC3)
    {
        WBC3FCROP.u32 = RegRead(&(pVoReg->WBC3FCROP.u32));
        WBC3FCROP.bits.wfcrop = stRect.s32X;
        WBC3FCROP.bits.hfcrop =  stRect.s32Y;
        RegWrite(&(pVoReg->WBC3FCROP.u32), WBC3FCROP.u32);

        WBC3LCROP.u32 = RegRead(&(pVoReg->WBC3LCROP.u32));
        WBC3LCROP.bits.wlcrop = stRect.s32X + stRect.s32Width - 1;
        WBC3LCROP.bits.hlcrop = stRect.s32Y + stRect.s32Height - 1;
        RegWrite(&(pVoReg->WBC3LCROP.u32), WBC3LCROP.u32);
    }
    else
    {
        HAL_PRINT("Error! Vou_SetWbcCropEx() enLayer error!\n");
    }
}

HI_VOID Vou_SetWbcOutIntf(HAL_DISP_LAYER_E enLayer, HAL_DISP_DATARMODE_E enRdMode)
{
    U_WBC0CTRL WBC0CTRL;
//    U_VHDCTRL VHDCTRL;
    U_WBC2CTRL WBC2CTRL;
    U_WBC3CTRL WBC3CTRL;

    if (enLayer == HAL_DISP_LAYER_WBC0)
    {
        WBC0CTRL.u32 = RegRead(&(pVoReg->WBC0CTRL.u32));
        if(enRdMode == HAL_DISP_PROGRESSIVE)
            WBC0CTRL.bits.wbc0_inter = 0;
        else
        {
            WBC0CTRL.bits.wbc0_inter = 1;
            if(enRdMode == HAL_DISP_TOP)
                WBC0CTRL.bits.wbc0_btm = 0;
            else if (enRdMode == HAL_DISP_BOTTOM)
                WBC0CTRL.bits.wbc0_btm = 1;
            else
                HAL_PRINT("Error! Vou_SetWbcOutIntf enRdMode error!\n");
        }
        RegWrite(&(pVoReg->WBC0CTRL.u32), WBC0CTRL.u32);
    }

    else if (enLayer == HAL_DISP_LAYER_WBC2)
    {
        WBC2CTRL.u32 = RegRead(&(pVoReg->WBC2CTRL.u32));
        if(enRdMode == HAL_DISP_PROGRESSIVE)
            WBC2CTRL.bits.wbc2_inter = 0;
        else
        {
            WBC2CTRL.bits.wbc2_inter = 1;
#if 1
            if(enRdMode == HAL_DISP_TOP)
                WBC2CTRL.bits.wbc2_btm = 0;
            else if (enRdMode == HAL_DISP_BOTTOM)
                WBC2CTRL.bits.wbc2_btm = 1;
            else
                HAL_PRINT("Error! Vou_SetWbcOutIntf enRdMode error!\n");
#endif
        }
        RegWrite(&(pVoReg->WBC2CTRL.u32), WBC2CTRL.u32);
    }
    else if (enLayer == HAL_DISP_LAYER_WBC3)
    {
        WBC3CTRL.u32 = RegRead(&(pVoReg->WBC3CTRL.u32));
        if(enRdMode == HAL_DISP_PROGRESSIVE)
            WBC3CTRL.bits.wbc3_inter = 0;
        else
        {
            WBC3CTRL.bits.wbc3_inter = 1;
#if 1
            if(enRdMode == HAL_DISP_TOP)
                WBC3CTRL.bits.wbc3_btm = 0;
            else if (enRdMode == HAL_DISP_BOTTOM)
                WBC3CTRL.bits.wbc3_btm = 1;
            else
                HAL_PRINT("Error! Vou_SetWbcOutIntf enRdMode error!\n");
#endif
        }
        RegWrite(&(pVoReg->WBC3CTRL.u32), WBC3CTRL.u32);
    }
    else
        HAL_PRINT("Error! Vou_SetWbcOutIntf enLayer error!\n");

    return;
}

HI_VOID Vou_SetWbcSpd(HAL_DISP_LAYER_E enLayer, HI_U32 u16ReqSpd)
{
    U_WBC0CTRL WBC0CTRL;
    //U_VHDWBC1STRD VHDWBC1STRD;

    /* U_WBC2CTRL WBC2CTRL; */

    if(u16ReqSpd >= 1024)
    {
        HAL_PRINT("Error,Vou_SetWbcSpd() Test Data out of legal range\n");
        return ;
    }

    if (enLayer == HAL_DISP_LAYER_WBC0)
    {
        /* set wbc0 write back channel data requst interval value */
        WBC0CTRL.u32 = RegRead(&(pVoReg->WBC0CTRL.u32));
        WBC0CTRL.bits.req_interval = u16ReqSpd;
        RegWrite(&(pVoReg->WBC0CTRL.u32), WBC0CTRL.u32);
    }

    #if 0
    else if (enLayer == HAL_DISP_LAYER_WBC2)
    {
        WBC2CTRL.u32 = RegRead(&(pVoReg->WBC2CTRL.u32));
        WBC2CTRL.bits.req_interval = u16ReqSpd;
        RegWrite(&(pVoReg->WBC2CTRL.u32), WBC2CTRL.u32);
    }
    #endif
    else
    {
        HAL_PRINT("Error! Vou_SetWbcSpd() Select Wrong Layer ID!\n");
    }

    return ;
}

HI_VOID Vou_SetWbcOutFmt(HAL_DISP_LAYER_E enLayer, HAL_DISP_INTFDATAFMT_E stIntfFmt)
{
    U_WBC0CTRL WBC0CTRL;
    //U_VHDWBC1STRD VHDWBC1STRD;
    U_WBC2CTRL WBC2CTRL;
    U_WBC3CTRL WBC3CTRL;

    if (enLayer == HAL_DISP_LAYER_WBC0)
    {
        WBC0CTRL.u32 = RegRead(&(pVoReg->WBC0CTRL.u32));
        WBC0CTRL.bits.wbc0_dft = stIntfFmt;
        RegWrite(&(pVoReg->WBC0CTRL.u32), WBC0CTRL.u32);
    }

    else if (enLayer == HAL_DISP_LAYER_WBC2)
    {
        WBC2CTRL.u32 = RegRead(&(pVoReg->WBC2CTRL.u32));
        WBC2CTRL.bits.wbc2_dft = stIntfFmt;
        RegWrite(&(pVoReg->WBC2CTRL.u32), WBC2CTRL.u32);
    }
    else if (enLayer == HAL_DISP_LAYER_WBC3)
    {
        WBC3CTRL.u32 = RegRead(&(pVoReg->WBC3CTRL.u32));
        WBC3CTRL.bits.wbc3_dft = stIntfFmt;
        RegWrite(&(pVoReg->WBC3CTRL.u32), WBC3CTRL.u32);
    }
    else
    {
        HAL_PRINT("Error! Vou_SetWbcOutFmt enLayer error!\n");
    }

    return ;

}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
/* set linklist register config */
HI_VOID Vou_SetLnkLstEnable(HI_U32 u32Data)
{
    U_VOLNKLSTCTRL VOLNKLSTCTRL;

    VOLNKLSTCTRL.u32 = RegRead(&(pVoReg->VOLNKLSTCTRL.u32));
    VOLNKLSTCTRL.bits.lnk_en = u32Data;
    RegWrite(&(pVoReg->VOLNKLSTCTRL.u32), VOLNKLSTCTRL.u32);

    return;
}

HI_VOID Vou_SetLnkLstStart(HI_U32 u32Data)
{
    U_VOLNKLSTSTRT VOLNKLSTSTRT;

    VOLNKLSTSTRT.u32 = RegRead(&(pVoReg->VOLNKLSTSTRT.u32));
    VOLNKLSTSTRT.bits.lnk_start = u32Data;
    RegWrite(&(pVoReg->VOLNKLSTSTRT.u32), VOLNKLSTSTRT.u32);

    return;
}

HI_VOID Vou_SetLnkLstNodeIntEn(HI_U32 u32Data)
{
    U_VHDCTRL VHDCTRL;

    VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
    VHDCTRL.bits.wbc1_int_en = u32Data;
    RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);

    return;
}

HI_VOID Vou_SetLnkLstAddr(HI_U32 u32Data)
{
    U_VOLNKLSTADDR VOLNKLSTADDR;

    VOLNKLSTADDR.u32 = u32Data;
    RegWrite(&(pVoReg->VOLNKLSTADDR.u32), VOLNKLSTADDR.u32);

    return;
}


HI_VOID Vou_SetLnkLstNodeNum(HI_U32 u32Data)
{
    U_VOLNKLSTCTRL VOLNKLSTCTRL;

    VOLNKLSTCTRL.u32 = RegRead(&(pVoReg->VOLNKLSTCTRL.u32));
    VOLNKLSTCTRL.bits.lnk_fst_node_num = u32Data;
    RegWrite(&(pVoReg->VOLNKLSTCTRL.u32), VOLNKLSTCTRL.u32);

    return;
}


HI_VOID Vou_SetLnkLstWordNum(HI_U32 u32Data)
{
    U_VOLNKLSTCTRL VOLNKLSTCTRL;

    VOLNKLSTCTRL.u32 = RegRead(&(pVoReg->VOLNKLSTCTRL.u32));
    VOLNKLSTCTRL.bits.lnk_fst_num = u32Data;
    RegWrite(&(pVoReg->VOLNKLSTCTRL.u32), VOLNKLSTCTRL.u32);

    return;
}

HI_VOID Vou_SetLnkWbAddr(HI_U32 u32Addr)
{
    U_VHDDIESTADDR VHDDIESTADDR;

    VHDDIESTADDR.u32 = u32Addr;
    RegWrite(&(pVoReg->VHDDIESTADDR.u32), VHDDIESTADDR.u32);

    return;
}

HI_VOID Vou_SetLnkWbEnable(HI_U32 u32Enable)
{
    U_VHDCTRL VHDCTRL;

    VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
    VHDCTRL.bits.vhd_sta_wr_en = u32Enable;
    RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);

    return;
}
#endif

HI_VOID Vou_SetVerRatio(HAL_DISP_LAYER_E enLayer, HI_U32 uRatio)
{
    U_VHDVSR VHDVSR;
    //U_VADVSR VADVSR;
    U_VSDVSR VSDVSR;
    U_G0VSR G0VSR;
    U_G1VSR G1VSR;

    //U_VEDVSR VEDVSR;

    if(enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        VHDVSR.u32 = RegRead(&(pVoReg->VHDVSR.u32));
        VHDVSR.bits.vratio = uRatio;
        RegWrite(&(pVoReg->VHDVSR.u32), VHDVSR.u32);
    }

    else if(enLayer == HAL_DISP_LAYER_VIDEO3)
    {
        VSDVSR.u32 = RegRead(&(pVoReg->VSDVSR.u32));
        VSDVSR.bits.vratio = uRatio;
        RegWrite(&(pVoReg->VSDVSR.u32), VSDVSR.u32);
    }

    else if(enLayer == HAL_DISP_LAYER_WBC0)
    {
        VSDVSR.u32 = RegRead(&(pVoReg->VSDVSR.u32));
        VSDVSR.bits.vratio = uRatio;
        RegWrite(&(pVoReg->VSDVSR.u32), VSDVSR.u32);
    }
    else if(enLayer == HAL_DISP_LAYER_GFX0)
    {
        G0VSR.u32 = RegRead(&(pVoReg->G0VSR.u32));
        G0VSR.bits.vratio = uRatio;
        RegWrite(&(pVoReg->G0VSR.u32), G0VSR.u32);
    }
    else if((enLayer == HAL_DISP_LAYER_GFX1) || (enLayer == HAL_DISP_LAYER_WBC2))
    {
        G1VSR.u32 = RegRead(&(pVoReg->G1VSR.u32));
        G1VSR.bits.vratio = uRatio;
        RegWrite(&(pVoReg->G1VSR.u32), G1VSR.u32);
    }
    else
    {
        HAL_PRINT("Error! Vou_SetVerRatio enLayer wrong ID!\n");
        return ;
    }

    return ;
}

HI_VOID Vou_SetHorRatio(HAL_DISP_LAYER_E enLayer, HI_U32 uRatio)
{
    U_VHDHSP VHDHSP;
    //U_VADHSP VADHSP;
    U_VSDHSP VSDHSP;
    U_G0HSP G0HSP;
    U_G1HSP G1HSP;

    //U_VEDHSP VEDHSP;


    if(enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        VHDHSP.u32 = RegRead(&(pVoReg->VHDHSP.u32));
        VHDHSP.bits.hratio = uRatio;
        RegWrite(&(pVoReg->VHDHSP.u32), VHDHSP.u32);

    }

    else if(enLayer == HAL_DISP_LAYER_VIDEO3)
    {
        VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));
        VSDHSP.bits.hratio = uRatio;
        RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
    }

    else if(enLayer == HAL_DISP_LAYER_WBC0)
    {
        VSDHSP.u32 = RegRead(&(pVoReg->VSDHSP.u32));
        VSDHSP.bits.hratio = uRatio;
        RegWrite(&(pVoReg->VSDHSP.u32), VSDHSP.u32);
    }
    else if(enLayer == HAL_DISP_LAYER_GFX0)
    {
        G0HSP.u32 = RegRead(&(pVoReg->G0HSP.u32));
        G0HSP.bits.hratio = uRatio;
        RegWrite(&(pVoReg->G0HSP.u32), G0HSP.u32);
    }
    else if ((enLayer == HAL_DISP_LAYER_GFX1) || (enLayer == HAL_DISP_LAYER_WBC2))
    {
        G1HSP.u32 = RegRead(&(pVoReg->G1HSP.u32));
        G1HSP.bits.hratio = uRatio;
        RegWrite(&(pVoReg->G1HSP.u32), G1HSP.u32);
    }
    else
    {
        HAL_PRINT("Error! Vou_SetHorRatio enLayer wrong ID!\n");
        return ;
    }

    return ;
}

#ifdef CHIP_TYPE_hi3716mv330
HI_VOID Vou_GetVerRatio(HAL_DISP_LAYER_E enLayer, HI_U32* pu32Ratio)
{
    U_VHDVSR VHDVSR;

    if(enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        VHDVSR.u32 = RegRead(&(pVoReg->VHDVSR.u32));
        *pu32Ratio = VHDVSR.bits.vratio;
    }

    return ;
}

HI_VOID Vou_GetHorRatio(HAL_DISP_LAYER_E enLayer, HI_U32* pu32Ratio)
{
    U_VHDHSP VHDHSP;

    if(enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        VHDHSP.u32 = RegRead(&(pVoReg->VHDHSP.u32));
        *pu32Ratio = VHDHSP.bits.hratio;
    }

    return ;
}

HI_VOID Vou_SetDeshoot(HI_VOID)
{
    U_VHDSHOOTCTRL_HL VHDSHOOTCTRL_HL;
    U_VHDSHOOTCTRL_VL VHDSHOOTCTRL_VL;

    VHDSHOOTCTRL_HL.u32 = RegRead(&(pVoReg->VHDSHOOTCTRL_HL.u32));
    VHDSHOOTCTRL_HL.bits.hl_shootctrl_en = 1;
    VHDSHOOTCTRL_HL.bits.hl_shootctrl_mode = 0;
    VHDSHOOTCTRL_HL.bits.hl_flatdect_mode = 1;
    VHDSHOOTCTRL_HL.bits.hl_coringadj_en = 1;
    VHDSHOOTCTRL_HL.bits.hl_gain = 32;
    VHDSHOOTCTRL_HL.bits.hl_coring = 32;
    RegWrite(&(pVoReg->VHDSHOOTCTRL_HL.u32), VHDSHOOTCTRL_HL.u32);

    VHDSHOOTCTRL_VL.u32 = RegRead(&(pVoReg->VHDSHOOTCTRL_VL.u32));
    VHDSHOOTCTRL_VL.bits.vl_shootctrl_en = 1;
    VHDSHOOTCTRL_VL.bits.vl_shootctrl_mode = 0;
    VHDSHOOTCTRL_VL.bits.vl_flatdect_mode = 1;
    VHDSHOOTCTRL_VL.bits.vl_coringadj_en = 1;
    VHDSHOOTCTRL_VL.bits.vl_gain = 32;
    VHDSHOOTCTRL_VL.bits.vl_coring = 32;
    RegWrite(&(pVoReg->VHDSHOOTCTRL_VL.u32), VHDSHOOTCTRL_VL.u32);
}

#endif

HI_VOID  HAL_DISP_MuteEnable(HAL_DISP_LAYER_E enLayer, HI_U32 bEnable)

{
    U_VHDCTRL VHDCTRL;
    //U_VADCTRL VADCTRL;
    U_VSDCTRL VSDCTRL;
    U_G0CTRL G0CTRL;
    U_G1CTRL G1CTRL;
    //U_G2CTRL G2CTRL;
    //U_VEDCTRL VEDCTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
            VHDCTRL.bits.mute_en = bEnable;
            RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
            VSDCTRL.bits.mute_en = bEnable;
            RegWrite(&(pVoReg->VSDCTRL.u32), VSDCTRL.u32);
            break;
        }

        case HAL_DISP_LAYER_GFX0:
        {
            G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
            G0CTRL.bits.mute_en = bEnable;
            RegWrite(&(pVoReg->G0CTRL.u32), G0CTRL.u32);
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
            G1CTRL.bits.mute_en = bEnable;
            RegWrite(&(pVoReg->G1CTRL.u32), G1CTRL.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error,Wrong layer ID\n");
            return ;
        }
    }

    return ;
}


HI_VOID Vou_SetIfirMode(HAL_DISP_LAYER_E enLayer, HAL_IFIRMODE_E enMode)
{
    U_VHDCTRL VHDCTRL;
    //U_VADCTRL VADCTRL;
    U_VSDCTRL VSDCTRL;

    //U_VEDCTRL VEDCTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
            VHDCTRL.bits.ifir_mode = enMode;
            RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
            VSDCTRL.bits.ifir_mode = enMode;
            RegWrite(&(pVoReg->VSDCTRL.u32), VSDCTRL.u32);
            break;
        }

        default:
        {
            HAL_PRINT("Error,Wrong layer ID\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetIfirCoef(HAL_DISP_LAYER_E enLayer, HI_S32 * s32Coef)
{
    U_VHDIFIRCOEF01 VHDIFIRCOEF01;
    U_VHDIFIRCOEF23 VHDIFIRCOEF23;
    U_VHDIFIRCOEF45 VHDIFIRCOEF45;
    U_VHDIFIRCOEF67 VHDIFIRCOEF67;

    //U_VADIFIRCOEF01 VADIFIRCOEF01;
    //U_VADIFIRCOEF23 VADIFIRCOEF23;
    //U_VADIFIRCOEF45 VADIFIRCOEF45;
    //U_VADIFIRCOEF67 VADIFIRCOEF67;

    U_VSDIFIRCOEF01 VSDIFIRCOEF01;
    U_VSDIFIRCOEF23 VSDIFIRCOEF23;
    U_VSDIFIRCOEF45 VSDIFIRCOEF45;
    U_VSDIFIRCOEF67 VSDIFIRCOEF67;

    //U_VEDIFIRCOEF01 VEDIFIRCOEF01;
    //U_VEDIFIRCOEF23 VEDIFIRCOEF23;
    //U_VEDIFIRCOEF45 VEDIFIRCOEF45;
    //U_VEDIFIRCOEF67 VEDIFIRCOEF67;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDIFIRCOEF01.u32 = RegRead(&(pVoReg->VHDIFIRCOEF01.u32));
            VHDIFIRCOEF23.u32 = RegRead(&(pVoReg->VHDIFIRCOEF23.u32));
            VHDIFIRCOEF45.u32 = RegRead(&(pVoReg->VHDIFIRCOEF45.u32));
            VHDIFIRCOEF67.u32 = RegRead(&(pVoReg->VHDIFIRCOEF67.u32));

            VHDIFIRCOEF01.bits.coef0 = s32Coef[0];
            VHDIFIRCOEF01.bits.coef1 = s32Coef[1];
            VHDIFIRCOEF23.bits.coef2 = s32Coef[2];
            VHDIFIRCOEF23.bits.coef3 = s32Coef[3];
            VHDIFIRCOEF45.bits.coef4 = s32Coef[4];
            VHDIFIRCOEF45.bits.coef5 = s32Coef[5];
            VHDIFIRCOEF67.bits.coef6 = s32Coef[6];
            VHDIFIRCOEF67.bits.coef7 = s32Coef[7];

            RegWrite(&(pVoReg->VHDIFIRCOEF01.u32), VHDIFIRCOEF01.u32);
            RegWrite(&(pVoReg->VHDIFIRCOEF23.u32), VHDIFIRCOEF23.u32);
            RegWrite(&(pVoReg->VHDIFIRCOEF45.u32), VHDIFIRCOEF45.u32);
            RegWrite(&(pVoReg->VHDIFIRCOEF67.u32), VHDIFIRCOEF67.u32);
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDIFIRCOEF01.u32 = RegRead(&(pVoReg->VSDIFIRCOEF01.u32));
            VSDIFIRCOEF23.u32 = RegRead(&(pVoReg->VSDIFIRCOEF23.u32));
            VSDIFIRCOEF45.u32 = RegRead(&(pVoReg->VSDIFIRCOEF45.u32));
            VSDIFIRCOEF67.u32 = RegRead(&(pVoReg->VSDIFIRCOEF67.u32));

            VSDIFIRCOEF01.bits.coef0 = s32Coef[0];
            VSDIFIRCOEF01.bits.coef1 = s32Coef[1];
            VSDIFIRCOEF23.bits.coef2 = s32Coef[2];
            VSDIFIRCOEF23.bits.coef3 = s32Coef[3];
            VSDIFIRCOEF45.bits.coef4 = s32Coef[4];
            VSDIFIRCOEF45.bits.coef5 = s32Coef[5];
            VSDIFIRCOEF67.bits.coef6 = s32Coef[6];
            VSDIFIRCOEF67.bits.coef7 = s32Coef[7];

            RegWrite(&(pVoReg->VSDIFIRCOEF01.u32), VSDIFIRCOEF01.u32);
            RegWrite(&(pVoReg->VSDIFIRCOEF23.u32), VSDIFIRCOEF23.u32);
            RegWrite(&(pVoReg->VSDIFIRCOEF45.u32), VSDIFIRCOEF45.u32);
            RegWrite(&(pVoReg->VSDIFIRCOEF67.u32), VSDIFIRCOEF67.u32);
            break;
        }

        default:
        {
            HAL_PRINT("Error,Wrong layer ID\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetGfxGpMod(HAL_DISP_LAYER_E enLayer,HI_BOOL bEnable)
{
#ifdef CHIP_TYPE_hi3716mv330
    U_G0CBMPARA G0CBMPARA;
    G0CBMPARA.u32 = RegRead(&(pVoReg->G0CBMPARA.u32));
    G0CBMPARA.bits.gp_galpha     = 0xff;
    G0CBMPARA.bits.gp_premult_en = bEnable;
    G0CBMPARA.bits.gp_mode       = bEnable;
    RegWrite(&(pVoReg->G0CBMPARA.u32), G0CBMPARA.u32);
#endif
    return;
}

HI_VOID Vou_GetGfxEnable(HAL_DISP_LAYER_E enLayer, HI_BOOL *pbEnable)
{
#ifdef CHIP_TYPE_hi3716mv330
     U_G0CTRL G0CTRL;
     U_G2CTRL G2CTRL;
     if (HAL_DISP_LAYER_GFX0 == enLayer)
     {
          G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
          *pbEnable = G0CTRL.bits.surface_en;
          return;
      }
      if (HAL_DISP_LAYER_GFX2 == enLayer)
      {
          G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
          *pbEnable = G2CTRL.bits.surface_en;
          return;
      }
 #endif
     return ;
 }



HI_VOID Vou_SetGfxPreMult(HAL_DISP_LAYER_E enLayer, HI_U32 bEnable)
{
    U_G0CBMPARA G0CBMPARA;
    U_G1CBMPARA G1CBMPARA;
    U_G2CBMPARA G2CBMPARA;
    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            G0CBMPARA.u32 = RegRead(&(pVoReg->G0CBMPARA.u32));
            G0CBMPARA.bits.premult_en = bEnable;
            RegWrite(&(pVoReg->G0CBMPARA.u32), G0CBMPARA.u32);

            G1CBMPARA.u32 = RegRead(&(pVoReg->G1CBMPARA.u32));
            G1CBMPARA.bits.premult_en = bEnable;
            RegWrite(&(pVoReg->G1CBMPARA.u32), G1CBMPARA.u32);
            break;
        }
        case HAL_DISP_LAYER_GFX2:
		case HAL_DISP_LAYER_GFX3:
        {
            G2CBMPARA.u32 = RegRead(&(pVoReg->G2CBMPARA.u32));
            G2CBMPARA.bits.premult_en = bEnable;
            RegWrite(&(pVoReg->G2CBMPARA.u32), G2CBMPARA.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error,Set pre_mult enable select wrong layer ID\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetGfxGmmEn(HAL_DISP_LAYER_E enLayer, HI_U32 bEnable)
{
    U_G0CTRL G0CTRL;
    U_G1CTRL G1CTRL;
    U_G2CTRL G2CTRL;
    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
            G0CTRL.bits.gmm_en = bEnable;
            RegWrite(&(pVoReg->G0CTRL.u32), G0CTRL.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
            G1CTRL.bits.gmm_en = bEnable;
            RegWrite(&(pVoReg->G1CTRL.u32), G1CTRL.u32);

            break;
        }
		case HAL_DISP_LAYER_GFX2:
        {
            G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
            G2CTRL.bits.gmm_en = bEnable;
            RegWrite(&(pVoReg->G2CTRL.u32), G2CTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error,Set pre_mult enable select wrong layer ID\n");
            return ;
        }
    }

    return ;
}

/***************************************************************************************
* func          : Vou_SetGfxReadMode
* description   : CNcomment: 设置读模式 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID Vou_SetGfxReadMode(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_G0CTRL G0CTRL;
    U_G1CTRL G1CTRL;
    U_G2CTRL G2CTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
            G0CTRL.bits.read_mode = u32Data;
            RegWrite(&(pVoReg->G0CTRL.u32), G0CTRL.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
            G1CTRL.bits.read_mode = u32Data;
            RegWrite(&(pVoReg->G1CTRL.u32), G1CTRL.u32);

            break;
        }
    	case HAL_DISP_LAYER_GFX2:
    	case HAL_DISP_LAYER_GFX3:
	    {
    		G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
    		G2CTRL.bits.read_mode = u32Data;
    		RegWrite(&(pVoReg->G2CTRL.u32), G2CTRL.u32);

    		break;
	    }

        default:
        {
            HAL_PRINT("Error,Vou_SetGfxReadMode() select wrong layer ID\n");
            return ;
        }
    }

    return ;
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
/* vou bus function config */
HI_VOID Vou_SetArbMode(HI_U32 bMode)
{
    U_VOCTRL VOCTRL;

    /* set vou arbitration mode */
    /* 0:Poll Mode,1:GFX First Mode */
    VOCTRL.u32 = RegRead(&(pVoReg->VOCTRL.u32));
    VOCTRL.bits.arb_mode = bMode;
    RegWrite(&(pVoReg->VOCTRL.u32), VOCTRL.u32);

    return ;
}
#endif

HI_VOID Vou_SetRdBusId(HI_U32 bMode)
{
    U_VOCTRL VOCTRL;

    /* set vou read bus ID */
    /* 0:VHD ID0, 1:VHD ID1 */
    VOCTRL.u32 = RegRead(&(pVoReg->VOCTRL.u32));
    VOCTRL.bits.vo_id_sel = bMode;
    RegWrite(&(pVoReg->VOCTRL.u32), VOCTRL.u32);

    return ;
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
HI_VOID Vou_SetRdOutStd(HI_U32 bIdMd, HI_U8 u8OsData)
{
    U_VOCTRL VOCTRL;

    /* set vou read data outstanding */
    /* bidMd -- 0:VHD ID0, 1:VHD ID1 */
    VOCTRL.u32 = RegRead(&(pVoReg->VOCTRL.u32));
    if(bIdMd == 0)
    {
        VOCTRL.bits.outstd_rid0 = u8OsData;
    }
    else
    {
        VOCTRL.bits.outstd_rid1 = u8OsData;
    }
    RegWrite(&(pVoReg->VOCTRL.u32), VOCTRL.u32);

    return ;
}

HI_VOID Vou_SetWrOutStd(HI_U8 u8OsData)
{
    U_VOCTRL VOCTRL;

    /* set vou write back data outstanding */
    VOCTRL.u32 = RegRead(&(pVoReg->VOCTRL.u32));
    VOCTRL.bits.outstd_wid0 = u8OsData;
    RegWrite(&(pVoReg->VOCTRL.u32), VOCTRL.u32);

    return ;
}

HI_VOID Vou_SetAcmEnable(HAL_ACMBLK_ID_E enAcmId, HI_U32 bAcmEn)
{
    U_VHDACM0 VHDACM0;

    /* set vou vhd acm enable */
    VHDACM0.u32 = RegRead(&(pVoReg->VHDACM0.u32));

    switch(enAcmId)
    {
        case HAL_ACMBLK_ID0 :
        {
            VHDACM0.bits.acm0_en = bAcmEn;
            break;
        }
        case HAL_ACMBLK_ID1 :
        {
            VHDACM0.bits.acm1_en = bAcmEn;
            break;
        }
        case HAL_ACMBLK_ID2 :
        {
            VHDACM0.bits.acm2_en = bAcmEn;
            break;
        }
        case HAL_ACMBLK_ID3 :
        {
            VHDACM0.bits.acm3_en = bAcmEn;
            break;
        }
        case HAL_ACMBLK_ALL :
        {
            VHDACM0.bits.acm0_en = bAcmEn;
            VHDACM0.bits.acm1_en = bAcmEn;
            VHDACM0.bits.acm2_en = bAcmEn;
            VHDACM0.bits.acm3_en = bAcmEn;
            break;
        }
        default:
        {
            HAL_PRINT("Error, Wrong ACM block ID!\n");
        }
    }

    RegWrite(&(pVoReg->VHDACM0.u32), VHDACM0.u32);

    return ;
}

HI_VOID Vou_SetAcmCoef(HAL_ACMBLK_ID_E enAcmId, HAL_DISP_ACMBLKINFO_S stCoef)
{
    U_VHDACM0 VHDACM0;
    U_VHDACM1 VHDACM1;
    U_VHDACM2 VHDACM2;
    U_VHDACM3 VHDACM3;
    U_VHDACM4 VHDACM4;
    U_VHDACM5 VHDACM5;
    U_VHDACM6 VHDACM6;
    U_VHDACM7 VHDACM7;

    if((enAcmId == HAL_ACMBLK_ID0)||(enAcmId == HAL_ACMBLK_ALL))
    {
        VHDACM0.u32 = RegRead(&(pVoReg->VHDACM0.u32));
        VHDACM1.u32 = RegRead(&(pVoReg->VHDACM1.u32));

        VHDACM0.bits.acm_fir_blk = stCoef.u8UIndex;
        VHDACM0.bits.acm_sec_blk = stCoef.u8VIndex;

        VHDACM0.bits.acm_a_u_off = (stCoef.s8UOffsetA);
        VHDACM0.bits.acm_b_u_off = (stCoef.s8UOffsetB);
        VHDACM0.bits.acm_c_u_off = (stCoef.s8UOffsetC);
        VHDACM0.bits.acm_d_u_off = (stCoef.s8UOffsetD);

        VHDACM1.bits.acm_a_v_off = (stCoef.s8VOffsetA);
        VHDACM1.bits.acm_b_v_off = (stCoef.s8VOffsetB);
        VHDACM1.bits.acm_c_v_off = (stCoef.s8VOffsetC);
        VHDACM1.bits.acm_d_v_off = (stCoef.s8VOffsetD);

        RegWrite(&(pVoReg->VHDACM0.u32), VHDACM0.u32);
        RegWrite(&(pVoReg->VHDACM1.u32), VHDACM1.u32);
    }

    if((enAcmId == HAL_ACMBLK_ID1)||(enAcmId == HAL_ACMBLK_ALL))
    {
        VHDACM2.u32 = RegRead(&(pVoReg->VHDACM2.u32));
        VHDACM3.u32 = RegRead(&(pVoReg->VHDACM3.u32));

        VHDACM2.bits.acm_fir_blk = stCoef.u8UIndex;
        VHDACM2.bits.acm_sec_blk = stCoef.u8VIndex;

        VHDACM2.bits.acm_a_u_off = (stCoef.s8UOffsetA);
        VHDACM2.bits.acm_b_u_off = (stCoef.s8UOffsetB);
        VHDACM2.bits.acm_c_u_off = (stCoef.s8UOffsetC);
        VHDACM2.bits.acm_d_u_off = (stCoef.s8UOffsetD);

        VHDACM3.bits.acm_a_v_off = (stCoef.s8VOffsetA);
        VHDACM3.bits.acm_b_v_off = (stCoef.s8VOffsetB);
        VHDACM3.bits.acm_c_v_off = (stCoef.s8VOffsetC);
        VHDACM3.bits.acm_d_v_off = (stCoef.s8VOffsetD);

        RegWrite(&(pVoReg->VHDACM2.u32), VHDACM2.u32);
        RegWrite(&(pVoReg->VHDACM3.u32), VHDACM3.u32);
    }

    if((enAcmId == HAL_ACMBLK_ID2)||(enAcmId == HAL_ACMBLK_ALL))
    {
        VHDACM4.u32 = RegRead(&(pVoReg->VHDACM4.u32));
        VHDACM5.u32 = RegRead(&(pVoReg->VHDACM5.u32));

        VHDACM4.bits.acm_fir_blk = stCoef.u8UIndex;
        VHDACM4.bits.acm_sec_blk = stCoef.u8VIndex;

        VHDACM4.bits.acm_a_u_off = (stCoef.s8UOffsetA);
        VHDACM4.bits.acm_b_u_off = (stCoef.s8UOffsetB);
        VHDACM4.bits.acm_c_u_off = (stCoef.s8UOffsetC);
        VHDACM4.bits.acm_d_u_off = (stCoef.s8UOffsetD);

        VHDACM5.bits.acm_a_v_off = (stCoef.s8VOffsetA);
        VHDACM5.bits.acm_b_v_off = (stCoef.s8VOffsetB);
        VHDACM5.bits.acm_c_v_off = (stCoef.s8VOffsetC);
        VHDACM5.bits.acm_d_v_off = (stCoef.s8VOffsetD);

        RegWrite(&(pVoReg->VHDACM4.u32), VHDACM4.u32);
        RegWrite(&(pVoReg->VHDACM5.u32), VHDACM5.u32);
    }

    if((enAcmId == HAL_ACMBLK_ID3)||(enAcmId == HAL_ACMBLK_ALL))
    {
        VHDACM6.u32 = RegRead(&(pVoReg->VHDACM6.u32));
        VHDACM7.u32 = RegRead(&(pVoReg->VHDACM7.u32));

        VHDACM6.bits.acm_fir_blk = stCoef.u8UIndex;
        VHDACM6.bits.acm_sec_blk = stCoef.u8VIndex;

        VHDACM6.bits.acm_a_u_off = (stCoef.s8UOffsetA);
        VHDACM6.bits.acm_b_u_off = (stCoef.s8UOffsetB);
        VHDACM6.bits.acm_c_u_off = (stCoef.s8UOffsetC);
        VHDACM6.bits.acm_d_u_off = (stCoef.s8UOffsetD);

        VHDACM7.bits.acm_a_v_off = (stCoef.s8VOffsetA);
        VHDACM7.bits.acm_b_v_off = (stCoef.s8VOffsetB);
        VHDACM7.bits.acm_c_v_off = (stCoef.s8VOffsetC);
        VHDACM7.bits.acm_d_v_off = (stCoef.s8VOffsetD);

        RegWrite(&(pVoReg->VHDACM6.u32), VHDACM6.u32);
        RegWrite(&(pVoReg->VHDACM7.u32), VHDACM7.u32);
    }

    return ;
}

HI_VOID Vou_SetAcmTestEnable(HI_U32 bAcmEn)
{
    U_VHDACM1 VHDACM1;

    /* set vou vhd acm enable */
    VHDACM1.u32 = RegRead(&(pVoReg->VHDACM1.u32));
    VHDACM1.bits.acm_test_en = bAcmEn;
    RegWrite(&(pVoReg->VHDACM1.u32), VHDACM1.u32);

    return ;
}

HI_VOID Vou_SetTimeOut(HAL_DISP_LAYER_E enLayer, HI_U8 u8TData)
{
    U_VHDCTRL VHDCTRL;
    //U_VADCTRL VADCTRL;
    U_VSDCTRL VSDCTRL;

    //U_VEDCTRL VEDCTRL;

    if(u8TData >= 16)
    {
        HAL_PRINT("Error,Timeout data out of legal range\n");
        return ;
    }

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
            VHDCTRL.bits.time_out = u8TData;
            RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
            VSDCTRL.bits.time_out = u8TData;
            RegWrite(&(pVoReg->VSDCTRL.u32), VSDCTRL.u32);

            break;
        }

        default:
        {
            HAL_PRINT("Error! Vou_SetChnLink() Select Wrong Layer ID!\n");
            return ;
        }
    }


    return ;
}
#endif

#ifdef HI_DISP_ACC_SUPPORT
HI_VOID Vou_SetAccThd(HAL_DISP_LAYER_E enLayer, ACCTHD_S stAccThd)
{
    U_VHDACCTHD1 VHDACCTHD1;
    U_VHDACCTHD2 VHDACCTHD2;
   // U_VADACCTHD1 VADACCTHD1;
    //U_VADACCTHD2 VADACCTHD2;
    U_VSDACCTHD1 VSDACCTHD1;
    U_VSDACCTHD2 VSDACCTHD2;

    //U_VEDACCTHD1 VEDACCTHD1;
    //U_VEDACCTHD2 VEDACCTHD2;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDACCTHD1.u32 = RegRead(&(pVoReg->VHDACCTHD1.u32));
            VHDACCTHD2.u32 = RegRead(&(pVoReg->VHDACCTHD2.u32));
            VHDACCTHD2.bits.acc_multiple = stAccThd.acc_multi   ;
            VHDACCTHD2.bits.thd_med_high = stAccThd.thd_med_high;
            VHDACCTHD1.bits.thd_med_low  = stAccThd.thd_med_low ;
            VHDACCTHD1.bits.thd_high     = stAccThd.thd_high    ;
            VHDACCTHD1.bits.thd_low      = stAccThd.thd_low     ;
            RegWrite(&(pVoReg->VHDACCTHD2.u32), VHDACCTHD2.u32);
            RegWrite(&(pVoReg->VHDACCTHD1.u32), VHDACCTHD1.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDACCTHD1.u32 = RegRead(&(pVoReg->VSDACCTHD1.u32));
            VSDACCTHD2.u32 = RegRead(&(pVoReg->VSDACCTHD2.u32));
            VSDACCTHD2.bits.acc_multiple = stAccThd.acc_multi   ;
            VSDACCTHD2.bits.thd_med_high = stAccThd.thd_med_high;
            VSDACCTHD1.bits.thd_med_low  = stAccThd.thd_med_low ;
            VSDACCTHD1.bits.thd_high     = stAccThd.thd_high    ;
            VSDACCTHD1.bits.thd_low      = stAccThd.thd_low     ;
            RegWrite(&(pVoReg->VSDACCTHD2.u32), VSDACCTHD2.u32);
            RegWrite(&(pVoReg->VSDACCTHD1.u32), VSDACCTHD1.u32);

            break;
        }


        default:
        {
            HAL_PRINT("Error! Vou_SetAccThd() Select Wrong Layer ID!\n");
            break;
        }
    }
}

HI_VOID Vou_SetAccTab(HAL_DISP_LAYER_E enLayer, HI_U32 *upTable)
{

    U_VHDACCLOWN  VHDACCLOW[3];
    U_VHDACCMEDN  VHDACCMED[3];
    U_VHDACCHIGHN VHDACCHIGH[3];
    U_VHDACCMLN     VHDACCML[3];
    U_VHDACCMHN    VHDACCMH[3];

    //U_VADACCLOWN  VADACCLOW[3];
    //U_VADACCMEDN  VADACCMED[3];
    //U_VADACCHIGHN VADACCHIGH[3];
    //U_VADACCMLN     VADACCML[3];
    //U_VADACCMHN    VADACCMH[3];

    U_VSDACCLOWN  VSDACCLOW[3];
    U_VSDACCMEDN  VSDACCMED[3];
    U_VSDACCHIGHN VSDACCHIGH[3];
    U_VSDACCMLN     VSDACCML[3];
    U_VSDACCMHN    VSDACCMH[3];
    HI_U32 ii = 0;

    memset(VHDACCLOW,0x0,sizeof(U_VHDACCLOWN));
    memset(VHDACCMED,0x0,sizeof(U_VHDACCMEDN));
    memset(VHDACCHIGH,0x0,sizeof(U_VHDACCHIGHN));
    memset(VHDACCML,0x0,sizeof(U_VHDACCMLN));
    memset(VHDACCMH,0x0,sizeof(U_VHDACCMHN));

    memset(VSDACCLOW,0x0,sizeof(U_VSDACCLOWN));
    memset(VSDACCMED,0x0,sizeof(U_VSDACCMEDN));
    memset(VSDACCHIGH,0x0,sizeof(U_VSDACCHIGHN));
    memset(VSDACCML,0x0,sizeof(U_VSDACCMLN));
    memset(VSDACCMH,0x0,sizeof(U_VSDACCMHN));
    //U_VEDACCLOWN  VEDACCLOW[3];
    //U_VEDACCMEDN  VEDACCMED[3];
    //U_VEDACCHIGHN VEDACCHIGH[3];
    //U_VEDACCMLN     VEDACCML[3];
    //U_VEDACCMHN    VEDACCMH[3];



    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            for (ii = 0; ii < 3; ii++)
            {
                VHDACCLOW[ii].bits.table_data1n = upTable[0 + ii*3];
                VHDACCLOW[ii].bits.table_data2n = upTable[1 + ii*3];
                VHDACCLOW[ii].bits.table_data3n = upTable[2 + ii*3];
                RegWrite(&(pVoReg->VHDACCLOWN[ii].u32), VHDACCLOW[ii].u32);
            }

            for (ii = 0; ii < 3; ii++)
            {
                VHDACCMED[ii].bits.table_data1n = upTable[9 + 0 + ii*3];
                VHDACCMED[ii].bits.table_data2n = upTable[9 + 1 + ii*3];
                VHDACCMED[ii].bits.table_data3n = upTable[9 + 2 + ii*3];
                RegWrite(&(pVoReg->VHDACCMEDN[ii].u32), VHDACCMED[ii].u32);
            }

            for (ii = 0; ii < 3; ii++)
            {
                VHDACCHIGH[ii].bits.table_data1n = upTable[18 + 0 + ii*3];
                VHDACCHIGH[ii].bits.table_data2n = upTable[18 + 1 + ii*3];
                VHDACCHIGH[ii].bits.table_data3n = upTable[18 + 2 + ii*3];
                RegWrite(&(pVoReg->VHDACCHIGHN[ii].u32), VHDACCHIGH[ii].u32);
            }

            for (ii = 0; ii < 3; ii++)
            {
                VHDACCML[ii].bits.table_data1n = upTable[27 + 0 + ii*3];
                VHDACCML[ii].bits.table_data2n = upTable[27 + 1 + ii*3];
                VHDACCML[ii].bits.table_data3n = upTable[27 + 2 + ii*3];
                RegWrite(&(pVoReg->VHDACCMLN[ii].u32), VHDACCML[ii].u32);
            }

            for (ii = 0; ii < 3; ii++)
            {
                VHDACCMH[ii].bits.table_data1n = upTable[36 + 0 + ii*3];
                VHDACCMH[ii].bits.table_data2n = upTable[36 + 1 + ii*3];
                VHDACCMH[ii].bits.table_data3n = upTable[36 + 2 + ii*3];
                RegWrite(&(pVoReg->VHDACCMHN[ii].u32), VHDACCMH[ii].u32);
            }

            break;
        }

     case HAL_DISP_LAYER_VIDEO3:
        {
            for (ii = 0; ii < 3; ii++)
            {
                VSDACCLOW[ii].bits.table_data1n = upTable[0 + ii*3];
                VSDACCLOW[ii].bits.table_data2n = upTable[1 + ii*3];
                VSDACCLOW[ii].bits.table_data3n = upTable[2 + ii*3];
                RegWrite(&(pVoReg->VSDACCLOWN[ii].u32), VSDACCLOW[ii].u32);
            }

            for (ii = 0; ii < 3; ii++)
            {
                VSDACCMED[ii].bits.table_data1n = upTable[9 + 0 + ii*3];
                VSDACCMED[ii].bits.table_data2n = upTable[9 + 1 + ii*3];
                VSDACCMED[ii].bits.table_data3n = upTable[9 + 2 + ii*3];
                RegWrite(&(pVoReg->VSDACCMEDN[ii].u32), VSDACCMED[ii].u32);
            }

            for (ii = 0; ii < 3; ii++)
            {
                VSDACCHIGH[ii].bits.table_data1n = upTable[18 + 0 + ii*3];
                VSDACCHIGH[ii].bits.table_data2n = upTable[18 + 1 + ii*3];
                VSDACCHIGH[ii].bits.table_data3n = upTable[18 + 2 + ii*3];
                RegWrite(&(pVoReg->VSDACCHIGHN[ii].u32), VSDACCHIGH[ii].u32);
            }

            for (ii = 0; ii < 3; ii++)
            {
                VSDACCML[ii].bits.table_data1n = upTable[27 + 0 + ii*3];
                VSDACCML[ii].bits.table_data2n = upTable[27 + 1 + ii*3];
                VSDACCML[ii].bits.table_data3n = upTable[27 + 2 + ii*3];
                RegWrite(&(pVoReg->VSDACCMLN[ii].u32), VSDACCML[ii].u32);
            }

            for (ii = 0; ii < 3; ii++)
            {
                VSDACCMH[ii].bits.table_data1n = upTable[36 + 0 + ii*3];
                VSDACCMH[ii].bits.table_data2n = upTable[36 + 1 + ii*3];
                VSDACCMH[ii].bits.table_data3n = upTable[36 + 2 + ii*3];
                RegWrite(&(pVoReg->VSDACCMHN[ii].u32), VSDACCMH[ii].u32);
            }

            break;
        }

        default:
        {
            HAL_PRINT("Error! Vou_SetAccTab() Select Wrong Layer ID!\n");
            break;
        }
    }
}

HI_VOID Vou_SetAccCtrl(HAL_DISP_LAYER_E enLayer, HI_U32 uAccEn, HI_U32 uAccMode)
{
    U_VHDACCTHD1 VHDACCTHD1;
    //U_VADACCTHD1 VADACCTHD1;
    U_VSDACCTHD1 VSDACCTHD1;

    //U_VEDACCTHD1 VEDACCTHD1;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDACCTHD1.u32 = RegRead(&(pVoReg->VHDACCTHD1.u32));

            VHDACCTHD1.bits.acc_en   = uAccEn  ;
            VHDACCTHD1.bits.acc_mode = uAccMode;
            RegWrite(&(pVoReg->VHDACCTHD1.u32), VHDACCTHD1.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDACCTHD1.u32 = RegRead(&(pVoReg->VSDACCTHD1.u32));
            VSDACCTHD1.bits.acc_en   = uAccEn  ;
            VSDACCTHD1.bits.acc_mode = uAccMode;
            RegWrite(&(pVoReg->VSDACCTHD1.u32), VSDACCTHD1.u32);

            break;
        }

        default:
        {
            HAL_PRINT("Error! Vou_SetAccCtrl() Select Wrong Layer ID!\n");
            break;
        }
    }
}

HI_VOID Vou_SetAccWeightAddr(HI_U32 uAccAddr)
{
    U_ACCAD ACCAD;

    ACCAD.bits.coef_addr = uAccAddr;
    RegWrite(&(pVoReg->ACCAD.u32), ACCAD.u32);
}

HI_VOID Vou_SetAccRst(HAL_DISP_LAYER_E enLayer, HI_U32 uAccRst)
{
    U_VHDACCTHD2 VHDACCTHD2;
    //U_VADACCTHD2 VADACCTHD2;
    U_VSDACCTHD2 VSDACCTHD2;

    //U_VEDACCTHD2 VEDACCTHD2;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDACCTHD2.u32 = RegRead(&(pVoReg->VHDACCTHD2.u32));
            VHDACCTHD2.bits.acc_rst   = uAccRst  ;
            RegWrite(&(pVoReg->VHDACCTHD2.u32), VHDACCTHD2.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDACCTHD2.u32 = RegRead(&(pVoReg->VSDACCTHD2.u32));
            VSDACCTHD2.bits.acc_rst   = uAccRst  ;
            RegWrite(&(pVoReg->VSDACCTHD2.u32), VSDACCTHD2.u32);

            break;
        }

        default:
        {
            HAL_PRINT("Error! Vou_SetAccRst() Select Wrong Layer ID!\n");
            break;
        }
    }
}
#endif

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
HI_VOID HAL_Layer_SetCscCoef_V200(HAL_DISP_LAYER_E enChan, IntfCscCoef_S *pstCscCoef)
{
    switch(enChan)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDCSCP0_V200 VHDCSCP0_V200;
            U_VHDCSCP1_V200 VHDCSCP1_V200;
            U_VHDCSCP2_V200 VHDCSCP2_V200;
            U_VHDCSCP3_V200 VHDCSCP3_V200;
            U_VHDCSCP4_V200 VHDCSCP4_V200;

            VHDCSCP0_V200.u32 = RegRead(&(pVoReg->VHDCSCP0.u32));
            VHDCSCP0_V200.bits.cscp00 = pstCscCoef->csc_coef00;
            VHDCSCP0_V200.bits.cscp01 = pstCscCoef->csc_coef01;
            RegWrite(&(pVoReg->VHDCSCP0.u32), VHDCSCP0_V200.u32);

            VHDCSCP1_V200.u32 = RegRead(&(pVoReg->VHDCSCP1.u32));
            VHDCSCP1_V200.bits.cscp02 = pstCscCoef->csc_coef02;
            VHDCSCP1_V200.bits.cscp10 = pstCscCoef->csc_coef10;
            RegWrite(&(pVoReg->VHDCSCP1.u32), VHDCSCP1_V200.u32);

            VHDCSCP2_V200.u32 = RegRead(&(pVoReg->VHDCSCP2.u32));
            VHDCSCP2_V200.bits.cscp11 = pstCscCoef->csc_coef11;
            VHDCSCP2_V200.bits.cscp12 = pstCscCoef->csc_coef12;
            RegWrite(&(pVoReg->VHDCSCP2.u32), VHDCSCP2_V200.u32);

            VHDCSCP3_V200.u32 = RegRead(&(pVoReg->VHDCSCP3.u32));
            VHDCSCP3_V200.bits.cscp20 = pstCscCoef->csc_coef20;
            VHDCSCP3_V200.bits.cscp21 = pstCscCoef->csc_coef21;
            RegWrite(&(pVoReg->VHDCSCP3.u32), VHDCSCP3_V200.u32);

            VHDCSCP4_V200.u32 = RegRead(&(pVoReg->VHDCSCP4.u32));
            VHDCSCP4_V200.bits.cscp22 = pstCscCoef->csc_coef22;
            RegWrite(&(pVoReg->VHDCSCP4.u32), VHDCSCP4_V200.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            U_VSDCSCP0_V200 VSDCSCP0_V200;
            U_VSDCSCP1_V200 VSDCSCP1_V200;
            U_VSDCSCP2_V200 VSDCSCP2_V200;
            U_VSDCSCP3_V200 VSDCSCP3_V200;
            U_VSDCSCP4_V200 VSDCSCP4_V200;

            VSDCSCP0_V200.u32 = RegRead(&(pVoReg->VSDCSCP0.u32));
            VSDCSCP0_V200.bits.cscp00 = pstCscCoef->csc_coef00;
            VSDCSCP0_V200.bits.cscp01 = pstCscCoef->csc_coef01;
            RegWrite(&(pVoReg->VSDCSCP0.u32), VSDCSCP0_V200.u32);

            VSDCSCP1_V200.u32 = RegRead(&(pVoReg->VSDCSCP1.u32));
            VSDCSCP1_V200.bits.cscp02 = pstCscCoef->csc_coef02;
            VSDCSCP1_V200.bits.cscp10 = pstCscCoef->csc_coef10;
            RegWrite(&(pVoReg->VSDCSCP1.u32), VSDCSCP1_V200.u32);

            VSDCSCP2_V200.u32 = RegRead(&(pVoReg->VSDCSCP2.u32));
            VSDCSCP2_V200.bits.cscp11 = pstCscCoef->csc_coef11;
            VSDCSCP2_V200.bits.cscp12 = pstCscCoef->csc_coef12;
            RegWrite(&(pVoReg->VSDCSCP2.u32), VSDCSCP2_V200.u32);

            VSDCSCP3_V200.u32 = RegRead(&(pVoReg->VSDCSCP3.u32));
            VSDCSCP3_V200.bits.cscp20 = pstCscCoef->csc_coef20;
            VSDCSCP3_V200.bits.cscp21 = pstCscCoef->csc_coef21;
            RegWrite(&(pVoReg->VSDCSCP3.u32), VSDCSCP3_V200.u32);

            VSDCSCP4_V200.u32 = RegRead(&(pVoReg->VSDCSCP4.u32));
            VSDCSCP4_V200.bits.cscp22 = pstCscCoef->csc_coef22;
            RegWrite(&(pVoReg->VSDCSCP4.u32), VSDCSCP4_V200.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0CSCP0_V200 G0CSCP0_V200;
            U_G0CSCP1_V200 G0CSCP1_V200;
            U_G0CSCP2_V200 G0CSCP2_V200;
            U_G0CSCP3_V200 G0CSCP3_V200;
            U_G0CSCP4_V200 G0CSCP4_V200;

            G0CSCP0_V200.u32 = RegRead(&(pVoReg->G0CSCP0.u32));
            G0CSCP0_V200.bits.cscp00 = pstCscCoef->csc_coef00;
            G0CSCP0_V200.bits.cscp01 = pstCscCoef->csc_coef01;
            RegWrite(&(pVoReg->G0CSCP0.u32), G0CSCP0_V200.u32);

            G0CSCP1_V200.u32 = RegRead(&(pVoReg->G0CSCP1.u32));
            G0CSCP1_V200.bits.cscp02 = pstCscCoef->csc_coef02;
            G0CSCP1_V200.bits.cscp10 = pstCscCoef->csc_coef10;
            RegWrite(&(pVoReg->G0CSCP1.u32), G0CSCP1_V200.u32);

            G0CSCP2_V200.u32 = RegRead(&(pVoReg->G0CSCP2.u32));
            G0CSCP2_V200.bits.cscp11 = pstCscCoef->csc_coef11;
            G0CSCP2_V200.bits.cscp12 = pstCscCoef->csc_coef12;
            RegWrite(&(pVoReg->G0CSCP2.u32), G0CSCP2_V200.u32);

            G0CSCP3_V200.u32 = RegRead(&(pVoReg->G0CSCP3.u32));
            G0CSCP3_V200.bits.cscp20 = pstCscCoef->csc_coef20;
            G0CSCP3_V200.bits.cscp21 = pstCscCoef->csc_coef21;
            RegWrite(&(pVoReg->G0CSCP3.u32), G0CSCP3_V200.u32);

            G0CSCP4_V200.u32 = RegRead(&(pVoReg->G0CSCP4.u32));
            G0CSCP4_V200.bits.cscp22 = pstCscCoef->csc_coef22;
            RegWrite(&(pVoReg->G0CSCP4.u32), G0CSCP4_V200.u32);

            break;
        }
        case HAL_DISP_LAYER_WBC2:
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1CSCP0_V200 G1CSCP0_V200;
            U_G1CSCP1_V200 G1CSCP1_V200;
            U_G1CSCP2_V200 G1CSCP2_V200;
            U_G1CSCP3_V200 G1CSCP3_V200;
            U_G1CSCP4_V200 G1CSCP4_V200;

            G1CSCP0_V200.u32 = RegRead(&(pVoReg->G1CSCP0.u32));
            G1CSCP0_V200.bits.cscp00 = pstCscCoef->csc_coef00;
            G1CSCP0_V200.bits.cscp01 = pstCscCoef->csc_coef01;
            RegWrite(&(pVoReg->G1CSCP0.u32), G1CSCP0_V200.u32);

            G1CSCP1_V200.u32 = RegRead(&(pVoReg->G1CSCP1.u32));
            G1CSCP1_V200.bits.cscp02 = pstCscCoef->csc_coef02;
            G1CSCP1_V200.bits.cscp10 = pstCscCoef->csc_coef10;
            RegWrite(&(pVoReg->G1CSCP1.u32), G1CSCP1_V200.u32);

            G1CSCP2_V200.u32 = RegRead(&(pVoReg->G1CSCP2.u32));
            G1CSCP2_V200.bits.cscp11 = pstCscCoef->csc_coef11;
            G1CSCP2_V200.bits.cscp12 = pstCscCoef->csc_coef12;
            RegWrite(&(pVoReg->G1CSCP2.u32), G1CSCP2_V200.u32);

            G1CSCP3_V200.u32 = RegRead(&(pVoReg->G1CSCP3.u32));
            G1CSCP3_V200.bits.cscp20 = pstCscCoef->csc_coef20;
            G1CSCP3_V200.bits.cscp21 = pstCscCoef->csc_coef21;
            RegWrite(&(pVoReg->G1CSCP3.u32), G1CSCP3_V200.u32);

            G1CSCP4_V200.u32 = RegRead(&(pVoReg->G1CSCP4.u32));
            G1CSCP4_V200.bits.cscp22 = pstCscCoef->csc_coef22;
            RegWrite(&(pVoReg->G1CSCP4.u32), G1CSCP4_V200.u32);

            break;
        }
        case HAL_DISP_LAYER_HC:
        {
            U_HCCSCP0 HCCSCP0;
            U_HCCSCP1 HCCSCP1;
            U_HCCSCP2 HCCSCP2;
            U_HCCSCP3 HCCSCP3;
            U_HCCSCP4 HCCSCP4;

            HCCSCP0.u32 = RegRead(&(pVoReg->HCCSCP0.u32));
            HCCSCP0.bits.cscp00 = pstCscCoef->csc_coef00;
            HCCSCP0.bits.cscp01 = pstCscCoef->csc_coef01;
            RegWrite(&(pVoReg->HCCSCP0.u32), HCCSCP0.u32);

            HCCSCP1.u32 = RegRead(&(pVoReg->HCCSCP1.u32));
            HCCSCP1.bits.cscp02 = pstCscCoef->csc_coef02;
            HCCSCP1.bits.cscp10 = pstCscCoef->csc_coef10;
            RegWrite(&(pVoReg->HCCSCP1.u32), HCCSCP1.u32);

            HCCSCP2.u32 = RegRead(&(pVoReg->HCCSCP2.u32));
            HCCSCP2.bits.cscp11 = pstCscCoef->csc_coef11;
            HCCSCP2.bits.cscp12 = pstCscCoef->csc_coef12;
            RegWrite(&(pVoReg->HCCSCP2.u32), HCCSCP2.u32);

            HCCSCP3.u32 = RegRead(&(pVoReg->HCCSCP3.u32));
            HCCSCP3.bits.cscp20 = pstCscCoef->csc_coef20;
            HCCSCP3.bits.cscp21 = pstCscCoef->csc_coef21;
            RegWrite(&(pVoReg->HCCSCP3.u32), HCCSCP3.u32);

            HCCSCP4.u32 = RegRead(&(pVoReg->HCCSCP4.u32));
            HCCSCP4.bits.cscp22 = pstCscCoef->csc_coef22;
            RegWrite(&(pVoReg->HCCSCP4.u32), HCCSCP4.u32);

            break;
        }
        default:
        {
            break;
        }
   }

}
#endif


/***************************************************************************************
* func          : HAL_Layer_SetCscCoef
* description   : CNcomment: set coefficients for color space transformation for a layer CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID HAL_Layer_SetCscCoef_V300(HAL_DISP_LAYER_E enChan, IntfCscCoef_S *pstCscCoef)
{
    switch(enChan)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDCSCP0 VHDCSCP0;
            U_VHDCSCP1 VHDCSCP1;
            U_VHDCSCP2 VHDCSCP2;
            U_VHDCSCP3 VHDCSCP3;
            U_VHDCSCP4 VHDCSCP4;

            VHDCSCP0.u32 = RegRead(&(pVoReg->VHDCSCP0.u32));
            VHDCSCP0.bits.cscp00 = pstCscCoef->csc_coef00;
            VHDCSCP0.bits.cscp01 = pstCscCoef->csc_coef01;
            RegWrite(&(pVoReg->VHDCSCP0.u32), VHDCSCP0.u32);

            VHDCSCP1.u32 = RegRead(&(pVoReg->VHDCSCP1.u32));
            VHDCSCP1.bits.cscp02 = pstCscCoef->csc_coef02;
            VHDCSCP1.bits.cscp10 = pstCscCoef->csc_coef10;
            RegWrite(&(pVoReg->VHDCSCP1.u32), VHDCSCP1.u32);

            VHDCSCP2.u32 = RegRead(&(pVoReg->VHDCSCP2.u32));
            VHDCSCP2.bits.cscp11 = pstCscCoef->csc_coef11;
            VHDCSCP2.bits.cscp12 = pstCscCoef->csc_coef12;
            RegWrite(&(pVoReg->VHDCSCP2.u32), VHDCSCP2.u32);

            VHDCSCP3.u32 = RegRead(&(pVoReg->VHDCSCP3.u32));
            VHDCSCP3.bits.cscp20 = pstCscCoef->csc_coef20;
            VHDCSCP3.bits.cscp21 = pstCscCoef->csc_coef21;
            RegWrite(&(pVoReg->VHDCSCP3.u32), VHDCSCP3.u32);

            VHDCSCP4.u32 = RegRead(&(pVoReg->VHDCSCP4.u32));
            VHDCSCP4.bits.cscp22 = pstCscCoef->csc_coef22;
            RegWrite(&(pVoReg->VHDCSCP4.u32), VHDCSCP4.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            U_VSDCSCP0 VSDCSCP0;
            U_VSDCSCP1 VSDCSCP1;
            U_VSDCSCP2 VSDCSCP2;
            U_VSDCSCP3 VSDCSCP3;
            U_VSDCSCP4 VSDCSCP4;

            VSDCSCP0.u32 = RegRead(&(pVoReg->VSDCSCP0.u32));
            VSDCSCP0.bits.cscp00 = pstCscCoef->csc_coef00;
            VSDCSCP0.bits.cscp01 = pstCscCoef->csc_coef01;
            RegWrite(&(pVoReg->VSDCSCP0.u32), VSDCSCP0.u32);

            VSDCSCP1.u32 = RegRead(&(pVoReg->VSDCSCP1.u32));
            VSDCSCP1.bits.cscp02 = pstCscCoef->csc_coef02;
            VSDCSCP1.bits.cscp10 = pstCscCoef->csc_coef10;
            RegWrite(&(pVoReg->VSDCSCP1.u32), VSDCSCP1.u32);

            VSDCSCP2.u32 = RegRead(&(pVoReg->VSDCSCP2.u32));
            VSDCSCP2.bits.cscp11 = pstCscCoef->csc_coef11;
            VSDCSCP2.bits.cscp12 = pstCscCoef->csc_coef12;
            RegWrite(&(pVoReg->VSDCSCP2.u32), VSDCSCP2.u32);

            VSDCSCP3.u32 = RegRead(&(pVoReg->VSDCSCP3.u32));
            VSDCSCP3.bits.cscp20 = pstCscCoef->csc_coef20;
            VSDCSCP3.bits.cscp21 = pstCscCoef->csc_coef21;
            RegWrite(&(pVoReg->VSDCSCP3.u32), VSDCSCP3.u32);

            VSDCSCP4.u32 = RegRead(&(pVoReg->VSDCSCP4.u32));
            VSDCSCP4.bits.cscp22 = pstCscCoef->csc_coef22;
            RegWrite(&(pVoReg->VSDCSCP4.u32), VSDCSCP4.u32);

            break;
        }

        case HAL_DISP_LAYER_GFX0:
        {
            U_G0CSCP0 G0CSCP0;
            U_G0CSCP1 G0CSCP1;
            U_G0CSCP2 G0CSCP2;
            U_G0CSCP3 G0CSCP3;
            U_G0CSCP4 G0CSCP4;

            G0CSCP0.u32 = RegRead(&(pVoReg->G0CSCP0.u32));
            G0CSCP0.bits.cscp00 = pstCscCoef->csc_coef00;
            G0CSCP0.bits.cscp01 = pstCscCoef->csc_coef01;
            RegWrite(&(pVoReg->G0CSCP0.u32), G0CSCP0.u32);

            G0CSCP1.u32 = RegRead(&(pVoReg->G0CSCP1.u32));
            G0CSCP1.bits.cscp02 = pstCscCoef->csc_coef02;
            G0CSCP1.bits.cscp10 = pstCscCoef->csc_coef10;
            RegWrite(&(pVoReg->G0CSCP1.u32), G0CSCP1.u32);

            G0CSCP2.u32 = RegRead(&(pVoReg->G0CSCP2.u32));
            G0CSCP2.bits.cscp11 = pstCscCoef->csc_coef11;
            G0CSCP2.bits.cscp12 = pstCscCoef->csc_coef12;
            RegWrite(&(pVoReg->G0CSCP2.u32), G0CSCP2.u32);

            G0CSCP3.u32 = RegRead(&(pVoReg->G0CSCP3.u32));
            G0CSCP3.bits.cscp20 = pstCscCoef->csc_coef20;
            G0CSCP3.bits.cscp21 = pstCscCoef->csc_coef21;
            RegWrite(&(pVoReg->G0CSCP3.u32), G0CSCP3.u32);

            G0CSCP4.u32 = RegRead(&(pVoReg->G0CSCP4.u32));
            G0CSCP4.bits.cscp22 = pstCscCoef->csc_coef22;
            RegWrite(&(pVoReg->G0CSCP4.u32), G0CSCP4.u32);

            break;
        }
        case HAL_DISP_LAYER_WBC2:
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1CSCP0 G1CSCP0;
            U_G1CSCP1 G1CSCP1;
            U_G1CSCP2 G1CSCP2;
            U_G1CSCP3 G1CSCP3;
            U_G1CSCP4 G1CSCP4;

            G1CSCP0.u32 = RegRead(&(pVoReg->G1CSCP0.u32));
            G1CSCP0.bits.cscp00 = pstCscCoef->csc_coef00;
            G1CSCP0.bits.cscp01 = pstCscCoef->csc_coef01;
            RegWrite(&(pVoReg->G1CSCP0.u32), G1CSCP0.u32);

            G1CSCP1.u32 = RegRead(&(pVoReg->G1CSCP1.u32));
            G1CSCP1.bits.cscp02 = pstCscCoef->csc_coef02;
            G1CSCP1.bits.cscp10 = pstCscCoef->csc_coef10;
            RegWrite(&(pVoReg->G1CSCP1.u32), G1CSCP1.u32);

            G1CSCP2.u32 = RegRead(&(pVoReg->G1CSCP2.u32));
            G1CSCP2.bits.cscp11 = pstCscCoef->csc_coef11;
            G1CSCP2.bits.cscp12 = pstCscCoef->csc_coef12;
            RegWrite(&(pVoReg->G1CSCP2.u32), G1CSCP2.u32);

            G1CSCP3.u32 = RegRead(&(pVoReg->G1CSCP3.u32));
            G1CSCP3.bits.cscp20 = pstCscCoef->csc_coef20;
            G1CSCP3.bits.cscp21 = pstCscCoef->csc_coef21;
            RegWrite(&(pVoReg->G1CSCP3.u32), G1CSCP3.u32);

            G1CSCP4.u32 = RegRead(&(pVoReg->G1CSCP4.u32));
            G1CSCP4.bits.cscp22 = pstCscCoef->csc_coef22;
            RegWrite(&(pVoReg->G1CSCP4.u32), G1CSCP4.u32);

            break;
        }

        default:
        {
            break;
        }
   }

}


/***************************************************************************************
* func          : HAL_Layer_SetCscCoef
* description   : CNcomment: 设置CSC系数 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID HAL_Layer_SetCscCoef(HAL_DISP_LAYER_E enChan, IntfCscCoef_S *pstCscCoef)
{
     HAL_Layer_SetCscCoef_V300(enChan, pstCscCoef);
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
HI_VOID HAL_Layer_AddCscODcCoef(HAL_DISP_LAYER_E enLayer)
{
    U_VHDCSCODC VHDCSCODC;
    U_VSDCSCODC VSDCSCODC;
    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
            VHDCSCODC.u32 = RegRead(&(pVoReg->VHDCSCODC.u32));
            VHDCSCODC.bits.cscodc2 |= 1;
            RegWrite(&(pVoReg->VHDCSCODC.u32), VHDCSCODC.u32);
            break;
        case HAL_DISP_LAYER_VIDEO3:
            VSDCSCODC.u32 = RegRead(&(pVoReg->VSDCSCODC.u32));
            VSDCSCODC.bits.cscodc2 |= 1;
            RegWrite(&(pVoReg->VSDCSCODC.u32), VSDCSCODC.u32);
            break;
        default:
            break;
    }
}
#endif

/***************************************************************************************
* func          : HAL_Layer_SetCscDcCoef
* description   : CNcomment: 设置CSC系数 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID HAL_Layer_SetCscDcCoef(HAL_DISP_LAYER_E enLayer, IntfCscDcCoef_S *pstCscCoef)
{
    U_G0CSCIDC G0CSCIDC;
    U_G0CSCDC G0CSCDC;
    U_G0CSCODC G0CSCODC;
    U_G1CSCIDC G1CSCIDC;
    U_G1CSCODC G1CSCODC;
    U_VHDCSCIDC VHDCSCIDC;
    U_VHDCSCODC VHDCSCODC;
    //U_VADCSCIDC VADCSCIDC;
    //U_VADCSCODC VADCSCODC;
    U_VSDCSCIDC VSDCSCIDC;
    U_VSDCSCODC VSDCSCODC;


    //U_VEDCSCIDC VEDCSCIDC;
    //U_VEDCSCODC VEDCSCODC;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCSCIDC.u32 = RegRead(&(pVoReg->VHDCSCIDC.u32));
            VHDCSCIDC.bits.cscidc2 = pstCscCoef->csc_in_dc2;
            VHDCSCIDC.bits.cscidc1 = pstCscCoef->csc_in_dc1;
            VHDCSCIDC.bits.cscidc0 = pstCscCoef->csc_in_dc0;
            RegWrite(&(pVoReg->VHDCSCIDC.u32), VHDCSCIDC.u32);

            VHDCSCODC.u32 = RegRead(&(pVoReg->VHDCSCODC.u32));
            VHDCSCODC.bits.cscodc2 = pstCscCoef->csc_out_dc2;
            VHDCSCODC.bits.cscodc1 = pstCscCoef->csc_out_dc1;
            VHDCSCODC.bits.cscodc0 = pstCscCoef->csc_out_dc0;
            RegWrite(&(pVoReg->VHDCSCODC.u32), VHDCSCODC.u32);
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDCSCIDC.u32 = RegRead(&(pVoReg->VSDCSCIDC.u32));
            VSDCSCIDC.bits.cscidc2 = pstCscCoef->csc_in_dc2;
            VSDCSCIDC.bits.cscidc1 = pstCscCoef->csc_in_dc1;
            VSDCSCIDC.bits.cscidc0 = pstCscCoef->csc_in_dc0;
            RegWrite(&(pVoReg->VSDCSCIDC.u32), VSDCSCIDC.u32);

            VSDCSCODC.u32 = RegRead(&(pVoReg->VSDCSCODC.u32));
            VSDCSCODC.bits.cscodc2 = pstCscCoef->csc_out_dc2;
            VSDCSCODC.bits.cscodc1 = pstCscCoef->csc_out_dc1;
            VSDCSCODC.bits.cscodc0 = pstCscCoef->csc_out_dc0;
            RegWrite(&(pVoReg->VSDCSCODC.u32), VSDCSCODC.u32);
            break;
        }

        case HAL_DISP_LAYER_GFX0:
        {

            G0CSCIDC.u32 = RegRead(&(pVoReg->G0CSCIDC.u32));

            G0CSCIDC.bits.cscidc1 = pstCscCoef->csc_in_dc1;
            G0CSCIDC.bits.cscidc0 = pstCscCoef->csc_in_dc0;
            RegWrite(&(pVoReg->G0CSCIDC.u32), G0CSCIDC.u32);

            G0CSCODC.u32 = RegRead(&(pVoReg->G0CSCODC.u32));
            G0CSCODC.bits.cscodc1 = pstCscCoef->csc_out_dc1*4;
            G0CSCODC.bits.cscodc0 = pstCscCoef->csc_out_dc0*4;
            RegWrite(&(pVoReg->G0CSCODC.u32), G0CSCODC.u32);

            G0CSCDC.u32 = RegRead(&(pVoReg->G0CSCDC.u32));
            G0CSCDC.bits.cscidc2 = pstCscCoef->csc_in_dc2;
            G0CSCDC.bits.cscodc2 = pstCscCoef->csc_out_dc2*4;
            RegWrite(&(pVoReg->G0CSCDC.u32), G0CSCDC.u32);
            break;

        }
        case HAL_DISP_LAYER_WBC2:
        case HAL_DISP_LAYER_GFX1:
        {
            G1CSCIDC.u32 = RegRead(&(pVoReg->G1CSCIDC.u32));
            G1CSCIDC.bits.cscidc2 = pstCscCoef->csc_in_dc2;
            G1CSCIDC.bits.cscidc1 = pstCscCoef->csc_in_dc1;
            G1CSCIDC.bits.cscidc0 = pstCscCoef->csc_in_dc0;
            RegWrite(&(pVoReg->G1CSCIDC.u32), G1CSCIDC.u32);

            G1CSCODC.u32 = RegRead(&(pVoReg->G1CSCODC.u32));
            G1CSCODC.bits.cscodc2 = pstCscCoef->csc_out_dc2;
            G1CSCODC.bits.cscodc1 = pstCscCoef->csc_out_dc1;
            G1CSCODC.bits.cscodc0 = pstCscCoef->csc_out_dc0;
            RegWrite(&(pVoReg->G1CSCODC.u32), G1CSCODC.u32);
            break;
        }

        default:
        {
            HAL_PRINT("Error!,Worng Layer ID\n");
            break;
        }
    }
}


/***************************************************************************************
* func          : OPTM_HAL_SetLayerCsc
* description   : CNcomment: 设置layer CSC使能 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID OPTM_HAL_SetLayerCsc(HAL_DISP_LAYER_E enLayer, HI_U32 bCscEn)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDCSCIDC VHDCSCIDC;

            VHDCSCIDC.u32 = RegRead(&(pVoReg->VHDCSCIDC.u32));
            VHDCSCIDC.bits.csc_en = bCscEn;
            RegWrite(&(pVoReg->VHDCSCIDC.u32), VHDCSCIDC.u32);
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            U_VSDCSCIDC VSDCSCIDC;
            VSDCSCIDC.u32 = RegRead(&(pVoReg->VSDCSCIDC.u32));
            VSDCSCIDC.bits.csc_en = bCscEn;
            RegWrite(&(pVoReg->VSDCSCIDC.u32), VSDCSCIDC.u32);
            break;
        }

        case HAL_DISP_LAYER_GFX0:
        {
            U_G0CSCIDC G0CSCIDC;

	        G0CSCIDC.u32 = RegRead(&(pVoReg->G0CSCIDC.u32));
	        G0CSCIDC.bits.csc_en = bCscEn;
	        RegWrite(&(pVoReg->G0CSCIDC.u32), G0CSCIDC.u32);
            break;
        }
        case HAL_DISP_LAYER_WBC2:
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1CSCIDC G1CSCIDC;
            G1CSCIDC.u32 = RegRead(&(pVoReg->G1CSCIDC.u32));
            G1CSCIDC.bits.csc_en = bCscEn;
            RegWrite(&(pVoReg->G1CSCIDC.u32), G1CSCIDC.u32);
            break;
        }

        default:
        {
            HAL_PRINT("Error,Set graphic CSC select wrong layer ID\n");

            /* return ; */
        }
    }

    /* return ; */
}



/***************************************************************************************
* func          : HAL_DISP_SetLayerInRect
* description   : CNcomment: 设置图层输入分辨率 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID  HAL_DISP_SetLayerInRect(HAL_DISP_LAYER_E enLayer, HI_RECT_S stRect)
{
    switch (enLayer)
    {
	    case HAL_DISP_LAYER_VIDEO1:
	    {
	        U_VHDIRESO VHDIRESO;
	        /* U_VHDZMEIRESO VHDZMEIRESO; */
	        /* input width and height */
	        VHDIRESO.u32     = RegRead(&(pVoReg->VHDIRESO.u32));
	        VHDIRESO.bits.iw = stRect.s32Width- 1;
	        VHDIRESO.bits.ih = stRect.s32Height- 1;
	        RegWrite(&(pVoReg->VHDIRESO.u32), VHDIRESO.u32);
	        break;
	    }
	    case HAL_DISP_LAYER_VIDEO3:
	    {
	        U_VSDIRESO VSDIRESO;
	        /* input width and height */
	        VSDIRESO.u32     = RegRead(&(pVoReg->VSDIRESO.u32));
	        VSDIRESO.bits.iw = stRect.s32Width - 1;
	        VSDIRESO.bits.ih = stRect.s32Height - 1;
	        RegWrite(&(pVoReg->VSDIRESO.u32), VSDIRESO.u32);
	        break;
	    }

	    case HAL_DISP_LAYER_GFX0:
	    {
	        U_G0IRESO G0IRESO;
	        U_G0SFPOS G0SFPOS;

	        /* input width and height */
	        G0IRESO.u32 = RegRead(&(pVoReg->G0IRESO.u32));
	        G0IRESO.bits.iw = stRect.s32Width - 1;
	        G0IRESO.bits.ih = stRect.s32Height - 1;
	        RegWrite(&(pVoReg->G0IRESO.u32), G0IRESO.u32);

	        /* Read source position*/
	        G0SFPOS.u32 = RegRead(&(pVoReg->G0SFPOS.u32));
	        G0SFPOS.bits.src_xfpos = stRect.s32X;

	        /* G0SFPOS.bits.src_yfpos = stRect.s32Y; */
	        RegWrite(&(pVoReg->G0SFPOS.u32), G0SFPOS.u32);
	        break;
	    }
	    case HAL_DISP_LAYER_GFX1:
	    {
	        U_G1IRESO G1IRESO;
	        U_G1SFPOS G1SFPOS;

	        /* input width and height */
	        G1IRESO.u32 = RegRead(&(pVoReg->G1IRESO.u32));
	        G1IRESO.bits.iw = stRect.s32Width - 1;
	        G1IRESO.bits.ih = stRect.s32Height - 1;
	        RegWrite(&(pVoReg->G1IRESO.u32), G1IRESO.u32);

	        /* Read source position*/
	        G1SFPOS.u32 = RegRead(&(pVoReg->G1SFPOS.u32));
	        G1SFPOS.bits.src_xfpos = stRect.s32X;

	        /* G1SFPOS.bits.src_yfpos = stRect.s32Y; */
	        RegWrite(&(pVoReg->G1SFPOS.u32), G1SFPOS.u32);
	        break;
	    }
	    case HAL_DISP_LAYER_GFX2:
	    {
	    	/**
	    	 ** input width and height
	    	 **/
	        U_ZONE1RESO ZONE1RESO;
	        ZONE1RESO.u32 = RegRead(&(pVoReg->ZONE1RESO.u32));
	        ZONE1RESO.bits.iw = stRect.s32Width - 1;
	        ZONE1RESO.bits.ih = stRect.s32Height - 1;
	        RegWrite(&(pVoReg->ZONE1RESO.u32), ZONE1RESO.u32);

	        break;
	    }
	    case HAL_DISP_LAYER_GFX3:
	    {
	        U_ZONE2RESO ZONE2RESO;
	        //U_ZONE2FPOS ZONE2FPOS;

	        /* input width and height */
	        ZONE2RESO.u32 = RegRead(&(pVoReg->ZONE2RESO.u32));
	        ZONE2RESO.bits.iw = stRect.s32Width - 1;
	        ZONE2RESO.bits.ih = stRect.s32Height - 1;
	        RegWrite(&(pVoReg->ZONE2RESO.u32), ZONE2RESO.u32);

	        break;
	    }
	    default:
	    {
	        HAL_PRINT("Error, Set rect select wrong layer ID\n");
	        /* return ; */
	    }
    }

    /* return ; */
}


/***************************************************************************************
* func          : HAL_DISP_SetLayerOutRect
* description   : CNcomment: 设置输出分辨率 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID  HAL_DISP_SetLayerOutRect(HAL_DISP_LAYER_E enLayer, HI_RECT_S stRect)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDVFPOS VHDVFPOS;
            U_VHDVLPOS VHDVLPOS;

            VHDVFPOS.u32 = RegRead(&(pVoReg->VHDVFPOS.u32));
            VHDVFPOS.bits.video_xfpos = stRect.s32X;
            VHDVFPOS.bits.video_yfpos = stRect.s32Y;
            RegWrite(&(pVoReg->VHDVFPOS.u32), VHDVFPOS.u32);

            /* output width and height */
            VHDVLPOS.u32 = RegRead(&(pVoReg->VHDVLPOS.u32));
            VHDVLPOS.bits.video_xlpos = stRect.s32X + stRect.s32Width- 1;
            VHDVLPOS.bits.video_ylpos = stRect.s32Y + stRect.s32Height - 1;
            RegWrite(&(pVoReg->VHDVLPOS.u32), VHDVLPOS.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            U_VSDVFPOS VSDVFPOS;
            U_VSDVLPOS VSDVLPOS;

            VSDVFPOS.u32 = RegRead(&(pVoReg->VSDVFPOS.u32));
            VSDVFPOS.bits.video_xfpos = stRect.s32X;
            VSDVFPOS.bits.video_yfpos = stRect.s32Y;
            RegWrite(&(pVoReg->VSDVFPOS.u32), VSDVFPOS.u32);

            /* output width and height */
            VSDVLPOS.u32 = RegRead(&(pVoReg->VSDVLPOS.u32));
            VSDVLPOS.bits.video_xlpos = stRect.s32X + stRect.s32Width - 1;
            VSDVLPOS.bits.video_ylpos = stRect.s32Y + stRect.s32Height - 1;
            RegWrite(&(pVoReg->VSDVLPOS.u32), VSDVLPOS.u32);
            break;
        }

	    case HAL_DISP_LAYER_GFX0:
	    {
	        U_G0ORESO G0ORESO;
	        U_G0DFPOS G0DFPOS;
	        U_G0DLPOS G0DLPOS;

	        /* output width and height */
	        G0ORESO.u32 = RegRead(&(pVoReg->G0ORESO.u32));
	        G0ORESO.bits.ow = stRect.s32Width - 1;
	        G0ORESO.bits.oh = stRect.s32Height - 1;
	        RegWrite(&(pVoReg->G0ORESO.u32), G0ORESO.u32);

	        /* display position */
	        G0DFPOS.u32 = RegRead(&(pVoReg->G0DFPOS.u32));
	        G0DFPOS.bits.disp_xfpos = stRect.s32X;
	        G0DFPOS.bits.disp_yfpos = stRect.s32Y;
	        RegWrite(&(pVoReg->G0DFPOS.u32), G0DFPOS.u32);

	        G0DLPOS.u32 = RegRead(&(pVoReg->G0DLPOS.u32));
	        G0DLPOS.bits.disp_xlpos = stRect.s32X + stRect.s32Width - 1;
	        G0DLPOS.bits.disp_ylpos = stRect.s32Y + stRect.s32Height - 1;
	        RegWrite(&(pVoReg->G0DLPOS.u32), G0DLPOS.u32);

	        break;
	    }
	    case HAL_DISP_LAYER_GFX1:
	    {
	        U_G1ORESO G1ORESO;
	        U_G1DFPOS G1DFPOS;
	        U_G1DLPOS G1DLPOS;

	        /* output width and height */
	        G1ORESO.u32 = RegRead(&(pVoReg->G1ORESO.u32));
	        G1ORESO.bits.ow = stRect.s32Width - 1;
	        G1ORESO.bits.oh = stRect.s32Height - 1;
	        RegWrite(&(pVoReg->G1ORESO.u32), G1ORESO.u32);

	        /* display position */
	        G1DFPOS.u32 = RegRead(&(pVoReg->G1DFPOS.u32));
	        G1DFPOS.bits.disp_xfpos = stRect.s32X;
	        G1DFPOS.bits.disp_yfpos = stRect.s32Y;
	        RegWrite(&(pVoReg->G1DFPOS.u32), G1DFPOS.u32);

	        G1DLPOS.u32 = RegRead(&(pVoReg->G1DLPOS.u32));
	        G1DLPOS.bits.disp_xlpos = stRect.s32X + stRect.s32Width - 1;
	        G1DLPOS.bits.disp_ylpos = stRect.s32Y + stRect.s32Height - 1;
	        RegWrite(&(pVoReg->G1DLPOS.u32), G1DLPOS.u32);

	        break;
	    }
	    case HAL_DISP_LAYER_GFX2:
	    {
	        U_ZONE1DFPOS ZONE1DFPOS;
	        U_ZONE1DLPOS ZONE1DLPOS;

	        /* display start position */
	        ZONE1DFPOS.u32 = RegRead(&(pVoReg->ZONE1DFPOS.u32));
	        ZONE1DFPOS.bits.disp_xfpos = stRect.s32X;
	        ZONE1DFPOS.bits.disp_yfpos = stRect.s32Y;
	        RegWrite(&(pVoReg->ZONE1DFPOS.u32), ZONE1DFPOS.u32);

			/* display end position */
	        ZONE1DLPOS.u32 = RegRead(&(pVoReg->ZONE1DLPOS.u32));
	        ZONE1DLPOS.bits.disp_xlpos = stRect.s32X + stRect.s32Width - 1;
	        ZONE1DLPOS.bits.disp_ylpos = stRect.s32Y + stRect.s32Height - 1;
	        RegWrite(&(pVoReg->ZONE1DLPOS.u32), ZONE1DLPOS.u32);

	        break;
	    }
	    case HAL_DISP_LAYER_GFX3:
	    {
	        U_ZONE2RESO  ZONE2RESO;
	        U_ZONE2DFPOS ZONE2DFPOS;
	        U_ZONE2DLPOS ZONE2DLPOS;

	        /* output width and height */
	        ZONE2RESO.u32 = RegRead(&(pVoReg->ZONE2RESO.u32));

	        /* display position */
	        ZONE2DFPOS.u32 = RegRead(&(pVoReg->ZONE2DFPOS.u32));
	        ZONE2DFPOS.bits.disp_xfpos = stRect.s32X;
	        ZONE2DFPOS.bits.disp_yfpos = stRect.s32Y;
	        RegWrite(&(pVoReg->ZONE2DFPOS.u32), ZONE2DFPOS.u32);

	        ZONE2DLPOS.u32 = RegRead(&(pVoReg->ZONE2DLPOS.u32));
	        ZONE2DLPOS.bits.disp_xlpos = stRect.s32X + stRect.s32Width - 1;
	        ZONE2DLPOS.bits.disp_ylpos = stRect.s32Y + stRect.s32Height - 1;
	        RegWrite(&(pVoReg->ZONE2DLPOS.u32), ZONE2DLPOS.u32);

	        break;
	    }

	    case HAL_DISP_LAYER_WBC0:
	    {
	        U_WBC0ORESO WBC0ORESO;

	        /* output width and height */
	        WBC0ORESO.u32 = RegRead(&(pVoReg->WBC0ORESO.u32));
	        WBC0ORESO.bits.ow = stRect.s32Width - 1;
	        WBC0ORESO.bits.oh = stRect.s32Height - 1;
	        RegWrite(&(pVoReg->WBC0ORESO.u32), WBC0ORESO.u32);

	        break;
	    }
	    case HAL_DISP_LAYER_WBC2:
	    {
	        U_WBC2ORESO WBC2ORESO;

	        /* output width and height */
	        WBC2ORESO.u32 = RegRead(&(pVoReg->WBC2ORESO.u32));
	        WBC2ORESO.bits.ow = stRect.s32Width - 1;
	        WBC2ORESO.bits.oh = stRect.s32Height - 1;
	        RegWrite(&(pVoReg->WBC2ORESO.u32), WBC2ORESO.u32);

	        break;
	    }
	     case HAL_DISP_LAYER_WBC3:
	     {
	            U_WBC3ORESO WBC3ORESO;

	            /* output width and height */
	            WBC3ORESO.u32 = RegRead(&(pVoReg->WBC3ORESO.u32));
	            WBC3ORESO.bits.ow = stRect.s32Width - 1;
	            WBC3ORESO.bits.oh = stRect.s32Height - 1;
	            RegWrite(&(pVoReg->WBC3ORESO.u32), WBC3ORESO.u32);

	            break;
	     }
	     default:
	     {
	        HAL_PRINT("Error, Set rect select wrong layer ID\n");

	        /* return ; */
	     }
    }

    /* return ; */
}



/* set DLPos window */
HI_VOID  HAL_DISP_SetLayerDLPos(HAL_DISP_LAYER_E enLayer, HI_S32 s32X, HI_S32 s32Y)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0DLPOS G0DLPOS;

            /* display position */
            G0DLPOS.u32 = RegRead(&(pVoReg->G0DLPOS.u32));
            G0DLPOS.bits.disp_xlpos = s32X - 1;
            G0DLPOS.bits.disp_ylpos = s32Y - 1;
            RegWrite(&(pVoReg->G0DLPOS.u32), G0DLPOS.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1DLPOS G1DLPOS;

            /* display position */
            G1DLPOS.u32 = RegRead(&(pVoReg->G1DLPOS.u32));
            G1DLPOS.bits.disp_xlpos = s32X - 1;
            G1DLPOS.bits.disp_ylpos = s32Y - 1;
            RegWrite(&(pVoReg->G1DLPOS.u32), G1DLPOS.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX2:
        {
            U_ZONE1DLPOS ZONE1DLPOS;

            /* display position */
            ZONE1DLPOS.u32 = RegRead(&(pVoReg->ZONE1DLPOS.u32));
            ZONE1DLPOS.bits.disp_xlpos = s32X - 1;
            ZONE1DLPOS.bits.disp_ylpos = s32Y - 1;
            RegWrite(&(pVoReg->ZONE1DLPOS.u32), ZONE1DLPOS.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX3:
        {
            U_ZONE2DLPOS ZONE2DLPOS;

            /* display position */
            ZONE2DLPOS.u32 = RegRead(&(pVoReg->ZONE2DLPOS.u32));
            ZONE2DLPOS.bits.disp_xlpos = s32X - 1;
            ZONE2DLPOS.bits.disp_ylpos = s32Y - 1;
            RegWrite(&(pVoReg->ZONE2DLPOS.u32), ZONE2DLPOS.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error, Set rect display position wrong layer ID\n");

            /* return ; */
        }
    }

    /* return ; */
}


/***************************************************************************************
* func          : HAL_DISP_SetLayerDFPos
* description   : CNcomment: 设置在屏幕中显示的起始位置 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID  HAL_DISP_SetLayerDFPos(HAL_DISP_LAYER_E enLayer, HI_S32 s32X, HI_S32 s32Y)
{
    switch (enLayer){
        case HAL_DISP_LAYER_GFX2:
        {
        	/* display start position */
            U_ZONE1DFPOS ZONE1DFPOS;
            ZONE1DFPOS.u32             = RegRead(&(pVoReg->ZONE1DFPOS.u32));
            ZONE1DFPOS.bits.disp_xfpos = s32X;
            ZONE1DFPOS.bits.disp_yfpos = s32Y;
            RegWrite(&(pVoReg->ZONE1DFPOS.u32), ZONE1DFPOS.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX3:
        {
            U_ZONE2DFPOS ZONE2DFPOS;
            ZONE2DFPOS.u32 = RegRead(&(pVoReg->ZONE2DFPOS.u32));
            ZONE2DFPOS.bits.disp_xfpos = s32X;
            ZONE2DFPOS.bits.disp_yfpos = s32Y;
            RegWrite(&(pVoReg->ZONE2DFPOS.u32), ZONE2DFPOS.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error, Set rect display position wrong layer ID\n");
        }
    }
}


/* set the window of video-disp region */
HI_VOID HAL_DISP_SetLayerDispRect(HAL_DISP_LAYER_E enLayer, HI_RECT_S stRect)
{
    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDDFPOS VHDDFPOS;
            U_VHDDLPOS VHDDLPOS;

            /* display position */
            VHDDFPOS.u32 = RegRead(&(pVoReg->VHDDFPOS.u32));
            VHDDFPOS.bits.disp_xfpos = stRect.s32X;
            VHDDFPOS.bits.disp_yfpos = stRect.s32Y;
            RegWrite(&(pVoReg->VHDDFPOS.u32), VHDDFPOS.u32);

            VHDDLPOS.u32 = RegRead(&(pVoReg->VHDDLPOS.u32));
            VHDDLPOS.bits.disp_xlpos = stRect.s32X +stRect.s32Width -1;
            VHDDLPOS.bits.disp_ylpos = stRect.s32Y + stRect.s32Height -1;
            RegWrite(&(pVoReg->VHDDLPOS.u32), VHDDLPOS.u32);
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            U_VSDDFPOS VSDDFPOS;
            U_VSDDLPOS    VSDDLPOS;

            /* display position */
            VSDDFPOS.u32 = RegRead(&(pVoReg->VSDDFPOS.u32));
            VSDDFPOS.bits.disp_xfpos = stRect.s32X;
            VSDDFPOS.bits.disp_yfpos = stRect.s32Y;
            RegWrite(&(pVoReg->VSDDFPOS.u32), VSDDFPOS.u32);

            VSDDLPOS.u32 = RegRead(&(pVoReg->VSDDLPOS.u32));
            VSDDLPOS.bits.disp_xlpos = stRect.s32X +stRect.s32Width -1;
            VSDDLPOS.bits.disp_ylpos = stRect.s32Y + stRect.s32Height -1;
            RegWrite(&(pVoReg->VSDDLPOS.u32), VSDDLPOS.u32);

            break;
        }

        #if 0
        case HAL_DISP_LAYER_WBC0:
        {
            U_WBC0ORESO WBC0ORESO;

            /* output width and height */
            WBC0ORESO.u32 = RegRead(&(pVoReg->WBC0ORESO.u32));
            WBC0ORESO.bits.ow = stRect.s32Width- 1;
            WBC0ORESO.bits.oh = stRect.s32Height - 1;
            RegWrite(&(pVoReg->WBC0ORESO.u32), WBC0ORESO.u32);

            break;
        }
        #endif
        default:
        {
            HAL_PRINT("Error, Set rect select wrong layer ID\n");
            /*  return ; */
        }
    }

          /* return ; */
}

HI_VOID Vou_SetGammaEnable(HAL_DISP_OUTPUTCHANNEL_E enChn, HI_U32 uGmmEn)
{
#ifdef HI_DISP_GAMMA_SUPPORT
    U_DHDCTRL DHDCTRL;

    if(enChn == HAL_DISP_CHANNEL_DHD)
    {
        /* Set Vou Dhd Channel Gamma Correct Enable */
        DHDCTRL.u32 = RegRead(&(pVoReg->DHDCTRL.u32));
        DHDCTRL.bits.gmmmode = 1;
        DHDCTRL.bits.gmmen = uGmmEn;
        RegWrite(&(pVoReg->DHDCTRL.u32), DHDCTRL.u32);
    }
    else
    {
        HAL_PRINT("Error!Vou_SetGammaEnable() Select Wrong Channel ID\n");
        return ;
    }
#endif

    return ;
}



HI_VOID Vou_SetGammaCoef(HAL_DISP_OUTPUTCHANNEL_E enChn, HI_U32 *upTable)
{
#ifdef HI_DISP_GAMMA_SUPPORT
    U_DHDGAMMAN DHDGAMMAN[33];
    HI_U32 ii = 0;

    memset(DHDGAMMAN,0,sizeof(DHDGAMMAN));
    switch(enChn)
    {
        case HAL_DISP_CHANNEL_DHD:
        {
            for (ii = 0; ii < 33; ii++)
            {
                DHDGAMMAN[ii].bits.gamma_datarn = upTable[ii*3 + 33*0];
                DHDGAMMAN[ii].bits.gamma_datagn = upTable[ii*3 + 33*1];
                DHDGAMMAN[ii].bits.gamma_databn = upTable[ii*3 + 33*2];
                RegWrite(&(pVoReg->DHDGAMMAN[ii].u32), DHDGAMMAN[ii].u32);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetGammaCoef() Select Wrong Channel ID!\n");
            break;
        }
    }
#endif
    return ;
}

HI_VOID Vou_SetGammaAddr(HAL_DISP_OUTPUTCHANNEL_E enChn, HI_U32 uGmmAddr)
{
#ifdef HI_DISP_GAMMA_SUPPORT
    U_DHDGAMMAAD DHDGAMMAAD;

    if(enChn == HAL_DISP_CHANNEL_DHD)
    {
        /*  Set Vou Dhd Channel Gamma Correct Enable */
        DHDGAMMAAD.u32 = uGmmAddr;
        RegWrite(&(pVoReg->DHDGAMMAAD.u32), DHDGAMMAAD.u32);
    }
    else
    {
        HAL_PRINT("Error! Vou_SetGammaAddr() Select Wrong Channel ID!\n");
        return;
    }
#endif

    return;
}

HI_VOID  HAL_DISP_SetIntMask(HI_U32 u32MaskEn)
{
    U_VOINTMSK VOINTMSK;

    /* Dispaly interrupt mask enable */
    VOINTMSK.u32 = RegRead(&(pVoReg->VOINTMSK.u32));
    VOINTMSK.u32 = VOINTMSK.u32 | u32MaskEn;
    RegWrite(&(pVoReg->VOINTMSK.u32), VOINTMSK.u32);

    return ;
}

HI_VOID  HAL_DISP_DisIntMask(HI_U32 u32MaskEn)
{
    U_VOINTMSK VOINTMSK;

    /* Dispaly interrupt mask enable */
    VOINTMSK.u32 = RegRead(&(pVoReg->VOINTMSK.u32));
    VOINTMSK.u32 = VOINTMSK.u32 & (~u32MaskEn);
    RegWrite(&(pVoReg->VOINTMSK.u32), VOINTMSK.u32);

    return ;
}


/** open interrupts */
HI_VOID HAL_DISP_SetIntEnable(HI_U32 u32MaskEn)
{
    HAL_DISP_SetIntMask(u32MaskEn);

    if (HAL_DISP_INTMSK_WTEINT == u32MaskEn)
    {
    #if 0
        U_WBC0CTRL WBC0CTRL;

        WBC0CTRL.u32 = RegRead(&(pVoReg->WBC0CTRL.u32));
        WBC0CTRL.bits.wbc0_teint_en = 1;
        RegWrite(&(pVoReg->WBC0CTRL.u32), WBC0CTRL.u32);
        #endif
    }
    else if (HAL_DISP_INTMSK_VTEINT == u32MaskEn)
    {
        /*not support WBC1*/
        #if 0

        U_VHDCTRL VHDCTRL;

        VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
        VHDCTRL.bits.wbc1_int_en = 1;
        RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);
        #endif
    }
}

/* close interrupts */
HI_VOID HAL_DISP_SetIntDisable(HI_U32 u32MaskEn)
{
    HAL_DISP_DisIntMask(u32MaskEn);

    if (HAL_DISP_INTMSK_WTEINT == u32MaskEn)
    {
    #if 0
          U_WBC0CTRL WBC0CTRL;

        WBC0CTRL.u32 = RegRead(&(pVoReg->WBC0CTRL.u32));
        WBC0CTRL.bits.wbc0_teint_en = 0;
        RegWrite(&(pVoReg->WBC0CTRL.u32), WBC0CTRL.u32);
        #endif
    }
    else if (HAL_DISP_INTMSK_VTEINT == u32MaskEn)
    {
        #if 0
        U_VHDCTRL VHDCTRL;

        VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
        VHDCTRL.bits.wbc1_int_en = 0;
        RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);
        #endif
    }
}

/* get interrupt status */
HI_U32 HAL_DISP_GetIntSta(HI_U32 u32IntMsk)
{
    U_VOMSKINTSTA VOMSKINTSTA;

    /* read interrupt status */
    VOMSKINTSTA.u32 = RegRead(&(pVoReg->VOMSKINTSTA.u32));

    return (VOMSKINTSTA.u32 & u32IntMsk);
}

/* clear interrupt status */
HI_VOID  HAL_DISP_ClearIntSta(HI_U32 u32IntMsk)
{
    /* read interrupt status */
    RegWrite(&(pVoReg->VOMSKINTSTA.u32), u32IntMsk);
}

/* set clip enable of disp channel */
HI_VOID  HAL_DISP_SetIntfClipEna(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bEnable)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
     U_DHDCTRL DHDCTRL;

        DHDCTRL.u32 = RegRead(&(pVoReg->DHDCTRL.u32));
        DHDCTRL.bits.clipen = bEnable;
        RegWrite(&(pVoReg->DHDCTRL.u32), DHDCTRL.u32);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
     U_DSDCTRL DSDCTRL;

        DSDCTRL.u32 = RegRead(&(pVoReg->DSDCTRL.u32));
        DSDCTRL.bits.clipen = bEnable;
        RegWrite(&(pVoReg->DSDCTRL.u32), DSDCTRL.u32);
    }
    else
    {
        HAL_PRINT("Error,Set clip select wrong channel ID\n");
    }
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
/* set coefficients for vertical blanking */
HI_VOID HAL_DISP_SetVSync(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 VFB, HI_U32 VBB, HI_U32 VACT)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDVSYNC DHDVSYNC;

        /* Config VHD interface veritical timming */
        DHDVSYNC.u32 = RegRead(&(pVoReg->DHDVSYNC.u32));
        DHDVSYNC.bits.vact = VACT;
        DHDVSYNC.bits.vbb = VBB;
        DHDVSYNC.bits.vfb = VFB;
        RegWrite(&(pVoReg->DHDVSYNC.u32), DHDVSYNC.u32);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDVSYNC DSDVSYNC;

        /* Config VAD interface veritical timming */
        DSDVSYNC.u32 = RegRead(&(pVoReg->DSDVSYNC.u32));
        DSDVSYNC.bits.vact = VACT;
        DSDVSYNC.bits.vbb = VBB;
        DSDVSYNC.bits.vfb = VFB;
        RegWrite(&(pVoReg->DSDVSYNC.u32), DSDVSYNC.u32);
    }
    else
    {
        HAL_PRINT("Wrong CHANNEL ID\n");
    }
}

/* set coefficients for vertical blanking of bottom field */
HI_VOID HAL_DISP_SetVSyncPlus(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 BVFB, HI_U32 BVBB, HI_U32 BVACT)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDVPLUS DHDVPLUS;

        /* Config VHD interface veritical bottom timming,no use in progressive mode */
        DHDVPLUS.u32 = RegRead(&(pVoReg->DHDVPLUS.u32));
        DHDVPLUS.bits.bvact = BVACT;
        DHDVPLUS.bits.bvbb = BVBB;
        DHDVPLUS.bits.bvfb = BVFB;
        RegWrite(&(pVoReg->DHDVPLUS.u32), DHDVPLUS.u32);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDVPLUS DSDVPLUS;

        /* Config VAD interface veritical bottom timming,no use in progressive mode */
        DSDVPLUS.u32 = RegRead(&(pVoReg->DSDVPLUS.u32));
        DSDVPLUS.bits.bvact = BVACT;
        DSDVPLUS.bits.bvbb = BVBB;
        DSDVPLUS.bits.bvfb = BVFB;
        RegWrite(&(pVoReg->DSDVPLUS.u32), DSDVPLUS.u32);
    }
    else
    {
        HAL_PRINT("Wrong CHANNEL ID\n");
    }
}

/** set coefficients for horizontal blanking */
HI_VOID HAL_DISP_SetHSync(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 HFB, HI_U32 HBB, HI_U32 HACT)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDHSYNC1 DHDHSYNC1;
        U_DHDHSYNC2 DHDHSYNC2;

        /* Config VHD interface horizontal timming */
        DHDHSYNC1.u32 = RegRead(&(pVoReg->DHDHSYNC1.u32));
        DHDHSYNC2.u32 = RegRead(&(pVoReg->DHDHSYNC2.u32));
        DHDHSYNC1.bits.hact = HACT;
        DHDHSYNC1.bits.hbb = HBB;
        DHDHSYNC2.bits.hfb = HFB;
        RegWrite(&(pVoReg->DHDHSYNC1.u32), DHDHSYNC1.u32);
        RegWrite(&(pVoReg->DHDHSYNC2.u32), DHDHSYNC2.u32);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDHSYNC1 DSDHSYNC1;
        U_DSDHSYNC2 DSDHSYNC2;

        /* Config VAD interface horizontal timming */
        DSDHSYNC1.u32 = RegRead(&(pVoReg->DSDHSYNC1.u32));
        DSDHSYNC2.u32 = RegRead(&(pVoReg->DSDHSYNC2.u32));
        DSDHSYNC1.bits.hact = HACT;
        DSDHSYNC1.bits.hbb = HBB;
        DSDHSYNC2.bits.hfb = HFB;
        RegWrite(&(pVoReg->DSDHSYNC1.u32), DSDHSYNC1.u32);
        RegWrite(&(pVoReg->DSDHSYNC2.u32), DSDHSYNC2.u32);
    }
    else
    {
        HAL_PRINT("Wrong CHANNEL ID\n");
    }
}


/* set the width of impulse */
HI_VOID  HAL_DISP_SetPlusWidth(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 HPW, HI_U32 VPW)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDPWR DHDPWR;

        DHDPWR.u32 = RegRead(&(pVoReg->DHDPWR.u32));
        DHDPWR.bits.hpw = HPW;
        DHDPWR.bits.vpw = VPW;
        RegWrite(&(pVoReg->DHDPWR.u32), DHDPWR.u32);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDPWR DSDPWR;

        DSDPWR.u32 = RegRead(&(pVoReg->DSDPWR.u32));
        DSDPWR.bits.hpw = HPW;
        DSDPWR.bits.vpw = VPW;
        RegWrite(&(pVoReg->DSDPWR.u32), DSDPWR.u32);
    }
    else
    {
        HAL_PRINT("Wrong CHANNEL ID\n");
    }
}

/* set the phase of impulse */
HI_VOID HAL_DISP_SetPlusPhase(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 IHS, HI_U32 IVS, HI_U32 IDV)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDCTRL DHDCTRL;

        DHDCTRL.u32 = RegRead(&(pVoReg->DHDCTRL.u32));
        DHDCTRL.bits.ihs = IHS;
        DHDCTRL.bits.ivs = IVS;
        DHDCTRL.bits.idv = IDV;
        RegWrite(&(pVoReg->DHDCTRL.u32), DHDCTRL.u32);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDCTRL DSDCTRL;

        DSDCTRL.u32 = RegRead(&(pVoReg->DSDCTRL.u32));
        DSDCTRL.bits.ihs = IHS;
        DSDCTRL.bits.ivs = IVS;
        DSDCTRL.bits.idv = IDV;
        RegWrite(&(pVoReg->DSDCTRL.u32), DSDCTRL.u32);
    }
    else
    {
        HAL_PRINT("Wrong CHANNEL ID\n");
    }
}
#endif


/***************************************************************************************
* func          : OPTM_HAL_GetLayerEnable
* description   : CNcomment: 是否使能 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_U32 OPTM_HAL_GetLayerEnable(HAL_DISP_LAYER_E enLayer)
{
    HI_U32 u32Enable = 0;

    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDCTRL VHDCTRL;

            VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
            u32Enable = VHDCTRL.bits.surface_en;
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            U_VSDCTRL VSDCTRL;

            VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
            u32Enable =  VSDCTRL.bits.surface_en;
            break;
        }

        case HAL_DISP_LAYER_GFX0:
        {
            U_G0CTRL G0CTRL;
            G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
            u32Enable = G0CTRL.bits.surface_en;
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1CTRL G1CTRL;
            G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
            u32Enable = G1CTRL.bits.surface_en;
            break;
        }
        case HAL_DISP_LAYER_GFX2:
        {
            U_G2CTRL G2CTRL;
            G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
            u32Enable = (G2CTRL.bits.surface_en & G2CTRL.bits.zone1_en);
            break;
        }
        case HAL_DISP_LAYER_GFX3:
        {
            U_G2CTRL G2CTRL;
            G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
            u32Enable = (G2CTRL.bits.surface_en & G2CTRL.bits.zone2_en);
            break;
        }
        default:
        {
            HAL_PRINT("Error,Wrong layer ID\n");
            /* return ; */
        }
    }

    return u32Enable;

}

/***************************************************************************************
* func          : OPTM_HAL_GetGfxAddr
* description   : CNcomment: 显示地址 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_U32 OPTM_HAL_GetGfxAddr(HAL_DISP_LAYER_E enLayer)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            return RegRead(&(pVoReg->G0ADDR.u32));
        }
        case HAL_DISP_LAYER_GFX1:
        {
             return RegRead(&(pVoReg->G1ADDR.u32));
        }
		case HAL_DISP_LAYER_GFX2:
        {
			return RegRead(&(pVoReg->ZONE1ADDR.u32));
        }
        default:
        {
            HAL_PRINT("Error, Get graphic layer stride select wrong layer ID\n");
            return 0;
        }
    }
}

/***************************************************************************************
* func          : OPTM_HAL_GetGfxStride
* description   : CNcomment: 获取stride CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_U32 OPTM_HAL_GetGfxStride(HAL_DISP_LAYER_E enLayer)
{
	/** 低16bit**/
    switch (enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            return (RegRead(&(pVoReg->G0STRIDE.u32)) & 0xffffuL);
        }
        case HAL_DISP_LAYER_GFX1:
        {
            return (RegRead(&(pVoReg->G1STRIDE.u32)) & 0xffffuL);
        }
		case HAL_DISP_LAYER_GFX2:
        {
             return (RegRead(&(pVoReg->ZONE1STRIDE.u32)) & 0xffffuL);
        }
		case HAL_DISP_LAYER_GFX3:
        {
             return (RegRead(&(pVoReg->ZONE2ADDR.u32)) & 0xffffuL);
        }
        default:
        {
            HAL_PRINT("Error,Set graphic layer stride select wrong layer ID\n");
            return 0;
        }
    }
}


/***************************************************************************************
* func          : OPTM_HAL_GetLayerDataFmt
* description   : CNcomment: 从寄存器中获取像素格式 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_U32  OPTM_HAL_GetLayerDataFmt(HAL_DISP_LAYER_E enLayer)
{
    HI_U32  U32Fmt = 0;

    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDCTRL VHDCTRL;

            VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
            U32Fmt = VHDCTRL.bits.ifmt;
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            U_VSDCTRL VSDCTRL;

            VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
            U32Fmt = VSDCTRL.bits.ifmt;
            break;
        }

        case HAL_DISP_LAYER_GFX0:
        {
            U_G0CTRL G0CTRL;

            G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
            U32Fmt = G0CTRL.bits.ifmt;
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1CTRL G1CTRL;

            G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
            U32Fmt = G1CTRL.bits.ifmt;
            break;
        }
		case HAL_DISP_LAYER_GFX2:
		case HAL_DISP_LAYER_GFX3:
        {
            U_G2CTRL G2CTRL;

            G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
            U32Fmt = G2CTRL.bits.ifmt;
            break;
        }
        default:
        {
            HAL_PRINT("Error, Data format select wrong layer ID\n");
            /* return ; */
        }
    }

    return U32Fmt;
}


/***************************************************************************************
* func          : OPTM_HAL_GetGfxPreMult
* description   : CNcomment:是否预乘 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_U32 OPTM_HAL_GetGfxPreMult(HAL_DISP_LAYER_E enLayer)
{
    HI_U32 u32Enable;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0CBMPARA G0CBMPARA;

            G0CBMPARA.u32 = RegRead(&(pVoReg->G0CBMPARA.u32));
            u32Enable = G0CBMPARA.bits.premult_en;
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1CBMPARA G1CBMPARA;
            G1CBMPARA.u32 = RegRead(&(pVoReg->G1CBMPARA.u32));
            u32Enable = G1CBMPARA.bits.premult_en;
            break;
        }
		case HAL_DISP_LAYER_GFX2:
		case HAL_DISP_LAYER_GFX3:
        {
            U_G2CBMPARA G2CBMPARA;
            G2CBMPARA.u32 = RegRead(&(pVoReg->G2CBMPARA.u32));
            u32Enable = G2CBMPARA.bits.premult_en;
            break;
        }
        default:
        {
            u32Enable = 0;
        }
    }

    return u32Enable;

}

/***************************************************************************************
* func          : OPTM_HAL_GetGfxPalpha
* description   : CNcomment:获取图层alpha CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID OPTM_HAL_GetGfxPalpha(HAL_DISP_LAYER_E enLayer, \
                                             HI_U32 *pbAlphaEn,          \
                                             HI_U32 *pbArange,           \
                                             HI_U8 *pu8Alpha0,           \
                                             HI_U8 *pu8Alpha1)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0CBMPARA G0CBMPARA;
            U_G0CKEYMIN G0CKEYMIN;
            U_G0CKEYMAX G0CKEYMAX;

            G0CBMPARA.u32 = RegRead(&(pVoReg->G0CBMPARA.u32));
            *pbAlphaEn    = G0CBMPARA.bits.palpha_en;
            *pbArange     = G0CBMPARA.bits.palpha_range;

            G0CKEYMIN.u32 = RegRead(&(pVoReg->G0CKEYMIN.u32));
            *pu8Alpha1    = G0CKEYMIN.bits.va1;

            G0CKEYMAX.u32 = RegRead(&(pVoReg->G0CKEYMAX.u32));
            *pu8Alpha0    = G0CKEYMAX.bits.va0;

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1CBMPARA G1CBMPARA;
            U_G1CKEYMIN G1CKEYMIN;
            U_G1CKEYMAX G1CKEYMAX;

            G1CBMPARA.u32 = RegRead(&(pVoReg->G1CBMPARA.u32));
            *pbAlphaEn = G1CBMPARA.bits.palpha_en;
            *pbArange = G1CBMPARA.bits.palpha_range;

            G1CKEYMIN.u32 = RegRead(&(pVoReg->G1CKEYMIN.u32));
            *pu8Alpha1 = G1CKEYMIN.bits.va1;

            G1CKEYMAX.u32 = RegRead(&(pVoReg->G1CKEYMAX.u32));
            *pu8Alpha0 = G1CKEYMAX.bits.va0;

            break;
        }
        case HAL_DISP_LAYER_GFX2:
		case HAL_DISP_LAYER_GFX3:
        {
            U_G2CBMPARA G2CBMPARA;
            U_G2CKEYMIN G2CKEYMIN;
            U_G2CKEYMAX G2CKEYMAX;

            G2CBMPARA.u32 = RegRead(&(pVoReg->G2CBMPARA.u32));
            *pbAlphaEn = G2CBMPARA.bits.palpha_en;
            *pbArange = G2CBMPARA.bits.palpha_range;

            G2CKEYMIN.u32 = RegRead(&(pVoReg->G2CKEYMIN.u32));
            G2CKEYMAX.u32 = RegRead(&(pVoReg->G2CKEYMAX.u32));
            *pu8Alpha0 = G2CKEYMAX.bits.va0;
            *pu8Alpha1 = G2CKEYMIN.bits.va1;

            break;
        }
        default:
        {
            HAL_PRINT("Error,Set graphic pixel alpha select wrong layer ID\n");
            /* return ; */
        }
    }

    /* return ; */
}

/***************************************************************************************
* func          : OPTM_HAL_GetLayerGalpha
* description   : CNcomment:获取图层全局alpha，可以设置透明度使用 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_U32 OPTM_HAL_GetLayerGalpha(HAL_DISP_LAYER_E enLayer)
{
    HI_U32 uAlpha;

    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDCBMPARA VHDCBMPARA;

            VHDCBMPARA.u32 = RegRead(&(pVoReg->VHDCBMPARA.u32));
            uAlpha = VHDCBMPARA.bits.galpha;
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            U_VSDCBMPARA VSDCBMPARA;

            VSDCBMPARA.u32 = RegRead(&(pVoReg->VSDCBMPARA.u32));
            uAlpha = VSDCBMPARA.bits.galpha;
            break;
        }

        case HAL_DISP_LAYER_GFX0:
        {
            U_G0CBMPARA G0CBMPARA;

            G0CBMPARA.u32 = RegRead(&(pVoReg->G0CBMPARA.u32));
            uAlpha        = G0CBMPARA.bits.galpha;
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1CBMPARA G1CBMPARA;
            G1CBMPARA.u32 = RegRead(&(pVoReg->G1CBMPARA.u32));
            uAlpha        = G1CBMPARA.bits.galpha;
            break;
        }
		case HAL_DISP_LAYER_GFX2:
		case HAL_DISP_LAYER_GFX3:
        {
            U_G2CBMPARA G2CBMPARA;
            G2CBMPARA.u32 = RegRead(&(pVoReg->G2CBMPARA.u32));
            uAlpha        = G2CBMPARA.bits.galpha;
            break;
        }
        default:
        {
            HAL_PRINT("Error,Set global alpha select wrong layer ID\n");
            uAlpha = 0;
            /* return ; */
        }
    }

       return uAlpha;
}


/***************************************************************************************
* func          : OPTM_HAL_GetGfxKey
* description   : CNcomment:query key threshold / mode / enable of graphic layer CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_U32 OPTM_HAL_GetGfxKey(HAL_DISP_LAYER_E enLayer, HAL_GFX_KEY_S *pstKey)
{
       HI_U32 bkeyEn;

    switch (enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0CKEYMAX G0CKEYMAX;
            U_G0CKEYMIN G0CKEYMIN;
            U_G0CBMPARA G0CBMPARA;
            U_G0CMASK G0CMASK;

            G0CKEYMAX.u32 = RegRead(&(pVoReg->G0CKEYMAX.u32));
            pstKey->u8Key_r_max = G0CKEYMAX.bits.keyr_max;
            pstKey->u8Key_g_max = G0CKEYMAX.bits.keyg_max;
            pstKey->u8Key_b_max = G0CKEYMAX.bits.keyb_max;

            G0CKEYMIN.u32 = RegRead(&(pVoReg->G0CKEYMIN.u32));
            pstKey->u8Key_r_min = G0CKEYMIN.bits.keyr_min;
            pstKey->u8Key_g_min = G0CKEYMIN.bits.keyg_min;
            pstKey->u8Key_b_min = G0CKEYMIN.bits.keyb_min;

            G0CMASK.u32 = RegRead(&(pVoReg->G0CMASK.u32));
            pstKey->u8Key_r_msk = G0CMASK.bits.kmsk_r;
            pstKey->u8Key_g_msk = G0CMASK.bits.kmsk_g;
            pstKey->u8Key_b_msk = G0CMASK.bits.kmsk_b;

            G0CBMPARA.u32 = RegRead(&(pVoReg->G0CBMPARA.u32));
            pstKey->bKeyMode = G0CBMPARA.bits.key_mode;
            bkeyEn = G0CBMPARA.bits.key_en;
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1CKEYMAX G1CKEYMAX;
            U_G1CKEYMIN G1CKEYMIN;
            U_G1CBMPARA G1CBMPARA;
            U_G1CMASK G1CMASK;

            G1CKEYMAX.u32 = RegRead(&(pVoReg->G1CKEYMAX.u32));
            pstKey->u8Key_r_max = G1CKEYMAX.bits.keyr_max;
            pstKey->u8Key_g_max = G1CKEYMAX.bits.keyg_max;
            pstKey->u8Key_b_max = G1CKEYMAX.bits.keyb_max;

            G1CKEYMIN.u32 = RegRead(&(pVoReg->G1CKEYMIN.u32));
            pstKey->u8Key_r_min = G1CKEYMIN.bits.keyr_min ;
            pstKey->u8Key_g_min = G1CKEYMIN.bits.keyg_min;
            pstKey->u8Key_b_min = G1CKEYMIN.bits.keyb_min;

            G1CMASK.u32 = RegRead(&(pVoReg->G1CMASK.u32));
            pstKey->u8Key_r_msk = G1CMASK.bits.kmsk_r;
            pstKey->u8Key_g_msk = G1CMASK.bits.kmsk_g;
            pstKey->u8Key_b_msk = G1CMASK.bits.kmsk_b;

            G1CBMPARA.u32 = RegRead(&(pVoReg->G1CBMPARA.u32));
            bkeyEn = G1CBMPARA.bits.key_en;
            pstKey->bKeyMode = G1CBMPARA.bits.key_mode;

            break;
        }
		case HAL_DISP_LAYER_GFX2:
		case HAL_DISP_LAYER_GFX3:
        {
            U_G1CKEYMAX G1CKEYMAX;
            U_G1CKEYMIN G1CKEYMIN;
            U_G1CBMPARA G1CBMPARA;
            U_G1CMASK G1CMASK;

            G1CKEYMAX.u32 = RegRead(&(pVoReg->G1CKEYMAX.u32));
            pstKey->u8Key_r_max = G1CKEYMAX.bits.keyr_max;
            pstKey->u8Key_g_max = G1CKEYMAX.bits.keyg_max;
            pstKey->u8Key_b_max = G1CKEYMAX.bits.keyb_max;

            G1CKEYMIN.u32 = RegRead(&(pVoReg->G1CKEYMIN.u32));
            pstKey->u8Key_r_min = G1CKEYMIN.bits.keyr_min ;
            pstKey->u8Key_g_min = G1CKEYMIN.bits.keyg_min;
            pstKey->u8Key_b_min = G1CKEYMIN.bits.keyb_min;

            G1CMASK.u32 = RegRead(&(pVoReg->G1CMASK.u32));
            pstKey->u8Key_r_msk = G1CMASK.bits.kmsk_r;
            pstKey->u8Key_g_msk = G1CMASK.bits.kmsk_g;
            pstKey->u8Key_b_msk = G1CMASK.bits.kmsk_b;

            G1CBMPARA.u32 = RegRead(&(pVoReg->G1CBMPARA.u32));
            bkeyEn = G1CBMPARA.bits.key_en;
            pstKey->bKeyMode = G1CBMPARA.bits.key_mode;

            break;
        }
        default:
        {
            /* HAL_PRINT("Error,Set key select wrong layer ID\n"); */
            bkeyEn = 0;
        }
    }

    return bkeyEn;
}


/***************************************************************************************
* func          : OPTM_HAL_GetDispIoP
* description   : CNcomment:获取是逐行显示还是隔行显示 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_U32  OPTM_HAL_GetDispIoP(HAL_DISP_OUTPUTCHANNEL_E enChan)
{
    HI_U32 iop = 0;

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
    	U_DHDCTRL DHDCTRL;

        /* VOU VHD CHANNEL enable */
        DHDCTRL.u32 = RegRead(&(pVoReg->DHDCTRL.u32));
        iop = DHDCTRL.bits.iop;
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
   		 U_DSDCTRL DSDCTRL;

        /* VOU VSD CHANNEL enable */
        DSDCTRL.u32 = RegRead(&(pVoReg->DSDCTRL.u32));
        iop = DSDCTRL.bits.iop;
    }
    else
    {
        HAL_PRINT("Wrong CHANNEL ID\n");
        /* return ; */
    }

    return iop;

}


/***************************************************************************************
* func          : OPTM_HAL_DISP_GetLayerInRect
* description   : CNcomment: 获取输入大小 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID  OPTM_HAL_DISP_GetLayerInRect(HAL_DISP_LAYER_E enLayer, HI_RECT_S *pstRect)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0IRESO G0IRESO;
            U_G0DFPOS G0DFPOS;

            /** output width and height **/
            G0IRESO.u32         = RegRead(&(pVoReg->G0IRESO.u32));
            pstRect->s32Width  = G0IRESO.bits.iw + 1;
            pstRect->s32Height = G0IRESO.bits.ih + 1;

            /** display position **/
            G0DFPOS.u32    = RegRead(&(pVoReg->G0DFPOS.u32));
            pstRect->s32X = G0DFPOS.bits.disp_xfpos;
            pstRect->s32Y = G0DFPOS.bits.disp_yfpos;
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1IRESO G1IRESO;
            U_G1DFPOS G1DFPOS;

            /* output width and height */
            G1IRESO.u32         = RegRead(&(pVoReg->G1IRESO.u32));
            pstRect->s32Width  = G1IRESO.bits.iw + 1;
            pstRect->s32Height = G1IRESO.bits.ih + 1;

            /* display position */
            G1DFPOS.u32   = RegRead(&(pVoReg->G1DFPOS.u32));
            pstRect->s32X = G1DFPOS.bits.disp_xfpos;
            pstRect->s32Y = G1DFPOS.bits.disp_yfpos;
            break;
        }
		case HAL_DISP_LAYER_GFX2:
        {
            U_ZONE1RESO  ZONE1RESO;
            U_ZONE1DFPOS ZONE1DFPOS;

            /* input width and height */
            ZONE1RESO.u32       = RegRead(&(pVoReg->ZONE1RESO.u32));
            pstRect->s32Width  = ZONE1RESO.bits.iw + 1;
            pstRect->s32Height = ZONE1RESO.bits.ih + 1;

            /* display start position */
            ZONE1DFPOS.u32   = RegRead(&(pVoReg->ZONE1DFPOS.u32));
            pstRect->s32X   = ZONE1DFPOS.bits.disp_xfpos;
            pstRect->s32Y   = ZONE1DFPOS.bits.disp_yfpos;

            break;
        }
		case HAL_DISP_LAYER_GFX3:
        {
            U_ZONE2RESO ZONE2RESO;
            U_ZONE2DFPOS ZONE2DFPOS;
            /* output width and height */
            ZONE2RESO.u32       = RegRead(&(pVoReg->ZONE2RESO.u32));
            pstRect->s32Width  = ZONE2RESO.bits.iw + 1;
            pstRect->s32Height = ZONE2RESO.bits.ih + 1;

            /* display position */
            ZONE2DFPOS.u32   = RegRead(&(pVoReg->ZONE2DFPOS.u32));
            pstRect->s32X   = ZONE2DFPOS.bits.disp_xfpos;
            pstRect->s32Y   = ZONE2DFPOS.bits.disp_yfpos;
            break;
        }

        default:
        {
            HAL_PRINT("Error, Set rect select wrong layer ID\n");
        }
    }
}

/***************************************************************************************
* func          : OPTM_HAL_DISP_GetLayerOutRect
* description   : CNcomment: 获取输出分辨率 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID  OPTM_HAL_DISP_GetLayerOutRect(HAL_DISP_LAYER_E enLayer, HI_RECT_S *pstRect)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDVFPOS VHDVFPOS;
            U_VHDVLPOS VHDVLPOS;

            /* video position */
            VHDVFPOS.u32   = RegRead(&(pVoReg->VHDVFPOS.u32));
            pstRect->s32X = VHDVFPOS.bits.video_xfpos;
            pstRect->s32Y = VHDVFPOS.bits.video_yfpos;

            /* output width and height */
            VHDVLPOS.u32 = RegRead(&(pVoReg->VHDVLPOS.u32));
            pstRect->s32Width  = VHDVLPOS.bits.video_xlpos + 1 - VHDVFPOS.bits.video_xfpos;
            pstRect->s32Height = VHDVLPOS.bits.video_ylpos + 1 - VHDVFPOS.bits.video_yfpos;
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            U_VSDVFPOS VSDVFPOS;
            U_VSDVLPOS VSDVLPOS;

            /* video position */
            VSDVFPOS.u32   = RegRead(&(pVoReg->VSDVFPOS.u32));
            pstRect->s32X = VSDVFPOS.bits.video_xfpos;
            pstRect->s32Y = VSDVFPOS.bits.video_yfpos;

            VSDVLPOS.u32 = RegRead(&(pVoReg->VSDVLPOS.u32));
            pstRect->s32Width  = VSDVLPOS.bits.video_xlpos + 1 - VSDVFPOS.bits.video_xfpos;
            pstRect->s32Height = VSDVLPOS.bits.video_ylpos + 1 - VSDVFPOS.bits.video_yfpos;
            break;
        }

        case HAL_DISP_LAYER_GFX0:
        {
            U_G0ORESO G0ORESO;
            U_G0DFPOS G0DFPOS;

            /* output width and height */
            G0ORESO.u32         = RegRead(&(pVoReg->G0ORESO.u32));
            pstRect->s32Width  = G0ORESO.bits.ow + 1;
            pstRect->s32Height = G0ORESO.bits.oh + 1;

            /* display position */
            G0DFPOS.u32    = RegRead(&(pVoReg->G0DFPOS.u32));
            pstRect->s32X = G0DFPOS.bits.disp_xfpos;
            pstRect->s32Y = G0DFPOS.bits.disp_yfpos;
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1ORESO G1ORESO;
            U_G1DFPOS G1DFPOS;

            /* output width and height */
            G1ORESO.u32         = RegRead(&(pVoReg->G1ORESO.u32));
            pstRect->s32Width  = G1ORESO.bits.ow + 1;
            pstRect->s32Height = G1ORESO.bits.oh + 1;

            /* display position */
            G1DFPOS.u32    = RegRead(&(pVoReg->G1DFPOS.u32));
            pstRect->s32X = G1DFPOS.bits.disp_xfpos;
            pstRect->s32Y = G1DFPOS.bits.disp_yfpos;
            break;
        }
        case HAL_DISP_LAYER_GFX2:
        {
            U_ZONE1DFPOS ZONE1DFPOS;
            U_ZONE1DLPOS ZONE1DLPOS;

            ZONE1DFPOS.u32 = RegRead(&(pVoReg->ZONE1DFPOS.u32));
            pstRect->s32X = ZONE1DFPOS.bits.disp_xfpos;
            pstRect->s32Y = ZONE1DFPOS.bits.disp_yfpos;

            ZONE1DLPOS.u32 = RegRead(&(pVoReg->ZONE1DLPOS.u32));
            pstRect->s32Width   = ZONE1DLPOS.bits.disp_xlpos + 1;
            pstRect->s32Height  = ZONE1DLPOS.bits.disp_ylpos + 1;
            pstRect->s32Width   -= ZONE1DFPOS.bits.disp_xfpos;
            pstRect->s32Height  -= ZONE1DFPOS.bits.disp_yfpos;
            break;
        }
        case HAL_DISP_LAYER_GFX3:
        {
            U_ZONE2DFPOS ZONE2DFPOS;
            U_ZONE2DLPOS ZONE2DLPOS;
            ZONE2DFPOS.u32 = RegRead(&(pVoReg->ZONE2DFPOS.u32));
            pstRect->s32X = ZONE2DFPOS.bits.disp_xfpos;
            pstRect->s32Y = ZONE2DFPOS.bits.disp_yfpos;
            ZONE2DLPOS.u32 = RegRead(&(pVoReg->ZONE2DLPOS.u32));
            pstRect->s32Width   = ZONE2DLPOS.bits.disp_xlpos + 1;
            pstRect->s32Height  = ZONE2DLPOS.bits.disp_ylpos + 1;
            pstRect->s32Width   -= ZONE2DFPOS.bits.disp_xfpos;
            pstRect->s32Height  -= ZONE2DFPOS.bits.disp_yfpos;
            break;
        }
        case HAL_DISP_LAYER_WBC0:
        {
            U_WBC0ORESO WBC0ORESO;

            /* output width and height */
            WBC0ORESO.u32 = RegRead(&(pVoReg->WBC0ORESO.u32));
            pstRect->s32Width  = WBC0ORESO.bits.ow + 1;
            pstRect->s32Height = WBC0ORESO.bits.oh + 1;

            pstRect->s32X = 0;
            pstRect->s32Y = 0;
            break;
        }
        default:
        {
            HAL_PRINT("Error, Set rect select wrong layer ID\n");

            /* return ; */
            }
    }

    /* return ; */
}



/*
 * set DATE parameters
 *
 * set DATE enable
 */
HI_VOID HAL_DATE_Enable(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bEnable)
{
    U_HDATE_EN HDATE_EN;

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        HDATE_EN.u32 = pVoReg->HDATE_EN.u32;
        HDATE_EN.bits.hd_en  = bEnable;
        pVoReg->HDATE_EN.u32 = HDATE_EN.u32;
    }
    else
    {
        return ;
    }

    return ;
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
/** set polarity of synchronization signal */
HI_VOID HAL_DATE_PolaCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bTrue)
{
    U_HDATE_POLA_CTRL HDATE_POLA_CTRL;

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        HDATE_POLA_CTRL.u32 = pVoReg->HDATE_POLA_CTRL.u32;
        HDATE_POLA_CTRL.bits.hsync_in_pola = bTrue;
        HDATE_POLA_CTRL.bits.vsync_in_pola = bTrue;
        pVoReg->HDATE_POLA_CTRL.u32 = HDATE_POLA_CTRL.u32;
    }
    else
    {
        return ;
    }

    return ;
}

/** set data format */
HI_VOID HAL_DATE_VideoFmt(HAL_DISP_OUTPUTCHANNEL_E enChan, U_HDATE_VIDEO_FORMAT VFormat)
{
    U_HDATE_VIDEO_FORMAT HDATE_VIDEO_FORMAT;

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        HDATE_VIDEO_FORMAT.u32 = pVoReg->HDATE_VIDEO_FORMAT.u32;
        HDATE_VIDEO_FORMAT.bits.video_ft = VFormat.bits.video_ft;
        HDATE_VIDEO_FORMAT.bits.sync_add_ctrl  = VFormat.bits.sync_add_ctrl;
        HDATE_VIDEO_FORMAT.bits.video_out_ctrl = VFormat.bits.video_out_ctrl;
        HDATE_VIDEO_FORMAT.bits.csc_ctrl = VFormat.bits.csc_ctrl;
        pVoReg->HDATE_VIDEO_FORMAT.u32 = HDATE_VIDEO_FORMAT.u32;
    }
    else
    {
        return ;
    }

    return ;
}

/** output control */
HI_VOID HAL_DATE_OutCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, U_HDATE_OUT_CTRL OutCtrl)
{
    U_HDATE_OUT_CTRL HDATE_OUT_CTRL;

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        HDATE_OUT_CTRL.u32 = pVoReg->HDATE_OUT_CTRL.u32;
        HDATE_OUT_CTRL.bits.vsync_sel  = OutCtrl.bits.vsync_sel;
        HDATE_OUT_CTRL.bits.hsync_sel  = OutCtrl.bits.hsync_sel;
        HDATE_OUT_CTRL.bits.video3_sel = OutCtrl.bits.video3_sel;
        HDATE_OUT_CTRL.bits.video2_sel = OutCtrl.bits.video2_sel;
        HDATE_OUT_CTRL.bits.video1_sel = OutCtrl.bits.video1_sel;
        HDATE_OUT_CTRL.bits.src_ctrl = OutCtrl.bits.src_ctrl;
        HDATE_OUT_CTRL.bits.sync_lpf_en = OutCtrl.bits.sync_lpf_en;
        HDATE_OUT_CTRL.bits.sd_sel = OutCtrl.bits.sd_sel;
        pVoReg->HDATE_OUT_CTRL.u32 = HDATE_OUT_CTRL.u32;
    }
    else
    {
        return ;
    }

    return ;
}


/** output control */
HI_VOID OPTM_HAL_DateOutCtrl(HI_S32 u32DispChn, HI_S32 u32DacNum, HI_S32 Signal)
{
    /* HDATE */
    if (1 == u32DispChn)
    {
        U_HDATE_OUT_CTRL HDATE_OUT_CTRL;

        HDATE_OUT_CTRL.u32 = RegRead(&(pVoReg->HDATE_OUT_CTRL.u32));
        switch(u32DacNum)
        {
            case 0:
            {
                   HDATE_OUT_CTRL.bits.video1_sel = Signal;
                break;
            }
            case 1:
            {
                   HDATE_OUT_CTRL.bits.video2_sel = Signal;
                break;
            }
            case 2:
            {
                   HDATE_OUT_CTRL.bits.video3_sel = Signal;
                break;
            }
            case 3:
            {
                   HDATE_OUT_CTRL.bits.video1_sel = Signal;
                break;
            }
            case 4:
            {
                   HDATE_OUT_CTRL.bits.video2_sel = Signal;
                break;
            }
            case 5:
            {
                   HDATE_OUT_CTRL.bits.video3_sel = Signal;
                break;
            }
            default:
            {
                break;
            }
        }

        HDATE_OUT_CTRL.bits.hsync_sel = 0;
        HDATE_OUT_CTRL.bits.vsync_sel = 0;

        RegWrite(&(pVoReg->HDATE_OUT_CTRL.u32), HDATE_OUT_CTRL.u32);
    }
    else if (2 == u32DispChn)
    {
        U_DATE_COEFF21 DATE_COEFF21;

        DATE_COEFF21.u32 = RegRead(&(pVoReg->DATE_COEFF21.u32));

        switch(u32DacNum)
        {
            case 0:
            {
                DATE_COEFF21.bits.dac0_in_sel = Signal;
                break;
            }
            case 1:
            {
                DATE_COEFF21.bits.dac1_in_sel = Signal;
                break;
            }
            case 2:
            {
                DATE_COEFF21.bits.dac2_in_sel = Signal;
                break;
            }
            case 3:
            {
                DATE_COEFF21.bits.dac3_in_sel = Signal;
                break;
            }
            case 4:
            {
                /* DATE_COEFF21.bits.dac4_in_sel = Signal; */
                break;
            }
            case 5:
            {
                /* DATE_COEFF21.bits.dac5_in_sel = Signal; */
                break;
            }
            default:
            {
                break;
            }
        }

        RegWrite(&(pVoReg->DATE_COEFF21.u32), DATE_COEFF21.u32);
    }

    return ;
}
#endif

HI_VOID OPTM_HAL_SetDateBT470(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32  bt470)
{
    if (HAL_DISP_CHANNEL_DSD == enChan){
             U_DATE_COEFF0 DATE_COEFF0;

             DATE_COEFF0.u32 = RegRead(&(pVoReg->DATE_COEFF0.u32));
             DATE_COEFF0.bits.length_sel = bt470;
             RegWrite(&(pVoReg->DATE_COEFF0.u32), DATE_COEFF0.u32);
    }

    return;

}

#ifdef HI_DISP_SCART_SUPPORT
/** set scart */
HI_VOID OPTM_HAL_SetDateScart(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bScartEna)
{
    if (HAL_DISP_CHANNEL_DSD == enChan){
             U_DATE_COEFF0 DATE_COEFF0;

             DATE_COEFF0.u32 = RegRead(&(pVoReg->DATE_COEFF0.u32));
             DATE_COEFF0.bits.sync_mode_scart = bScartEna;
             RegWrite(&(pVoReg->DATE_COEFF0.u32), DATE_COEFF0.u32);
    }

    return;
}
#endif

/** set ChlpEnable */
HI_VOID OPTM_HAL_SetDateChlp_en(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bChlpEna)
{
    if (HAL_DISP_CHANNEL_DSD == enChan){
             U_DATE_COEFF0 DATE_COEFF0;

             DATE_COEFF0.u32 = RegRead(&(pVoReg->DATE_COEFF0.u32));
             DATE_COEFF0.bits.chlp_en = bChlpEna;
             RegWrite(&(pVoReg->DATE_COEFF0.u32), DATE_COEFF0.u32);
    }

    return;
}

/** set LumaDelay */
HI_VOID OPTM_HAL_SetDateLumaDelay(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32LumaDelay)
{
    if (HAL_DISP_CHANNEL_DSD == enChan){
        U_DATE_COEFF0 DATE_COEFF0;

        DATE_COEFF0.u32 = RegRead(&(pVoReg->DATE_COEFF0.u32));
        DATE_COEFF0.bits.luma_dl = u32LumaDelay;
        RegWrite(&(pVoReg->DATE_COEFF0.u32), DATE_COEFF0.u32);
    }

    return;
}



/** set coefficients of DATE CGAIN */
HI_VOID OPTM_HAL_DISP_SetDateCgain(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 Cgain)
{
    U_DATE_COEFF1 DATE_COEFF1;

    if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        DATE_COEFF1.u32 = pVoReg->DATE_COEFF1.u32;
        DATE_COEFF1.bits.c_gain   = Cgain;
        pVoReg->DATE_COEFF1.u32 = DATE_COEFF1.u32;
    }
    else if (enChan == HAL_DISP_CHANNEL_DHD)
    {}
}

/** set coefficients of DATE CGAIN */
HI_VOID OPTM_HAL_DISP_SetDateRgbEn(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 en)
{
    U_DATE_COEFF0 DATE_COEFF0;

    if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        DATE_COEFF0.u32 = pVoReg->DATE_COEFF0.u32;
        DATE_COEFF0.bits.rgb_en = en;
        pVoReg->DATE_COEFF0.u32 = DATE_COEFF0.u32;
    }
    else if (enChan == HAL_DISP_CHANNEL_DHD)
    {}
}


/** get DATE coefficients */
HI_U32 OPTM_HAL_DISP_GetDateCoeff(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 index)
{
    volatile HI_U32 *ptrDateCoeff;

    if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        ptrDateCoeff = &(pVoReg->DATE_COEFF0.u32);
        return (HI_U32)(ptrDateCoeff[index]);
    }
    else if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        ptrDateCoeff = &(pVoReg->HDATE_VERSION.u32);
        return (HI_U32)(ptrDateCoeff[index]);
    }

    return 0;
}

/** set DATE coefficients */
//extern HI_U32 bt470;
HI_VOID OPTM_HAL_DISP_SetDateCoeff(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 index, HI_U32 value)
{
    volatile HI_U32 *ptrDateCoeff;

    if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        ptrDateCoeff = &(pVoReg->DATE_COEFF0.u32);
        ptrDateCoeff[index] = value;
        //if (index == 0)
        //    OPTM_HAL_SetDateBT470(enChan, bt470);
    }
    else if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        ptrDateCoeff = &(pVoReg->HDATE_VERSION.u32);
        ptrDateCoeff[index] = value;
    }
}


/** get disp flag of current field */
HI_S32 OPTM_HAL_DISP_GetCurrField(HAL_DISP_OUTPUTCHANNEL_E enChan)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDSTATE DHDSTATE;
        DHDSTATE.u32 = RegRead(&(pVoReg->DHDSTATE.u32));
        return (HI_S32)(DHDSTATE.bits.bottom_field);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDSTATE DSDSTATE;
        DSDSTATE.u32 = RegRead(&(pVoReg->DSDSTATE.u32));
        return (HI_S32)(DSDSTATE.bits.bottom_field);
    }
    else
    {
        return 0;
    }
}

/** get disp flag of current field */
HI_S32 OPTM_HAL_DISP_GetCurrPos(HAL_DISP_OUTPUTCHANNEL_E enChan)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_DHDSTATE DHDSTATE;
        DHDSTATE.u32 = RegRead(&(pVoReg->DHDSTATE.u32));
        return (HI_S32)(DHDSTATE.bits.current_pos);
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        U_DSDSTATE DSDSTATE;
        DSDSTATE.u32 = RegRead(&(pVoReg->DSDSTATE.u32));
        return (HI_S32)(DSDSTATE.bits.current_pos);
    }
    else
    {
        return 0;
    }
}

/** set the interrupt mode for disp channel */
HI_VOID OPTM_HAL_DISP_SetIntrMode(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bFieldMode)
{
    HAL_DISP_SetVtThdMode(enChan, 1, bFieldMode);
    HAL_DISP_SetVtThdMode(enChan, 2, bFieldMode);
    HAL_DISP_SetVtThdMode(enChan, 3, bFieldMode);
    HAL_DISP_SetVtThdMode(enChan, 4, 0);
}


/** set the threshold of interrupt 2 for disp channel */
HI_VOID OPTM_HAL_DISP_SetIntrThd2(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 vtthd2)
{
    HAL_DISP_SetVtThd(enChan, 2, vtthd2);
}


HI_VOID Vou_SetHdmiSel(HI_U8 u8Data)
{
    U_VOMUX VOMUX;

    /* set vou hdmi data width  */
    VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
    VOMUX.bits.hdmi_vid = u8Data;
    RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

    return ;
}

HI_VOID Vou_SetSyncRev(HI_U8 u8SyncMd, HI_U32 bSyncRev)
{
    U_VOMUX VOMUX;

    /* set vou dac test data */
    VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
    switch(u8SyncMd)
    {
        case 0:
        {
            VOMUX.bits.dv_neg   = bSyncRev;
            break;
        }
        case 1:
        {
            VOMUX.bits.hsync_neg = bSyncRev;
            break;
        }
        case 2:
        {
            VOMUX.bits.vsync_neg = bSyncRev;
            break;
        }
        case 3:
        {
            VOMUX.bits.dv_neg    = bSyncRev;
            VOMUX.bits.hsync_neg = bSyncRev;
            VOMUX.bits.vsync_neg = bSyncRev;
            break;
        }
        default:
        {
            /* HAL_PRINT("Error! Vou_SetSyncRev() Select Wrong Sync Mode!\n"); */
            return ;
        }
    }
    RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

    return ;
}


/** output control */
HI_VOID OPTM_HAL_DATE_OutCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32OutCtrl)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_HDATE_OUT_CTRL HDATE_OUT_CTRL;
        U_HDATE_OUT_CTRL OutCtrl;

        OutCtrl.u32 = u32OutCtrl;
        HDATE_OUT_CTRL.u32 = pVoReg->HDATE_OUT_CTRL.u32;
        HDATE_OUT_CTRL.bits.vsync_sel  = OutCtrl.bits.vsync_sel;
        HDATE_OUT_CTRL.bits.hsync_sel  = OutCtrl.bits.hsync_sel;
        HDATE_OUT_CTRL.bits.video3_sel = OutCtrl.bits.video3_sel;
        HDATE_OUT_CTRL.bits.video2_sel = OutCtrl.bits.video2_sel;
        HDATE_OUT_CTRL.bits.video1_sel = OutCtrl.bits.video1_sel;
        pVoReg->HDATE_OUT_CTRL.u32 = HDATE_OUT_CTRL.u32;
    }
    else
    {
        U_DATE_COEFF21 DateOutCtrl, tmp;

        tmp.u32 = u32OutCtrl;
        DateOutCtrl.u32 = pVoReg->DATE_COEFF21.u32;
        DateOutCtrl.bits.dac0_in_sel = tmp.bits.dac0_in_sel;
        DateOutCtrl.bits.dac1_in_sel = tmp.bits.dac1_in_sel;
        DateOutCtrl.bits.dac2_in_sel = tmp.bits.dac2_in_sel;
        DateOutCtrl.bits.dac3_in_sel = tmp.bits.dac3_in_sel;
        DateOutCtrl.bits.dac4_in_sel = tmp.bits.dac4_in_sel;
        DateOutCtrl.bits.dac5_in_sel = tmp.bits.dac5_in_sel;
        pVoReg->DATE_COEFF21.u32 = DateOutCtrl.u32;
    }

    return;
}

/** set data format */
HI_VOID OPTM_HAL_HDATE_VideoFmt(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Value)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_HDATE_VIDEO_FORMAT HDATE_VIDEO_FORMAT;

        HDATE_VIDEO_FORMAT.u32 = pVoReg->HDATE_VIDEO_FORMAT.u32;
        HDATE_VIDEO_FORMAT.bits.video_ft = u32Value & 0xfL;
        pVoReg->HDATE_VIDEO_FORMAT.u32 = HDATE_VIDEO_FORMAT.u32;
    }
    else
    {
        return;
    }

    return;
}

/** set output format */
HI_VOID OPTM_HAL_HDATE_VideoOutFmt(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Value)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_HDATE_VIDEO_FORMAT HDATE_VIDEO_FORMAT;

        HDATE_VIDEO_FORMAT.u32 = pVoReg->HDATE_VIDEO_FORMAT.u32;
        HDATE_VIDEO_FORMAT.bits.video_out_ctrl = u32Value & 0x3L;
        pVoReg->HDATE_VIDEO_FORMAT.u32 = HDATE_VIDEO_FORMAT.u32;
    }
    else
    {
        return;
    }

    return;
}

/** output control */
HI_BOOL OPTM_HAL_SetDateSdSel(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32SdSel)
{
    U_HDATE_OUT_CTRL HDATE_OUT_CTRL;

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        HDATE_OUT_CTRL.u32 = pVoReg->HDATE_OUT_CTRL.u32;
        HDATE_OUT_CTRL.bits.sd_sel = u32SdSel;
        pVoReg->HDATE_OUT_CTRL.u32 = HDATE_OUT_CTRL.u32;
    }
    else
    {
        return HI_FALSE;
    }

    return HI_TRUE;
}


/** setting of enable for output up-sampling */
HI_BOOL OPTM_HAL_SetDateLfpEnable(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Enable)
{
    U_HDATE_OUT_CTRL HDATE_OUT_CTRL;

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        HDATE_OUT_CTRL.u32 = pVoReg->HDATE_OUT_CTRL.u32;
        HDATE_OUT_CTRL.bits.sync_lpf_en = u32Enable;
        pVoReg->HDATE_OUT_CTRL.u32 = HDATE_OUT_CTRL.u32;
    }
    else
    {
        return HI_FALSE;
    }

    return HI_TRUE;
}

/** set the way of synchronized superposition */
HI_VOID OPTM_HAL_HDATE_SyncAddCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Value)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_HDATE_VIDEO_FORMAT HDATE_VIDEO_FORMAT;

        HDATE_VIDEO_FORMAT.u32 = pVoReg->HDATE_VIDEO_FORMAT.u32;
        HDATE_VIDEO_FORMAT.bits.sync_add_ctrl  = u32Value & 0x7L;
        pVoReg->HDATE_VIDEO_FORMAT.u32 = HDATE_VIDEO_FORMAT.u32;
    }
    else
    {
        return;
    }

    return;
}

/** set the way of color space transformation */
HI_VOID OPTM_HAL_HDATE_CscCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Value)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_HDATE_VIDEO_FORMAT HDATE_VIDEO_FORMAT;

        HDATE_VIDEO_FORMAT.u32 = pVoReg->HDATE_VIDEO_FORMAT.u32;
        HDATE_VIDEO_FORMAT.bits.csc_ctrl = u32Value & 0x7L;
        pVoReg->HDATE_VIDEO_FORMAT.u32 = HDATE_VIDEO_FORMAT.u32;
    }
    else
    {
        return;
    }

    return;
}

/** output over-sampling */
HI_VOID OPTM_HAL_HDATE_SrcCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 Value)
{
    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        U_HDATE_OUT_CTRL HDATE_OUT_CTRL;

        HDATE_OUT_CTRL.u32 = pVoReg->HDATE_OUT_CTRL.u32;
        HDATE_OUT_CTRL.bits.src_ctrl = Value & 3L;
        pVoReg->HDATE_OUT_CTRL.u32 = HDATE_OUT_CTRL.u32;
    }
    else
    {
        return;
    }

    return;
}

/** set the polarity of synchronized signal */
HI_VOID OPTM_HAL_HDATE_PolaCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Pola)
{
    U_HDATE_POLA_CTRL HDATE_POLA_CTRL;

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        HDATE_POLA_CTRL.u32 = pVoReg->HDATE_POLA_CTRL.u32;
        HDATE_POLA_CTRL.bits.hsync_in_pola = (u32Pola) &1L;
        HDATE_POLA_CTRL.bits.vsync_in_pola = (u32Pola >> 1) &1L;
        HDATE_POLA_CTRL.bits.fid_in_pola   = (u32Pola >> 2) &1L;
        HDATE_POLA_CTRL.bits.hsync_out_pola= (u32Pola >> 3) &1L;
        HDATE_POLA_CTRL.bits.vsync_out_pola= (u32Pola >> 4) &1L;
        HDATE_POLA_CTRL.bits.fid_out_pola  = (u32Pola >> 5) &1L;

        pVoReg->HDATE_POLA_CTRL.u32 = HDATE_POLA_CTRL.u32;
    }
    else
    {
        return;
    }

    return;
}


HI_VOID OPTM_HAL_SetDacMux(HI_S32 u32DacNum, HI_S32 s32DispChn)
{
    HAL_DISP_SetDacMux((HAL_DISP_OUTPUTSEL_E)u32DacNum, (HAL_DISP_MUXINTF_E)s32DispChn);
    return ;
}

/*******************************************************************************
 *    debug interface                                                          *
 *                                                                             *
 *    display debug information                                                *
 *******************************************************************************/
HI_VOID OPTM_HAL_PrintDebugInfo(HI_VOID)
{
     HAL_PRINT("pVoReg  = 0x%x\n", (HI_U32)pVoReg);
}

/** set enable of output */
HI_VOID OPTM_HAL_DhdDebugSet(HI_U32 bEnable, HI_U32 u32Width)
{
       U_DHDCTRL DHDCTRL;

      if (1 == bEnable)
          {
              DHDCTRL.u32 = RegRead(&(pVoReg->DHDCTRL.u32));
              DHDCTRL.bits.fpga_lmt_width = u32Width;
              DHDCTRL.bits.fpga_lmt_en = 1;
              RegWrite(&(pVoReg->DHDCTRL.u32), DHDCTRL.u32);
          }
      else
          {
              DHDCTRL.u32 = RegRead(&(pVoReg->DHDCTRL.u32));
              DHDCTRL.bits.fpga_lmt_width = 0;

              DHDCTRL.bits.fpga_lmt_en = 0;
              RegWrite(&(pVoReg->DHDCTRL.u32), DHDCTRL.u32);
          }
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
HI_VOID hdate_1080p_30Hz_cfg(HI_VOID)
{
    /* CLK */
    /* RegWrite(0x20050054,0x40000000);  clk=74.25Hz */

    /* HDATE */
    RegWrite(&(pVoReg->HDATE_EN.u32),0x00000001);  /* HDATE_EN    */
    RegWrite(&(pVoReg->HDATE_POLA_CTRL.u32),0x00000003);  /* HDATE_POLA_CTRL */
    RegWrite(&(pVoReg->HDATE_VIDEO_FORMAT.u32),0x000000a3);  /* HDATE_VIDEO_FORMAT */
    /* RegWrite(0x20132014,0x000001b0);  HDATE_OUT_CTRL */
    RegWrite(&(pVoReg->HDATE_OUT_CTRL.u32),0x000009b0);  /* HDATE_OUT_CTRL */

    /* DHD */
    RegWrite(&(pVoReg->DHDCTRL.u32),0xa00000ec);

    RegWrite(&(pVoReg->DHDVSYNC.u32),0x00328437);
    RegWrite(&(pVoReg->DHDHSYNC1.u32),0x00bf077f);
    RegWrite(&(pVoReg->DHDHSYNC2.u32),0x00000057);

    RegWrite(&(pVoReg->VOMUX.u32),0x00000007);
}

HI_VOID hdate_1080i_60Hz_274m_cfg(HI_VOID) /* 1080i@60Hz 274M */
{
    /* CLK */
    // RegWrite(0x20050054,0x40000000);  /* clk=74.25Hz */
    /* HDATE */
    RegWrite(&(pVoReg->HDATE_EN.u32),0x00000001);           /* HDATE_EN     */
    RegWrite(&(pVoReg->HDATE_POLA_CTRL.u32),0x00000003);    /* HDATE_POLA_CTRL */
    RegWrite(&(pVoReg->HDATE_VIDEO_FORMAT.u32),0x000000a4); /* HDATE_VIDEO_FORMAT */

    /* RegWrite(0x20132014,0x000001b0);  HDATE_OUT_CTRL */
    RegWrite(&(pVoReg->HDATE_OUT_CTRL.u32),0x000001b0); /* HDATE_OUT_CTRL */

    /* DHD */
    RegWrite(&(pVoReg->DHDCTRL.u32),0xa000006c);

    RegWrite(&(pVoReg->DHDVSYNC.u32),0x0011321b);
    RegWrite(&(pVoReg->DHDHSYNC1.u32),0x00bf077f);
    RegWrite(&(pVoReg->DHDHSYNC2.u32),0x00000057);
    RegWrite(&(pVoReg->DHDVPLUS.u32),0x0021321b);

    RegWrite(&(pVoReg->VOMUX.u32),0x00000007);


}

HI_VOID hdate_720p_50Hz_cfg(HI_VOID)
{
    /* CLK */
    /* RegWrite(0x20050054,0x40000000);  clk=74.25Hz */

    /* HDATE */
    RegWrite(&(pVoReg->HDATE_EN.u32),0x00000001);          /* HDATE_EN     */
    RegWrite(&(pVoReg->HDATE_POLA_CTRL.u32),0x00000003);   /* HDATE_POLA_CTRL */
    RegWrite(&(pVoReg->HDATE_VIDEO_FORMAT.u32),0x000000a2);/* HDATE_VIDEO_FORMAT */
    RegWrite(&(pVoReg->HDATE_OUT_CTRL.u32),0x000005b0);    /* HDATE_OUT_CTRL */

    /* DHD */
    RegWrite(&(pVoReg->DHDCTRL.u32),0xa00000ec);

    RegWrite(&(pVoReg->DHDVSYNC.u32),0x004182cf);
    RegWrite(&(pVoReg->DHDHSYNC1.u32),0x010304ff);
    RegWrite(&(pVoReg->DHDHSYNC2.u32),0x000001b7);

    RegWrite(&(pVoReg->VOMUX.u32),0x00000007);
}

HI_VOID hdate_720p_60Hz_cfg(HI_VOID)
{
    /* CLK */
    // RegWrite(0x20050054,0x40000000);  /* clk=74.25Hz */
    /* HDATE */
    RegWrite(&(pVoReg->HDATE_EN.u32),0x00000001);  /* HDATE_EN     */
    RegWrite(&(pVoReg->HDATE_POLA_CTRL.u32),0x00000003);  /* HDATE_POLA_CTRL */
    RegWrite(&(pVoReg->HDATE_VIDEO_FORMAT.u32),0x000000a2);  /* HDATE_VIDEO_FORMAT */

    /* RegWrite(0x20132014,0x000001b0);  HDATE_OUT_CTRL */
    RegWrite(&(pVoReg->HDATE_OUT_CTRL.u32),0x000005b0);  /* HDATE_OUT_CTRL */

    /* DHD */
    RegWrite(&(pVoReg->DHDCTRL.u32),0xa00000ec);

    RegWrite(&(pVoReg->DHDVSYNC.u32),0x004182cf);
    RegWrite(&(pVoReg->DHDHSYNC1.u32),0x010304ff);
    RegWrite(&(pVoReg->DHDHSYNC2.u32),0x0000006d);

    RegWrite(&(pVoReg->VOMUX.u32),0x00000007);
}
#endif


#if (FPGA_TEST)

/** set phase delta */
HI_VOID OPTM_HAL_SetDatePhaseDelta(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Phase)
{
    if (HAL_DISP_CHANNEL_DSD == enChan){
             U_DATE_COEFF22 DATE_COEFF22;

             DATE_COEFF22.u32 = RegRead(&(pVoReg->DATE_COEFF22.u32));
             DATE_COEFF22.bits.video_phase_delta = u32Phase;
             RegWrite(&(pVoReg->DATE_COEFF22.u32), DATE_COEFF22.u32);
    }

    return;
}

#ifdef HI_DISP_TTX_SUPPORT
HI_VOID DRV_VOU_TtxLineEnable(HI_U32 WhichRow, HI_U32 WhichExtRow)
{
    pVoReg->TtxLineEnable.u32 = WhichRow;
    pVoReg->DATE_COEFF20.u32  = WhichExtRow;
    return;
}

HI_VOID DRV_VOU_TtxSetMode(HI_U32 TtxMode)
{
    U_DATE_COEFF10 TtxConfig;

    TtxConfig.u32 = pVoReg->TtxConfig.u32;
    TtxConfig.bits.tt_mode = TtxMode;
    pVoReg->TtxConfig.u32 = TtxConfig.u32;
    return;
}

HI_VOID DRV_VOU_TtxSetSeq(HI_BOOL TtxSeq)
{
    U_DATE_COEFF0   DATE_COEFF0;

    DATE_COEFF0.u32 = pVoReg->DATE_COEFF0.u32;
    DATE_COEFF0.bits.tt_seq = TtxSeq;
    pVoReg->DATE_COEFF0.u32 = DATE_COEFF0.u32;
    return;
}

HI_VOID DRV_VOU_TtxSetAddr(HI_U32 StartAddr, HI_U32 EndAddr)
{
    pVoReg->TtxStartAddr.u32 = StartAddr;
    pVoReg->TtxEndAddr.u32   = EndAddr;
    return;
}

HI_VOID DRV_VOU_TtxSetPackOff(HI_U32 PackOff)
{
    U_DATE_COEFF10  TtxConfig;

    TtxConfig.u32 = pVoReg->TtxConfig.u32;
    TtxConfig.bits.tt_pktoff = PackOff;
    pVoReg->TtxConfig.u32 = TtxConfig.u32;
    return;
}

HI_VOID DRV_VOU_TtxPiorityHighest(HI_BOOL Highest)
{
    U_DATE_COEFF10   TtxConfig;

    TtxConfig.u32 = pVoReg->TtxConfig.u32;
    TtxConfig.bits.tt_highest = !Highest;
    pVoReg->TtxConfig.u32 = TtxConfig.u32;
    return;
}

HI_VOID DRV_VOU_SetTtxFullPage(HI_BOOL Flag)
{
    U_DATE_COEFF10   TtxConfig;

    TtxConfig.u32 = pVoReg->TtxConfig.u32;
    TtxConfig.bits.full_page = Flag;
    pVoReg->TtxConfig.u32 = TtxConfig.u32;
    return;
}

HI_VOID DRV_VOU_TtxSetReady(HI_VOID)
{
    U_DATE_COEFF10   TtxConfig;

    TtxConfig.u32 = pVoReg->TtxConfig.u32;
    TtxConfig.bits.tt_ready = 1;
    pVoReg->TtxConfig.u32 = TtxConfig.u32;
    return;
}

HI_BOOL DRV_VOU_TtxGetReady(HI_VOID)
{
    U_DATE_COEFF10   TtxConfig;

    TtxConfig.u32 = pVoReg->TtxConfig.u32;

    return TtxConfig.u32 & 0x80000000;
}

HI_VOID DRV_VOU_TtxEnableInt(HI_VOID)
{
    U_DATE_ISRMASK DATE_ISRMASK;

    DATE_ISRMASK.u32 = pVoReg->DATE_ISRMASK.u32;
    DATE_ISRMASK.bits.tt_mask = 0;
    pVoReg->DATE_ISRMASK.u32 = DATE_ISRMASK.u32;
    return;
}

HI_VOID DRV_VOU_TtxDisableInt(HI_VOID)
{
    U_DATE_ISRMASK DATE_ISRMASK;

    DATE_ISRMASK.u32 = pVoReg->DATE_ISRMASK.u32;
    DATE_ISRMASK.bits.tt_mask = 1;
    pVoReg->DATE_ISRMASK.u32 = DATE_ISRMASK.u32;

    return;
}

HI_BOOL DRV_VOU_TtxIntStatus(HI_VOID)
{
    return pVoReg->DATE_ISR.u32 & 0x1;
}

HI_VOID DRV_VOU_TtxIntClear(HI_VOID)
{
    U_DATE_ISRSTATE DATE_ISRSTATE;

    DATE_ISRSTATE.u32 = pVoReg->DATE_ISRSTATE.u32;
    DATE_ISRSTATE.u32 = 1;
    pVoReg->DATE_ISRSTATE.u32 = DATE_ISRSTATE.u32;

    return;
}
#endif

#ifdef HI_DISP_CC_SUPPORT
HI_VOID DRV_VOU_CCSetSeq(HI_BOOL CCSeq)
{
    U_DATE_COEFF1  DATE_COEFF1;

    DATE_COEFF1.u32 = pVoReg->DATE_COEFF1.u32;
    DATE_COEFF1.bits.cc_seq = CCSeq;
    pVoReg->DATE_COEFF1.u32 = DATE_COEFF1.u32;
    return;
}

HI_VOID DRV_VOU_CCLineConfig(HI_BOOL TopEnable, HI_BOOL BottomEnable, HI_U16 TopLine, HI_U16 BottomLine)
{
    U_DATE_COEFF11 CCConfig;

    CCConfig.bits.cc_enf1 = TopEnable;
    CCConfig.bits.cc_enf2 = BottomEnable;
    CCConfig.bits.date_clf1 = TopLine;
    CCConfig.bits.date_clf2 = BottomLine;
    pVoReg->CCConfig.u32 = CCConfig.u32;
    return;
}

HI_VOID DRV_VOU_CCDataConfig(HI_U16 TopData, HI_U16 BottomData)
{
    U_DATE_COEFF12 CCData;

    CCData.bits.cc_f1data = TopData;
    CCData.bits.cc_f2data = BottomData;
    pVoReg->CCData.u32 = CCData.u32;
    return;
}
#endif

#ifdef HI_DISP_CGMS_SUPPORT
HI_VOID DRV_VOU_WSSSetSeq(HI_BOOL WSSSeq)
{
    U_DATE_COEFF1   DATE_COEFF1;

    DATE_COEFF1.u32 = pVoReg->DATE_COEFF1.u32;
    DATE_COEFF1.bits.wss_seq = WSSSeq;
    pVoReg->DATE_COEFF1.u32 = DATE_COEFF1.u32;
    return;
}

HI_VOID DRV_VOU_WSSConfig(HI_BOOL WssEnable, HI_U16 WssData)
{
    U_DATE_COEFF15 WSSConfig;

    WSSConfig.bits.wss_en = WssEnable;
    WSSConfig.bits.wss_data = WssData;
    pVoReg->WSSConfig.u32 = WSSConfig.u32;
    return;
}
#endif

#if defined(HI_DISP_CC_SUPPORT) || defined(HI_DISP_TTX_SUPPORT) || defined(HI_DISP_CGMS_SUPPORT)
HI_VOID DRV_VOU_VbiFilterEnable(HI_BOOL VbiFilterEnable)
{
    U_DATE_COEFF0       DATE_COEFF0;

    DATE_COEFF0.u32 = pVoReg->DATE_COEFF0.u32;
    DATE_COEFF0.bits.vbi_lpf_en = VbiFilterEnable;
    pVoReg->DATE_COEFF0.u32 = DATE_COEFF0.u32;
    return;
}
#endif

HI_VOID Vou_SetVoDigitOutSyncSel(HI_U32 u32SyncSel)
{
    U_VOMUX VOMUX;

    /* set vou dac test data */
    VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
    VOMUX.bits.sync_sel = u32SyncSel & 0x3L;
    RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

    return ;
}

HI_VOID Vou_GetDigitOutSyncSel(HI_U32 *u32SyncSel)
{
      U_VOMUX VOMUX;

    /* set vou dac test data */
    VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
    *u32SyncSel = VOMUX.bits.sync_sel;

    return ;
}

/** query synchronization sequence */
HI_BOOL HAL_DISP_GetIntfSync(HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_SYNCINFO_S *pstSyncInfo)
{
    U_DHDCTRL DHDCTRL;
    U_DHDVSYNC DHDVSYNC;
    U_DHDHSYNC1 DHDHSYNC1;
    U_DHDHSYNC2 DHDHSYNC2;
    U_DHDVPLUS DHDVPLUS;

    U_DSDCTRL DSDCTRL;
    U_DSDVSYNC DSDVSYNC;
    U_DSDHSYNC1 DSDHSYNC1;
    U_DSDHSYNC2 DSDHSYNC2;
    U_DSDVPLUS DSDVPLUS;

    if (enChan == HAL_DISP_CHANNEL_DHD)
    {
        DHDCTRL.u32 = pVoReg->DHDCTRL.u32;
        pstSyncInfo->bIop = DHDCTRL.bits.iop;

        /* Config VHD interface horizontal timming */
        if (DHDCTRL.bits.intfb == 0) /*  2clk/pixel */
        {
            DHDHSYNC1.u32 = pVoReg->DHDHSYNC1.u32;
            DHDHSYNC2.u32 = pVoReg->DHDHSYNC2.u32;

            pstSyncInfo->u16Hact = DHDHSYNC1.bits.hact + 1;
            pstSyncInfo->u16Hbb  = (DHDHSYNC1.bits.hbb + 1) / 2;
            pstSyncInfo->u16Hfb  = (DHDHSYNC2.bits.hfb + 1) / 2;
        }
        else
        {
            DHDHSYNC1.u32 = pVoReg->DHDHSYNC1.u32;
            DHDHSYNC2.u32 = pVoReg->DHDHSYNC2.u32;

            pstSyncInfo->u16Hact = DHDHSYNC1.bits.hact + 1;
            pstSyncInfo->u16Hbb  = DHDHSYNC1.bits.hbb + 1;
            pstSyncInfo->u16Hfb  = DHDHSYNC2.bits.hfb + 1;
        }

        /* Config VHD interface veritical timming */
        DHDVSYNC.u32 = pVoReg->DHDVSYNC.u32;
        pstSyncInfo->u16Vact = DHDVSYNC.bits.vact + 1;
        pstSyncInfo->u16Vbb  = DHDVSYNC.bits.vbb + 1;
        pstSyncInfo->u16Vfb  = DHDVSYNC.bits.vfb + 1;

        /* Config VHD interface veritical bottom timming,no use in progressive mode */
        DHDVPLUS.u32 = pVoReg->DHDVPLUS.u32;
        pstSyncInfo->u16Bvact = DHDVPLUS.bits.bvact + 1;
        pstSyncInfo->u16Bvbb  = DHDVPLUS.bits.bvbb + 1;
        pstSyncInfo->u16Bvfb  = DHDVPLUS.bits.bvfb + 1;
    }
    else if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        /* VOU VSD CHANNEL enable */
        DSDCTRL.u32 = pVoReg->DSDCTRL.u32;
        pstSyncInfo->bIop = DSDCTRL.bits.iop;

        /* Config VSD interface horizontal timming */
        if (DSDCTRL.bits.intfb == 0)
        {
            DSDHSYNC1.u32 = pVoReg->DSDHSYNC1.u32;
            DSDHSYNC2.u32 = pVoReg->DSDHSYNC2.u32;

            pstSyncInfo->u16Hact = DSDHSYNC1.bits.hact + 1;
            pstSyncInfo->u16Hbb  = (DSDHSYNC1.bits.hbb + 1) / 2;
            pstSyncInfo->u16Hfb  = (DSDHSYNC2.bits.hfb + 1) / 2;
        }
        else
        {
            DSDHSYNC1.u32 = pVoReg->DSDHSYNC1.u32;
            DSDHSYNC2.u32 = pVoReg->DSDHSYNC2.u32;

            pstSyncInfo->u16Hact = DSDHSYNC1.bits.hact + 1;
            pstSyncInfo->u16Hbb  = DSDHSYNC1.bits.hbb + 1;
            pstSyncInfo->u16Hfb  = DSDHSYNC2.bits.hfb + 1;
        }

        /* Config VSD interface veritical timming */
        DSDVSYNC.u32 = pVoReg->DSDVSYNC.u32;

        pstSyncInfo->u16Vact = DSDVSYNC.bits.vact + 1;
        pstSyncInfo->u16Vbb  = DSDVSYNC.bits.vbb + 1;
        pstSyncInfo->u16Vfb  = DSDVSYNC.bits.vfb + 1;

        /* Config VSD interface veritical bottom timming,no use in progressive mode */
        DSDVPLUS.u32 = pVoReg->DSDVPLUS.u32;
        pstSyncInfo->u16Bvact = DSDVPLUS.bits.bvact + 1;
        pstSyncInfo->u16Bvbb  = DSDVPLUS.bits.bvbb + 1;
        pstSyncInfo->u16Bvfb  = DSDVPLUS.bits.bvfb + 1;
    }
    else
    {
        return HI_FALSE;
    }

    return HI_TRUE;
}



/** select connection of DXD_DATE */
HI_BOOL OPTM_HAL_SetHSDateSelMux(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_S32 s32Value)
{
    U_VOMUX VOMUX;

    switch(enChan)
    {
        case HAL_DISP_CHANNEL_DHD:
        {
            VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
            VOMUX.bits.dsd_to_hd = s32Value;
            RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

            break;
        }
        case HAL_DISP_CHANNEL_DSD:
        {
            VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
            VOMUX.bits.dhd_to_sd = s32Value;
            RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

            break;
        }
        default:
        {
            return HI_FALSE;
        }
    }
    return HI_TRUE;
}

/** query superposition priorities of disp channel */
HI_VOID OPTM_HAL_GetCbmMixerPrio(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U8 *pu8Prio)
{
    if (HAL_DISP_CHANNEL_DHD == enDisp)
    {
         U_CBMMIX1 CBMMIX1;

         CBMMIX1.u32 = RegRead(&(pVoReg->CBMMIX1.u32));

         *pu8Prio++ = CBMMIX1.bits.mixer_prio0;
         *pu8Prio++ = CBMMIX1.bits.mixer_prio1;
         *pu8Prio++ = CBMMIX1.bits.mixer_prio2;
         *pu8Prio++ = CBMMIX1.bits.mixer_prio3;
         *pu8Prio   = CBMMIX1.bits.mixer_prio4;
    }
    else
    {
       U_CBMMIX2 CBMMIX2;

       CBMMIX2.u32 = RegRead(&(pVoReg->CBMMIX2.u32));
       *pu8Prio++ = CBMMIX2.bits.mixer_prio0;
       *pu8Prio++ = CBMMIX2.bits.mixer_prio1;
       *pu8Prio++ = CBMMIX2.bits.mixer_prio2;
       *pu8Prio   = 0;
    }
}

/** query update status of registers */
HI_U32 OPTM_HAL_GetRegUpState(HAL_DISP_LAYER_E enLayer)
{
    HI_U32 nState = 0;
    /*  HAL_DISP_SetZmeRatio(); */
    switch (enLayer)
    {
    case HAL_DISP_LAYER_VIDEO1:
    {
        U_VHDUPD VHDUPD;

        /* VHD layer register update */
        VHDUPD.u32 = RegRead(&(pVoReg->VHDUPD.u32));
        nState = VHDUPD.bits.regup;
        break;
    }

    case HAL_DISP_LAYER_VIDEO3:
    {
        U_VSDUPD VSDUPD;

        /* VSD layer register update */
        VSDUPD.u32 = RegRead(&(pVoReg->VSDUPD.u32));
        nState = VSDUPD.bits.regup;
        break;
    }

    case HAL_DISP_LAYER_GFX0:
    {
        U_G0UPD G0UPD;

        /* G0 layer register update */
        G0UPD.u32 = RegRead(&(pVoReg->G0UPD.u32));
        nState = G0UPD.bits.regup;

        break;
    }
    case HAL_DISP_LAYER_GFX1:
    {
        U_G1UPD G1UPD;

        /* G1 layer register update */
        G1UPD.u32 = RegRead(&(pVoReg->G1UPD.u32));
        nState = G1UPD.bits.regup;
        break;
    }
	case HAL_DISP_LAYER_GFX2:
	case HAL_DISP_LAYER_GFX3:
    {
		U_G2UPD G2UPD;

        /* G1 layer register update */
        G2UPD.u32 = RegRead(&(pVoReg->G2UPD.u32));
        nState = G2UPD.bits.regup;
        break;
    }
    case HAL_DISP_LAYER_WBC0:
    {
        U_WBC0UPD WBC0UPD;

        /* G1 layer register update */
        WBC0UPD.u32 = RegRead(&(pVoReg->WBC0UPD.u32));
        nState = WBC0UPD.bits.regup;
        break;
    }
    default:
    {
        HAL_PRINT("Error,Register update wrong layer ID\n");

        /*  return HI_FALSE; */
    }
    }

    return nState;
}

/** set Gain control of DAC */
HI_BOOL OPTM_HAL_SetDacGc(HI_S32 u32DacNum, HI_S32 s32Gc)
{
    U_DACCTRL0_1   DACCTRL0_1;
    U_DACCTRL2_3   DACCTRL2_3;

    if (u32DacNum > 3)
        return HI_FALSE;

    switch(u32DacNum)
    {
        case 0:
        {
            DACCTRL0_1.u32 = RegRead(&(pVoReg->DACCTRL0_1.u32));
            DACCTRL0_1.bits.dac0gc = s32Gc;
            RegWrite(&(pVoReg->DACCTRL0_1.u32), DACCTRL0_1.u32);

            break;
        }
        case 1:
        {
            DACCTRL0_1.u32 = RegRead(&(pVoReg->DACCTRL0_1.u32));
            DACCTRL0_1.bits.dac1gc = s32Gc;
            RegWrite(&(pVoReg->DACCTRL0_1.u32), DACCTRL0_1.u32);

            break;
        }
        case 2:
        {
            DACCTRL2_3.u32 = RegRead(&(pVoReg->DACCTRL2_3.u32));
            DACCTRL2_3.bits.dac2gc = s32Gc;
            RegWrite(&(pVoReg->DACCTRL2_3.u32), DACCTRL2_3.u32);

            break;
        }
        case 3:
        {
            DACCTRL2_3.u32 = RegRead(&(pVoReg->DACCTRL2_3.u32));
            DACCTRL2_3.bits.dac3gc = s32Gc;
            RegWrite(&(pVoReg->DACCTRL2_3.u32), DACCTRL2_3.u32);
            break;
        }

        default:
        {
            return HI_FALSE;
        }
    }
    return HI_TRUE;
}


/** set Chopper of DAC */
HI_BOOL OPTM_HAL_SetDacChopper(HI_BOOL bEnable)
{
    U_DACCTRL   DACCTRL;

	DACCTRL.u32 = RegRead(&(pVoReg->DACCTRL.u32));
	DACCTRL.bits.envbg = bEnable;
	RegWrite(&(pVoReg->DACCTRL.u32), DACCTRL.u32);
    return HI_TRUE;
}


HI_BOOL OPTM_HAL_SetDacPower_v310(HI_U32 u32DacNum, HI_BOOL bOn,HI_BOOL bAllOn)
{
    U_DACCTRL   DACCTRL;
    U_DACCTRL0_1   DACCTRL0_1;
    U_DACCTRL2_3   DACCTRL2_3;

    if (u32DacNum > 3)
        return HI_FALSE;

    DACCTRL.u32 = RegRead(&(pVoReg->DACCTRL.u32));
    DACCTRL.bits.envbg = bAllOn;
    RegWrite(&(pVoReg->DACCTRL.u32), DACCTRL.u32);

    switch(u32DacNum)
    {
        case 0:
        {
            DACCTRL0_1.u32 = RegRead(&(pVoReg->DACCTRL0_1.u32));
            DACCTRL0_1.bits.endac0 = bOn;
            RegWrite(&(pVoReg->DACCTRL0_1.u32), DACCTRL0_1.u32);

            break;
        }
        case 1:
        {
            DACCTRL0_1.u32 = RegRead(&(pVoReg->DACCTRL0_1.u32));
            DACCTRL0_1.bits.endac1 = bOn;
            RegWrite(&(pVoReg->DACCTRL0_1.u32), DACCTRL0_1.u32);

            break;
        }
        case 2:
        {
            DACCTRL2_3.u32 = RegRead(&(pVoReg->DACCTRL2_3.u32));
            DACCTRL2_3.bits.endac2 = bOn;
            RegWrite(&(pVoReg->DACCTRL2_3.u32), DACCTRL2_3.u32);

            break;
        }
        case 3:
        {
            DACCTRL2_3.u32 = RegRead(&(pVoReg->DACCTRL2_3.u32));
            DACCTRL2_3.bits.endac3 = bOn;
            RegWrite(&(pVoReg->DACCTRL2_3.u32), DACCTRL2_3.u32);

            break;
        }

        default:
        {
            return HI_FALSE;
        }
    }
    return HI_TRUE;
}


/** set DAC enable */
HI_BOOL OPTM_HAL_SetDacPower(HI_U32 u32DacNum, HI_BOOL bOn,HI_BOOL bAllOn)
{
    HI_BOOL ret;

    ret = OPTM_HAL_SetDacPower_v310(u32DacNum, bOn,bAllOn);

    return ret;
}

/** set DAC luma-chroma delay*/
HI_BOOL OPTM_HAL_SetDacDelay(HI_S32 u32DacNum, HI_S32 u32Dly)
{
    U_DATE_COEFF23  DATE_COEFF23;

    switch(u32DacNum)
    {
        case 0:
        {
            DATE_COEFF23.u32 = RegRead(&(pVoReg->DATE_COEFF23.u32));
            DATE_COEFF23.bits.dac0_out_dly = u32Dly;
            RegWrite(&(pVoReg->DATE_COEFF23.u32), DATE_COEFF23.u32);

            break;
        }
        case 1:
        {
            DATE_COEFF23.u32 = RegRead(&(pVoReg->DATE_COEFF23.u32));
            DATE_COEFF23.bits.dac1_out_dly = u32Dly;
            RegWrite(&(pVoReg->DATE_COEFF23.u32), DATE_COEFF23.u32);

            break;
        }
        case 2:
        {
            DATE_COEFF23.u32 = RegRead(&(pVoReg->DATE_COEFF23.u32));
            DATE_COEFF23.bits.dac2_out_dly = u32Dly;
            RegWrite(&(pVoReg->DATE_COEFF23.u32), DATE_COEFF23.u32);

            break;
        }
        case 3:
        {
            DATE_COEFF23.u32 = RegRead(&(pVoReg->DATE_COEFF23.u32));
            DATE_COEFF23.bits.dac3_out_dly = u32Dly;
            RegWrite(&(pVoReg->DATE_COEFF23.u32), DATE_COEFF23.u32);

            break;
        }
        case 4:
        {
            DATE_COEFF23.u32 = RegRead(&(pVoReg->DATE_COEFF23.u32));
            DATE_COEFF23.bits.dac4_out_dly = u32Dly;
            RegWrite(&(pVoReg->DATE_COEFF23.u32), DATE_COEFF23.u32);

            break;
        }
        case 5:
        {
            DATE_COEFF23.u32 = RegRead(&(pVoReg->DATE_COEFF23.u32));
            DATE_COEFF23.bits.dac5_out_dly = u32Dly;
            RegWrite(&(pVoReg->DATE_COEFF23.u32), DATE_COEFF23.u32);

            break;
        }
        default:
        {
            return HI_FALSE;
        }
    }
    return HI_TRUE;
}

#endif

HI_VOID DRV_VOU_SaveVXD(HAL_DISP_LAYER_E enLayer, HI_U32 u32RegVirAddr)
{
    S_VOU_V400_REGS_TYPE  *pVouReg;

    pVouReg = (S_VOU_V400_REGS_TYPE *)u32RegVirAddr;

    /* save VHD Reg */
    if (HAL_DISP_LAYER_VIDEO1 == enLayer)
    {
        memcpy((HI_VOID *)(&(pVouReg->VHDCTRL)), (HI_VOID *)(&(pVoReg->VHDCTRL)), 0x400);

        pVouReg->VHDCTRL.bits.surface_en = 0;
        //pVouReg->VHDCTRL.bits.wbc1_en = 0;
        pVouReg->VHDUPD.u32= 0;
    }
    /* save VAD Reg */

    /* save VSD Reg */
    else
    {
        memcpy((HI_VOID *)(&(pVouReg->VSDCTRL)), (HI_VOID *)(&(pVoReg->VSDCTRL)), 0x200);

        pVouReg->VSDCTRL.bits.surface_en = 0;
        pVouReg->VSDUPD.u32 = 0;
    }

    return;
}

HI_VOID DRV_VOU_RestoreVXD(HAL_DISP_LAYER_E enLayer, HI_U32 u32RegVirAddr)
{
    S_VOU_V400_REGS_TYPE  *pVouReg;

    pVouReg = (S_VOU_V400_REGS_TYPE *)u32RegVirAddr;

    /* restore VHD Reg */
    if (HAL_DISP_LAYER_VIDEO1 == enLayer)
    {
        memcpy((HI_VOID *)(&(pVoReg->VHDCTRL)), (HI_VOID *)(&(pVouReg->VHDCTRL)), 0x400);
    }
    /* restore VAD Reg */

    /* restore VSD Reg */
    else
    {
        memcpy((HI_VOID *)(&(pVoReg->VSDCTRL)), (HI_VOID *)(&(pVouReg->VSDCTRL)), 0x200);
    }

    return;
}

HI_VOID DRV_VOU_SaveWbc(HAL_DISP_LAYER_E enLayer, HI_U32 u32RegVirAddr)
{
    S_VOU_V400_REGS_TYPE  *pVouReg;

    pVouReg = (S_VOU_V400_REGS_TYPE *)u32RegVirAddr;

    /* save WBC0 Reg */
    if (HAL_DISP_LAYER_WBC0 == enLayer)
    {
        memcpy((HI_VOID *)(&(pVouReg->WBC0CTRL)), (HI_VOID *)(&(pVoReg->WBC0CTRL)), 0x100);
        pVouReg->WBC0CTRL.bits.wbc0_en  = 0;
        pVouReg->WBC0UPD.u32 = 0;
    }

    return;
}

HI_VOID DRV_VOU_RestoreWbc(HAL_DISP_LAYER_E enLayer, HI_U32 u32RegVirAddr)
{
    S_VOU_V400_REGS_TYPE  *pVouReg;

    pVouReg = (S_VOU_V400_REGS_TYPE *)u32RegVirAddr;

    /* restore WBC0 Reg */
    if (HAL_DISP_LAYER_WBC0 == enLayer)
    {
        memcpy((HI_VOID *)(&(pVoReg->WBC0CTRL)), (HI_VOID *)(&(pVouReg->WBC0CTRL)), 0x100);
    }

    return;
}

/* save GFX register */
HI_VOID HAL_GFX_SaveDXD(HI_U32 u32RegVirAddr)
{
    S_VOU_V400_REGS_TYPE  *pVouReg;

    pVouReg = (S_VOU_V400_REGS_TYPE *)u32RegVirAddr;

    /* save G0 Reg */
    memcpy((HI_VOID *)(&(pVouReg->G0CTRL)), (HI_VOID *)(&(pVoReg->G0CTRL)), 0x100);
    pVouReg->G0CTRL.bits.surface_en = 0;

    /* save G1 Reg */
    memcpy((HI_VOID *)(&(pVouReg->G1CTRL)), (HI_VOID *)(&(pVoReg->G1CTRL)), 0x100);
    pVouReg->G1CTRL.bits.surface_en = 0;

    /* save WBC2 Reg */
    memcpy((HI_VOID *)(&(pVouReg->WBC2CTRL)), (HI_VOID *)(&(pVoReg->WBC2CTRL)), 0x100);
    pVouReg->WBC2CTRL.bits.wbc2_en = 0;


    return;
}
/* restore GFX register */
HI_VOID HAL_GFX_RestoreDXD(HI_U32 u32RegVirAddr)
{
    S_VOU_V400_REGS_TYPE  *pVouReg;

    pVouReg = (S_VOU_V400_REGS_TYPE *)u32RegVirAddr;

    /* restore G0 Reg */
    memcpy( (HI_VOID *)(&(pVoReg->G0CTRL)), (HI_VOID *)(&(pVouReg->G0CTRL)), 0x100);

    /* restore G1 Reg */
    memcpy( (HI_VOID *)(&(pVoReg->G1CTRL)),(HI_VOID *)(&(pVouReg->G1CTRL)), 0x100);

    /* restore WBC2 Reg */
    memcpy( (HI_VOID *)(&(pVoReg->WBC2CTRL)),(HI_VOID *)(&(pVouReg->WBC2CTRL)), 0x100);

    return;
}

#ifdef HI_DISP_NO_USE_FUNC_SUPPORT
HI_S32 Vou_SetVbi_seq(HI_BOOL bLow2High)
{
    /* from low to high */
    pVoReg->DATE_COEFF1.bits.wss_seq  = bLow2High;
    pVoReg->DATE_COEFF1.bits.cgms_seq = bLow2High;

    return HI_SUCCESS;
}
#endif

#ifdef HI_DISP_CGMS_SUPPORT
/* for type-A, write CGMS data into registers */
HI_S32  Vou_SetCgmsDataTypeA(HAL_DISP_OUTPUTCHANNEL_E enDisp, DISP_CGMS_DATA_S* pstCgmsData)
{
    U_HDATE_CGMSA_DATA tmpData;
    U_DATE_COEFF13     tmpCoeff13;
    U_DATE_COEFF14     tmpCoeff14;

    //DEBUG_PRINTK("\n#%s, %d, 0x%X\n",__FUNCTION__, __LINE__, pstCgmsData->cgms_a_data.u32);

    /* ckeck the validity of pointer */
    if (HI_NULL == pstCgmsData)
    {
        HI_ERR_DISP("DISP: an Null pointer.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    /* disable CGMS type-A */
    Vou_SetCgmsEnable(enDisp, HI_FALSE, DISP_CGMS_TYPE_A);

    /* HD0 */
    if(HAL_DISP_CHANNEL_DHD == enDisp)//HAL_DISP_CHANNEL_DHD
    {
        tmpData.u32 = RegRead(&(pVoReg->HDATE_CGMSA_DATA.u32));
        tmpData.bits.cgmsa_data = pstCgmsData->cgms_a_data.bits.cgms_a_w;

        /* write CGMS A-type data*/
        RegWrite(&(pVoReg->HDATE_CGMSA_DATA.u32), tmpData.u32);
    }
    /* SD0 */
    else if(HAL_DISP_CHANNEL_DSD == enDisp)//HAL_DISP_CHANNEL_DSD
    {
        /* top/bottom field*/
        tmpCoeff13.u32 = RegRead(&(pVoReg->DATE_COEFF13.u32));//cg_f1data, odd field
        tmpCoeff14.u32 = RegRead(&(pVoReg->DATE_COEFF14.u32));//cg_f2data, even field

        tmpCoeff13.bits.cg_f1data = pstCgmsData->cgms_a_data.bits.cgms_a_w;
        tmpCoeff14.bits.cg_f2data = pstCgmsData->cgms_a_data.bits.cgms_a_w;

        RegWrite(&(pVoReg->DATE_COEFF13.u32), tmpCoeff13.u32);
        RegWrite(&(pVoReg->DATE_COEFF14.u32), tmpCoeff14.u32);
    }
    else
    {
        HAL_PRINT("Error! Vou_SetCgmsDataTypeA error!\n");
        return HI_FAILURE;
    }

    /* enable CGMS type-A */
    Vou_SetCgmsEnable(enDisp, HI_TRUE, DISP_CGMS_TYPE_A);

    return HI_SUCCESS;
}

/* for type-B, write CGMS data into registers */
HI_S32  Vou_SetCgmsDataTypeB(HAL_DISP_OUTPUTCHANNEL_E enDisp, DISP_CGMS_DATA_S* stCgmsData)
{
    //DEBUG_PRINTK("#%s, %d\n",__FUNCTION__, __LINE__);

    /* ckeck the validity of pointer */
    if (HI_NULL == stCgmsData)
    {
        HI_ERR_DISP("DISP: an Null pointer.\n");
        return HI_ERR_DISP_NULL_PTR;
    }

    /* disable CGMS type-B */
    Vou_SetCgmsEnable(enDisp, HI_FALSE, DISP_CGMS_TYPE_B);

    #if 0
    tmpData.u32 = RegRead(&(pVoReg->HDATE_CGMSB_H.u32);//bits.hdate_cgmsb_h
    tmpData.bits.hdate_cgmsb_h = stCgmsData->cgms_b_data.cgms_b_h;

    /* write CGMS B-type data*/
    RegWrite(&(pVoReg->HDATE_CGMSB_H.u32), tmpData);

    RegWrite(&(pVoReg->HDATE_CGMSB_DATA1.u32), stCgmsData->cgms_b_data.cgms_b_w1);
    RegWrite(&(pVoReg->HDATE_CGMSB_DATA2.u32), stCgmsData->cgms_b_data.cgms_b_w2);
    RegWrite(&(pVoReg->HDATE_CGMSB_DATA3.u32), stCgmsData->cgms_b_data.cgms_b_w3);
    RegWrite(&(pVoReg->HDATE_CGMSB_DATA4.u32), stCgmsData->cgms_b_data.cgms_b_w4);
    #endif

    /* enable CGMS type-B */
    Vou_SetCgmsEnable(enDisp, HI_TRUE, DISP_CGMS_TYPE_B);


    return HI_SUCCESS;
}

/* set CGMS enable status */
HI_S32  Vou_SetCgmsEnable(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bEnable, DISP_CGMS_TYPE_E enType)
{
    /* for HD*/
    U_HDATE_VBI_CTRL hd_vbi_ctrl;

    /* for SD*/
    U_DATE_COEFF13   sd_cgms_ctrl;//cg_enf2, cg_enf1

    /* for HD*/
    if(HAL_DISP_CHANNEL_DHD == enDisp)//HAL_DISP_CHANNEL_DHD
    {
        hd_vbi_ctrl.u32 = RegRead(&(pVoReg->HDATE_VBI_CTRL.u32));

        if(DISP_CGMS_TYPE_A == enType)
        {
            hd_vbi_ctrl.bits.cgmsa_add_en = bEnable;
        }
        else if(DISP_CGMS_TYPE_B == enType)
        {
            hd_vbi_ctrl.bits.cgmsb_add_en = bEnable;
        }
        else
        {
            HAL_PRINT("Error! Vou_SetCgms enable error!\n");
            return HI_FAILURE;
        }

        RegWrite(&(pVoReg->HDATE_VBI_CTRL.u32), hd_vbi_ctrl.u32);
    }
    /* for SD*/
    else if(HAL_DISP_CHANNEL_DSD == enDisp)//HAL_DISP_CHANNEL_DSD
    {
        sd_cgms_ctrl.u32 = RegRead(&(pVoReg->DATE_COEFF13.u32));

        if(DISP_CGMS_TYPE_A == enType)
        {
            sd_cgms_ctrl.bits.cg_enf2 = bEnable;
            sd_cgms_ctrl.bits.cg_enf1 = bEnable;
        }
        else
        {
            HAL_PRINT("Error! Vou_SetCgms (SD) enable supports A-type only!\n");
            return HI_FAILURE;
        }

        RegWrite(&(pVoReg->DATE_COEFF13.u32), sd_cgms_ctrl.u32);
    }
    else
    {
        HAL_PRINT("Error! Vou_SetCgms enable error!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;

}
#endif

HI_VOID HAL_DISP_SetDataMux(HAL_DISP_VO_PDATA_CH_E eDataCh, HAL_DISP_VO_PDATA_SEL_E eDataSel)
{
    U_VOMUX VOMUX;

    switch(eDataCh)
    {
        case HAL_DISP_DATA_SEL0:
        {
            VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
            VOMUX.bits.data_sel0 = eDataSel;
            RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

            break;
        }
        case HAL_DISP_DATA_SEL1:
        {
            VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
            VOMUX.bits.data_sel1 = eDataSel;
            RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

            break;
        }
        case HAL_DISP_DATA_SEL2:
        {
            VOMUX.u32 = RegRead(&(pVoReg->VOMUX.u32));
            VOMUX.bits.data_sel2 = eDataSel;
            RegWrite(&(pVoReg->VOMUX.u32), VOMUX.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Wrong pDATA Select\n");
            return ;
        }
    }
    return ;
}
HI_VOID OPTM_HAL_SetDataMux(HAL_DISP_VO_PDATA_CH_E eDataCh, HAL_DISP_VO_PDATA_SEL_E eDataSel)
{
    HAL_DISP_SetDataMux(eDataCh, eDataSel);
    return ;
}

//解压缩使能
HI_VOID  OPTM_HAL_SetLayerDeCmpEnable(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDCTRL VHDCTRL;
    //U_VADCTRL VADCTRL;
    U_VSDCTRL VSDCTRL;
    U_G0CTRL  G0CTRL;
    U_G1CTRL  G1CTRL;
//    U_G2CTRL  G2CTRL;
    //U_VEDCTRL VEDCTRL;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
//            VHDCTRL.bits.decmp_en = u32Data;
            RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);
            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
            //VSDCTRL.bits.decmp_en = u32Data;
            RegWrite(&(pVoReg->VSDCTRL.u32), VSDCTRL.u32);

            break;
        }

        case HAL_DISP_LAYER_GFX0:
        {
            G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
            G0CTRL.bits.decmp_en = u32Data;
            RegWrite(&(pVoReg->G0CTRL.u32), G0CTRL.u32);

            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
            G1CTRL.bits.decmp_en = u32Data;
            RegWrite(&(pVoReg->G1CTRL.u32), G1CTRL.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error,Vou_SetLayerDempEnable() Wrong layer ID\n");
            return ;
        }
    }

    return ;
}

HI_VOID OPTM_HAL_SetWbcCmpMode(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_WBC2CTRL WBC2CTRL;
    U_WBC3CTRL WBC3CTRL;

    if (enLayer == HAL_DISP_LAYER_WBC2)
    {
        WBC2CTRL.u32 = RegRead(&(pVoReg->WBC2CTRL.u32));
        WBC2CTRL.bits.wbc2_cmp_mode = u32Data;
        RegWrite(&(pVoReg->WBC2CTRL.u32), WBC2CTRL.u32);
    }
    else if (enLayer == HAL_DISP_LAYER_WBC3)
    {
        WBC3CTRL.u32 = RegRead(&(pVoReg->WBC3CTRL.u32));
        WBC3CTRL.bits.wbc3_cmp_mode = u32Data;
        RegWrite(&(pVoReg->WBC3CTRL.u32), WBC3CTRL.u32);
    }
    else
    {
        HAL_PRINT("Error! Vou_SetWbcCmpMode() enLayer error!\n");
    }

    return ;
}
//图形层解压缩数据(G0B0G1B1)地址
HI_VOID OPTM_HAL_SetGfxCmpAddr(HAL_DISP_LAYER_E enLayer, HI_U32 u32CmpAddr)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0CMPADDR G0CMPADDR;

            G0CMPADDR.u32 = u32CmpAddr;
            RegWrite(&(pVoReg->G0CMPADDR.u32), G0CMPADDR.u32);
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        {
            U_G1CMPADDR G1CMPADDR;

            G1CMPADDR.u32 = u32CmpAddr;
            RegWrite(&(pVoReg->G1CMPADDR.u32), G1CMPADDR.u32);
            break;
        }
        case HAL_DISP_LAYER_WBC2:
        {
            U_WBC2CMPADDR WBC2CMPADDR;

            WBC2CMPADDR.u32 = u32CmpAddr;
            RegWrite(&(pVoReg->WBC2CMPADDR.u32), WBC2CMPADDR.u32);
            break;
        }
        case HAL_DISP_LAYER_WBC3:
        {
            U_WBC3CMPADDR WBC3CMPADDR;

            WBC3CMPADDR.u32 = u32CmpAddr;
            RegWrite(&(pVoReg->WBC3CMPADDR.u32), WBC3CMPADDR.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error,Set graphic layer stride select wrong layer ID\n");

            //return ;
        }
    }

    //return ;
}

/***************************************************************************************
* func          : OPTM_HAL_SetGfxTriDimEnable
* description   : CNcomment: 设置3D使能 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID OPTM_HAL_SetGfxTriDimEnable(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0CTRL G0CTRL;

            G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
            G0CTRL.bits.trid_en = u32Data;
            RegWrite(&(pVoReg->G0CTRL.u32), G0CTRL.u32);
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        case HAL_DISP_LAYER_WBC2:
        {
            U_G1CTRL G1CTRL;

            G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
            G1CTRL.bits.trid_en = u32Data;
            RegWrite(&(pVoReg->G1CTRL.u32), G1CTRL.u32);
            break;
        }
		case HAL_DISP_LAYER_GFX2:
        {
            U_G2CTRL G2CTRL;

            G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
            G2CTRL.bits.trid_en = u32Data;
            RegWrite(&(pVoReg->G2CTRL.u32), G2CTRL.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error,Vou_SetGfxTriDimEnable() select wrong layer ID\n");

            return ;
        }
    }

    return ;

}



// 3D 模式选择
HI_VOID OPTM_HAL_SetGfxTriDimMode(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0CTRL G0CTRL;

            G0CTRL.u32 = RegRead(&(pVoReg->G0CTRL.u32));
            G0CTRL.bits.trid_mode = u32Data;
            RegWrite(&(pVoReg->G0CTRL.u32), G0CTRL.u32);
            break;
        }
        case HAL_DISP_LAYER_GFX1:
        case HAL_DISP_LAYER_WBC2:
        {
            U_G1CTRL G1CTRL;

            G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
            G1CTRL.bits.trid_mode = u32Data;
            RegWrite(&(pVoReg->G1CTRL.u32), G1CTRL.u32);
            break;
        }
		case HAL_DISP_LAYER_GFX2:
        {
            U_G2CTRL G2CTRL;

            G2CTRL.u32 = RegRead(&(pVoReg->G2CTRL.u32));
            G2CTRL.bits.trid_mode = u32Data;
            RegWrite(&(pVoReg->G2CTRL.u32), G2CTRL.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error,Vou_SetGfxTriDimMode() select wrong layer ID\n");

            return ;
        }
    }

    return ;
}


/***************************************************************************************
* func          : OPTM_HAL_SetGfxSrcFromWbc2
* description   : CNcomment: 源来自回写数据源 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID OPTM_HAL_SetGfxSrcFromWbc2(HI_BOOL bFromWbc2)
{

     U_G1CTRL G1CTRL;

     G1CTRL.u32 = RegRead(&(pVoReg->G1CTRL.u32));
     G1CTRL.bits.trid_src = bFromWbc2;
     RegWrite(&(pVoReg->G1CTRL.u32), G1CTRL.u32);

    return ;
}
// LTI/CTI
HI_VOID  Vou_SetTiEnable(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U32 u32En)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDLTICTRL VHDLTICTRL;
            U_VHDCTICTRL VHDCTICTRL;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDLTICTRL.u32 = RegRead(&(pVoReg->VHDLTICTRL.u32));
                VHDLTICTRL.bits.lti_en = u32En;
                RegWrite(&(pVoReg->VHDLTICTRL.u32), VHDLTICTRL.u32);
            }

            if((u32Md == HAL_DISP_TIMODE_CHM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDCTICTRL.u32 = RegRead(&(pVoReg->VHDCTICTRL.u32));
                VHDCTICTRL.bits.cti_en = u32En;
                RegWrite(&(pVoReg->VHDCTICTRL.u32), VHDCTICTRL.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0LTICTRL G0LTICTRL;
            U_G0CTICTRL G0CTICTRL;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0LTICTRL.u32 = RegRead(&(pVoReg->G0LTICTRL.u32));
                G0LTICTRL.bits.lti_en = u32En;
                RegWrite(&(pVoReg->G0LTICTRL.u32), G0LTICTRL.u32);
            }

            if((u32Md == HAL_DISP_TIMODE_CHM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0CTICTRL.u32 = RegRead(&(pVoReg->G0CTICTRL.u32));
                G0CTICTRL.bits.cti_en = u32En;
                RegWrite(&(pVoReg->G0CTICTRL.u32), G0CTICTRL.u32);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error, Vou_SetTiEnable() select wrong layer ID\n");

            return ;
        }
    }

    return ;
}

HI_VOID  Vou_SetTiGainRatio(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U32 u32Data)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDLTICTRL VHDLTICTRL;
            U_VHDCTICTRL VHDCTICTRL;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDLTICTRL.u32 = RegRead(&(pVoReg->VHDLTICTRL.u32));
                VHDLTICTRL.bits.lgain_ratio = u32Data;
                RegWrite(&(pVoReg->VHDLTICTRL.u32), VHDLTICTRL.u32);
            }

            if((u32Md == HAL_DISP_TIMODE_CHM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDCTICTRL.u32 = RegRead(&(pVoReg->VHDCTICTRL.u32));
                VHDCTICTRL.bits.cgain_ratio = u32Data;
                RegWrite(&(pVoReg->VHDCTICTRL.u32), VHDCTICTRL.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0LTICTRL G0LTICTRL;
            U_G0CTICTRL G0CTICTRL;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0LTICTRL.u32 = RegRead(&(pVoReg->G0LTICTRL.u32));
                G0LTICTRL.bits.lgain_ratio = u32Data;
                RegWrite(&(pVoReg->G0LTICTRL.u32), G0LTICTRL.u32);
            }

            if((u32Md == HAL_DISP_TIMODE_CHM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0CTICTRL.u32 = RegRead(&(pVoReg->G0CTICTRL.u32));
                G0CTICTRL.bits.cgain_ratio = u32Data;
                RegWrite(&(pVoReg->G0CTICTRL.u32), G0CTICTRL.u32);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error, Vou_SetTiGainRatio() select wrong layer ID\n");

            return ;
        }
    }

    return ;
}

HI_VOID  Vou_SetTiMixRatio(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U32 u32Data)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDLTICTRL VHDLTICTRL;
            U_VHDCTICTRL VHDCTICTRL;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDLTICTRL.u32 = RegRead(&(pVoReg->VHDLTICTRL.u32));
                VHDLTICTRL.bits.lmixing_ratio = u32Data;
                RegWrite(&(pVoReg->VHDLTICTRL.u32), VHDLTICTRL.u32);
            }

            if((u32Md == HAL_DISP_TIMODE_CHM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDCTICTRL.u32 = RegRead(&(pVoReg->VHDCTICTRL.u32));
                VHDCTICTRL.bits.cmixing_ratio = u32Data;
                RegWrite(&(pVoReg->VHDCTICTRL.u32), VHDCTICTRL.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0LTICTRL G0LTICTRL;
            U_G0CTICTRL G0CTICTRL;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0LTICTRL.u32 = RegRead(&(pVoReg->G0LTICTRL.u32));
                G0LTICTRL.bits.lmixing_ratio = u32Data;
                RegWrite(&(pVoReg->G0LTICTRL.u32), G0LTICTRL.u32);
            }

            if((u32Md == HAL_DISP_TIMODE_CHM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0CTICTRL.u32 = RegRead(&(pVoReg->G0CTICTRL.u32));
                G0CTICTRL.bits.cmixing_ratio = u32Data;
                RegWrite(&(pVoReg->G0CTICTRL.u32), G0CTICTRL.u32);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error, Vou_SetTiMixRatio() select wrong layer ID\n");

            return ;
        }
    }

    return ;
}

HI_VOID  Vou_SetTiHfThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U16 * u16Data)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDLHFREQTHD VHDLHFREQTHD;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDLHFREQTHD.u32 = RegRead(&(pVoReg->VHDLHFREQTHD.u32));

                VHDLHFREQTHD.bits.lhfreq_thd0 = u16Data[0];
                VHDLHFREQTHD.bits.lhfreq_thd1 = u16Data[1];

                RegWrite(&(pVoReg->VHDLHFREQTHD.u32), VHDLHFREQTHD.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0LHFREQTHD G0LHFREQTHD;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0LHFREQTHD.u32 = RegRead(&(pVoReg->G0LHFREQTHD.u32));

                G0LHFREQTHD.bits.lhfreq_thd0 = u16Data[0];
                G0LHFREQTHD.bits.lhfreq_thd1 = u16Data[1];

                RegWrite(&(pVoReg->G0LHFREQTHD.u32), G0LHFREQTHD.u32);
            }

            break;
        }

        default:
        {
            HAL_PRINT("Error, Vou_SetTiHfTHD() select wrong layer ID\n");

            return ;
        }
    }

    return ;
}

HI_VOID  Vou_SetTiHpCoef(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_S8 * s8Data)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDLTICTRL VHDLTICTRL;
            U_VHDCTICTRL VHDCTICTRL;
            U_VHDLHPASSCOEF VHDLHPASSCOEF;
            U_VHDCHPASSCOEF VHDCHPASSCOEF;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDLTICTRL.u32 = RegRead(&(pVoReg->VHDLTICTRL.u32));
                VHDLHPASSCOEF.u32 = RegRead(&(pVoReg->VHDLHPASSCOEF.u32));

                VHDLHPASSCOEF.bits.lhpass_coef0 = s8Data[0];
                VHDLHPASSCOEF.bits.lhpass_coef1 = s8Data[1];
                VHDLHPASSCOEF.bits.lhpass_coef2 = s8Data[2];
                VHDLHPASSCOEF.bits.lhpass_coef3 = s8Data[3];
                VHDLTICTRL.bits.lhpass_coef4    = s8Data[4];

                RegWrite(&(pVoReg->VHDLTICTRL.u32), VHDLTICTRL.u32);
                RegWrite(&(pVoReg->VHDLHPASSCOEF.u32), VHDLHPASSCOEF.u32);
            }

            if((u32Md == HAL_DISP_TIMODE_CHM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDCTICTRL.u32 = RegRead(&(pVoReg->VHDCTICTRL.u32));
                VHDCHPASSCOEF.u32 = RegRead(&(pVoReg->VHDCHPASSCOEF.u32));

                VHDCHPASSCOEF.bits.chpass_coef0 = s8Data[0];
                VHDCHPASSCOEF.bits.chpass_coef1 = s8Data[1];
                VHDCHPASSCOEF.bits.chpass_coef2 = s8Data[2];

                RegWrite(&(pVoReg->VHDCTICTRL.u32), VHDCTICTRL.u32);
                RegWrite(&(pVoReg->VHDCHPASSCOEF.u32), VHDCHPASSCOEF.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0LTICTRL G0LTICTRL;
            U_G0CTICTRL G0CTICTRL;
            U_G0LHPASSCOEF G0LHPASSCOEF;
            U_G0CHPASSCOEF G0CHPASSCOEF;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0LTICTRL.u32 = RegRead(&(pVoReg->G0LTICTRL.u32));
                G0LHPASSCOEF.u32 = RegRead(&(pVoReg->G0LHPASSCOEF.u32));

                G0LHPASSCOEF.bits.lhpass_coef0 = s8Data[0];
                G0LHPASSCOEF.bits.lhpass_coef1 = s8Data[1];
                G0LHPASSCOEF.bits.lhpass_coef2 = s8Data[2];
                G0LHPASSCOEF.bits.lhpass_coef3 = s8Data[3];
                G0LTICTRL.bits.lhpass_coef4    = s8Data[4];

                RegWrite(&(pVoReg->G0LTICTRL.u32), G0LTICTRL.u32);
                RegWrite(&(pVoReg->G0LHPASSCOEF.u32), G0LHPASSCOEF.u32);
            }

            if((u32Md == HAL_DISP_TIMODE_CHM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0CTICTRL.u32 = RegRead(&(pVoReg->G0CTICTRL.u32));
                G0CHPASSCOEF.u32 = RegRead(&(pVoReg->G0CHPASSCOEF.u32));

                G0CHPASSCOEF.bits.chpass_coef0 = s8Data[0];
                G0CHPASSCOEF.bits.chpass_coef1 = s8Data[1];
                G0CHPASSCOEF.bits.chpass_coef2 = s8Data[2];

                RegWrite(&(pVoReg->G0CTICTRL.u32), G0CTICTRL.u32);
                RegWrite(&(pVoReg->G0CHPASSCOEF.u32), G0CHPASSCOEF.u32);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error, Vou_SetTiHpCoef() select wrong layer ID\n");

            return ;
        }
    }

    return ;
}

HI_VOID  Vou_SetTiCoringThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U32 u32Data)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDLTITHD VHDLTITHD;
            U_VHDCTITHD VHDCTITHD;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDLTITHD.u32 = RegRead(&(pVoReg->VHDLTITHD.u32));
                VHDLTITHD.bits.lcoring_thd = u32Data;
                RegWrite(&(pVoReg->VHDLTITHD.u32), VHDLTITHD.u32);
            }

            if((u32Md == HAL_DISP_TIMODE_CHM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDCTITHD.u32 = RegRead(&(pVoReg->VHDCTITHD.u32));
                VHDCTITHD.bits.ccoring_thd = u32Data;
                RegWrite(&(pVoReg->VHDCTITHD.u32), VHDCTITHD.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0LTITHD G0LTITHD;
            U_G0CTITHD G0CTITHD;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0LTITHD.u32 = RegRead(&(pVoReg->G0LTITHD.u32));
                G0LTITHD.bits.lcoring_thd = u32Data;
                RegWrite(&(pVoReg->G0LTITHD.u32), G0LTITHD.u32);
            }

            if((u32Md == HAL_DISP_TIMODE_CHM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0CTITHD.u32 = RegRead(&(pVoReg->G0CTITHD.u32));
                G0CTITHD.bits.ccoring_thd = u32Data;
                RegWrite(&(pVoReg->G0CTITHD.u32), G0CTITHD.u32);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error, Vou_SetTiCoringThd() select wrong layer ID\n");

            return ;
        }
    }

    return ;
}


HI_VOID  Vou_SetTiGainCoef(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U8 * u8Data)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDLGAINCOEF VHDLGAINCOEF;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDLGAINCOEF.u32 = RegRead(&(pVoReg->VHDLGAINCOEF.u32));

                VHDLGAINCOEF.bits.lgain_coef0 = u8Data[0];
                VHDLGAINCOEF.bits.lgain_coef1 = u8Data[1];
                VHDLGAINCOEF.bits.lgain_coef2 = u8Data[2];

                RegWrite(&(pVoReg->VHDLGAINCOEF.u32), VHDLGAINCOEF.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0LGAINCOEF G0LGAINCOEF;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0LGAINCOEF.u32 = RegRead(&(pVoReg->G0LGAINCOEF.u32));

                G0LGAINCOEF.bits.lgain_coef0 = u8Data[0];
                G0LGAINCOEF.bits.lgain_coef1 = u8Data[1];
                G0LGAINCOEF.bits.lgain_coef2 = u8Data[2];

                RegWrite(&(pVoReg->G0LGAINCOEF.u32), G0LGAINCOEF.u32);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error, Vou_SetTiHpCoef() select wrong layer ID\n");

            return ;
        }
    }

    return ;
}
HI_VOID  Vou_SetTiSwing(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U32 u32Data,HI_U32 u32Data1)
{
    switch (enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDLTITHD VHDLTITHD;
            U_VHDCTITHD VHDCTITHD;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDLTITHD.u32 = RegRead(&(pVoReg->VHDLTITHD.u32));
                VHDLTITHD.bits.lover_swing  = u32Data;
                VHDLTITHD.bits.lunder_swing = u32Data1;
                RegWrite(&(pVoReg->VHDLTITHD.u32), VHDLTITHD.u32);
            }

            if((u32Md == HAL_DISP_TIMODE_CHM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                VHDCTITHD.u32 = RegRead(&(pVoReg->VHDCTITHD.u32));
                VHDCTITHD.bits.cover_swing  = u32Data;
                VHDCTITHD.bits.cunder_swing = u32Data1;
                RegWrite(&(pVoReg->VHDCTITHD.u32), VHDCTITHD.u32);
            }

            break;
        }
        case HAL_DISP_LAYER_GFX0:
        {
            U_G0LTITHD G0LTITHD;
            U_G0CTITHD G0CTITHD;

            if((u32Md == HAL_DISP_TIMODE_LUM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0LTITHD.u32 = RegRead(&(pVoReg->G0LTITHD.u32));
                G0LTITHD.bits.lover_swing  = u32Data;
                G0LTITHD.bits.lunder_swing = u32Data1;
                RegWrite(&(pVoReg->G0LTITHD.u32), G0LTITHD.u32);
            }

            if((u32Md == HAL_DISP_TIMODE_CHM)||(u32Md == HAL_DISP_TIMODE_ALL))
            {
                G0CTITHD.u32 = RegRead(&(pVoReg->G0CTITHD.u32));
                G0CTITHD.bits.cover_swing  = u32Data;
                G0CTITHD.bits.cunder_swing = u32Data1;
                RegWrite(&(pVoReg->G0CTITHD.u32), G0CTITHD.u32);
            }

            break;
        }
        default:
        {
            HAL_PRINT("Error, Vou_SetTiSwing() select wrong layer ID\n");

            return ;
        }
    }

    return ;
}


// crop
HI_VOID Vou_SetCropReso(HAL_DISP_LAYER_E enLayer, HAL_DISP_RECT_S stVideoRect)
{
    U_VHDCFPOS VHDCFPOS;
    U_VHDCLPOS VHDCLPOS;

    U_VSDCFPOS VSDCFPOS;
    U_VSDCLPOS VSDCLPOS;



    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            /* crop position */
            VHDCFPOS.u32 = RegRead(&(pVoReg->VHDCFPOS.u32));
            VHDCFPOS.bits.crop_xfpos = stVideoRect.s32CXS;
            VHDCFPOS.bits.crop_yfpos = stVideoRect.s32CYS;
            RegWrite(&(pVoReg->VHDCFPOS.u32), VHDCFPOS.u32);

            VHDCLPOS.u32 = RegRead(&(pVoReg->VHDCLPOS.u32));
            VHDCLPOS.bits.crop_xlpos = stVideoRect.s32CXL-1;
            VHDCLPOS.bits.crop_ylpos = stVideoRect.s32CYL-1;
            RegWrite(&(pVoReg->VHDCLPOS.u32), VHDCLPOS.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            /* crop position */
            VSDCFPOS.u32 = RegRead(&(pVoReg->VSDCFPOS.u32));
            VSDCFPOS.bits.crop_xfpos = stVideoRect.s32CXS;
            VSDCFPOS.bits.crop_yfpos = stVideoRect.s32CYS;
            RegWrite(&(pVoReg->VSDCFPOS.u32), VSDCFPOS.u32);

            VSDCLPOS.u32 = RegRead(&(pVoReg->VSDCLPOS.u32));
            VSDCLPOS.bits.crop_xlpos = stVideoRect.s32CXL-1;
            VSDCLPOS.bits.crop_ylpos = stVideoRect.s32CYL-1;
            RegWrite(&(pVoReg->VSDCLPOS.u32), VSDCLPOS.u32);


            break;
        }


        default:
        {
            HAL_PRINT("Error, HAL_SetVideoCrop layer is error!\n");
            return ;
        }
    }

    return ;
}



HI_VOID Vou_SetSrcReso(HAL_DISP_LAYER_E enLayer, HAL_DISP_RECT_S stReso)
{
    U_VHDSRCRESO VHDSRCRESO;
    //U_VADSRCRESO VADSRCRESO;
    U_VSDSRCRESO VSDSRCRESO;
    //U_VEDSRCRESO VEDSRCRESO;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDSRCRESO.u32 = RegRead(&(pVoReg->VHDSRCRESO.u32));


            VHDSRCRESO.bits.iw = stReso.u32InWidth  - 1;
            VHDSRCRESO.bits.ih = stReso.u32InHeight - 1;

            RegWrite(&(pVoReg->VHDSRCRESO.u32), VHDSRCRESO.u32);

            break;
        }

        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDSRCRESO.u32 = RegRead(&(pVoReg->VSDSRCRESO.u32));
            VSDSRCRESO.bits.iw = stReso.u32InWidth  - 1;
            VSDSRCRESO.bits.ih = stReso.u32InHeight - 1;
            RegWrite(&(pVoReg->VSDSRCRESO.u32), VSDSRCRESO.u32);
            break;
        }

        default:
        {
            HAL_PRINT("Error, Vou_SetSrcReso layer is error!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdMovThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDLASITHD VHDPDLASITHD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDLASITHD.u32 = RegRead(&(pVoReg->VHDPDLASITHD.u32));
            VHDPDLASITHD.bits.mov_thd = u32Data;
            RegWrite(&(pVoReg->VHDPDLASITHD.u32), VHDPDLASITHD.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdEdgeThd() Selected Wrong Layer ID!\n");
            return ;
        }
    }
    return ;
}

HI_VOID Vou_SetPdMovCoringTkr(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDPCCMOVCORING VHDPDPCCMOVCORING;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDPCCMOVCORING.u32 = RegRead(&(pVoReg->VHDPDPCCMOVCORING.u32));
            VHDPDPCCMOVCORING.bits.mcoring_tkr = u32Data;
            RegWrite(&(pVoReg->VHDPDPCCMOVCORING.u32), VHDPDPCCMOVCORING.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdMOvCoringTkr() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdMovCoringBlk(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDPCCMOVCORING VHDPDPCCMOVCORING;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDPCCMOVCORING.u32 = RegRead(&(pVoReg->VHDPDPCCMOVCORING.u32));
            VHDPDPCCMOVCORING.bits.mcoring_blk = u32Data;
            RegWrite(&(pVoReg->VHDPDPCCMOVCORING.u32), VHDPDPCCMOVCORING.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdMovCoringBlk() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdMovCoringNorm(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDPCCMOVCORING VHDPDPCCMOVCORING;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDPCCMOVCORING.u32 = RegRead(&(pVoReg->VHDPDPCCMOVCORING.u32));
            VHDPDPCCMOVCORING.bits.mcoring_norm = u32Data;
            RegWrite(&(pVoReg->VHDPDPCCMOVCORING.u32), VHDPDPCCMOVCORING.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdMovCoringNorm() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}

HI_VOID Vou_SetPdIchdThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    U_VHDPDICHDTHD VHDPDICHDTHD;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDPDICHDTHD.u32 = RegRead(&(pVoReg->VHDPDICHDTHD.u32));
            VHDPDICHDTHD.bits.bist_mov2r = u32Data;
            RegWrite(&(pVoReg->VHDPDICHDTHD.u32), VHDPDICHDTHD.u32);

            break;
        }
        default:
        {
            HAL_PRINT("Error! Vou_SetPdIchdThd() Selected Wrong Layer ID!\n");
            return ;
        }
    }

    return ;
}


HI_VOID Vou_SetDrawMode(HAL_DISP_LAYER_E enLayer, HI_U32 draw_mode)
{
    U_VHDDRAWMODE VHDDRAWMODE;
    //U_VADDRAWMODE VADDRAWMODE;
    U_VSDDRAWMODE VSDDRAWMODE;
    //U_VEDDRAWMODE VEDDRAWMODE;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDDRAWMODE.u32 = RegRead(&(pVoReg->VHDDRAWMODE.u32));
            VHDDRAWMODE.bits. draw_mode = draw_mode;
            RegWrite(&(pVoReg->VHDDRAWMODE.u32), VHDDRAWMODE.u32);
            break;
        }
        case HAL_DISP_LAYER_VIDEO3:
        {
            VSDDRAWMODE.u32 = RegRead(&(pVoReg->VSDDRAWMODE.u32));
            VSDDRAWMODE.bits.draw_mode = draw_mode;
            RegWrite(&(pVoReg->VSDDRAWMODE.u32), VSDDRAWMODE.u32);
            break;
        }
        default:
        {
            HAL_PRINT("Error, Vou_SetSrcReso layer is error!\n");
            return ;
        }
    }

    return ;
}

HI_VOID OPTM_HAL_SetDatepYbpr_lpf_en(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bYbpr_lpf_en)
{
    if (HAL_DISP_CHANNEL_DSD == enChan){
             U_DATE_COEFF0 DATE_COEFF0;

             DATE_COEFF0.u32 = RegRead(&(pVoReg->DATE_COEFF0.u32));
             DATE_COEFF0.bits.pbpr_lpf_en = bYbpr_lpf_en;
             RegWrite(&(pVoReg->DATE_COEFF0.u32), DATE_COEFF0.u32);
    }

    return;
}

#if 0
HI_VOID HAL_GetVHDInZmeReso(HAL_DISP_LAYER_E enLayer, HI_RECT_S* pZmeReso)
{
    U_VHDZMEIRESO VHDZMEIRESO;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDZMEIRESO.u32 = RegRead(&(pVoReg->VHDZMEIRESO.u32));
            pZmeReso->s32Width = VHDZMEIRESO.bits.iw + 1;
            pZmeReso->s32Height = VHDZMEIRESO.bits.ih + 1;

            break;
        }
        default:
        {
            HAL_PRINT("Error, HAL_SetZmeReso layer is error!\n");
            return ;
        }
    }

    return ;
}



HI_VOID HAL_GetVHDOutZmeReso(HAL_DISP_LAYER_E enLayer, HI_RECT_S* pZmeReso)
{
    U_VHDZMEORESO VHDZMEORESO;

    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            VHDZMEORESO.u32 = RegRead(&(pVoReg->VHDZMEORESO.u32));
            pZmeReso->s32Width = VHDZMEORESO.bits.ow + 1;
            pZmeReso->s32Height = VHDZMEORESO.bits.oh + 1;

            break;
        }
        default:
        {
            HAL_PRINT("Error, HAL_SetZmeReso layer is error!\n");
            return ;
        }
    }

    return ;
}

HI_VOID HAL_DISP_GetLayerDispRect(HAL_DISP_LAYER_E enLayer, HI_RECT_S *stRect)
{
    switch(enLayer)
    {
        case HAL_DISP_LAYER_VIDEO1:
        {
            U_VHDDFPOS VHDDFPOS;
            U_VHDDLPOS VHDDLPOS;

            /* display position */
            VHDDFPOS.u32 = RegRead(&(pVoReg->VHDDFPOS.u32));
            stRect->s32X = VHDDFPOS.bits.disp_xfpos;
            stRect->s32Y = VHDDFPOS.bits.disp_yfpos;
            //RegWrite(&(pVoReg->VHDDFPOS.u32), VHDDFPOS.u32);

            VHDDLPOS.u32 = RegRead(&(pVoReg->VHDDLPOS.u32));
            stRect->s32Width  = VHDDLPOS.bits.disp_xlpos + 1 - stRect->s32X;
            stRect->s32Height = VHDDLPOS.bits.disp_ylpos + 1 - stRect->s32Y;
            //RegWrite(&(pVoReg->VHDDLPOS.u32), VHDDLPOS.u32);
            break;
        }

        default:
        {
            HAL_PRINT("Error, Set rect select wrong layer ID\n");
                        /*  return ; */
        }
    }
}
#endif


HI_VOID VDP_DATE_SetSrcCoef(HI_U32 u32Chan, HI_U32 *pu32SrcCoef)
{
    if ((u32Chan >1 ) ||(HI_NULL == pu32SrcCoef) )
        return;

    if (0 == u32Chan)
    {
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF1.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF2.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF3.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF4.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF5.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF6.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF7.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF8.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF9.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF10.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF11.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF12.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->HDATE_SRC_13_COEF13.u32), *pu32SrcCoef++);
        //RegWrite(&(pVoReg->HDATE_SRC_13_COEF14.u32), *pu32SrcCoef++);
        //RegWrite(&(pVoReg->HDATE_SRC_13_COEF15.u32), *pu32SrcCoef++);
        //RegWrite(&(pVoReg->HDATE_SRC_13_COEF16.u32), *pu32SrcCoef++);
        //RegWrite(&(pVoReg->HDATE_SRC_13_COEF17.u32), *pu32SrcCoef++);
        //RegWrite(&(pVoReg->HDATE_SRC_13_COEF18.u32), *pu32SrcCoef++);
    }
    else
    {
        RegWrite(&(pVoReg->DATE_COEFF50.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->DATE_COEFF51.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->DATE_COEFF52.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->DATE_COEFF53.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->DATE_COEFF54.u32), *pu32SrcCoef++);
        RegWrite(&(pVoReg->DATE_COEFF55.u32), *pu32SrcCoef++);
    }
}

HI_VOID VDP_DATE_SetCoefExtend(HI_U32 u32Chan, HI_U32 *pu32SrcCoef)
{
    if ((u32Chan >1 ) ||(HI_NULL == pu32SrcCoef) )
        return;

    /* rwzb need,  we do date adjust instead of csc.*/
    RegWrite(&(pVoReg->DATE_COEFF56.u32), *pu32SrcCoef++);
    RegWrite(&(pVoReg->DATE_COEFF57.u32), *pu32SrcCoef++);
    RegWrite(&(pVoReg->DATE_COEFF58.u32), *pu32SrcCoef++);
    RegWrite(&(pVoReg->DATE_COEFF59.u32), *pu32SrcCoef++);
}


HI_VOID VDP_DATE_SetHTiming(HI_U32 u32Chan, HI_U32 *pu32SrcCoef)
{
    if ((u32Chan >1 ) ||(HI_NULL == pu32SrcCoef) )
        return;

    /* rwzb need,  we do date adjust instead of csc.*/
     RegWrite(&(pVoReg->DATE_COEFF24.u32), *pu32SrcCoef++);

    RegWrite(&(pVoReg->DATE_COEFF61.u32), *pu32SrcCoef++);

    RegWrite(&(pVoReg->DATE_COEFF66.u32), *pu32SrcCoef++);
    RegWrite(&(pVoReg->DATE_COEFF67.u32), *pu32SrcCoef++);
    RegWrite(&(pVoReg->DATE_COEFF68.u32), *pu32SrcCoef++);
    RegWrite(&(pVoReg->DATE_COEFF69.u32), *pu32SrcCoef++);
    RegWrite(&(pVoReg->DATE_COEFF70.u32), *pu32SrcCoef++);
}

HI_VOID OPTM_HAL_DISP_SetDateDisIRE(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 en)
{
    U_DATE_COEFF0 DATE_COEFF0;
    if (enChan == HAL_DISP_CHANNEL_DSD)
    {
        DATE_COEFF0.u32 = pVoReg->DATE_COEFF0.u32;
        DATE_COEFF0.bits.dis_ire = en;
        pVoReg->DATE_COEFF0.u32 = DATE_COEFF0.u32;
    }
    else if (enChan == HAL_DISP_CHANNEL_DHD)
    {}
}

/*add M310*/
HI_VOID  Vou_SetSrcMode(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    /* vhd input source mode */
    if(enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        U_VHDCTRL VHDCTRL;

        VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
        VHDCTRL.bits.src_mode = u32Data;
        RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);
    }

#ifndef HI_VO_SINGLE_VIDEO_SUPPORT
    /* vad input source mode */
    else if(enLayer == HAL_DISP_LAYER_VIDEO2)
    {
        U_VADCTRL VADCTRL;

        VADCTRL.u32 = RegRead(&(pVoReg->VADCTRL.u32));
        VADCTRL.bits.src_mode = u32Data;
        RegWrite(&(pVoReg->VADCTRL.u32), VADCTRL.u32);
    }
#endif
    /* vsd input source mode */
    else if(enLayer == HAL_DISP_LAYER_VIDEO3)
    {
        U_VSDCTRL VSDCTRL;

        VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
        VSDCTRL.bits.src_mode = u32Data;
        RegWrite(&(pVoReg->VSDCTRL.u32), VSDCTRL.u32);
    }
    else
    {
        HAL_PRINT("Error, Vou_SetSrcMode() select wrong ID\n");
        return ;
    }
    return ;
}

HI_VOID  Vou_SetFlipEn(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data)
{
    if(enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        U_VHDCTRL VHDCTRL;

        VHDCTRL.u32 = RegRead(&(pVoReg->VHDCTRL.u32));
        VHDCTRL.bits.flip_en = u32Data;
        RegWrite(&(pVoReg->VHDCTRL.u32), VHDCTRL.u32);
    }
#ifndef HI_VO_SINGLE_VIDEO_SUPPORT
    /* vad input source mode */
    else if(enLayer == HAL_DISP_LAYER_VIDEO2)
    {
        U_VADCTRL VADCTRL;

        VADCTRL.u32 = RegRead(&(pVoReg->VADCTRL.u32));
        VADCTRL.bits.flip_en = u32Data;
        RegWrite(&(pVoReg->VADCTRL.u32), VADCTRL.u32);
    }
#endif
    /* vsd input source mode */
    else if(enLayer == HAL_DISP_LAYER_VIDEO3)
    {
        U_VSDCTRL VSDCTRL;

        VSDCTRL.u32 = RegRead(&(pVoReg->VSDCTRL.u32));
        VSDCTRL.bits.flip_en = u32Data;
        RegWrite(&(pVoReg->VSDCTRL.u32), VSDCTRL.u32);
    }
    else
    {
        HAL_PRINT("Error, Vou_SetFlipEn() select wrong ID\n");
        return ;
    }
    return ;
}

//add for VHDVC1 by q212453
HI_VOID Vou_SetVc1Enable(HAL_DISP_LAYER_E enLayer,HI_U32 u32Data)
{
    if (enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        U_VHDVC1CTRL  VHDVC1CTRL;

        VHDVC1CTRL.u32 = RegRead(&(pVoReg->VHDVC1CTRL.u32));
        VHDVC1CTRL.bits.vc1_en = u32Data;
        RegWrite(&(pVoReg->VHDVC1CTRL.u32), VHDVC1CTRL.u32);
    }
    else
    {
        HAL_PRINT("Error,Vou_SetVc1Enable() Wrong layer ID for VC1\n");
    }

    return;
}

HI_VOID Vou_SetVc1MapCoef(HAL_DISP_LAYER_E enLayer,Vc1MapCoefCfg stMapCoefCfg)
{
    if (enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        U_VHDVC1CTRL  VHDVC1CTRL;

        VHDVC1CTRL.u32 = RegRead(&(pVoReg->VHDVC1CTRL.u32));

        VHDVC1CTRL.bits.vc1_bmapy = stMapCoefCfg.u32Bmapy;
        VHDVC1CTRL.bits.vc1_bmapc = stMapCoefCfg.u32Bmapc;
        VHDVC1CTRL.bits.vc1_mapy  = stMapCoefCfg.u32Mapy;
        VHDVC1CTRL.bits.vc1_mapc  = stMapCoefCfg.u32Mapc;

        RegWrite(&(pVoReg->VHDVC1CTRL.u32), VHDVC1CTRL.u32);

    }
    else
    {
        HAL_PRINT("Error,Vou_SetVc1MapCoef() Wrong layer ID for VC1\n");
    }

    return;

}


HI_VOID Vou_SetVc1Profile(HAL_DISP_LAYER_E enLayer,HAL_VC1PROFILE_E u32Data)
{
    if (enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        U_VHDVC1CTRL  VHDVC1CTRL;

        VHDVC1CTRL.u32 = RegRead(&(pVoReg->VHDVC1CTRL.u32));
        VHDVC1CTRL.bits.vc1_profile = u32Data;
        RegWrite(&(pVoReg->VHDVC1CTRL.u32), VHDVC1CTRL.u32);
    }
    else
    {
        HAL_PRINT("Error,Vou_SetVc1Profile() Wrong layer ID for VC1\n");
    }

    return;

}

HI_VOID Vou_SetVc1MapFlg(HAL_DISP_LAYER_E enLayer,HAL_VC1PROFILE_E u32Data,HI_U32 bEnable, HAL_DISP_VC1RDMD_E RdMd)
{
    if (enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        U_VHDVC1CTRL  VHDVC1CTRL;
        VHDVC1CTRL.u32 = RegRead(&(pVoReg->VHDVC1CTRL.u32));

        if (HAL_VC1PROFILE_ADVANCE == u32Data)
        {
            if (HAL_DISP_VC1RDMD_FRM == RdMd)
            {
                VHDVC1CTRL.bits.vc1_mapcflg  = bEnable;
                VHDVC1CTRL.bits.vc1_mapyflg  = bEnable;
                VHDVC1CTRL.bits.vc1_bmapcflg = 0;
                VHDVC1CTRL.bits.vc1_bmapyflg = 0;
            }
            else if ((HAL_DISP_VC1RDMD_DIE == RdMd) || (HAL_DISP_VC1RDMD_FLD == RdMd))
            {
                VHDVC1CTRL.bits.vc1_mapcflg  = bEnable;
                VHDVC1CTRL.bits.vc1_mapyflg  = bEnable;
                VHDVC1CTRL.bits.vc1_bmapcflg = bEnable;
                VHDVC1CTRL.bits.vc1_bmapyflg = bEnable;
            }
            else ;

        }
        else
        {
            VHDVC1CTRL.bits.vc1_bmapcflg = 0;
            VHDVC1CTRL.bits.vc1_bmapyflg = 0;
            VHDVC1CTRL.bits.vc1_mapcflg  = 0;
            VHDVC1CTRL.bits.vc1_mapyflg  = 0;
        }

        RegWrite(&(pVoReg->VHDVC1CTRL.u32), VHDVC1CTRL.u32);
    }
    else
    {
        HAL_PRINT("Error,Vou_SetVc1MapFlg() Wrong layer ID for VC1\n");
    }

    return;

}

HI_VOID Vou_SetVc1RangeDfrm(HAL_DISP_LAYER_E enLayer,HAL_VC1PROFILE_E u32Data,HI_U32 bEnable)
{
    if (enLayer == HAL_DISP_LAYER_VIDEO1)
    {
        U_VHDVC1CTRL  VHDVC1CTRL;
        VHDVC1CTRL.u32 = RegRead(&(pVoReg->VHDVC1CTRL.u32));

        if (HAL_VC1PROFILE_MAIN ==  u32Data)
        {
            VHDVC1CTRL.bits.vc1_rangedfrm = bEnable;
        }
        else
            VHDVC1CTRL.bits.vc1_rangedfrm = 0;

        RegWrite(&(pVoReg->VHDVC1CTRL.u32), VHDVC1CTRL.u32);
    }
    else
    {
        HAL_PRINT("Error,Vou_SetVc1RangeDfrm() Wrong layer ID for VC1\n");
    }

    return;

}

#ifndef __BOOT__

#ifndef MODULE
EXPORT_SYMBOL(Vou_SetCbmMixerPrioNew);
EXPORT_SYMBOL(HAL_GetChipsetVouVersion);
#endif
#endif
