#include <common.h>
#include <boot/customer.h>
#include <linux/string.h>
#include "hi_type.h"
#include "hi_common.h"
#include "hi_reg.h"
#include "hi_drv_pmoc.h"

static HI_U32 wdgon     = 0;
static HI_U32 dbgmask   = 0x2;
static HI_U32 keyVal    = 0x8;
static HI_U32 kltype    = 2;
static HI_U32 timeVal   = 0xffffffff;
static HI_U32 dispMode  = 2;
static HI_U32 irtype    = 4;
static HI_U32 irpmocnum = 3;
static HI_U32 dispvalue = 0x00093a00;
static HI_U32 irValhigh[MCU_IRKEY_MAXNUM] = {0, 0, 0, 0, 0, 0};
static HI_U32 irVallow[MCU_IRKEY_MAXNUM]  = {0x639cff00, 0xef101980, 0xf40b5da0, 0, 0, 0};
static HI_U32 GpioValArray[2] = {0, 0};
static HI_U32 g_u32GpioPortVal = 0x2d;

static HI_U32 lu32vC51Code[MCU_CODE_MAXSIZE/4] = {
	#include "output.txt"
};
static HI_U8 *ltvVirAddr = NULL;

#define C51_GetVIRAddr(addr)  (ltvVirAddr + ((addr) - C51_BASE))

#define START_PMOC_ENABLE

HI_S32  c51_loadCode(void)
{
    HI_S32 ret;
    HI_U32 i = 0;
    HI_U32 size = 0;
    HI_U32 *dwPtr = NULL;
    HI_CHIP_TYPE_E enChipType;
    HI_CHIP_VERSION_E enChipID;

    HI_DRV_SYS_GetChipVersion(&enChipType, &enChipID);
    
    /* if s40v2 , set 0xf800_0048 bit1 to 0 */
    HI_REG_READ32((CFG_BASE_ADDR + SRST_REQ_CTRL), ret);
    ret &= ~0x2;
    HI_REG_WRITE32((CFG_BASE_ADDR + SRST_REQ_CTRL), ret);

    ltvVirAddr = (HI_U8 *)C51_BASE;
   
    dwPtr = (HI_U32 *)C51_GetVIRAddr(C51_BASE);
    size = sizeof(lu32vC51Code);

    for (i = 0; i < (size >> 2); i++)
    {
        HI_REG_WRITE32((dwPtr + i), lu32vC51Code[i]);
    }

    dwPtr = (HI_U32 *)C51_GetVIRAddr(C51_BASE + C51_DATA);
 
    HI_REG_WRITE32((dwPtr + 0), (enChipType | (enChipID << 16)));
    HI_REG_WRITE32((dwPtr + 1), wdgon);
    HI_REG_WRITE32((dwPtr + 2), dbgmask);
    HI_REG_WRITE32((dwPtr + 3), GpioValArray[0]);  /*record gpio index, between 40 and 47 */
    HI_REG_WRITE32((dwPtr + 4), GpioValArray[1]);  /*record gpio output, 1 or 0 */

    HI_REG_WRITE32((dwPtr + 5), dispMode);
    HI_REG_WRITE32((dwPtr + 6), dispvalue);
    HI_REG_WRITE32((dwPtr + 7), timeVal);

    HI_REG_WRITE32((dwPtr + 8), kltype);
    HI_REG_WRITE32((dwPtr + 9), keyVal);

    HI_REG_WRITE32((dwPtr + 10), irtype);
    HI_REG_WRITE32((dwPtr + 11), irpmocnum);

    for (i = 0; i < irpmocnum; i++)
    {
        HI_REG_WRITE32((dwPtr + 12 + 2 * i), irVallow[i]);
        HI_REG_WRITE32((dwPtr + 13 + 2 * i), irValhigh[i]);
    }

    /* save ca vendor */
    HI_REG_READ32(REG_CA_VENDOR_ID, ret);
    ret &= 0xff;
    HI_REG_WRITE32((dwPtr + 12 + 2 * irpmocnum), ret);

    HI_REG_WRITE32((dwPtr + 13 + 2 * irpmocnum), g_u32GpioPortVal);
    
    HI_REG_WRITE32(SC_GEN15, C51_CODE_LOAD_FLAG); //indicate the C51 code is loaded

    return HI_SUCCESS;
}



