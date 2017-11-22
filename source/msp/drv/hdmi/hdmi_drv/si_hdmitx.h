/***********************************************************************************/
/*  Copyright (c) 2002-2006, Silicon Image, Inc.  All rights reserved.             */
/*  No part of this work may be reproduced, modified, distributed, transmitted,    */
/*  transcribed, or translated into any language or computer format, in any form   */
/*  or by any means without written permission of: Silicon Image, Inc.,            */
/*  1060 East Arques Avenue, Sunnyvale, California 94085                           */
/***********************************************************************************/
#include "si_typedefs.h"
#include "si_globdefs.h"
#include "si_hlviic.h"
#include "si_defstx.h"

#ifndef __HDMI_TX_H__
#define __HDMI_TX_H__

#define HDMI_CRG_BASE_ADDR  (0x101F5000 + 0x010C)

#if  defined(CHIP_TYPE_hi3716mv330)
/* Define the union U_PERI_CRG67 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hdmitx_ctrl_bus_cken  : 1   ; /* [0]  */
        unsigned int    hdmitx_ctrl_cec_cken  : 1   ; /* [1]  */
        unsigned int    hdmitx_ctrl_id_cken   : 1   ; /* [2]  */
        unsigned int    hdmitx_ctrl_mhl_cken  : 1   ; /* [3]  */
        unsigned int    hdmitx_ctrl_os_cken   : 1   ; /* [4]  */
        unsigned int    hdmitx_ctrl_as_cken   : 1   ; /* [5]  */
        unsigned int    reserved_0            : 2   ; /* [7..6]  */
        unsigned int    hdmitx_ctrl_bus_srst_req : 1   ; /* [8]  */
        unsigned int    hdmitx_ctrl_srst_req  : 1   ; /* [9]  */
        unsigned int    reserved_1            : 2   ; /* [11..10]  */
        unsigned int    hdmitx_ctrl_cec_clk_sel : 1   ; /* [12]  */
        unsigned int    reserved_2            : 19  ; /* [31..13]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} HDMI_PERI_CRG67;

/* Define the union U_PERI_CRG68 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    phy_tmds_cken         : 1   ; /* [0]  */
        unsigned int    ssc_in_cken           : 1   ; /* [1]  */
        unsigned int    ssc_bypass_cken       : 1   ; /* [2]  */
        unsigned int    hdmitx_ctrl_osc_24m_cken : 1   ; /* [3]  */
        unsigned int    hdmitx_phy_srst_req   : 1   ; /* [4]  */
        unsigned int    vdp_hdmi_srst_req     : 1   ; /* [5]  */
        unsigned int    phy_tmds_srst_req     : 1   ; /* [6]  */
        unsigned int    ssc_clk_div           : 4   ; /* [10..7]  */
        unsigned int    reserved_0            : 1   ; /* [11]  */
        unsigned int    tmds_clk_div          : 3   ; /* [14..12]  */
        unsigned int    reserved_1            : 1   ; /* [15]  */
        unsigned int    vou_clk_div           : 5   ; /* [20..16]  */
        unsigned int    reserved_2            : 11  ; /* [31..21]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} HDMI_PERI_CRG68;

#else
/* Define the union U_PERI_CRG67 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hdmitx_ctrl_bus_cken  : 1   ; /* [0]  */
        unsigned int    hdmitx_ctrl_cec_cken  : 1   ; /* [1]  */
        unsigned int    hdmitx_ctrl_id_cken   : 1   ; /* [2]  */
        unsigned int    hdmitx_ctrl_mhl_cken  : 1   ; /* [3]  */
        unsigned int    hdmitx_ctrl_os_cken   : 1   ; /* [4]  */
        unsigned int    hdmitx_ctrl_as_cken   : 1   ; /* [5]  */
        unsigned int    reserved_3            : 2   ; /* [7..6]  */
        unsigned int    hdmitx_ctrl_bus_srst_req : 1   ; /* [8]  */
        unsigned int    hdmitx_ctrl_srst_req  : 1   ; /* [9]  */
        unsigned int    reserved_2            : 2   ; /* [11..10]  */
        unsigned int    hdmitx_ctrl_cec_clk_sel : 1   ; /* [12]  */
        unsigned int    reserved_1            : 1   ; /* [13]  */
        unsigned int    hdmitx_ctrl_asclk_sel : 1   ; /* [14]  */
        unsigned int    reserved_0            : 17  ; /* [31..15]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} HDMI_PERI_CRG67;

/* Define the union U_PERI_CRG68 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    hdmitx_phy_bus_cken   : 1   ; /* [0]  */
        unsigned int    reserved_1            : 3   ; /* [3..1]  */
        unsigned int    hdmitx_phy_srst_req   : 1   ; /* [4]  */
        unsigned int    reserved_0            : 27  ; /* [31..5]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} HDMI_PERI_CRG68;

#endif


typedef struct S_CRG_REGS_HDMI
{ 
    volatile HDMI_PERI_CRG67    PERI_CRG67   ;  /* 0x10c */
    volatile HDMI_PERI_CRG68    PERI_CRG68   ;  /* 0x110 */         
}HDMI_REG_CRG_S;

extern volatile HDMI_REG_CRG_S *g_pHDMIRegCrg;



