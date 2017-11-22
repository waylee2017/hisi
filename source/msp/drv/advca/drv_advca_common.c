/******************************************************************************

  Copyright (C), 2011-2014, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_advca_common.c
  Version       : Initial Draft
  Author        : Hisilicon hisecurity team
  Created       : 
  Last Modified :
  Description   : 
  Function List :
  History       :
******************************************************************************/
#include "drv_advca_internal.h"
#include "drv_advca_external.h"

#define __REMAP__

static volatile HI_U32 *g_pCaReg;
static HI_U32 g_CaVirAddr = 0;


HI_VOID DRV_ADVCA_SystemSetClock()
{
    OTP_V200_CRG_CTRL_U unCRG;

    unCRG.u32 = 0;
    CA_readReg(ca_io_address(OTP_V200_CRG_ADDR), &unCRG.u32);
	/* Select 200M clock */
    unCRG.bits.ca_kl_srst_req = 0;
    CA_writeReg(ca_io_address(OTP_V200_CRG_ADDR), unCRG.u32);
    return;
}

HI_VOID DRV_ADVCA_SystemSetReset()
{
    OTP_V200_CRG_CTRL_U unCRG;

    /* Reset */
    unCRG.u32 = 0;
    CA_readReg(ca_io_address(OTP_V200_CRG_ADDR), &unCRG.u32);
    unCRG.bits.ca_kl_srst_req = 1;
    CA_writeReg(ca_io_address(OTP_V200_CRG_ADDR), unCRG.u32);

    /* Cancel Reset */
    unCRG.u32 = 0;
    CA_readReg(ca_io_address(OTP_V200_CRG_ADDR), &unCRG.u32);
    unCRG.bits.ca_kl_srst_req = 0;
    CA_writeReg(ca_io_address(OTP_V200_CRG_ADDR), unCRG.u32);

    return;
}



HI_VOID DRV_ADVCA_RegisterMap(void)
{
    HI_VOID *ptr;
    
    ptr = ca_ioremap_nocache(CA_V300_BASE_ADDR, 0x1000);
    
    if (ptr == NULL)
    {
        //printk("ca_ioremap_nocache err! \n");
        return;
    }
    
    g_CaVirAddr = (HI_U32)ptr;
    g_pCaReg = (volatile HI_U32*)ptr;
    
//    printk("CA Register Map to:0x%x\n", g_CaVirAddr);
    
    return;
}

HI_VOID DRV_ADVCA_RegisterUnMap(void)
{
    if (g_pCaReg)
    {
        ca_iounmap((HI_VOID *)g_pCaReg);
        g_pCaReg = 0;
    }
    
    return;
}

HI_VOID DRV_ADVCA_WriteReg(HI_U32 addr, HI_U32 val)
{
#ifdef __REMAP__
    CA_writeReg((g_CaVirAddr + (addr - CA_V300_BASE_ADDR)), val);
#else
	//writel(val, IO_ADDRESS(addr));
#endif
	return;
}

HI_U32 DRV_ADVCA_ReadReg(HI_U32 addr)
{
	HI_U32 val;
#ifdef __REMAP__
    CA_readReg((g_CaVirAddr + (addr - CA_V300_BASE_ADDR)), &val);
#else
	//val = readl(IO_ADDRESS(addr));
#endif
	return val;
}

HI_VOID DRV_ADVCA_SysWriteReg(HI_U32 addr, HI_U32 val)
{
#ifdef __REMAP__
    CA_writeReg(addr, val);
#else
	//writel(val, IO_ADDRESS(addr));
#endif
	return;
}

HI_U32 DRV_ADVCA_SysReadReg(HI_U32 addr)
{
	HI_U32 val;
#ifdef __REMAP__
    CA_readReg(addr, &val);
#else
	//val = readl(IO_ADDRESS(addr));
#endif
	return val;
}

HI_VOID DRV_ADVCA_Wait(HI_U32 us)
{
	return;
}

HI_S32 DRV_ADVCA_GetRevision(HI_U8 u8Revision[25])
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32VendorId = 0;
    
    if (HI_NULL == u8Revision)
    {
        HI_ERR_CA("Invalid Parameters.\n");
        return HI_FAILURE;
    }
    
    ret = DRV_ADVCA_GetVendorId(&u32VendorId);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_CA("CA_GetVendorId failed.\n");
        return HI_FAILURE;
    }
    
    if (0x01 == u32VendorId)
    {
        ca_snprintf((HI_CHAR *)u8Revision, strlen(NAGRA_REVISION) + 1, "%s", NAGRA_REVISION);
    }
    else
    {
        ca_snprintf((HI_CHAR *)u8Revision, strlen(ADVCA_REVISION) + 1, "%s", ADVCA_REVISION);
    }

    return ret;
}

/*---------------------------------------------END--------------------------------------*/

