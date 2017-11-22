
/**********************************************************************
 *
 *  Copyright(c)2008,Huawei Technologies Co.,Ltd
 * All rights reserved.
 *
 *  File Name   :   .h
 *  Author      :   luodafeng/67259
 *  Email       :   l67259@huawei.com
 *  Data        :   2009/05/04
 *  Version     :   v1.0
 *  Abstract    :
 *
 *  Modification history
 *  ----------------------------------------------------------------------
 * Version       Data(yyyy/mm/dd)     name
 * Description
 *
 * $Log: vou_driver_list.h,v $
 * Revision 1.23  2010/08/03 06:36:38  l67259
 * no message
 *
 * Revision 1.22  2010/07/27 12:05:25  l67259
 * no message
 *
 * Revision 1.21  2010/07/22 11:24:43  l67259
 * no message
 *
 * Revision 1.20  2010/07/21 12:18:39  l67259
 * no message
 *
 * Revision 1.19  2010/07/16 10:52:04  l67259
 * no message
 *
 * Revision 1.18  2010/07/10 03:17:33  l67259
 * no message
 *
 * Revision 1.17  2010/07/08 03:00:25  l67259
 * no message
 *
 * Revision 1.16  2010/07/06 07:03:51  l67259
 * for new die
 *
 * Revision 1.15  2010/06/11 08:54:38  l67259
 * no message
 *
 * Revision 1.14  2010/06/04 03:18:14  z39183
 * Modify: satisfy with FPGA HAL.
 *
 *
 *
 ***********************************************************************/
#ifndef __OPTM_HAL_H__
#define __OPTM_HAL_H__

#include "hi_unf_disp.h"
#include "optm_define.h"


#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */


/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
          This is defined for FPGA test and SDK
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
#if (FPGA_TEST)
HI_U32  LOGGetTimeMs(HI_VOID);
HI_U32  RegRead(volatile HI_U32 *a);
HI_VOID RegWrite(volatile HI_U32 *a, HI_U32 b);

/* set display channel superposition priorities */
HI_VOID Vou_GetCbmMixerPrio(HI_U8 u8MixerId, HI_U8 *pu8Prio);
HI_VOID Vou_SetCbmMixerPrioNew(HI_U8 u8MixerId, HI_U8 *pu8Prio);

/* set display channel superposition priorities */
HI_VOID OPTM_HAL_SetCbmMixerPrio(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U8 *pu8Prio);

/* initialize registers */
HI_VOID HAL_Initial(HI_U32 U32RegVirAddr);
HI_U32 OPTM_HAL_BaseRegInit(HI_U32 U32RegVirAddr);


HI_VOID HAL_DeInitial(HI_VOID);\

/* get VOU version */
HI_VOID OPTM_HAL_GetVersion(HI_U32 *pVersion1, HI_U32 *pVersion2);

// HI_VOID vDieGetInfo(HAL_DISP_LAYER_E enLayer, DIE_CONFIG *pstCfgIn, PULLDOWN_STAT_INFO *pstDutOut);

/* size of display channel, for HIGO */
HI_S32 OPTM_HAL_SetDispChWnd(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 w, HI_U32 h);
HI_S32 OPTM_HAL_GetDispChWnd(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 *pw, HI_U32 *ph);

/*-----------------------------------linklist------------------------------------*/
/* linked list mode start, stop */
HI_VOID OPTM_HAL_SetListFlag(HI_BOOL bEnable);

#if 0
/* in the setting of linked list, get settings of logic and save them in local variables */
HI_VOID OPTM_HAL_RstListNode(HAL_DISP_LAYER_E enLayer);

/* get node of linked lis; input is the address, return is lenght of current node,
 * unit:WORD(128bit)
 */
HI_S32 OPTM_HAL_GetListNode(HAL_DISP_LAYER_E enLayer, HI_U32 *pu32NodeAddr);

#endif
/* set DSD interrupt following DHD */
HI_VOID OPTM_HAL_SetTrigger(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_BOOL bEnable);
HI_VOID OPTM_HAL_SetSync(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_BOOL bEnable);

/* get length of HV valid region */
HI_U32  OPTM_HAL_GetDispWH(HAL_DISP_OUTPUTCHANNEL_E enChan);

/* query G1 display channel */
HAL_DISP_OUTPUTCHANNEL_E Vou_GetDisplayChOfLayer(HAL_DISP_LAYER_E enLayer);

/* set graphic to update mode */
HI_VOID Vou_SetGfxUpMode(HAL_DISP_LAYER_E enLayer, HI_U32 u32bFeild);

/* set synchronized sequence */
HI_BOOL HAL_DISP_SetIntfSync(HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_SYNCINFO_S stSyncInfo);

HI_VOID OPTM_HAL_SetVideoMixerPrio(HAL_DISP_LAYER_E enP2Layer, HAL_DISP_LAYER_E enP1Layer, HAL_DISP_LAYER_E enP0Layer);

HI_VOID OPTM_HAL_SetGammaCoef(HAL_DISP_OUTPUTCHANNEL_E enChn, HI_U16 *upR, HI_U16 *upG, HI_U16 *upB);

HI_VOID OPTM_HAL_DEBUG_ReadReg(HI_U32 u32Index, HI_U32 *pu32Value);

/* query input resolution of video layer */
HI_VOID OPTM_HAL_DieLayerInReso(HAL_DISP_LAYER_E enLayer, HI_U32 *pu32W, HI_U32 *pu32H);

#ifdef HI_DISP_CC_SUPPORT
/* cc */
HI_VOID OPTM_HAL_CCSetSeq(HI_BOOL CCSeq);
HI_VOID OPTM_HAL_CCLineConfig(HI_BOOL TopEnable, HI_BOOL BottomEnable, HI_U16 TopLine, HI_U16 BottomLine);
HI_VOID OPTM_HAL_CCDataConfig(HI_U16 TopData, HI_U16 BottomData);
#endif

HI_VOID Vou_SetAcmEnableExt(HAL_DISP_LAYER_E enLayer, HAL_ACMBLK_ID_E enAcmId, HI_U32 bAcmEn);
HI_VOID Vou_SetAcmCoefExt(HAL_DISP_LAYER_E enLayer, HAL_ACMBLK_ID_E enAcmId, HAL_DISP_ACMBLKINFO_S stCoef);

/* set ChlpEnable */
HI_VOID OPTM_HAL_SetDateChlp_en(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bChlpEna);

