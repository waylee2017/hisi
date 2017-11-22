/***********************************************************************************/
/*  Copyright (c) 2002-2006, Silicon Image, Inc.  All rights reserved.             */
/*  No part of this work may be reproduced, modified, distributed, transmitted,    */
/*  transcribed, or translated into any language or computer format, in any form   */
/*  or by any means without written permission of: Silicon Image, Inc.,            */
/*  1060 East Arques Avenue, Sunnyvale, California 94085                           */
/***********************************************************************************/
#include "si_globdefs.h"
#include "si_typedefs.h"
#include "si_hdmitx.h"
#include "si_defstx.h"
#include "si_hlviic.h"
#include "si_video.h"
#include "si_timer.h"
#include "si_vmode.h"
#include "si_eedefs.h"
#include "si_eeprom.h"

extern HI_U8 SysState;

extern SyncInfoType SyncInfo;

//--------------------------------------------------------------------
HI_U8 SI_GetRefrTypeHVPol(void)
{
     return  ReadWordHDMITXP0(VID_STAT_ADDR);
}
//--------------------------------------------------------------------
HI_U16 SI_GetHSyncsPerFrame(void)
{
     return  ReadWordHDMITXP0(VRES_L_ADDR);
}
//--------------------------------------------------------------------
HI_U16 SI_GetPixelsForHSync(void)
{
    return  ReadWordHDMITXP0(HRES_L_ADDR);
}

//未被使用，modes为unf_format
HI_U8 SI_GetVideoFormat(HI_U8 modes)
{
    return VModeTables[modes].ModeId.Mode_C1;
}

/*
    #define _4     0  // 4:3
    #define _4or16 1  // 4:3 or 16:9
    #define _16    2  // 16:9
*/
//未被使用，modes为unf_format
HI_U8 SI_GetPictureAspect(HI_U8 modes)
{
    return VModeTables[modes].AspectRatio;
}

