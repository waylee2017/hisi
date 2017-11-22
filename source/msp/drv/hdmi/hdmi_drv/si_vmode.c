/***********************************************************************************/
/*  Copyright (c) 2002-2006, Silicon Image, Inc.  All rights reserved.             */
/*  No part of this work may be reproduced, modified, distributed, transmitted,    */
/*  transcribed, or translated into any language or computer format, in any form   */
/*  or by any means without written permission of: Silicon Image, Inc.,            */
/*  1060 East Arques Avenue, Sunnyvale, California 94085                           */
/***********************************************************************************/
#include "si_timer.h"
#include "si_vmode.h"
#include "si_delay.h"
#include "si_video.h"

extern HI_U8 SysState;
extern SyncInfoType SyncInfo;

int si_abs(int a)
{
    if (a < 0)
    {
        return -a;
    }
    return a;
}

/*
//--------------------------------------------------------
HI_U16   GetPixelClock(HI_U8 Index){
   return  VModeTables[Index].PixClk;
}
*/
//--------------------------------------------------------

//---------------------------------------------------------
void SI_GetVModeData(HI_U8 Index, HI_U8 * Data) {
   Data[0] = VModeTables[Index].ModeId.Mode_C1;
   Data[1] = VModeTables[Index].ModeId.Mode_C2;
   Data[2] = VModeTables[Index].ModeId.SubMode;
   Data[3] = VModeTables[Index].Res.H & 0xff;
   Data[4] = VModeTables[Index].Res.H >> 8;
   Data[5] = VModeTables[Index].Res.V & 0xff;
   Data[6] = VModeTables[Index].Res.V >> 8;

}

//---------------------------------------------------------