/** set LumaDelay */
HI_VOID OPTM_HAL_SetDateLumaDelay(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32LumaDelay);


/* set DAC luma-chroma  delay  */
HI_BOOL OPTM_HAL_SetDacDelay(HI_S32 u32DacNum, HI_S32 u32Dly);

/*  query background color */
HI_VOID Vou_GetCbmBkg(HI_U32 bMixerId, HAL_DISP_BKCOLOR_S *pstBkg);

/* Get mcvn capability */
HI_BOOL OPTM_HAL_GetMcvnState(HAL_DISP_OUTPUTCHANNEL_E enChn);

/* set hdate macrovision state */
HI_VOID OPTM_HAL_SetMcvnEnable(HAL_DISP_OUTPUTCHANNEL_E enChn, HI_BOOL bEnable);

HI_VOID OPTM_HAL_SetGfxZorder(HAL_DISP_LAYER_E enLayer, HI_U32 u32Enable);
HI_VOID OPTM_HAL_GetGfxZorder(HAL_DISP_LAYER_E enLayer, HI_U32* u32Enable);
HI_VOID  HAL_DISP_SetLayerDLPos(HAL_DISP_LAYER_E enLayer, HI_S32 s32X, HI_S32 s32Y);
HI_VOID  HAL_DISP_SetLayerDFPos(HAL_DISP_LAYER_E enLayer, HI_S32 s32X, HI_S32 s32Y);
#endif


/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
          This is defined for EDA or PC test
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
#if (EDA_TEST | PC_TEST)

HI_U32 RegReadEx(HI_U32* a);
HI_U32 RegRead(HI_U32 a);
HI_VOID RegWrite(HI_U32 a, HI_U32 b);
HI_VOID HAL_Initial(HI_U32 U32RegVirAddr);
HI_U32 OPTM_HAL_BaseRegInit(HI_U32 U32RegVirAddr);


HI_VOID Vou_SetCbmMixerPrio(HI_U8 u8MixerId, HI_U8 u8Prio, HAL_DISP_LAYER_E enLayer);
HI_VOID Vou_SetPdDefThd(HAL_DISP_LAYER_E enLayer);

#endif

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
          There are common functions for both EDA and FPGA, SDK
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*-----------------------------------INTF------------------------------------*/
/* set the choice of DAC: dac_sel, in VOUMUX */
HI_VOID  HAL_DISP_SetDacMux(HAL_DISP_OUTPUTSEL_E enChan, HAL_DISP_MUXINTF_E enIntf);

/* set VGA output order for RGB lines */
HI_VOID OPTM_HAL_SetVgaOutputOrder(HI_U32 vga_inft_order);

/* get Vou version of current chipset */
HAL_OPTM_VERSION HAL_GetChipsetVouVersion(HI_VOID);

/* set  interface  sequence  */
HI_VOID  HAL_DISP_OpenIntf(HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_SYNCINFO_S stSyncInfo);

/* open  interface  sequence  */
HI_VOID  HAL_DISP_SetIntfEnable(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bTrue);

/* query  interface  sequence  */
HI_VOID  HAL_DISP_GetIntfEnable(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 *bTrue);

/* close  interface  sequence  */
HI_VOID HAL_DISP_CloseIntf(HAL_DISP_OUTPUTCHANNEL_E enChan);

/* set  interface data format */
HI_VOID HAL_DISP_SetIntfDataFmt(HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_INTFDATAFMT_E stIntfDataFmt);

/* set parameters for interface Clip function */
HI_VOID HAL_DISP_SetIntfClip(HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_CLIP_S stClipData);

/* set enable control of display channel Clip function */
HI_VOID   HAL_DISP_SetIntfClipEna(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bEnable);
HI_VOID HAL_DISP_SaveDXD(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32RegVirAddr);

HI_VOID HAL_DISP_RestoreDXD(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32RegVirAddr);

HI_VOID HAL_DISP_SaveCommon(HI_U32 u32RegVirAddr);

HI_VOID HAL_DISP_RestoreCommon(HI_U32 u32RegVirAddr);

/* set coefficients for color space transformation for display channel */
HI_VOID   HAL_DISP_SetIntfCscCoefEx(HAL_DISP_OUTPUTCHANNEL_E enChan, IntfCscCoef_S *pstCscCoef);

/* set CSC DC component for display channel*/
HI_VOID   HAL_DISP_SetIntfCscDcCoef(HAL_DISP_OUTPUTCHANNEL_E enChan, IntfCscDcCoef_S *pstCscDcCoef);

/* set CSC  switches' status of display channel */
HI_VOID   HAL_DISP_SetIntfCscEna(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 enCSC);

/* set interrupt mode of display channel  */
HI_VOID HAL_DISP_SetVtThdMode(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 uThdNo, HI_U32 uFieldMode);

/* set interrupt threshold of display channel */
HI_VOID HAL_DISP_SetVtThd(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 uThdNo, HI_U32 vtthd);

/* set ParaUp of display channel: ACC or GAMMA */
HI_VOID HAL_SetDispParaUpd      (HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_COEFMODE_E enMode);

/* get interrupt status */
HI_U32   HAL_DISP_GetIntSta(HI_U32 u32IntMsk);

/* clear interrupt status */
HI_VOID  HAL_DISP_ClearIntSta(HI_U32 u32IntMsk);

/* open  interrupt Mask */
HI_VOID HAL_DISP_SetIntMask(HI_U32 u32MaskEn);

/* close  interrupt Mask */
HI_VOID HAL_DISP_DisIntMask(HI_U32 u32MaskEn);

/* open interrupt &  open WBC0/1 interrupt enable */
HI_VOID   HAL_DISP_SetIntEnable(HI_U32 u32MaskEn);

/* close interrupt &  open WBC0/1 interrupt enable */
HI_VOID   HAL_DISP_SetIntDisable(HI_U32 u32MaskEn);

/* set coefficients of BUS efficiency */
HI_VOID Vou_SetArbMode(HI_U32 bMode);
HI_VOID Vou_SetRdBusId(HI_U32 bMode);
HI_VOID Vou_SetRdOutStd(HI_U32 bIdMd, HI_U8 u8OsData);
HI_VOID Vou_SetWrOutStd(HI_U8 u8OsData);

