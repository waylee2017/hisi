/**
 \file
 \brief common function of PVR
 \copyright Shenzhen Hisilicon Co., Ltd.
 \date 2008-2018
 \version draft
 \author z40717
 \date 2010-6-12
 */

//#include <hi_struct.h>
#include "hi_common.h"
#include "hi_adp_audio.h"
#include "hi_adp_mpi.h"

/***************************** Macro Definition ******************************/
#ifdef SLIC_AUDIO_DEVICE_ENABLE
	#define SLIC_USE_SPI 
	/* if use gpio_spi(not spi), should as follow:
		#undef SLIC_USE_SPI
		#undef VP890_USE_SPI (source\msp\ecs\drv\drv_slic_v0.6\slac_private.h)
	 */
#endif

#ifdef TLV320_AUDIO_DEVICE_ENABLE
	#undef SLIC_USE_SPI
#endif

#define PERI_CTRL_CONFIG_BASE	0x10200008
//#define MULIT_GPIO_CONFIG_BASE	0x10203000

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/

HI_S32 AudioSIOPinSharedEnable()
{
	HI_SYS_VERSION_S stVersion;
	HI_S32 Ret;

	Ret = HI_SYS_GetVersion(&stVersion);
	if (HI_SUCCESS == Ret)
	{
		if(HI_CHIP_TYPE_HI3716M == stVersion.enChipTypeHardWare && HI_CHIP_VERSION_V101 == stVersion.enChipVersion)
	    {
			Ret = HI_FAILURE;
	    }
	}

/* please make sure sio0_gpio_vga0vs_ao_aio/sio0_gpio_ao_aio OR tsi0_vi0_gpio_ao/tsi0_vi0_gpio/tsi0_vi0_gpio_ad OR
   tsi0_vi0_gpio_ao/tsi0_sio_gpio/tsi0_vi0_gpio_ad/tsi0_vi0_gpio config correct:

	BOARD_TYPE_hi3716cdmoverb/BOARD_TYPE_hi3716hdmoverb:
		himm 0x10203000 0x1
		himm 0x10203004 0x1
	BOARD_TYPE_hi3716mstbverc:
		himm 0x10203154 0x6
		himm 0x10203158 0x6
		himm 0x1020315c 0x6
	BOARD_TYPE_hi3716mtst3avera:
		himm 0x10203158 0x6
		himm 0x10203160 0x6
		himm 0x10203164 0x6
		himm 0x10203168 0x6	
*/

	return Ret;
}

#ifdef SLIC_USE_SPI
static HI_VOID SPI_CSX_RST()
{	
#if defined(BOARD_TYPE_hi3716cdmoverb) || defined(BOARD_TYPE_hi3716hdmoverb)
	HI_U32 u32TmpVal;
	//HI_REG(PERI_CTRL) &= ~(0x01<<7);    /*SPI_CS0*/
	HI_SYS_ReadRegister(PERI_CTRL_CONFIG_BASE, &u32TmpVal);
	u32TmpVal &= ~(0x01<<7);
	HI_SYS_WriteRegister(PERI_CTRL_CONFIG_BASE, u32TmpVal);
#elif defined(BOARD_TYPE_hi3716mstbverc) || defined(BOARD_TYPE_hi3716mtst3avera)\
      || defined(BOARD_TYPE_hi3716mdmo3avera) || defined(BOARD_TYPE_hi3716mdmo3bvera) || defined(BOARD_TYPE_hi3716mdmo3dvera) || defined(BOARD_TYPE_hi3716mdmo3fvera)//tst
	HI_U32 u32TmpVal;
	//HI_REG(PERI_CTRL) |= (0x01<<7);    /*SPI_CS1*/
	HI_SYS_ReadRegister(PERI_CTRL_CONFIG_BASE, &u32TmpVal);
	u32TmpVal |= (0x01<<7);
	HI_SYS_WriteRegister(PERI_CTRL_CONFIG_BASE, u32TmpVal);
#else
	
#endif
}
#endif

HI_VOID AudioSlicTlv320RST()
{
/* please make sure spi_gpio15_vga0hs OR tsi0_vi0_tsi1_gpio_ao config correct:

	BOARD_TYPE_hi3716cdmoverb(GPIO1_4)/BOARD_TYPE_hi3716hdmoverb(GPIO1_4):
		himm 0x10203010 0x0
	BOARD_TYPE_hi3716mstbverc(GPIO11_5):
		himm 0x10203150 0x6(not 0x3) 
	BOARD_TYPE_hi3716mtst3avera(GPIO8_5):
		himm 0x10203150 0x3

*/

#ifdef SLIC_AUDIO_DEVICE_ENABLE
	printf("SLIC Reset\n"); 
#else
	printf("TLV320 Reset\n"); 
#endif

#if defined(BOARD_TYPE_hi3716cdmoverb) || defined(BOARD_TYPE_hi3716hdmoverb) || defined(BOARD_TYPE_hi3716mstbverc)\
    || defined(BOARD_TYPE_hi3716mtst3avera) || defined(BOARD_TYPE_hi3716mdmo3avera) || defined(BOARD_TYPE_hi3716mdmo3bvera) || defined(BOARD_TYPE_hi3716mdmo3dvera) || defined(BOARD_TYPE_hi3716mdmo3fvera)//tst
    HI_UNF_GPIO_Open();
    HI_UNF_GPIO_SetDirBit(SLAC_RESET_GPIO_GNUM * 8 + SLAC_RESET_GPIO_PNUM, HI_FALSE);
    HI_UNF_GPIO_WriteBit(SLAC_RESET_GPIO_GNUM * 8 + SLAC_RESET_GPIO_PNUM, HI_FALSE);
    usleep(100*1000);
    HI_UNF_GPIO_WriteBit(SLAC_RESET_GPIO_GNUM * 8 + SLAC_RESET_GPIO_PNUM, HI_TRUE);
    HI_UNF_GPIO_Close();
#endif	
}

HI_VOID AudioSPIPinSharedEnable()
{	
#ifdef SLIC_USE_SPI
	SPI_CSX_RST();
#endif

/* please make sure spi_gpio/spi_gpio_i2c3 OR tsi0_vi0_tsi1_gpio_ao/tsi0_vi0_gpio_ao config correct:

#ifdef SLIC_USE_SPI
	BOARD_TYPE_hi3716cdmoverb/BOARD_TYPE_hi3716hdmoverb:
		himm 0x10203008 0x1
		himm 0x1020300c 0x1
	BOARD_TYPE_hi3716mstbverc/BOARD_TYPE_hi3716mtst3avera:
		himm 0x10203150 0x6
		himm 0x10203154 0x6
#else
	BOARD_TYPE_hi3716cdmoverb(GPIO1_1/GPIO1_2 for Tlv320)/BOARD_TYPE_hi3716hdmoverb(GPIO1_1/GPIO1_2 for Tlv320):
		himm 0x10203008 0x0
		himm 0x1020300c 0x0
	BOARD_TYPE_hi3716mstbverc(GPIO12_0/GPIO12_1 for Tlv320)/BOARD_TYPE_hi3716mtst3avera(GPIO9_0/GPIO9_1 for Tlv320):
		himm 0x10203150 0x3
		himm 0x10203154 0x3
#endif	
*/

}

