#include "phy.h"
#include "defstx.h"
#include "hdmitx.h"
#include "siitxapidefs.h"
#include "hi_unf_hdmi.h"
#include "drv_reg_proc.h"
#include "vmode.h"

// some reg

HI_S32 TX_PHY_WriteRegister(HI_U32 u32RegAddr, HI_U32 u32Value)
{
    HI_U32 u32Ret = HI_SUCCESS;

    HDMIPrint("Writing Phy[0x%02x] :val[0x%02x] \n",u32RegAddr,u32Value);
    HDMI_REG_WRITE((HI_U32)(HDMI_TX_PHY_ADDR + u32RegAddr * 4),u32Value);

    return u32Ret;
}

HI_S32 TX_PHY_ReadRegister(HI_U32 u32RegAddr, HI_U32 *pu32Value)
{
    HI_U32 u32Ret = HI_SUCCESS;

    *pu32Value = HDMI_REG_READ((HI_U32)(HDMI_TX_PHY_ADDR + u32RegAddr * 4));

    return u32Ret;
}


HI_S32 TX_PHY_GetOutPutEnable(void)
{
    HI_U32 u32Value = 0;
    HI_BOOL bOutput = HI_TRUE;

    TX_PHY_ReadRegister(PHY_OE_ADDR,&u32Value);
    if ((u32Value & RG_TX_RSTB) != RG_TX_RSTB)
    {
        bOutput = HI_FALSE;
    }

    return bOutput;
}

HI_S32 TX_PHY_DisableHdmiOutput(void)
{
    HI_U32 u32Reg = 0;

    /* disable HDMI PHY Output:reg 0/bit 0 */
    TX_PHY_ReadRegister(PHY_OE_ADDR,&u32Reg);
    u32Reg &= ~RG_TX_RSTB;
    TX_PHY_WriteRegister(PHY_OE_ADDR, u32Reg);

    return HI_SUCCESS;
}

HI_S32 TX_PHY_EnableHdmiOutput(void)
{
    HI_U32 u32Reg = 0;

    /* enable HDMI PHY Output:TMDS CNTL2 Register:oe */

    /* disable HDMI PHY Output:reg 0/bit 0 */
    TX_PHY_ReadRegister(PHY_OE_ADDR,&u32Reg);
    HDMIPrint("writing TY phy 0x%x EnableHdmiOutput\n",u32Reg);
    u32Reg |= RG_TX_RSTB;
    TX_PHY_WriteRegister(PHY_OE_ADDR, u32Reg);
    HDMIPrint("writing TY phy 0x%x EnableHdmiOutput\n",u32Reg);


    return HI_SUCCESS;
}

void TX_PHY_INIT(void)
{
    // oe
    TX_PHY_WriteRegister(PHY_OE_ADDR,0x00);

    // audio clk
    TX_PHY_WriteRegister(PHY_AUD_ADDR,0x02);

    // swing & bw ctrl
    TX_PHY_WriteRegister(PHY_PLL1_ADDR,0x02);

    // deep color & pixel repeat ctrl
    TX_PHY_WriteRegister(PHY_PLL2_ADDR,0x09);

    // driver setting , slew rate ctrl    
    /* the tuner would been disturbed by EMI signal if the reg is setting 0x01 */
    //TX_PHY_WriteRegister(PHY_DRV_ADDR,0x01);
    TX_PHY_WriteRegister(PHY_DRV_ADDR, 0x04); 

    // clk invert
    TX_PHY_WriteRegister(PHY_CLK_ADDR,0x00);

    // I think power up at last will imporve stability of pll
    TX_PHY_WriteRegister(PHY_PWD_ADDR,0x01);

}

HI_S32 TX_PHY_PowerDown(HI_BOOL bPwdown)
{
    HI_U32 u32Value = 0;
   
    TX_PHY_ReadRegister(PHY_PWD_ADDR,&u32Value);
    if(bPwdown)
    {
        u32Value &= ~RG_TX_EN;
    }
    else
    {
        u32Value |= RG_TX_EN;
    }
    HDMIPrint("writing phy 0x%x PowerDown\n",u32Value);
    TX_PHY_WriteRegister(PHY_PWD_ADDR,u32Value);
    

   return HI_SUCCESS;
}