/*-----GAMMA FUNC----*/
HI_VOID Vou_SetGammaEnable(HAL_DISP_OUTPUTCHANNEL_E enChn, HI_U32 uGmmEn);
HI_VOID Vou_SetGammaCoef(HAL_DISP_OUTPUTCHANNEL_E enChn, HI_U32 *upTable);
HI_VOID Vou_SetGammaAddr(HAL_DISP_OUTPUTCHANNEL_E enChn, HI_U32 uGmmAddr);



/*-----------------------------------CBM------------------------------------*/

/* set VideoMixer enable  */
HI_VOID Vou_SetCbmMixerVideoEn(HI_U32 uMixerVideoEn);
HI_VOID Vou_SetCbmMixerVideoPrio(HAL_DISP_LAYER_E enLayer, HI_U32 uMixerVideoPrio);
HI_VOID Vou_SetCbmVmixerAlphaSel(HI_U32 u32Data);

/* set display channel which G1 will be in */
HI_VOID Vou_SetCbmAttr(HAL_DISP_OUTPUTCHANNEL_E enChan);
HI_VOID Vou_SetMixerAttr(HAL_DISP_LAYER_E enLayer,HAL_DISP_OUTPUTCHANNEL_E enChan);

/* set display channel background color (cbm background color ) */
HI_VOID Vou_SetCbmBkg(HI_U32 bMixerId, HAL_DISP_BKCOLOR_S stBkg);



/*-----------------------------------VIDEO------------------------------------*/
HI_VOID HAL_DISP_EnableLayer(HAL_DISP_LAYER_E enLayer, HI_U32 bEnable);

/* set read-address of video layer */
HI_VOID HAL_DISP_SetLayerAddr(HAL_DISP_LAYER_E enLayer, HI_U8 u8Chan, HI_U32 u32LAddr, HI_U32 u32CAddr, HI_U16 u16LStr, HI_U16 u16CStr);
HI_VOID HAL_DISP_SetLayerCrAddr(HAL_DISP_LAYER_E enLayer,HI_U8  u8Chan,HI_U32 u32CrAddr, HI_U16 u16CrStr);



/*  set read mode of a layer */
HI_VOID HAL_DISP_SetReadMode(HAL_DISP_LAYER_E enLayer,HAL_DISP_DATARMODE_E enLRMode,HAL_DISP_DATARMODE_E enCRMode);

/*  set order field of a layer */
HI_VOID HAL_SetFieldOrder   (HAL_DISP_LAYER_E enLayer, HAL_VHD_FOD_E uFieldOrder);

/*  set data format of a layer */
HI_VOID HAL_DISP_SetLayerDataFmt(HAL_DISP_LAYER_E enLayer,HAL_DISP_PIXELFORMAT_E  enDataFmt);

/*  set Mute function of a layer */
HI_VOID HAL_DISP_MuteEnable(HAL_DISP_LAYER_E enLayer, HI_U32 bEnable);

/*  set interpolation mode of a layer */
HI_VOID Vou_SetIfirMode(HAL_DISP_LAYER_E enLayer, HAL_IFIRMODE_E enMode);
HI_VOID Vou_SetIfirCoef(HAL_DISP_LAYER_E enLayer, HI_S32 * u32Coef);

/*  set global alpha of a layer */
HI_VOID Vou_SetLayerGalpha(HAL_DISP_LAYER_E enLayer, HI_U8 u8Alpha0);

/*  set background color of a layer  */
HI_VOID Vou_SetLayerBkg(HAL_DISP_LAYER_E enLayer, HAL_DISP_BKCOLOR_S stBkg);

/*  set timeout of a layer*/
HI_VOID Vou_SetTimeOut(HAL_DISP_LAYER_E enLayer, HI_U8 u8TData);

/*  set registers's update of a layer */
HI_VOID HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_E enLayer);

/* -----ACM FUNC----*/
HI_VOID Vou_SetAcmEnable(HAL_ACMBLK_ID_E enAcmId, HI_U32 bAcmEn);
HI_VOID Vou_SetAcmCoef(HAL_ACMBLK_ID_E enAcmId, HAL_DISP_ACMBLKINFO_S stCoef);
HI_VOID Vou_SetAcmTestEnable(HI_U32 bAcmEn);

/* -----ACC FUNC----*/
HI_VOID Vou_SetAccThd(HAL_DISP_LAYER_E enLayer, ACCTHD_S stAccThd);
HI_VOID Vou_SetAccTab(HAL_DISP_LAYER_E enLayer, HI_U32 *upTable);
HI_VOID Vou_SetAccCtrl(HAL_DISP_LAYER_E enLayer, HI_U32 uAccEn, HI_U32 uAccMode);
HI_VOID Vou_SetAccWeightAddr(HI_U32 uAccAddr);
HI_VOID Vou_SetAccRst(HAL_DISP_LAYER_E enLayer, HI_U32 uAccRst);

/* -----CSC FUNC----*/
/*  set coefficients of color space transformation of a layer */
HI_VOID   HAL_Layer_SetCscCoef(HAL_DISP_LAYER_E enChan, IntfCscCoef_S *pstCscCoef);

/*  set CSC DC component of a layer */
HI_VOID   HAL_Layer_SetCscDcCoef(HAL_DISP_LAYER_E enChan, IntfCscDcCoef_S *pstCscDcCoef);

/*  set CSC enable  of a layer */
HI_VOID   OPTM_HAL_SetLayerCsc(HAL_DISP_LAYER_E enLayer, HI_U32 bCscEn);

/*  set source window  */
HI_VOID   HAL_DISP_SetLayerInRect(HAL_DISP_LAYER_E enLayer, HI_RECT_S stRect);

/*  set output  window  */
HI_VOID   HAL_DISP_SetLayerOutRect(HAL_DISP_LAYER_E enLayer, HI_RECT_S stRect);

/*  set window of video display region */
HI_VOID  HAL_DISP_SetLayerDispRect(HAL_DISP_LAYER_E enLayer, HI_RECT_S stRect);
HI_VOID HAL_DISP_GetLayerDispRect(HAL_DISP_LAYER_E enLayer, HI_RECT_S *stRect);



/* -----------------------------------GRC------------------------------------*/
/* set graphic layer source address */
HI_VOID Vou_SetGfxAddr(HAL_DISP_LAYER_E enLayer, HI_U32 u32LAddr);

/* set graphic layer stride*/
HI_VOID Vou_SetGfxStride(HAL_DISP_LAYER_E enLayer, HI_U16 u16pitch);

