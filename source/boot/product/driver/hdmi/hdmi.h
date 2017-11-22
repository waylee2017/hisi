/***********************************************************************************/
/*  Copyright (c) 2002-2006, huawei, Inc.  All rights reserved.                    */
/*  No part of this work may be reproduced, modified, distributed, transmitted,    */
/*  transcribed, or translated into any language or computer format, in any form   */
/*  or by any means without written permission of: Silicon Image, Inc.,            */
/*  1060 East Arques Avenue, Sunnyvale, California 94085                           */
/***********************************************************************************/
#ifndef __HDMI_H__
#define __HDMI_H__

#define HDMI_CRG_BASE_ADDR  (0x101F5000 + 0x010C)

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

typedef struct S_CRG_REGS_HDMI
{ 
    volatile HDMI_PERI_CRG67    PERI_CRG67   ;  /* 0x10c */
    volatile HDMI_PERI_CRG68    PERI_CRG68   ;  /* 0x110 */         
}HDMI_REG_CRG_S;

extern volatile HDMI_REG_CRG_S *g_pHDMIRegCrg;

#endif
