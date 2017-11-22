#ifndef __WDCTR_H__
#define __WDCTR_H__

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mm_common.h"

extern MBT_VOID WDCtrF_PutWindow(MBT_S32 (*usif_window)(MBT_S32 iPara),MBT_S32 iPara);
extern MBT_BOOL WDCtrF_Start(MBT_S32 (*pDesktopWindow)(MBT_S32 iPara),MBT_S32 iPara);

#endif