/* set the way of data extension of graphic layer */
HI_VOID Vou_SetGfxExt       (HAL_DISP_LAYER_E enLayer, HAL_GFX_BITEXTEND_E enMode);
HI_VOID Vou_SetGfxKey       (HAL_DISP_LAYER_E enLayer, HI_U32 bkeyEn, HAL_GFX_KEY_S stKey);
HI_VOID Vou_SetGfxKeyThd    (HAL_DISP_LAYER_E enLayer, HAL_GFX_KEY_S stKey);
HI_VOID Vou_SetGfxPreMult   (HAL_DISP_LAYER_E enLayer, HI_U32 bEnable);
HI_VOID Vou_SetGfxGpMod     (HAL_DISP_LAYER_E enLayer, HI_BOOL bEnable);
HI_VOID Vou_GetGfxEnable    (HAL_DISP_LAYER_E enLayer, HI_BOOL *pbEnable);
HI_VOID Vou_SetGfxGmmEn     (HAL_DISP_LAYER_E enLayer, HI_U32 bEnable);

/*  set graphic layer PALPHA */
HI_VOID   Vou_SetGfxPalpha(HAL_DISP_LAYER_E enLayer, HI_U32 bAlphaEn, HI_U32 bArange, HI_U8 u8Alpha0, HI_U8 u8Alpha1);
HI_VOID Vou_SetGfxPalphaRange(HAL_DISP_LAYER_E enLayer, HI_U32 bArange);
HI_VOID Vou_SetGfxMskThd(HAL_DISP_LAYER_E enLayer, HAL_GFX_MASK_S stMsk);
HI_VOID Vou_SetGfxReadMode(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);



/* -----------------------------------WBC------------------------------------*/
HI_VOID Vou_SetWbcEnable(HAL_DISP_LAYER_E enLayer, HI_U32 bEnable);
HI_VOID Vou_SetWbcAddr(HAL_DISP_LAYER_E enLayer, HI_U32 u32Addr);
HI_VOID Vou_SetWbcCAddr(HAL_DISP_LAYER_E enLayer, HI_U32 u32Addr);
HI_VOID Vou_SetWbcStride(HAL_DISP_LAYER_E enLayer, HI_U16 u16Str);
HI_VOID Vou_SetWbcCStride(HAL_DISP_LAYER_E enLayer, HI_U16 u16Str);
HI_VOID Vou_SetWbcOutIntf(HAL_DISP_LAYER_E enLayer, HAL_DISP_DATARMODE_E enRdMode);
HI_VOID Vou_SetWbcMd    (HAL_WBC_RESOSEL_E enMdSel);
HI_VOID Vou_SetWbcDfpSel(HAL_WBC_DFPSEL_E enSel);
HI_VOID Vou_SetWbcCropEx(HAL_DISP_LAYER_E enLayer, HI_RECT_S stRect);
//HI_VOID Vou_SetWbcOReso(HI_U32 width, HI_U32 height);
HI_VOID Vou_SetWbcSpd   (HAL_DISP_LAYER_E enLayer, HI_U32 u16ReqSpd);
HI_VOID Vou_SetWbcOutFmt(HAL_DISP_LAYER_E enLayer, HAL_DISP_INTFDATAFMT_E stIntfFmt);
HI_VOID Vou_SetLnkWbEnable(HI_U32 u32Enable);


/*-----------------------------------LinkList------------------------------------*/
//HI_VOID Vou_SetLnkLstEnable(HI_U32 u32Data);
HI_VOID Vou_SetLnkLstStart(HI_U32 u32Data);
HI_VOID Vou_SetLnkLstAddr(HI_U32 u32Data);
HI_VOID Vou_SetLnkLstNodeNum(HI_U32 u32Data);
HI_VOID Vou_SetLnkLstWordNum(HI_U32 u32Data);
//HI_VOID Vou_SetLnkLstNodeIntEn(HI_U32 u32Data);
HI_VOID Vou_SetLnkWbAddr(HI_U32 u32Addr);



/*-----------------------------------DIE------------------------------------*/
HI_VOID HAL_DieAddr(HAL_DISP_LAYER_E enLayer, HI_U32 uDieAddr);
HI_VOID Vou_SetDieEnable(HAL_DISP_LAYER_E enLayer, HI_U32 bDieLumEn, HI_U32 bDieChmEn);
HI_VOID Vou_SetDieOutSel(HAL_DISP_LAYER_E enLayer, HI_U32 bOutSel);
HI_VOID Vou_SetDieChmOutSel(HAL_DISP_LAYER_E enLayer, HI_U32 bOutSel);
HI_VOID Vou_SetDieChmMode(HAL_DISP_LAYER_E enLayer, HI_U32 bChmMode);
HI_VOID Vou_SetDieStpRst(HAL_DISP_LAYER_E enLayer, HI_U32 bRstEn);
HI_VOID Vou_SetDieStpUpdate(HAL_DISP_LAYER_E enLayer, HI_U32 bUpdateEn);
HI_VOID Vou_SetDieDirInten(HAL_DISP_LAYER_E enLayer, HI_U32 dData);
HI_VOID Vou_SetDieVerDirInten(HAL_DISP_LAYER_E enLayer, HI_U32 dData);
HI_VOID Vou_SetDieVerMinInten(HAL_DISP_LAYER_E enLayer, HI_S16 s16Data);
HI_VOID Vou_SetDieScale(HAL_DISP_LAYER_E enLayer, HI_U8 u8Data);
HI_VOID Vou_SetDieCkGain(HAL_DISP_LAYER_E enLayer, HI_U8 u8CkId, HI_U32 dData);
HI_VOID Vou_SetDieCkGnRange(HAL_DISP_LAYER_E enLayer, HI_U8 u8CkId, HI_U32 dData);
HI_VOID Vou_SetDieCkMaxRange(HAL_DISP_LAYER_E enLayer, HI_U8 u8CkId, HI_U8 u8Data);
HI_VOID Vou_SetDieDefThd(HAL_DISP_LAYER_E enLayer);
HI_VOID Vou_SetDieLumaMode(HAL_DISP_LAYER_E enLayer, HI_U32 bLumaMode);
HI_VOID Vou_SetDieLumaQTab(HAL_DISP_LAYER_E enLayer, HI_U8 * up8Thd);
HI_VOID Vou_SetDieLumaReqTab(HAL_DISP_LAYER_E enLayer, HI_U8 * up8Thd);
HI_VOID Vou_SetDieScaleRatio(HAL_DISP_LAYER_E enLayer, HI_U32 u32Ratio);
HI_VOID Vou_SetDieWinSize(HAL_DISP_LAYER_E enLayer, HI_U32 u32Size);
HI_VOID Vou_SetDieSceMax(HAL_DISP_LAYER_E enLayer, HI_U32 u32Sel);
HI_VOID Vou_SetDieQrstMax(HAL_DISP_LAYER_E enLayer, HI_U32 u32Sel);
HI_VOID Vou_SetDieStEnable(HAL_DISP_LAYER_E enLayer, HAL_DIE_STMD_E enMd, HI_U32 u32Enable);
HI_VOID Vou_SetDieStAddr(HAL_DISP_LAYER_E enLayer, HAL_DIE_STMD_E enMd, HI_U32 u32Addr);
HI_VOID Vou_SetDieAddr(HAL_DISP_LAYER_E enLayer, HAL_DIE_STMD_E enMd, HI_U32 *pu32AddrCtrl, HI_S32 nRepeat);
HI_VOID Vou_SetDieChmCcrEnable(HAL_DISP_LAYER_E enLayer, HI_U32 u32En);
HI_VOID Vou_SetDieChmMaOffset(HAL_DISP_LAYER_E enLayer, HI_U32 u32Off);
HI_VOID Vou_SetDieXchmMax(HAL_DISP_LAYER_E enLayer, HI_U32 u32Max);
HI_VOID Vou_SetDieCcrDetect(HAL_DISP_LAYER_E enLayer, HI_U32 u32Thd, HI_U32 u32Max, HI_U32 u32Bld);
HI_VOID Vou_SetDieSimilar(HAL_DISP_LAYER_E enLayer, HI_U32 u32Thd, HI_U32 u32Max);
HI_VOID Vou_SetDieStMode(HAL_DISP_LAYER_E enLayer, HI_U32 enMd);
HI_VOID Vou_SetDieDirMult(HAL_DISP_LAYER_E enLayer, HI_U32 u32Dir, HI_U32 u32Data);
HI_VOID Vou_SetDieMfMax(HAL_DISP_LAYER_E enLayer, HI_U32 u32LumMd, HI_U32 u32ChmMd);
HI_VOID Vou_SetDieCkEnh(HAL_DISP_LAYER_E enLayer, HI_U32 u32Enh);