HI_S32 TX_PHY_SetDeepColor(HI_U8 bDeepColor)
{
    HI_U32 u32Value = 0;

    /* Config kudu IP for DeepColor*/
    TX_PHY_ReadRegister(PHY_PLL2_ADDR,&u32Value);

    HDMIPrint("PLL_CTRL  old walue:0x%x\n", u32Value);

    if (SiI_DeepColor_30bit == bDeepColor)
    {
        u32Value =  (u32Value & ~MASK_DEEPCOLOR) | 0x00;
        HDMIPrint("SiI_DeepColor_30bit\n");
    }
    else if (SiI_DeepColor_36bit == bDeepColor)
    {
        u32Value =  (u32Value & ~MASK_DEEPCOLOR) | 0x02;
        HDMIPrint("SiI_DeepColor_36bit\n");
    }
    else if (SiI_DeepColor_24bit == bDeepColor)
    {
        u32Value =  (u32Value & ~MASK_DEEPCOLOR) | 0x01;
        HDMIPrint("SiI_DeepColor_24bit(normal)\n");
    }
    else
    {
        u32Value =  (u32Value & ~MASK_DEEPCOLOR) | 0x01;
        HDMIPrint("SiI_DeepColor_Off\n");
    }

    HDMIPrint("writing phy 0x%x SetDeepColor\n",u32Value);

    TX_PHY_WriteRegister(PHY_PLL2_ADDR,u32Value);
    u32Value = 0;
    TX_PHY_ReadRegister(PHY_PLL2_ADDR,&u32Value);
    HDMIPrint("PLL_CTRL  new walue:0x%x\n", u32Value);
        
    return HI_SUCCESS;
}


static HI_S32 TX_PHY_SwingCtrl(HI_U32 u32TMDSClk)
{

    // taiyan phy, use encoder in ctrl

    HI_U32 u32phyreg = 0;

    TX_PHY_ReadRegister(PHY_PLL1_ADDR,&u32phyreg);
    u32phyreg &= ~0x03;

    if(u32TMDSClk <= 27)        // TMDS_clock <= 27M
    {
        u32phyreg |= 0x0;
    }
    else if(u32TMDSClk <= 165)  //27M < TMDS_clock <= 165M
    {
        u32phyreg |= 0x01;
    }
    else                        // TMDS_clock > 165M
    {
        u32phyreg |= 0x03;
    }

    HDMIPrint("writing phy PHY_PLL1_ADDR(0x%2X:swing):0x%x \n", PHY_PLL1_ADDR, u32phyreg);
    TX_PHY_WriteRegister(PHY_PLL1_ADDR, u32phyreg);

    return HI_SUCCESS;
}


HI_S32 TX_PHY_TmdsSet(HI_U8 u8Index, HI_U8 enDeepColorMode)
{
    HI_S32  u32PClk = 0;
       
    u32PClk = VModeTables[u8Index].PixClk * 10 ; //kHz
    HDMIPrint("Pixel Clock : %d, u8Index : %d, enDeepColorMode : %d\n", u32PClk, u8Index, enDeepColorMode);
    
    switch(enDeepColorMode)
    {
        case SiI_DeepColor_Off: 
        case SiI_DeepColor_24bit   : 
            u32PClk = u32PClk * 1;             //Ratio 1
            break;
        case SiI_DeepColor_30bit   : 
            u32PClk = (u32PClk * 4) / 5 ;      //Ratio 1.25
            break;
        case SiI_DeepColor_36bit   : 
            u32PClk =  (u32PClk * 3) / 2 ;     //Ratio 1.5
            break;  

        default:
            u32PClk = u32PClk * 1;
            break;
    }

    TX_PHY_SetDeepColor(enDeepColorMode);
    TX_PHY_SwingCtrl(u32PClk / 1000);
    
    return HI_SUCCESS;
}



