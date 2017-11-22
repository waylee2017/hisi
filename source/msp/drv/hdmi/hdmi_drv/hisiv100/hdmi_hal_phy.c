/******************************************************************************

  Copyright (C), 2014-2024, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hdmi_hal_phy.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2016/06/16
  Description   :
  History       :
  Date          : 2016/06/16
  Author        : l00232354
  Modification  :
*******************************************************************************/
#ifndef HDMI_BUILD_IN_BOOT 
#include <linux/pci.h>      //IO_ADDRESS
#endif
#include "hdmi_hal_phy.h"
#include "hdmi_reg_dphy.h"
#include "si_phy.h"
#ifdef HDMI_BUILD_IN_BOOT 
#include "siitxapidefs.h"
#include "vmode.h"
#else
#include "si_txapidefs.h"
#include "si_delay.h"
#endif

/******************************************************************************
 Marco defined
*******************************************************************************/

#define PHY_NULL_CHK(p) \
do{\
    if(HI_NULL == p) {\
	    COM_ERR("%s is null pointer!return fail.\n",#p);\
	    return HI_FAILURE;}\
}while(0)

#define PHY_NULL_CHK_NO_RET(p) \
do{\
    if(HI_NULL == p) {\
        COM_ERR("%s is null pointer!return fail.\n",#p);}\
}while(0)

#define PHY_RET_CHK(ret) \
do{\
    if(HI_FAILURE == ret) {\
        COM_ERR("Line: %d ret is failure\n", __LINE__);\
        return HI_FAILURE;}\
}while(0)

#define PHY_ZERO_CHK(p) \
do{\
    if(0 == p) {\
        COM_ERR("%s is zero!return fail.\n",#p);\
        return;}\
}while(0)

/******************************************************************************/
/* Data structure                                                             */
/******************************************************************************/
//phy clock
typedef enum
{
    PHY_CLK_RATIO_1_10 = 0x0,
    PHY_CLK_RATIO_1_40
}PHY_CLK_RATIO_E;

//div
typedef enum
{
    INTERPOLATION_MODE_1X = 0x0,
    INTERPOLATION_MODE_2X = 0x1,
    INTERPOLATION_MODE_4X = 0x2,
    INTERPOLATION_MODE_8X = 0x3,
    INTERPOLATION_MODE_BUTT

} PHY_DIV_MODE_SEL_E;


typedef struct
{
    HI_U8   u8PhyGcLdoPd; 
    HI_U8   u8PhyGcDePd; 
    HI_BOOL bPhyGcBistPd;    
    HI_BOOL bPhyGcTxpllPd;
    HI_BOOL bPhyGcRxsensePd; 

}PHY_POWER_CFG_S;

typedef struct
{
	//CRG
	HI_U8              u8SscBypDiv;
	HI_U8              u8TmdsClkDiv;

	//PHY
	HI_U32             u32LoopDiv;
	HI_U32             u32TmdsClk;
	PHY_CLK_RATIO_E    enClkRatio;
	PHY_DIV_MODE_SEL_E enDivSel;
} PHY_TMDS_CFG_S;


typedef struct
{
    HI_U32 u32IRselClk; 
    HI_U32 u32IRselD0; 
    HI_U32 u32IRselD1;	
    HI_U32 u32IRselD2; 
} PHY_IR_SEL_S;

//term mode
typedef enum
{
	HDMI_PHY_TERM_REG_SINGLE,
	HDMI_PHY_TERM_REG_SOURCE,
	HDMI_PHY_TERM_REG_LOAD,
} PHY_TERM_REG_E;

typedef struct
{
	PHY_TERM_REG_E	enPhyTermRegModeCk;
	PHY_TERM_REG_E	enPhyTermRegModeD0;
	PHY_TERM_REG_E	enPhyTermRegModeD1;
	PHY_TERM_REG_E	enPhyTermRegModeD2;
	HI_U8           u8PhyTermRegCk;
	HI_U8           u8PhyTermRegD0;
	HI_U8           u8PhyTermRegD1;	
	HI_U8           u8PhyTermRegD2;
} PHY_TERM_REG_S;


typedef struct
{
    PHY_IR_SEL_S   stIselSet;
    PHY_IR_SEL_S   stPreCurSet;
    PHY_IR_SEL_S   stPreRselSet;
    PHY_TERM_REG_S stTermReg;
}PHY_CTS_SPEC_CFG_S;


typedef struct
{
    HI_U32      u32isel2;
    HI_U32      u32isel;
    HI_BOOL 	D5;	 
    HI_BOOL 	D4; 
    HI_BOOL		D3;
    HI_BOOL		D2; 
    HI_BOOL		D1; 
    HI_BOOL 	D0;	
    HI_U32   	Dvalue;	
} PHY_ISEL_S;

typedef struct
{
    HI_U32		u32isel;
    HI_BOOL		D2; 
    HI_BOOL		D1; 
    HI_BOOL 	D0;	
    HI_U32   	Tvalue;	
} PHY_RSEL_S;


/******************************************************************************/
/* Global value                                                               */
/******************************************************************************/
static PHY_ISEL_S stIselTab[44] =
{
 //isel*2  isel      d5     d4   d3   d2    d1   d0   Dvalue
	
	{0	,0	   ,0	,0	,0	,0	,0	,0 ,0x0 },	
	{1	,0.5   ,0	,0	,0	,0	,0	,1 ,0x1 },	
	{2	,1	   ,0	,0	,0	,0	,1	,0 ,0x2 },	
	{3	,1.5   ,0	,0	,0	,0	,1	,1 ,0x3 },	
	{4	,2	   ,0	,0	,0	,1	,0	,0 ,0x4 },	
	{5	,2.5   ,0	,0	,0	,1	,0	,1 ,0x5 },	
	{6	,3	   ,0	,0	,0	,1	,1	,0 ,0x6 },	
	{7	,3.5   ,0	,0	,0	,1	,1	,1 ,0x7 },	
	{8	,4	   ,0	,0	,1	,0	,0	,0 ,0x8 },	
	{9	,4.5   ,0	,0	,1	,0	,0	,1 ,0x9 },	
	{10 ,5	   ,0	,0	,1	,0	,1	,0 ,0xA },	
	{11 ,5.5   ,0	,0	,1	,0	,1	,1 ,0xB },	
	{12 ,6	   ,0	,0	,1	,1	,0	,0 ,0xC },	
	{13 ,6.5   ,0	,0	,1	,1	,0	,1 ,0xD },	
	{14 ,7	   ,0	,0	,1	,1	,1	,0 ,0xE },	
	{15 ,7.5   ,0	,0	,1	,1	,1	,1 ,0xF },	
	{16 ,8	   ,0	,1	,0	,1	,0	,0 ,0x14},	
	{17 ,8.5   ,0	,1	,0	,1	,0	,1 ,0x15},	
	{18 ,9	   ,0	,1	,0	,1	,1	,0 ,0x16},	
	{19 ,9.5   ,0	,1	,0	,1	,1	,1 ,0x17},	
	{20 ,10    ,0	,1	,1	,0	,0	,0 ,0x18},	
	{21 ,10.5  ,0	,1	,1	,0	,0	,1 ,0x19},	
	{22 ,11    ,0	,1	,1	,0	,1	,0 ,0x1A},	
	{23 ,11.5  ,0	,1	,1	,0	,1	,1 ,0x1B},	
	{24 ,12    ,0	,1	,1	,1	,0	,0 ,0x1C},	
	{25 ,12.5  ,0	,1	,1	,1	,0	,1 ,0x1D},	
	{26 ,13    ,0	,1	,1	,1	,1	,0 ,0x1E},	
	{27 ,13.5  ,0	,1	,1	,1	,1	,1 ,0x1F},	
	{28 ,14    ,1	,0	,1	,1	,0	,0 ,0x2C},	
	{29 ,14.5  ,1	,0	,1	,1	,0	,1 ,0x2D},	
	{30 ,15    ,1	,0	,1	,1	,1	,0 ,0x2E},	
	{31 ,15.5  ,1	,0	,1	,1	,1	,1 ,0x2F},	
	{32 ,16    ,1	,1	,0	,1	,0	,0 ,0x34},	
	{33 ,16.5  ,1	,1	,0	,1	,0	,1 ,0x35},	
	{34 ,17    ,1	,1	,0	,1	,1	,0 ,0x36},
	{35 ,17.5  ,1	,1	,0	,1	,1	,1 ,0x37},	
	{36 ,18    ,1	,1	,1	,0	,0	,0 ,0x38},	
	{37 ,18.5  ,1	,1	,1	,0	,0	,1 ,0x39},	
	{38 ,19    ,1	,1	,1	,0	,1	,0 ,0x3A},	
	{39 ,19.5  ,1	,1	,1	,0	,1	,1 ,0x3B},	
	{40 ,20    ,1	,1	,1	,1	,0	,0 ,0x3C},	
	{41 ,20.5  ,1	,1	,1	,1	,0	,1 ,0x3D},	
	{42 ,21    ,1	,1	,1	,1	,1	,0 ,0x3E},	
	{43 ,21.5  ,1	,1	,1	,1	,1	,1 ,0x3F},	
};

static PHY_RSEL_S stRselTab[8] =
{
  //rpre   d2   d1   d0   Tvalue
    {50  ,0 ,0  ,0  ,0x0},
    {56  ,0 ,0  ,1  ,0x1},
    {71  ,0 ,1  ,0  ,0x2},
    {83  ,0 ,1  ,1  ,0x3},
    {100 ,1 ,0  ,0  ,0x4},
    {125 ,1 ,0  ,1  ,0x5},
    {250 ,1 ,1  ,0  ,0x6},
    {500 ,1 ,1  ,1  ,0x7},
};


/******************************************************************************/
/* Private interface                                                          */
/******************************************************************************/
HI_S32 PHY_TmdsCfgGet(HDMI_PHY_TMDS_CFG_S *pstIn, PHY_TMDS_CFG_S *pstOut)
{
    HI_S32 s32Ret = HI_SUCCESS;
    
    PHY_NULL_CHK(pstIn);
    PHY_NULL_CHK(pstOut);

	//Pll Cfg
	switch(pstIn->u32DeepColor)
	{
        case SiI_DeepColor_Off : 
        case SiI_DeepColor_24bit   : 
			pstOut->u32LoopDiv	= 0x640000;
			break;

		case SiI_DeepColor_30bit:
			pstOut->u32LoopDiv	= 0x640000;
			break;

		case SiI_DeepColor_36bit:
			pstOut->u32LoopDiv	= 0x4b0000;
			break;

        default:
            COM_ERR("deep color:%d is not support!\n", pstIn->u32DeepColor);
            return HI_FAILURE;
	}

    //u32TmdsClk/KHz
    if ((pstIn->u32TmdsClk >= 25000) && (pstIn->u32TmdsClk <= 42500))
	{
		if ((SiI_DeepColor_24bit == pstIn->u32DeepColor) 
		   || (SiI_DeepColor_Off == pstIn->u32DeepColor))
		{
			pstOut->u8SscBypDiv	= 10;
		}
		else
		{
			pstOut->u8SscBypDiv	= 5;
		}
		pstOut->u8TmdsClkDiv = 8;
		pstOut->enDivSel     = INTERPOLATION_MODE_8X;
		pstOut->enClkRatio   = PHY_CLK_RATIO_1_10;	
	}
	else if ((pstIn->u32TmdsClk > 42500) && (pstIn->u32TmdsClk <= 85000))
	{
		pstOut->u8SscBypDiv	 = 10;
		pstOut->u8TmdsClkDiv = 4;
		pstOut->enDivSel     = INTERPOLATION_MODE_4X;
		pstOut->enClkRatio   = PHY_CLK_RATIO_1_10;	
	}
	else if ((pstIn->u32TmdsClk > 85000) && (pstIn->u32TmdsClk <= 170000))
	{
		pstOut->u8SscBypDiv	 = 10;
		pstOut->u8TmdsClkDiv = 2;
		pstOut->enDivSel     = INTERPOLATION_MODE_2X;
		pstOut->enClkRatio   = PHY_CLK_RATIO_1_10;	
	}
	else if ((pstIn->u32TmdsClk > 170000) && (pstIn->u32TmdsClk <=340000))
	{
		pstOut->u8SscBypDiv	 = 10;
		pstOut->u8TmdsClkDiv = 1;
		pstOut->enDivSel     = INTERPOLATION_MODE_1X;
		pstOut->enClkRatio   = PHY_CLK_RATIO_1_10;	
	}
	else if ((pstIn->u32TmdsClk > 340000) && (pstIn->u32TmdsClk <=600000))
	{
		pstOut->u8SscBypDiv	 = 5;
		pstOut->u8TmdsClkDiv = 1;
		pstOut->enDivSel     = INTERPOLATION_MODE_1X;
		pstOut->enClkRatio   = PHY_CLK_RATIO_1_40;	
	}
    else
    {
        COM_ERR("pstIn->u32TmdsClk: %d KHz is invalid [25000 ~ 600000] KHz\n", pstIn->u32TmdsClk);
        s32Ret = HI_FAILURE;
    }
	if(SiI_DeepColor_30bit == pstIn->u32DeepColor)
	{
		pstOut->u8SscBypDiv	= (pstOut->u8SscBypDiv*16)/10;
	}
    
    return s32Ret;
}


HI_VOID PHY_DivCrgSet(PHY_TMDS_CFG_S *pstPhyTmdsCfg)
{
    HI_U32 u32Value = 0;

    PHY_NULL_CHK_NO_RET(pstPhyTmdsCfg);

	#ifdef HDMI_BUILD_IN_BOOT
	u32Value = HDMI_REG_READ((HDMI_TX_PHY_CRG_ADDR|0x0110));
	#else
	DRV_HDMI_ReadRegister((HDMI_TX_PHY_CRG_ADDR|0x0110),&u32Value);
	#endif	
	//u8SscBypDiv
	u32Value &= (~0xf80);
	u32Value |= (((pstPhyTmdsCfg->u8SscBypDiv - 1) & 0xf)<<7)&0xf80;

	//u8TmdsClkDiv
	u32Value &= (~0x7000);
	u32Value |= (((pstPhyTmdsCfg->u8TmdsClkDiv - 1) & 0x7)<<12)&0x7000;

    //Reset
	u32Value &= (~0xf);
	u32Value |= 0x10;
	#ifdef HDMI_BUILD_IN_BOOT
	HDMI_REG_WRITE(HDMI_TX_PHY_CRG_ADDR|0x0110,u32Value);
	#else
	DRV_HDMI_WriteRegister(HDMI_TX_PHY_CRG_ADDR|0x0110,u32Value);
	#endif

	u32Value |= 0xf;
	u32Value &= (~0x10);
	#ifdef HDMI_BUILD_IN_BOOT
	HDMI_REG_WRITE(HDMI_TX_PHY_CRG_ADDR|0x0110,u32Value);
	#else
	DRV_HDMI_WriteRegister(HDMI_TX_PHY_CRG_ADDR|0x0110,u32Value);
	#endif
    DelayMS(10);

    return;
}


HI_VOID PHY_ClkRatioSet(PHY_CLK_RATIO_E enClkRatio)
{
	HI_U32	u32PhyFifoCk_l = 0;
	HI_U32	u32PhyFifoCk_h = 0;

	switch(enClkRatio)
	{
		case PHY_CLK_RATIO_1_10:
			u32PhyFifoCk_h = 0b0000011111;
			u32PhyFifoCk_l = 0b000001111100000111110000011111;
			break;
		case PHY_CLK_RATIO_1_40:
			u32PhyFifoCk_h = 0b0000000000;
			u32PhyFifoCk_l = 0b000000000011111111111111111111;
			break;
        default:
            COM_ERR("enClkRatio %d is invalid\n");
            return;
	}

	HDMI_HDMITX_AFIFO_DATA_SEL_reg_aphy_data_clk_hSet(u32PhyFifoCk_h);
	HDMI_HDMITX_AFIFO_CLK_reg_aphy_data_clk_lSet(u32PhyFifoCk_l);	

    return;
}


HI_VOID PHY_MainDrvCurSet(PHY_IR_SEL_S *pstIselSet)
{
	HI_U8	u8PhyMainDrvCurCk = 0x0;
	HI_U8	u8PhyMainDrvCurD0 = 0x0;
	HI_U8	u8PhyMainDrvCurD1 = 0x0;
	HI_U8	u8PhyMainDrvCurD2 = 0x0;
	HI_U32	u32Cnt = 0x0;

    PHY_NULL_CHK_NO_RET(pstIselSet);

	for (u32Cnt = 0; u32Cnt < 44; u32Cnt++)
	{
		if (stIselTab[u32Cnt].u32isel2== pstIselSet->u32IRselClk)
		{
			u8PhyMainDrvCurCk = stIselTab[u32Cnt].Dvalue;		
		}

		if (stIselTab[u32Cnt].u32isel2 == pstIselSet->u32IRselD0)
		{
			u8PhyMainDrvCurD0 = stIselTab[u32Cnt].Dvalue;
		}

		if (stIselTab[u32Cnt].u32isel2 == pstIselSet->u32IRselD1)
		{
			u8PhyMainDrvCurD1 = stIselTab[u32Cnt].Dvalue;
		}

		if (stIselTab[u32Cnt].u32isel2 == pstIselSet->u32IRselD2)
		{
			u8PhyMainDrvCurD2 = stIselTab[u32Cnt].Dvalue;
		}
	}
	
	HDMI_APHY_DRIVER_IMAIN_reg_isel_main_clkSet(u8PhyMainDrvCurCk);
	HDMI_APHY_DRIVER_IMAIN_reg_isel_main_d0Set(u8PhyMainDrvCurD0);
	HDMI_APHY_DRIVER_IMAIN_reg_isel_main_d1Set(u8PhyMainDrvCurD1);
	HDMI_APHY_DRIVER_IMAIN_reg_isel_main_d2Set(u8PhyMainDrvCurD2);

    return;
}


HI_VOID PHY_PreDrvCurSet(PHY_IR_SEL_S *pstPreDrvCurSet)
{
	HI_U8	u8PhyPreDrvCurCk = 0x0;
	HI_U8	u8PhyPreDrvCurD0 = 0x0;
	HI_U8	u8PhyPreDrvCurD1 = 0x0;
	HI_U8	u8PhyPreDrvCurD2 = 0x0;
	HI_U32  u32Cnt = 0x0;

	for (u32Cnt = 0; u32Cnt < 44; u32Cnt++)
	{
		if (stIselTab[u32Cnt].u32isel2== pstPreDrvCurSet->u32IRselClk)
		{
			u8PhyPreDrvCurCk = stIselTab[u32Cnt].Dvalue;		
		}

		if (stIselTab[u32Cnt].u32isel2 == pstPreDrvCurSet->u32IRselD0)
		{
			u8PhyPreDrvCurD0 = stIselTab[u32Cnt].Dvalue;
		}

		if (stIselTab[u32Cnt].u32isel2 == pstPreDrvCurSet->u32IRselD1)
		{
			u8PhyPreDrvCurD1 = stIselTab[u32Cnt].Dvalue;
		}

		if (stIselTab[u32Cnt].u32isel2 == pstPreDrvCurSet->u32IRselD2)
		{
			u8PhyPreDrvCurD2 = stIselTab[u32Cnt].Dvalue;
		}
	}

	HDMI_APHY_DRIVER_IPRE_reg_isel_pre_clkSet(u8PhyPreDrvCurCk);
	HDMI_APHY_DRIVER_IPRE_reg_isel_pre_d0Set(u8PhyPreDrvCurD0);
	HDMI_APHY_DRIVER_IPREDE_reg_isel_pre_d1Set(u8PhyPreDrvCurD1);
	HDMI_APHY_DRIVER_IPREDE_reg_isel_pre_d2Set(u8PhyPreDrvCurD2);

    return;
}


HI_VOID PHY_PreDrvReslSet(PHY_IR_SEL_S *pstPreCurSet)
{
	HI_U8	u8PhyPreReslCk = 0x0;
	HI_U8	u8PhyPreReslD0 = 0x0;
	HI_U8	u8PhyPreReslD1 = 0x0;
	HI_U8	u8PhyPreReslD2 = 0x0;
	HI_U32  u32Cnt = 0x0;
	
	for (u32Cnt = 0; u32Cnt < 8; u32Cnt++)
	{
		if (stRselTab[u32Cnt].u32isel== pstPreCurSet->u32IRselClk)
		{
			u8PhyPreReslCk = stRselTab[u32Cnt].Tvalue;		
		}

		if (stRselTab[u32Cnt].u32isel == pstPreCurSet->u32IRselD0)
		{
			u8PhyPreReslD0 = stRselTab[u32Cnt].Tvalue;
		}

		if (stRselTab[u32Cnt].u32isel == pstPreCurSet->u32IRselD1)
		{
			u8PhyPreReslD1 = stRselTab[u32Cnt].Tvalue;
		}

		if (stRselTab[u32Cnt].u32isel == pstPreCurSet->u32IRselD2)
		{
			u8PhyPreReslD2 = stRselTab[u32Cnt].Tvalue;
		}
	}

	HDMI_APHY_DRIVER_RPRE_reg_rsel_pre_clkSet(u8PhyPreReslCk);
	HDMI_APHY_DRIVER_RPRE_reg_rsel_pre_d0Set(u8PhyPreReslD0);
	HDMI_APHY_DRIVER_RPRE_reg_rsel_pre_d1Set(u8PhyPreReslD1);
	HDMI_APHY_DRIVER_RPRE_reg_rsel_pre_d2Set(u8PhyPreReslD2);

    return;
}


HI_VOID PHY_TermRegSet(PHY_TERM_REG_S *pstPhyTerm)
{
	HI_U8 u8TempdataCk = 0x0;
	HI_U8 u8TempdataD0 = 0x0;
	HI_U8 u8TempdataD1 = 0x0;
	HI_U8 u8TempdataD2 = 0x0;
	HI_U8 u8Tempdata = 0x0;

	switch(pstPhyTerm->enPhyTermRegModeCk)
	{
		case HDMI_PHY_TERM_REG_SINGLE:
			u8TempdataCk = 0x3;
			break;
		case HDMI_PHY_TERM_REG_SOURCE:
			u8TempdataCk = 0x2;
			break;
		case HDMI_PHY_TERM_REG_LOAD:
			u8TempdataCk = 0x1;
			break;
	}

	switch(pstPhyTerm->enPhyTermRegModeD0)
	{

		case HDMI_PHY_TERM_REG_SINGLE:
			u8TempdataD0 = 0xc;
			break;
		case HDMI_PHY_TERM_REG_SOURCE:
			u8TempdataD0 = 0x8;
			break;
		case HDMI_PHY_TERM_REG_LOAD:
			u8TempdataD0 = 0x4;
			break;
	}

	switch(pstPhyTerm->enPhyTermRegModeD1)
	{

		case HDMI_PHY_TERM_REG_SINGLE:
			u8TempdataD1 = 0x30;
			break;
		case HDMI_PHY_TERM_REG_SOURCE:
			u8TempdataD1 = 0x20;
			break;
		case HDMI_PHY_TERM_REG_LOAD:
			u8TempdataD1 = 0x10;
			break;
	}

	switch(pstPhyTerm->enPhyTermRegModeD2)
	{

		case HDMI_PHY_TERM_REG_SINGLE:
			u8TempdataD2 = 0xc0;
			break;
		case HDMI_PHY_TERM_REG_SOURCE:
			u8TempdataD2 = 0x80;
			break;
		case HDMI_PHY_TERM_REG_LOAD:
			u8TempdataD2 = 0x40;
			break;
	}
	
	u8Tempdata = (u8TempdataCk) | (u8TempdataD0) | (u8TempdataD1) | (u8TempdataD2);
	HDMI_APHY_TOP_PD_reg_gc_pd_rtermSet(u8Tempdata);

	HDMI_APHY_RTERM_CTRL_reg_rt_d2Set(pstPhyTerm->u8PhyTermRegD2);
	HDMI_APHY_RTERM_CTRL_reg_rt_d1Set(pstPhyTerm->u8PhyTermRegD0);
	HDMI_APHY_RTERM_CTRL_reg_rt_d0Set(pstPhyTerm->u8PhyTermRegD1);
	HDMI_APHY_RTERM_CTRL_reg_rt_clkSet(pstPhyTerm->u8PhyTermRegCk);

    return;
}


HI_VOID PHY_CtsSpecCfgGet(HI_U32 u32TmdsClk, PHY_CTS_SPEC_CFG_S *pstPhyCtsCfg)
{
	PHY_IR_SEL_S *pstIselSet    = HI_NULL;
	PHY_IR_SEL_S *pstPreCurSet  = HI_NULL;
	PHY_IR_SEL_S *pstPreRselSet = HI_NULL;
    PHY_TERM_REG_S *pstTermReg  = HI_NULL;

    pstIselSet    = &(pstPhyCtsCfg->stIselSet);
    pstPreCurSet  = &(pstPhyCtsCfg->stPreCurSet);
    pstPreRselSet = &(pstPhyCtsCfg->stPreRselSet);
	pstTermReg    = &(pstPhyCtsCfg->stTermReg);
    
	if ((u32TmdsClk >= 25000) && (u32TmdsClk <= 200000))
	{
        //I_main 档位为实际电流值的2   倍，每增加一档电流增加0.5mA.  0-43  可选
        pstIselSet->u32IRselClk	= 24;
        pstIselSet->u32IRselD0	= 26;
        pstIselSet->u32IRselD1	= 26;
        pstIselSet->u32IRselD2	= 26;

        //Pre_I_main 档位为实际电流值的4   倍，每增加一档电流增加0.25mA.  0-43  可选
        pstPreCurSet->u32IRselClk = 20;
        pstPreCurSet->u32IRselD0  = 20;
        pstPreCurSet->u32IRselD1  = 20;
        pstPreCurSet->u32IRselD2  = 20;

		//Pre_I_Res   档位为实际电阻阻值，50/56/71/83/100/125/250/500   可选
		pstPreRselSet->u32IRselClk = 83;
		pstPreRselSet->u32IRselD0  = 83;
		pstPreRselSet->u32IRselD1  = 83;
		pstPreRselSet->u32IRselD2  = 83;

		//Main_Res   可以选在三种mode，选在Load   或者source模式时可以配置阻值。
		pstTermReg->enPhyTermRegModeCk = HDMI_PHY_TERM_REG_LOAD;
		pstTermReg->enPhyTermRegModeD0 = HDMI_PHY_TERM_REG_LOAD;
		pstTermReg->enPhyTermRegModeD1 = HDMI_PHY_TERM_REG_LOAD;
		pstTermReg->enPhyTermRegModeD2 = HDMI_PHY_TERM_REG_LOAD;
		pstTermReg->u8PhyTermRegCk     = 0x80;
		pstTermReg->u8PhyTermRegD0     = 0x40;
		pstTermReg->u8PhyTermRegD1     = 0x40;
		pstTermReg->u8PhyTermRegD2     = 0x40;
	}
	else if ((u32TmdsClk > 200000) && (u32TmdsClk <= 340000))
	{
		//I_main 档位为实际电流值的2   倍，每增加一档电流增加0.5mA.  0-43  可选
		pstIselSet->u32IRselClk	= 24;
		pstIselSet->u32IRselD0	= 32;
		pstIselSet->u32IRselD1	= 32;
		pstIselSet->u32IRselD2	= 32;

		//Pre_I_main 档位为实际电流值的4   倍，每增加一档电流增加0.25mA.  0-43  可选
		pstPreCurSet->u32IRselClk = 20;
		pstPreCurSet->u32IRselD0  = 20;
		pstPreCurSet->u32IRselD1  = 20;
		pstPreCurSet->u32IRselD2  = 20;

		//Pre_I_Res   档位为实际电阻阻值，50/56/71/83/100/125/250/500   可选
		pstPreRselSet->u32IRselClk = 83;
		pstPreRselSet->u32IRselD0  = 83;
		pstPreRselSet->u32IRselD1  = 83;
		pstPreRselSet->u32IRselD2  = 83;

		//Main_Res   可以选在三种mode，选在Load   或者source模式时可以配置阻值。
		pstTermReg->enPhyTermRegModeCk = HDMI_PHY_TERM_REG_LOAD;
		pstTermReg->enPhyTermRegModeD0 = HDMI_PHY_TERM_REG_LOAD;
		pstTermReg->enPhyTermRegModeD1 = HDMI_PHY_TERM_REG_LOAD;
		pstTermReg->enPhyTermRegModeD2 = HDMI_PHY_TERM_REG_LOAD;
		pstTermReg->u8PhyTermRegCk     = 0x80;
		pstTermReg->u8PhyTermRegD0     = 0x80;
		pstTermReg->u8PhyTermRegD1     = 0x80;
		pstTermReg->u8PhyTermRegD2     = 0x80;
	}
	else if ((u32TmdsClk > 340000) && (u32TmdsClk <= 600000))
	{
		//I_main 档位为实际电流值的2   倍，每增加一档电流增加0.5mA.  0-43  可选
		pstIselSet->u32IRselClk	= 21;
		pstIselSet->u32IRselD0	= 36;
		pstIselSet->u32IRselD1	= 36;
		pstIselSet->u32IRselD2	= 36;

		//Pre_I_main 档位为实际电流值的4   倍，每增加一档电流增加0.25mA.  0-43  可选
		pstPreCurSet->u32IRselClk = 20;
		pstPreCurSet->u32IRselD0  = 20;
		pstPreCurSet->u32IRselD1  = 20;
		pstPreCurSet->u32IRselD2  = 20;

		//Pre_I_Res   档位为实际电阻阻值，50/56/71/83/100/125/250/500   可选
		pstPreRselSet->u32IRselClk	= 83;
		pstPreRselSet->u32IRselD0	= 83;
		pstPreRselSet->u32IRselD1	= 83;
		pstPreRselSet->u32IRselD2	= 83;

		//Main_Res   可以选在三种mode，选在Load   或者source模式时可以配置阻值。
		pstTermReg->enPhyTermRegModeCk = HDMI_PHY_TERM_REG_LOAD;
		pstTermReg->enPhyTermRegModeD0 = HDMI_PHY_TERM_REG_LOAD;
		pstTermReg->enPhyTermRegModeD1 = HDMI_PHY_TERM_REG_LOAD;
		pstTermReg->enPhyTermRegModeD2 = HDMI_PHY_TERM_REG_LOAD;
		pstTermReg->u8PhyTermRegCk     = 0x00;
		pstTermReg->u8PhyTermRegD0     = 0xb0;
		pstTermReg->u8PhyTermRegD1     = 0xb0;
		pstTermReg->u8PhyTermRegD2     = 0xb0;
	}
    else
    {
        COM_ERR("u32TmdsClk %d is out valid[]\n", u32TmdsClk);
    }

    return;
}


HI_VOID PHY_CtsSpecCfgSet(PHY_CTS_SPEC_CFG_S *pstPhyCtsCfg)
{
    PHY_NULL_CHK_NO_RET(pstPhyCtsCfg);
	
    PHY_MainDrvCurSet(&(pstPhyCtsCfg->stIselSet));
    PHY_PreDrvCurSet(&(pstPhyCtsCfg->stPreCurSet));
    PHY_PreDrvReslSet(&(pstPhyCtsCfg->stPreRselSet));
    PHY_TermRegSet(&(pstPhyCtsCfg->stTermReg));

    return;
}

HI_VOID PHY_SSCSet(HDMI_PHY_SSC_INFO_S *pPhySSCInfo)
{
	HI_U32 u32PhyRefClk = 0;
	HI_U32 u32SpanFb = 0;
	HI_U32 u32StepFb = 0;
    HI_U32 u32PllClk = 0;
    HI_U32 u32PixelClkDiv = 0;

    PHY_NULL_CHK_NO_RET(pPhySSCInfo);
    PHY_ZERO_CHK(pPhySSCInfo->u32SscBypDiv);
    PHY_ZERO_CHK(pPhySSCInfo->u32SscFreq);

    if ((pPhySSCInfo->u32PixelClk >= 21250) && (pPhySSCInfo->u32PixelClk <= 50000))
    {
        u32PixelClkDiv = 16;
    }
    else if(pPhySSCInfo->u32PixelClk > 50000 && pPhySSCInfo->u32PixelClk <= 100000)
    {
        u32PixelClkDiv = 8;
    }
    else if(pPhySSCInfo->u32PixelClk > 100000 && pPhySSCInfo->u32PixelClk <= 200000)
    {
        u32PixelClkDiv = 4;
    }
    else if(pPhySSCInfo->u32PixelClk > 200000 && pPhySSCInfo->u32PixelClk <=340000)
    {
        u32PixelClkDiv = 2;
    }
    else if(pPhySSCInfo->u32PixelClk > 340000 && pPhySSCInfo->u32PixelClk <=600000)
    {
        u32PixelClkDiv = 1;
    }

    u32PllClk    = (pPhySSCInfo->u32PixelClk)*(u32PixelClkDiv);
    u32PhyRefClk = u32PllClk/pPhySSCInfo->u32SscBypDiv;

    //Get Span Fb
    u32SpanFb = (u32PhyRefClk/pPhySSCInfo->u32SscFreq)/4;

    //Get Step Fb
    PHY_ZERO_CHK(u32PhyRefClk);
    u32StepFb = (((pPhySSCInfo->u32LoopDiv*(pPhySSCInfo->u32SscAmptd/100))/10000)*pPhySSCInfo->u32SscFreq)/(u32PhyRefClk/4);

    COM_INFO(">>>>> ssc config info >>>>>\n");
    COM_INFO("u32PixelClk    = %d\n", pPhySSCInfo->u32PixelClk);
    COM_INFO("u32PixelClkDiv = %d\n", u32PixelClkDiv);
    COM_INFO("u32LoopDiv     = %d\n", pPhySSCInfo->u32LoopDiv);
    COM_INFO("u32SscBypDiv   = %d\n", pPhySSCInfo->u32SscBypDiv);
    COM_INFO("u32SscAmptd    = %d\n", pPhySSCInfo->u32SscAmptd);
    COM_INFO("u32SscFreq     = %d\n", pPhySSCInfo->u32SscFreq);
    COM_INFO("u32PllClk      = %d\n", u32PllClk);
    COM_INFO("u32PhyRefClk   = %d\n", u32PhyRefClk);
    COM_INFO("u32SpanFb      = %d\n", u32SpanFb);
    COM_INFO("u32StepFb      = %d\n", u32StepFb);

    //Step 1
    HDMI_HDMITX_FBSSC_STEP_reg_step_fbSet(u32StepFb);
    HDMI_HDMITX_FBSSC_STEP_reg_span_fbSet(u32SpanFb);
    //Step 2
    HDMI_HDMITX_FBSSC_SET_reg_set_fbSet(pPhySSCInfo->u32LoopDiv);
    HDMI_HDMITX_FBSSC_SET_reg_set_load_fbSet(0x0);
    HDMI_HDMITX_FBSSC_SET_reg_set_load_fbSet(0x1);
    HDMI_HDMITX_FBSSC_SET_reg_set_load_fbSet(0x0);
    //Step 3
    HDMI_APHY_TXPLL_TEST_reg_txpll_testSet(0x30000);
    //Step 4
    HDMI_HDMITX_FBSSC_SET_reg_ssc_mode_fbSet(HI_TRUE);
	HDMI_APHY_TXPLL_CTRL_reg_gc_txpll_en_sscdivSet(HI_TRUE);
 
    return;
}


/******************************************************************************/
/* Public interface                                                           */
/******************************************************************************/
HI_S32 HAL_HDMI_PhyPowerSet(HI_BOOL bEnable)
{
    PHY_POWER_CFG_S stPhyPowerCfg;

    memset(&stPhyPowerCfg, 0x0, sizeof(PHY_POWER_CFG_S));

    if (HI_TRUE == bEnable)
    {
        stPhyPowerCfg.bPhyGcTxpllPd   = 0x0;
        stPhyPowerCfg.bPhyGcRxsensePd = 0x0;
        stPhyPowerCfg.u8PhyGcLdoPd    = 0x0;
        stPhyPowerCfg.u8PhyGcDePd     = 0xf;
        stPhyPowerCfg.bPhyGcBistPd    = 0x1;
    }
    else
    {
        stPhyPowerCfg.bPhyGcTxpllPd   = 0x1;
        stPhyPowerCfg.bPhyGcRxsensePd = 0x1;
        stPhyPowerCfg.u8PhyGcLdoPd    = 0x3;
        stPhyPowerCfg.u8PhyGcDePd     = 0xf;
        stPhyPowerCfg.bPhyGcBistPd    = 0x1;
    }
    
	HDMI_APHY_TOP_PD_reg_gc_txpll_pdSet(stPhyPowerCfg.bPhyGcTxpllPd);
	HDMI_APHY_TOP_PD_reg_gc_pd_rxsenseSet(stPhyPowerCfg.bPhyGcRxsensePd);
	HDMI_APHY_TOP_PD_reg_gc_pd_ldoSet(stPhyPowerCfg.u8PhyGcLdoPd);
	HDMI_APHY_TOP_PD_reg_gc_pd_deSet(stPhyPowerCfg.u8PhyGcDePd);
	HDMI_APHY_TOP_PD_reg_gc_pd_bistSet(stPhyPowerCfg.bPhyGcBistPd);	
    
    return HI_SUCCESS;
}


HI_S32 HAL_HDMI_PhyInit(void)
{
    //Please pay attention for the cfg define.
    HDMI_HDMITX_INSSC_reg_Init();
    HAL_HDMI_PhyPowerSet(HI_TRUE);
    return HI_SUCCESS;  
}


HI_S32 HAL_HDMI_PhyDeInit(void)
{
    HAL_HDMI_PhyPowerSet(HI_FALSE);
    HDMI_HDMITX_INSSC_reg_DeInit();

    return HI_SUCCESS;
}


HI_S32 HAL_HDMI_PhyReset(void)
{
    return HI_SUCCESS;
}


HI_S32 HAL_HDMI_PhyPowerGet(HI_BOOL *pbEnable)
{
    PHY_POWER_CFG_S stPhyPowerCfg;

    PHY_NULL_CHK(pbEnable);

    memset(&stPhyPowerCfg, 0x0, sizeof(PHY_POWER_CFG_S));

    stPhyPowerCfg.bPhyGcTxpllPd   = HDMI_APHY_TOP_PD_reg_gc_txpll_pdGet();
    stPhyPowerCfg.bPhyGcRxsensePd = HDMI_APHY_TOP_PD_reg_gc_pd_rxsenseGet();
    stPhyPowerCfg.u8PhyGcLdoPd    = HDMI_APHY_TOP_PD_reg_gc_pd_ldoGet();
    stPhyPowerCfg.u8PhyGcDePd     = HDMI_APHY_TOP_PD_reg_gc_pd_deGet();
    stPhyPowerCfg.bPhyGcBistPd    = HDMI_APHY_TOP_PD_reg_gc_pd_bistGet();

    if ((0x0 == stPhyPowerCfg.bPhyGcTxpllPd) 
        && (0x0 == stPhyPowerCfg.bPhyGcRxsensePd) 
        && (0x0 == stPhyPowerCfg.u8PhyGcLdoPd)
        && (0xf == stPhyPowerCfg.u8PhyGcDePd)
        && (0x1 == stPhyPowerCfg.bPhyGcBistPd))
    {
        *pbEnable = HI_TRUE;
    }
    else if ((0x1 == stPhyPowerCfg.bPhyGcTxpllPd)
             && (0x1 == stPhyPowerCfg.bPhyGcRxsensePd)
             && (0x3 == stPhyPowerCfg.u8PhyGcLdoPd)
             && (0xf == stPhyPowerCfg.u8PhyGcDePd)
             && (0x1 == stPhyPowerCfg.bPhyGcBistPd))
    {
        *pbEnable = HI_FALSE;
    }
    else
    {   
        COM_WARN("phy power configure is abnormal, please check!\n");
        *pbEnable = HI_FALSE;
    }

    return HI_SUCCESS;
}


HI_S32 HAL_HDMI_PhyOeSet(HI_BOOL bEnable)
{
	HI_S32 s32Ret = 0;
	HI_U32 u32HdmiPhyOe = 0;

	u32HdmiPhyOe = (bEnable? 0x0: 0xf);
	s32Ret = HDMI_APHY_TOP_PD_reg_gc_pdSet(u32HdmiPhyOe);
    
    return s32Ret;
}


HI_S32 HAL_HDMI_PhyOeGet(HI_BOOL *pbEnable)
{
	HI_U32 u32HdmiPhyOe = 0;

    PHY_NULL_CHK(pbEnable);
    
	u32HdmiPhyOe = HDMI_APHY_TOP_PD_reg_gc_pdGet();
	*pbEnable = (0x0 == u32HdmiPhyOe)? HI_TRUE: HI_FALSE;

	return HI_SUCCESS;
}


HI_S32 HAL_HDMI_PhyTmdsSet(HDMI_PHY_TMDS_CFG_S *pstTmdsCfg)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PHY_TMDS_CFG_S stPhyTmdsCfg;
    PHY_CTS_SPEC_CFG_S stPhyCtsCfg;

    PHY_NULL_CHK(pstTmdsCfg);

    memset(&stPhyTmdsCfg, 0x0, sizeof(PHY_TMDS_CFG_S));
    memset(&stPhyCtsCfg, 0x0, sizeof(PHY_CTS_SPEC_CFG_S));

    s32Ret = PHY_TmdsCfgGet(pstTmdsCfg, &stPhyTmdsCfg);
    PHY_RET_CHK(s32Ret);

    HDMI_APHY_TOP_PD_reg_divselSet(stPhyTmdsCfg.enDivSel);
	//PHY CRG 配置
	PHY_DivCrgSet(&stPhyTmdsCfg);

	HDMI_HDMITX_FBSSC_SET_reg_set_load_fbSet(0x0);
	HDMI_HDMITX_FBSSC_SET_reg_set_load_fbSet(0x1);
	HDMI_HDMITX_FBSSC_SET_reg_set_load_fbSet(0x0);
	HDMI_HDMITX_FBSSC_SET_reg_ssc_mode_fbSet(HI_FALSE);
	HDMI_APHY_TXPLL_TEST_reg_txpll_testSet(0x0);
	HDMI_APHY_TXPLL_CTRL_reg_gc_txpll_en_sscdivSet(HI_FALSE);
	
    PHY_ClkRatioSet(stPhyTmdsCfg.enClkRatio);
	HDMI_HDMITX_FBSSC_SET_reg_set_fbSet(stPhyTmdsCfg.u32LoopDiv);

	//Init
	HDMI_APHY_TXPLL_CTRL_reg_txpll_icp_ictrlSet(0x3);
	HDMI_APHY_TXPLL_CTRL_reg_txpll_divsel_loopSet(0x20);
	HDMI_HDMITX_INSSC_SET_reg_sscin_bypass_enSet(HI_TRUE);
	HDMI_HDMITX_INSSC_SET_reg_pllfbmash111_enSet(HI_TRUE);

	//deep color 小数
	if (SiI_DeepColor_36bit == pstTmdsCfg->u32DeepColor)
	{
		HDMI_HDMITX_FBSSC_SET_reg_ssc_mode_fbSet(HI_TRUE);
		HDMI_APHY_TXPLL_TEST_reg_txpll_testSet(0x30000);
		HDMI_APHY_TXPLL_CTRL_reg_gc_txpll_en_sscdivSet(HI_TRUE);
		HDMI_HDMITX_FBSSC_SET_reg_set_load_fbSet(0x0);
		HDMI_HDMITX_FBSSC_SET_reg_set_load_fbSet(0x1);
		HDMI_HDMITX_FBSSC_SET_reg_set_load_fbSet(0x0);
	}
	else
	{
		HDMI_HDMITX_FBSSC_SET_reg_ssc_mode_fbSet(HI_FALSE);
		HDMI_APHY_TXPLL_TEST_reg_txpll_testSet(0x0);
		HDMI_APHY_TXPLL_CTRL_reg_gc_txpll_en_sscdivSet(HI_FALSE);
		HDMI_HDMITX_FBSSC_SET_reg_set_load_fbSet(0x0);
		HDMI_HDMITX_FBSSC_SET_reg_set_load_fbSet(0x1);
		HDMI_HDMITX_FBSSC_SET_reg_set_load_fbSet(0x0);
	}

	//指标
    PHY_CtsSpecCfgGet(pstTmdsCfg->u32TmdsClk, &stPhyCtsCfg);
    PHY_CtsSpecCfgSet(&stPhyCtsCfg);

    return s32Ret;
}


void SI_TX_PHY_INIT()
{
     COM_INFO(">>> SI_TX_PHY_INIT in...\n");

     HAL_HDMI_PhyInit();

     COM_INFO("<<< SI_TX_PHY_INIT out...\n");
}

HI_S32 SI_TX_PHY_GetOutPutEnable()
{ 
    HI_BOOL bPowerEnable;
    HI_BOOL bOeEnable;

    COM_INFO(">>> SI_TX_PHY_GetOutPutEnable in...\n");
#ifndef HDMI_BUILD_IN_BOOT
    HDMI_HDMITX_INSSC_reg_Init();
#endif
    HAL_HDMI_PhyPowerGet(&bPowerEnable);
    HAL_HDMI_PhyOeGet(&bOeEnable);

    COM_INFO("<<< SI_TX_PHY_GetOutPutEnable out...\n");

    return (bPowerEnable && bOeEnable);
}

HI_S32 SI_TX_PHY_DisableHdmiOutput()
{
    HI_S32 s32Ret = HI_SUCCESS;

    COM_INFO(">>> SI_TX_PHY_DisableHdmiOutput in...\n");
#ifndef HDMI_BUILD_IN_BOOT
    HDMI_HDMITX_INSSC_reg_Init();
#endif
    s32Ret = HAL_HDMI_PhyOeSet(HI_FALSE);

    COM_INFO("<<< SI_TX_PHY_DisableHdmiOutput out...\n");

    return s32Ret;
}

HI_S32 SI_TX_PHY_EnableHdmiOutput()
{
    HI_S32 s32Ret = HI_SUCCESS;

    COM_INFO(">>> SI_TX_PHY_EnableHdmiOutput in...\n");
#ifndef HDMI_BUILD_IN_BOOT
    HDMI_HDMITX_INSSC_reg_Init();
#endif
    s32Ret = HAL_HDMI_PhyOeSet(HI_TRUE);

    COM_INFO("<<< SI_TX_PHY_EnableHdmiOutput out...\n");

    return s32Ret;
}


HI_S32 SI_TX_PHY_PowerDown(HI_BOOL bPwdown)
{
    HI_S32 s32Ret = HI_SUCCESS;

    COM_INFO(">>> SI_TX_PHY_PowerDown in...\n");

#ifndef HDMI_BUILD_IN_BOOT
    HDMI_HDMITX_INSSC_reg_Init();
#endif
    s32Ret = HAL_HDMI_PhyPowerSet(HI_TRUE);

    COM_INFO("<<< SI_TX_PHY_PowerDown out...\n");

    return s32Ret;
}


HI_S32 SI_TX_PHY_TmdsSet(HI_U32 u32TmdsClk, HI_U32 u32DeepColorMode)
{
    HDMI_PHY_TMDS_CFG_S stTmdsCfg;
    HI_S32 s32Ret = HI_SUCCESS;

    COM_INFO(">>> SI_TX_PHY_TmdsSet in...\n");

#ifndef HDMI_BUILD_IN_BOOT
    HDMI_HDMITX_INSSC_reg_Init();
#endif    
    stTmdsCfg.u32DeepColor = u32DeepColorMode; 
    stTmdsCfg.u32TmdsClk   = u32TmdsClk;
    s32Ret = HAL_HDMI_PhyTmdsSet(&stTmdsCfg);

    COM_INFO("<<< SI_TX_PHY_TmdsSet out...\n");

    return s32Ret;
}


HI_S32 SI_TX_PHY_SSCSet(HDMI_PHY_TMDS_CFG_S *pPhyTmdsCfg)
{
    HI_S32 s32Ret = HI_SUCCESS;
    PHY_TMDS_CFG_S stPhyCfg;

    COM_INFO(">>> SI_TX_PHY_SSCSet in...\n");

    PHY_NULL_CHK(pPhyTmdsCfg);

    COM_INFO("stEmiInfo.bEnable: %d\n", pPhyTmdsCfg->stSSCInfo.bEnable);

    if (HI_TRUE == pPhyTmdsCfg->stSSCInfo.bEnable)
    {
        memset(&stPhyCfg, 0x0, sizeof(PHY_TMDS_CFG_S));

        s32Ret = PHY_TmdsCfgGet(pPhyTmdsCfg, &stPhyCfg);
        PHY_RET_CHK(s32Ret);

        pPhyTmdsCfg->stSSCInfo.u32LoopDiv   = stPhyCfg.u32LoopDiv;
        pPhyTmdsCfg->stSSCInfo.u32SscBypDiv = stPhyCfg.u8SscBypDiv;
        PHY_SSCSet(&(pPhyTmdsCfg->stSSCInfo));
    }
    else
    {
        HDMI_HDMITX_FBSSC_STEP_reg_step_fbSet(0x0);
        HDMI_HDMITX_FBSSC_STEP_reg_span_fbSet(0x0);
    }

    COM_INFO("<<< SI_TX_PHY_SSCSet out...\n");

    return s32Ret;
}