HI_VOID Vou_SetDieStpFltEnable(HAL_DISP_LAYER_E enLayer, HI_U32 bFltEn);
HI_VOID Vou_SetDieSadThd(HAL_DISP_LAYER_E enLayer, HI_U8 u8Thd);
HI_VOID Vou_SetDieStdThd(HAL_DISP_LAYER_E enLayer, HI_U8 u8Thd);
HI_VOID Vou_SetDieStpThd(HAL_DISP_LAYER_E enLayer, HI_U8 u8Thd);
HI_VOID Vou_SetDieSadThdTab(HAL_DISP_LAYER_E enLayer, HI_U8 * up8Thd);
HI_VOID Vou_SetDieSadTsmix(HAL_DISP_LAYER_E enLayer, HI_U8 u8Thd, HI_U8 u8Rate);
HI_VOID Vou_SetDieStdTsmix(HAL_DISP_LAYER_E enLayer, HI_U8 u8Thd, HI_U8 u8Rate);
HI_VOID Vou_SetDieStWbcMd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetDieStUpdMd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetDieMidThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32MidThd);

//HI_VOID HAL_PDTHD(HAL_DISP_LAYER_E enLayer, U_VHDPDTHD uPdThd);
//HI_VOID HAL_IPTHD(HAL_DISP_LAYER_E enLayer, U_VHDIPTHD uIpThd);

