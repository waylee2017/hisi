#include <stdlib.h>

#include "hi_debug.h"


HI_MODULE_DECLARE("SAMPLE_MOD");

HI_VOID Module_Printf(HI_VOID)
{
    HI_MODULE_ERROR("Print test in Module_Printf().\n");
}