void SI_WriteBlockHDMITXP0(HI_U8 , HI_U8 , HI_U8 * );
void SI_WriteBlockHDMITXP1(HI_U8 , HI_U8 , HI_U8 * );

void SI_Init_HDMITX(void);
void SI_Init_DVITX(void);
//void SI_hdmiPhyInit(void);
void SI_SetHdmiVideo(HI_U8 Enabled);
void SI_SetHdmiAudio(HI_U8 Enabled);
void SI_Start_HDMITX(void);
void SI_HW_ResetHDMITX( void );
HI_BOOL SI_HDMI_Setup_INBoot(HI_U32 *VIC);
void TransmiterToPD(void);
void SI_WakeUpHDMITX(void);
void SI_PowerDownHdmiTx(void);
void SI_SetMCLK(HI_U8);
void SI_InteralMclkEnable(HI_U8);
void SI_SetNCtsEnable(HI_U8);
void SI_SetIClk(HI_U8);
HI_U8 IsRXAttached( void );
HI_U8 SI_IsTXInHDMIMode( void );
HI_U8 IsRXAttachedWithD(void);
HI_U8 IsHPDPinHigh( void );
void SI_WriteNValue(HI_U32);
Bool SI_IsHDMICompatible(void);
void SI_SW_ResetHDMITX(void);
void SI_WaitForPixelClkStable(void);
void SI_AssertHDMITX_SWReset( HI_U8 );
void SI_ReleaseHDMITX_SWReset( HI_U8 );
HI_BOOL SI_IsHDMIResetting(void);
void SI_SetDeepColor ( HI_U8 bDeepColor );
void HDMI_ProcessCableIn(void);

void SI_ReadBlockHDMITXP0(HI_U8 Addr, HI_U8 NBytes, HI_U8 * Data );
void SI_ReadBlockHDMITXP1(HI_U8 Addr, HI_U8 NBytes, HI_U8 * Data );

#define ReadByteHDMITXP0(ADDR)        ReadByte_8BA(BUS_1, TX_SLV0, ADDR)
#define WriteByteHDMITXP0(ADDR, DATA) WriteByte_8BA(BUS_1, TX_SLV0, ADDR, DATA)
#define ReadWordHDMITXP0(ADDR)        ReadWord_8BA(BUS_1, TX_SLV0, ADDR)
#define WriteWordHDMITXP0(ADDR, DATA) WriteWord_8BA(BUS_1, TX_SLV0, ADDR, DATA)

#define ReadByteHDMITXP1(ADDR)        ReadByte_8BA(BUS_1, TX_SLV1, ADDR)
#define WriteByteHDMITXP1(ADDR, DATA) WriteByte_8BA(BUS_1, TX_SLV1, ADDR, DATA)
#define WriteWordHDMITXP1(ADDR, DATA) WriteWord_8BA(BUS_1, TX_SLV1, ADDR, DATA)
#define ReadWordHDMITXP1(ADDR)        ReadWord_8BA(BUS_1, TX_SLV1, (HI_U8) ADDR)

#define ReadByteHDMICEC(ADDR)         ReadByte_8BA(BUS_1, HDMI_DEV_CEC, ADDR)
#define WriteByteHDMICEC(ADDR, DATA)  WriteByte_8BA(BUS_1, HDMI_DEV_CEC, ADDR, DATA)

#define ReadByte_Region2_HDMITXP0(ADDR)        SI_Region2_ReadByte(BUS_1, TX_SLV0, ADDR)
#define WriteByte_Region2_HDMITXP0(ADDR, DATA) SI_Region2_WriteByte(BUS_1, TX_SLV0, ADDR, DATA)

#define GetSysStat() ReadByteHDMITXP0(TX_STAT_ADDR)  //0x72,0x09:SYS_STAT
#define GetRevId() ReadByteHDMITXP0(0x04)
#define ReadCTSValue() (((HI_U32)ReadWordHDMITXP1(HWCTS_VAL_ADDR))|((HI_U32)(ReadByteHDMITXP1(HWCTS_VAL_ADDR+2)& 0x0F)<<16))
#define WritePixPerSPDIF( PPSPDIF )   WriteByte_8BA(BUS_1, TX_SLV1, SPDIF_SSMPL_ADDR, PPSPDIF)
#define SI_ReadChipInfo(DATA) SI_ReadBlockHDMITXP0(0x02, 3, DATA)

#define CLR_BITS_1_0	0xFC

#define WAIT_FOR_PIXEL_CK	0x01
#define P_STABLE_BIT		0x01
#define WAIT_V_SYNC			0x02

HI_U32 SI_HPD_Status( void );
HI_U32 SI_HDCP_SetHPDAuthCount( HI_U32 Count );
HI_U32 SI_Is_HDCPAuth_DetectHPD( void );
HI_U32 SI_HPD_SetHPDKernelCallbackCount( HI_U32 Count );
HI_U32 SI_Is_HPDKernelCallback_DetectHPD( void );
HI_U32 SI_HPD_SetHPDUserCallbackCount( void );
HI_U32 SI_Is_HPDUserCallback_DetectHPD( void );

HI_S32 SI_TX_IsHDMImode(void);
HI_S32 SI_TX_CTRL_DVIEncoder(HI_BOOL bEnable);


HI_VOID SI_HW_ResetCtrl(int iEnable);
HI_VOID SI_HW_ResetPhy(int iEnable);



#endif