/* pulldown detection */
HI_VOID Vou_SetPdDirMch(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdChmDirMch(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdBlkPos(HAL_DISP_LAYER_E enLayer, HI_U32 u32Mode, HI_U32 u32PosX, HI_U32 u32PosY);
HI_VOID Vou_SetPdStlBlkThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdDiffThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdHistThd(HAL_DISP_LAYER_E enLayer, HI_U32 * u32Data);
HI_VOID Vou_SetPdUmThd(HAL_DISP_LAYER_E enLayer, HI_U32 * u32Data);
HI_VOID Vou_SetPdCoringTkr(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdCoringNorm(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdCoringBlk(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdPccHthd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdPccVthd(HAL_DISP_LAYER_E enLayer, HI_U32 * u32Data);
HI_VOID Vou_SetPdItDiffThd(HAL_DISP_LAYER_E enLayer, HI_U32 * u32Data);
HI_VOID Vou_SetPdLasiThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdEdgeThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_U32 Vou_GetPdStatic(HAL_DISP_LAYER_E enLayer, HI_U32 u32Mode);
HI_VOID Vou_SetPdSmtEnable(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdSmtThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);


/*-----------------------------------ZME------------------------------------*/
HI_VOID HAL_SetCoefAddr     (HAL_DISP_LAYER_E enLayer, HAL_DISP_COEFMODE_E enMode, HI_U32 u32Addr);
HI_VOID HAL_SetLayerParaUpd      (HAL_DISP_LAYER_E enLayer, HAL_DISP_COEFMODE_E enMode);
HI_VOID HAL_SetZmeEnable    (HAL_DISP_LAYER_E enLayer, HAL_DISP_ZMEMODE_E enMode, HI_U32 bEnable);
HI_VOID HAL_SetZmeFirEnable (HAL_DISP_LAYER_E enLayer, HAL_DISP_ZMEMODE_E enMode, HI_U32 bEnable);
HI_VOID HAL_SetMidEnable    (HAL_DISP_LAYER_E enLayer, HAL_DISP_ZMEMODE_E enMode, HI_U32 bEnable);
HI_VOID HAL_SetHfirOrder    (HAL_DISP_LAYER_E enLayer, HI_U32 uHfirOrder);
HI_VOID HAL_SetMirNum       (HAL_DISP_LAYER_E enLayer, HAL_DISP_ZMEMODE_E enMode, HI_U32 uMirNum);
HI_VOID HAL_SetZmeVerTap    (HAL_DISP_LAYER_E enLayer, HAL_DISP_ZMEMODE_E enMode, HI_U32 uVerTap);
HI_VOID HAL_SetZmeVerType   (HAL_DISP_LAYER_E enLayer, HI_U32 uVerType);
HI_VOID HAL_SetZmePhase     (HAL_DISP_LAYER_E enLayer, HAL_DISP_ZMEMODE_E enMode, HI_S32 s32Phase);
HI_VOID HAL_SetZmeReso      (HAL_DISP_LAYER_E enLayer, HAL_DISP_RECT_S stZmeReso);
HI_VOID Vou_SetVerRatio     (HAL_DISP_LAYER_E enLayer, HI_U32 uRatio);
HI_VOID Vou_SetHorRatio     (HAL_DISP_LAYER_E enLayer, HI_U32 uRatio);
HI_VOID Vou_GetVerRatio(HAL_DISP_LAYER_E enLayer, HI_U32* pu32Ratio);
HI_VOID Vou_GetHorRatio(HAL_DISP_LAYER_E enLayer, HI_U32* pu32Ratio);
HI_VOID Vou_SetDeshoot(HI_VOID);
HI_VOID Vou_SetZmeSource(HAL_DISP_LAYER_E enLayer);
HI_VOID Vou_SetGfxZmeLink  (HAL_DISP_LAYER_E enLayer, HI_U32 uLinkSel);



/*-----------------------------------FOR HDMI------------------------------------*/
/*  set sequence synchronization mode */
HI_VOID   HAL_DISP_SetIntfSyncMode(HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_SYNC_MODE_E Mode);

/*  set output data bit-width */
HI_VOID   HAL_DISP_SetIntfBitWidth(HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_BIT_WIDTH_E Width);
HI_VOID Vou_SetHdmiSel(HI_U8 u8Data);
HI_VOID Vou_SetSyncRev(HI_U8 u8SyncMd, HI_U32 bSyncRev);


/*===========================SDK=============================================
 *  just use in SDK.
 *-----------------------------------DATE------------------------------------*/
/*  set DATE enable  */
HI_VOID  HAL_DATE_Enable(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bEnable);

/*  set polarity of synchronization signal */
HI_VOID HAL_DATE_PolaCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bTrue);

/*  output control  */
HI_VOID  OPTM_HAL_DateOutCtrl(HI_S32 u32DispChn, HI_S32 u32DacNum, HI_S32 Signal);

/*  set scart */
HI_VOID OPTM_HAL_SetDateScart(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bScartEna);

/*  set DATE CGAIN coefficients */
HI_VOID   OPTM_HAL_DISP_SetDateCgain(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 Cgain);

/*  set DATE coefficients */
HI_VOID   OPTM_HAL_DISP_SetDateCoeff(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 index, HI_U32 value);

/*  set  output  */
HI_VOID OPTM_HAL_DATE_OutCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32OutCtrl);

/** set coefficients of DATE CGAIN */
HI_VOID OPTM_HAL_DISP_SetDateRgbEn(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 en);


/*  set data format */
HI_VOID OPTM_HAL_HDATE_VideoFmt(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Value);

/*  set output format */
HI_VOID OPTM_HAL_HDATE_VideoOutFmt(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Value);

/*  set the way of synchronization superposition */
HI_VOID OPTM_HAL_HDATE_SyncAddCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Value);

/*  set the way of color space transformation */
HI_VOID OPTM_HAL_HDATE_CscCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Value);

/*  output over-sampling */
HI_VOID OPTM_HAL_HDATE_SrcCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 Value);

/*  set polarity of synchronization signal*/
HI_VOID OPTM_HAL_HDATE_PolaCtrl(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Pola);

HI_S32 OPTM_HAL_SetIfirCoef(HAL_DISP_OUTPUTCHANNEL_E enChan,HI_UNF_ENC_FMT_E enFmt);

/*  output control */
HI_BOOL OPTM_HAL_SetDateSdSel(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32SdSel);

/*  output enable control of up-sampling */
HI_BOOL OPTM_HAL_SetDateLfpEnable(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Enable);


/*------------------------------ query  status ----------------------------------*/
/* read DIE median status, set logic after software processing */
/*  query  switches' status of a layer */
HI_U32 OPTM_HAL_GetLayerEnable(HAL_DISP_LAYER_E enLayer);

/* query source address of graphic layer */
HI_U32 OPTM_HAL_GetGfxAddr(HAL_DISP_LAYER_E enLayer);

/* query stride of graphic layer */
HI_U32 OPTM_HAL_GetGfxStride(HAL_DISP_LAYER_E enLayer);

/*  query data format of GFX */
HI_U32  OPTM_HAL_GetLayerDataFmt(HAL_DISP_LAYER_E enLayer);
HI_U32 OPTM_HAL_GetGfxPreMult(HAL_DISP_LAYER_E enLayer);

/*  query PALPHA of graphic layer */
HI_VOID OPTM_HAL_GetGfxPalpha(HAL_DISP_LAYER_E enLayer, HI_U32 *pbAlphaEn, HI_U32 *pbArange,
                         HI_U8 *pu8Alpha0, HI_U8 *pu8Alpha1);

/*  query global alpha of a layer */
HI_U32 OPTM_HAL_GetLayerGalpha(HAL_DISP_LAYER_E enLayer);

/*  query  key threshold / mode / enable of graphic layer */
HI_U32 OPTM_HAL_GetGfxKey(HAL_DISP_LAYER_E enLayer, HAL_GFX_KEY_S *pstKey);

/*  query interface format */
HI_U32  OPTM_HAL_GetDispIoP(HAL_DISP_OUTPUTCHANNEL_E enChan);

/*  query input window  */
HI_VOID  OPTM_HAL_DISP_GetLayerInRect(HAL_DISP_LAYER_E enLayer, HI_RECT_S *pstRect);

/*  query output window  */
HI_VOID  OPTM_HAL_DISP_GetLayerOutRect(HAL_DISP_LAYER_E enLayer, HI_RECT_S *pstRect);

/*  get DATE coefficients */
HI_U32    OPTM_HAL_DISP_GetDateCoeff(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 index);

/*  get display flag of current field */
HI_S32 OPTM_HAL_DISP_GetCurrField(HAL_DISP_OUTPUTCHANNEL_E enChan);
HI_S32 OPTM_HAL_DISP_GetCurrPos(HAL_DISP_OUTPUTCHANNEL_E enChan);


/* -------------------------------- debug interface --------------------------------*/
/* display debug information */
HI_VOID OPTM_HAL_PrintDebugInfo(HI_VOID);

/*set output debug function*/
HI_VOID OPTM_HAL_DhdDebugSet(HI_U32 bEnable, HI_U32 u32Width);

HI_VOID hdate_1080p_30Hz_cfg(HI_VOID) ;
HI_VOID hdate_1080i_60Hz_274m_cfg(HI_VOID); /*1080i@60Hz 274M */
HI_VOID hdate_720p_50Hz_cfg(HI_VOID) ;
HI_VOID hdate_720p_60Hz_cfg(HI_VOID) ;




/* *****************************************************************************
*  the following driver will be canceled.
* ----------------------------------Intf---------------------------------------*/
/*  set DAC select */
HI_VOID  OPTM_HAL_SetDacMux(HI_S32 u32DacNum, HI_S32 s32DispChn);

/*  set coefficients vertical blanking */
HI_VOID   HAL_DISP_SetVSync(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 VFB, HI_U32 VBB, HI_U32 VACT);

/*  set coefficients of vertical blanking of bottom field */
HI_VOID   HAL_DISP_SetVSyncPlus(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 BVFB, HI_U32 BVBB, HI_U32 BVACT);

/*  set coefficients of horizontal blanking */
HI_VOID   HAL_DISP_SetHSync(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 HFB, HI_U32 HBB, HI_U32 HACT);

/*  set impulse width */
HI_VOID   HAL_DISP_SetPlusWidth(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 HPW, HI_U32 VPW);

/*  set impulse phase */
HI_VOID   HAL_DISP_SetPlusPhase(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 IHS, HI_U32 IVS, HI_U32 IDV);

/*  set interrupt mode of display channel */
HI_VOID OPTM_HAL_DISP_SetIntrMode(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bFieldMode);

/*  set interrupt 2 threshold of display channel */
HI_VOID OPTM_HAL_DISP_SetIntrThd2(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 vtthd2);

HI_VOID OPTM_HAL_SetDataMux(HAL_DISP_VO_PDATA_CH_E eDataCh, HAL_DISP_VO_PDATA_SEL_E eDataSel); // for lvds 182030
HI_VOID  Vou_SetTiEnable(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U32 u32En);
HI_VOID  Vou_SetTiGainRatio(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U32 u32Data);
HI_VOID  Vou_SetTiMixRatio(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U32 u32Data);
HI_VOID  Vou_SetTiHfThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U16 * u16Data);
HI_VOID  Vou_SetTiHpCoef(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_S8 * s8Data);
HI_VOID  Vou_SetTiCoringThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U32 u32Data);
HI_VOID  Vou_SetTiSwingThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U32 u32Data);
HI_VOID  Vou_SetTiGainCoef(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U8 * u8Data);
HI_VOID  Vou_SetTiSwing(HAL_DISP_LAYER_E enLayer, HI_U32 u32Md, HI_U32 u32Data,HI_U32 u32Data1);


HI_VOID Vou_SetCropReso(HAL_DISP_LAYER_E enLayer, HAL_DISP_RECT_S stVideoRect);
HI_VOID Vou_SetSrcReso(HAL_DISP_LAYER_E enLayer, HAL_DISP_RECT_S stReso);
HI_VOID Vou_SetPdMovThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdMovCoringTkr(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdMovCoringBlk(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdMovCoringNorm(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetPdIchdThd(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID Vou_SetDrawMode(HAL_DISP_LAYER_E enLayer, HI_U32 draw_mode);
HI_VOID OPTM_HAL_SetDatepYbpr_lpf_en(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bYbpr_lpf_en);

#if (FPGA_TEST)

/*  set phase delta */
HI_VOID OPTM_HAL_SetDatePhaseDelta(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 u32Phase);

/*  set macrovision */
HI_BOOL OPTM_HAL_DATE_SetMcvn(HI_S32 nCh, HI_U32 *pu32Value);

#ifdef HI_DISP_TTX_SUPPORT
HI_VOID DRV_VOU_TtxLineEnable(HI_U32 WhichRow, HI_U32 WhichExtRow);
HI_VOID DRV_VOU_TtxSetMode(HI_U32 TtxMode);
HI_VOID DRV_VOU_TtxSetSeq(HI_BOOL TtxSeq);
HI_VOID DRV_VOU_TtxSetAddr(HI_U32 StartAddr, HI_U32 EndAddr);
HI_VOID DRV_VOU_TtxSetPackOff(HI_U32 PackOff);
HI_VOID DRV_VOU_TtxPiorityHighest(HI_BOOL Highest);
HI_VOID DRV_VOU_SetTtxFullPage(HI_BOOL Flag);
HI_VOID DRV_VOU_TtxSetReady(HI_VOID);
HI_BOOL DRV_VOU_TtxGetReady(HI_VOID);
HI_VOID DRV_VOU_TtxEnableInt(HI_VOID);
HI_VOID DRV_VOU_TtxDisableInt(HI_VOID);
HI_BOOL DRV_VOU_TtxIntStatus(HI_VOID);
HI_VOID DRV_VOU_TtxIntClear(HI_VOID);
#endif
#ifdef HI_DISP_CC_SUPPORT
HI_VOID DRV_VOU_CCSetSeq(HI_BOOL CCSeq);
HI_VOID DRV_VOU_CCLineConfig(HI_BOOL TopEnable, HI_BOOL BottomEnable, HI_U16 TopLine, HI_U16 BottomLine);
HI_VOID DRV_VOU_CCDataConfig(HI_U16 TopData, HI_U16 BottomData);
#endif
#ifdef HI_DISP_CGMS_SUPPORT
HI_VOID DRV_VOU_WSSSetSeq(HI_BOOL WSSSeq);
HI_VOID DRV_VOU_WSSConfig(HI_BOOL WssEnable, HI_U16 WssData);
#endif
#if defined(HI_DISP_CC_SUPPORT) || defined(HI_DISP_TTX_SUPPORT) || defined(HI_DISP_CGMS_SUPPORT)
HI_VOID DRV_VOU_VbiFilterEnable(HI_BOOL VbiFilterEnable);
#endif

HI_VOID Vou_SetVoDigitOutSyncSel(HI_U32 u32SyncSel);
HI_VOID Vou_GetDigitOutSyncSel(HI_U32 *u32SyncSel);

/*  query synchronization sequence  */
HI_BOOL HAL_DISP_GetIntfSync(HAL_DISP_OUTPUTCHANNEL_E enChan, HAL_DISP_SYNCINFO_S *pstSyncInfo);

/* set DXD_DATE connection choices */
HI_BOOL OPTM_HAL_SetHSDateSelMux(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_S32 s32Value);

/*  query superposition priorities of display channel */
HI_VOID OPTM_HAL_GetCbmMixerPrio(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_U8 *pu8Prio);

/*  query registers' update status  */
HI_U32 OPTM_HAL_GetRegUpState(HAL_DISP_LAYER_E enLayer);

/*  set DAC gain control  */
HI_BOOL OPTM_HAL_SetDacGc(HI_S32 u32DacNum, HI_S32 s32Gc);
HI_BOOL OPTM_HAL_SetDacChopper(HI_BOOL bEnable);


/*  set DAC enable  */
HI_BOOL OPTM_HAL_SetDacPower(HI_U32 u32DacNum, HI_BOOL bOn,HI_BOOL bAllOn);

#endif

HI_VOID DRV_VOU_SaveVXD(HAL_DISP_LAYER_E enLayer, HI_U32 u32RegVirAddr);
HI_VOID DRV_VOU_RestoreVXD(HAL_DISP_LAYER_E enLayer, HI_U32 u32RegVirAddr);
HI_VOID DRV_VOU_SaveWbc(HAL_DISP_LAYER_E enLayer, HI_U32 u32RegVirAddr);
HI_VOID DRV_VOU_RestoreWbc(HAL_DISP_LAYER_E enLayer, HI_U32 u32RegVirAddr);

HI_VOID HAL_GFX_SaveDXD(HI_U32 u32RegVirAddr);
HI_VOID HAL_GFX_RestoreDXD(HI_U32 u32RegVirAddr);


/* CGMS group */

/** definition of CGMS data format */
typedef struct tagDISP_CGMS_DATA_S
{
    HI_UNF_DISP_CGMS_CFG_S cgms_cfg;

    union
    {
        /* type-A data [H0~H5,D0~D13]*/
        struct
        {
            HI_U32 cgms_a_w:20; // [19..0]
            HI_U32 reserved:12; // [31..20]
        }bits;

        HI_U32 u32;
    }cgms_a_data;//U_HDATE_CGMSA_DATA

    struct
    {
        /* type-B data [H0~H5,D0~D127]*/
        union
        {
            // Define the struct bits
            struct
            {
                HI_U32    cgmsb_h               : 6   ; // [5..0]
                HI_U32    Reserved_0            : 26  ; // [31..6]
            } bits;

            // Define an unsigned member
            HI_U32    u32;
        }cgms_b_h;

        HI_U32          cgms_b_w1;
        HI_U32          cgms_b_w2;
        HI_U32          cgms_b_w3;
        HI_U32          cgms_b_w4;
    }cgms_b_data;//U_HDATE_CGMSB_DATA

}DISP_CGMS_DATA_S;


/* HDATE CGMS type select */
typedef enum tagDISP_CGMS_TYPE_E
{
    DISP_CGMS_TYPE_A = 0x00,
    DISP_CGMS_TYPE_B,
    //DISP_CGMS_TYPE_AB,

    DISP_CGMS_TYPE_BUTT
}DISP_CGMS_TYPE_E;



HI_S32  Vou_SetCgmsEnable(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bEnable, DISP_CGMS_TYPE_E enType);
HI_S32  Vou_SetCgmsDataTypeA(HAL_DISP_OUTPUTCHANNEL_E enDisp, DISP_CGMS_DATA_S* pstCgmsData);
HI_S32  Vou_SetCgmsDataTypeB(HAL_DISP_OUTPUTCHANNEL_E enDisp, DISP_CGMS_DATA_S* pstCgmsData);
HI_S32  Vou_SetVbi_seq(HI_BOOL bLow2High);
/* CGMS group end */

HI_VOID OPTM_HAL_SetLayerDeCmpEnable(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID OPTM_HAL_SetWbcCmpMode(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID OPTM_HAL_SetGfxCmpAddr(HAL_DISP_LAYER_E enLayer, HI_U32 u32CmpAddr);
HI_VOID OPTM_HAL_SetGfxTriDimEnable(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID OPTM_HAL_SetGfxTriDimMode(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);
HI_VOID OPTM_HAL_SetGfxSrcFromWbc2(HI_BOOL bFromWbc2);

HI_VOID HAL_GetVHDInZmeReso(HAL_DISP_LAYER_E enLayer, HI_RECT_S* pZmeReso);
HI_VOID HAL_GetVHDOutZmeReso(HAL_DISP_LAYER_E enLayer, HI_RECT_S* pZmeReso);

#if 0
HI_VOID HAL_DATE_Setupsample(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 bTrue, HI_UNF_ENC_FMT_E enFmt);
#else
HI_VOID VDP_DATE_SetSrcCoef(HI_U32 u32Chan, HI_U32 *pu32SrcCoef);
HI_VOID VDP_DATE_SetCoefExtend(HI_U32 u32Chan, HI_U32 *pu32SrcCoef);

HI_VOID VDP_DATE_SetHTiming(HI_U32 u32Chan, HI_U32 *pu32SrcCoef);

#endif

HI_VOID HAL_Layer_AddCscODcCoef(HAL_DISP_LAYER_E enLayer);
HI_VOID OPTM_HAL_SetDateBT470(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32  bt470);
HI_VOID OPTM_HAL_DISP_SetDateDisIRE(HAL_DISP_OUTPUTCHANNEL_E enChan, HI_U32 en);
HI_VOID  Vou_SetSrcMode(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);

HI_VOID Vou_SetVc1Enable(HAL_DISP_LAYER_E enLayer,HI_U32 u32Data);
HI_VOID Vou_SetVc1MapCoef(HAL_DISP_LAYER_E enLayer,Vc1MapCoefCfg stMapCoefCfg);
HI_VOID Vou_SetVc1Profile(HAL_DISP_LAYER_E enLayer,HAL_VC1PROFILE_E u32Data);
HI_VOID Vou_SetVc1MapFlg(HAL_DISP_LAYER_E enLayer,HAL_VC1PROFILE_E u32Data,HI_U32 bEnable, HAL_DISP_VC1RDMD_E RdMd);
HI_VOID Vou_SetVc1RangeDfrm(HAL_DISP_LAYER_E enLayer,HAL_VC1PROFILE_E u32Data,HI_U32 bEnable);
HI_VOID  Vou_SetFlipEn(HAL_DISP_LAYER_E enLayer, HI_U32 u32Data);


#ifdef __cplusplus
#if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif

