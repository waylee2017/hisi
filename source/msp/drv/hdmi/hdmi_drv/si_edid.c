
#include <linux/string.h>
#include <linux/delay.h>
#include <linux/pci.h>          //IO_ADDRESS
#include "si_edid.h"
#include "si_mddc.h"
//#include "drv_sys_ext.h"
#include "si_vmode.h"
//#include "drv_gpio_ext.h"
#include "si_timer.h"
#include "drv_hdmi.h"


//#include "hi_unf_edid.h"
#include "hi_unf_hdmi.h"

#include "si_delay.h"
//#include "hi_reg_common.h"

#include "drv_global.h"
#include "drv_gpio_ext.h"
#include "hi_drv_module.h"

//#include "test_edid.h"

static HI_U8 g_EdidMen[EDID_SIZE];
//static HI_UNF_EDID_SINK_CAPABILITY_S g_stEdidInfo;

static HI_BOOL g_bErrList[EDID_MAX_ERR_NUM] = {0};

volatile HI_REG_IO_HDMI_S   *g_pstRegIO_hdmi = (HI_REG_IO_HDMI_S*)IO_ADDRESS(HI_IO_BASE_HDMI_ADDR);

static HI_S32 BlockCheckSum(HI_U8 *pEDID)
{
    HI_U8 u8Index;
    HI_U32 u32CheckSum = 0;
    //HI_U8 u8CheckSum = 0;

    if(pEDID == HI_NULL)
    {
        EDID_ERR("null point checksum\n");
        return HI_FAILURE;
    }

    for(u8Index = 0; u8Index < EDID_BLOCK_SIZE; u8Index++)
    {
        u32CheckSum += pEDID[u8Index];
    }

    //u8CheckSum = (256 - (u32Sum%256))%256;
    if((u32CheckSum & 0xff) != 0x00)
    {
         EDID_INFO("addr(0x7F):0x%02x,checksum:0x%02x \n",
                    pEDID[EDID_BLOCK_SIZE - 1],u32CheckSum);

        return HI_FAILURE;
    }
    return HI_SUCCESS;
}

HI_S32 SI_ReadEDID (HI_U8 NBytes, HI_U16 Addr, HI_U8 * Data)
{

    HI_S32 s32Ret = 0;

    if(!DRV_Get_IsUserEdid(HI_UNF_HDMI_ID_0))
    {
        TmpDType TmpD;
        memset((void*)&TmpD, 0, sizeof(TmpD));

        TmpD.MDDC.SlaveAddr = DDC_ADDR;
        TmpD.MDDC.Offset = Addr/256;
        TmpD.MDDC.RegAddr = Addr%256;
        TmpD.MDDC.NBytesLSB = NBytes;
        TmpD.MDDC.NBytesMSB = 0;
        TmpD.MDDC.Dummy = 0;

        if(TmpD.MDDC.Offset)
            TmpD.MDDC.Cmd = MASTER_CMD_ENH_RD;
        else
            TmpD.MDDC.Cmd = MASTER_CMD_SEQ_RD;
        TmpD.MDDC.PData = Data;

        MDDCWriteOffset(Addr/256);
        s32Ret = SI_BlockRead_MDDC(&TmpD.MDDC);

        MDDCWriteOffset(0); //reset Segment offset to 0
    }
    else
    {
        int index = 0;
        HDMI_EDID_S *pEDID = DRV_Get_UserEdid(HI_UNF_HDMI_ID_0);

        if(Addr >= pEDID->u32Edidlength)
        {
            EDID_ERR("can not read EDID offset:0x%x\n",Addr);
            return HI_FAILURE;
        }

        for(index = 0; index < NBytes; index ++)
        {
            Data[index] = pEDID->u8Edid[Addr + index];
        }
    }

    return s32Ret;
}

void SI_DDC_ResetTV(HI_U32 gpio_scl,HI_U32 gpio_sda)
{
    HI_U32 ret;
    HI_U32 value;
    HI_S32 count = 0;
    GPIO_EXT_FUNC_S *gpio_func_ops = HI_NULL;

    ret = HI_DRV_MODULE_GetFunction(HI_ID_GPIO, (HI_VOID**)&gpio_func_ops);
    if((NULL == gpio_func_ops) || (ret != HI_SUCCESS))
    {
        EDID_FATAL("can't get gpio funcs!\n");
        //return HI_FAILURE;
        return ;
    }

    /*if func ops and func ptr is null, then return ;*/
    if(!gpio_func_ops || !gpio_func_ops->pfnGpioDirSetBit ||
        !gpio_func_ops->pfnGpioReadBit || !gpio_func_ops->pfnGpioWriteBit)
    {
        EDID_INFO("gpio hdmi init err\n");
        //return HI_FAILURE;
        return ;
    }


    //if SDA is low, need to create clock in SCL
    //SDA is high

    //HDMI_SDA
    //Set GPIO0_1:HDMI_SDA input
    //  u32GpioNo = 组号*8 + 在组里的编号
    //Ret = HI_UNF_GPIO_SetDirBit(0*8 + 1, HI_TRUE);//GPIO0_1:HDMI_SDA
    //SI_GPIO_SetDirBit(0, 1, HI_TRUE);
    gpio_func_ops->pfnGpioDirSetBit(gpio_sda,HI_TRUE);

    //HDMI_SCL
    gpio_func_ops->pfnGpioDirSetBit(gpio_scl,HI_FALSE);

    //HDMI_SDA
    gpio_func_ops->pfnGpioReadBit(gpio_sda,&value);

    EDID_INFO("Current Value:%d\n", value);
    //in order to pull up HDMI_SDA,try to set HDMI_SCL repeat
    while ((value == 0) && ((count ++) < 20))
    {
       // EDID_INFO("***Pull up SCL Voltage for DDC, count:%d\n", count);
        //HDMI_SCL
        gpio_func_ops->pfnGpioWriteBit(gpio_scl,HI_TRUE);
        msleep(1);//msleep(1);
        //HDMI_SCL
        gpio_func_ops->pfnGpioWriteBit(gpio_scl,HI_FALSE);
        msleep(1);//msleep(1);

        //HDMI_SDA
        gpio_func_ops->pfnGpioReadBit(gpio_sda,&value);
    }

    if (value == 0)
    {
        EDID_ERR("Can not pull up SCL Voltage\n");
    }
}

static HI_U32 SI_DDC_Adjust(void)
{
    HI_U32 value;
    HI_U32 gpio_scl,gpio_sda;

    //COM_INFO("-->%s\n",__FUNCTION__);

    //when DDC_DELAY_CNT = 0x14  oscclk   dscl = oscclk / (DDC_DELAY_CNT * 35)
    // dscl should in range 48Khz ~ 72Khz
    //50khz
    //DRV_HDMI_WriteRegister(0xf8ce03d8, 0x28); //DDC_DELAY_CNT
    //100khz
    //DRV_HDMI_WriteRegister(0xf8ce03d8, 0x14); //DDC_DELAY_CNT

    // 75Khz DDC_DELAY_CNT
    //WriteByteHDMITXP0(DDC_DELAY_CNT,0x1a);
    // 63Khz
    //DRV_HDMI_WriteRegister(0xf8ce03d8, 0x1f); //DDC_DELAY_CNT
    // phy reg3  osc clk : 57.56 ~ 72.23 Mhz  delay = 0x60  ===> I2C clk 75 ~ 94khz
    //why 21khz
    //DRV_HDMI_WriteRegister(0xf8ce03d8, 0x60); //DDC_DELAY_CNT

    WriteByteHDMITXP0(DDC_DELAY_CNT,DRV_Get_DDCSpeed());

    DelayMS(1);

    //bit 6  bus_low
    value =ReadByteHDMITXP0(DDC_STATUS);
    EDID_INFO("DDC Status:0x%x\n", value);


//HI3716Cv200 Series
#if    defined(CHIP_TYPE_hi3716cv200)   \
    || defined(CHIP_TYPE_hi3716cv200es) \
    || defined(CHIP_TYPE_hi3716mv400)   \
    || defined(CHIP_TYPE_hi3718cv100)   \
    || defined(CHIP_TYPE_hi3719cv100)   \
    || defined(CHIP_TYPE_hi3719mv100_a)

    EDID_INFO("Adjust in 3716Cv200 Series\n");
    //gpio
    if(g_pstRegIO_hdmi->ioshare_reg0.u32 == 0x01)
    {
        //PIO Mode
        //ioshare reg0 0x00 GPIO0_0 // HDMI_TX_SCL
        //ioshare reg1 0x00 GPIO0_1 // HDMI_TX_SDA
        g_pstRegIO_hdmi->ioshare_reg0.u32 = 0x00;
        g_pstRegIO_hdmi->ioshare_reg1.u32 = 0x00;

        //  u32GpioNo = 组号*8 + 在组里的编号

        //HDMI_TX_SCL GPIO0_0
        //0*8 + 0
        gpio_scl = 0;
        //Set GPIO0_1:HDMI_SDA input
        //Ret = HI_UNF_GPIO_SetDirBit(GPIO_ID*8 + GPIO_Reg, HI_TRUE);//HDMI_SDA
        gpio_sda = 1;

        SI_DDC_ResetTV(gpio_scl,gpio_sda);
        //SDA/SCL Mode
        //ioshare reg0 0x01 HDMI_TX_SCL
        //ioshare reg1 0x01 HDMI_TX_SDA  //DDC
        g_pstRegIO_hdmi->ioshare_reg0.u32 = 0x01;
        g_pstRegIO_hdmi->ioshare_reg1.u32 = 0x01;
    }

//HI3719Mv100 Series
#elif defined(CHIP_TYPE_hi3718mv100) || defined (CHIP_TYPE_hi3719mv100)

     EDID_INFO("Adjust in 3719Mv100 Series\n");
     //gpio
    if(g_pstRegIO_hdmi->ioshare_reg13.u32 == 0x01)
     {
         //PIO Mode
         //ioshare reg13 0x00 GPIO1_5 // HDMI_TX_SCL
         //ioshare reg14 0x00 GPIO1_6 // HDMI_TX_SDA
         g_pstRegIO_hdmi->ioshare_reg13.u32 = 0x00;
         g_pstRegIO_hdmi->ioshare_reg14.u32 = 0x00;


         //HDMI_TX_SCL GPIO1_5
         gpio_scl = 13;
         //Set GPIO1_6:HDMI_SDA input
         gpio_sda = 14;

         SI_DDC_ResetTV(gpio_scl,gpio_sda);

         //SDA/SCL Mode
         //ioshare reg0 0x01 HDMI_TX_SCL
         //ioshare reg1 0x01 HDMI_TX_SDA  //DDC
         g_pstRegIO_hdmi->ioshare_reg13.u32 = 0x01;
         g_pstRegIO_hdmi->ioshare_reg14.u32 = 0x01;
     }

#elif defined(CHIP_TYPE_hi3716cv200)   \
    || defined(CHIP_TYPE_hi3796cv100_a) \
    || defined(CHIP_TYPE_hi3796cv100)   \
    || defined(CHIP_TYPE_hi3798cv100_a) \
    || defined(CHIP_TYPE_hi3798cv100)

    EDID_INFO("Adjust in 3798Cv100 Series\n");

    if(g_pstRegIO_hdmi->ioshare_reg124.u32 == 0x00)      
    {
        
        // PIO Mode
        // ioshare reg124 0x02 GPIO2_4 // HDMI_TX_SCL
        // ioshare reg125 0x02 GPIO2_5 // HDMI_TX_SDA

        // 0xf8a211f0配0 ；
        // 0xf8a211f4配0 ；
        g_pstRegIO_hdmi->ioshare_reg124.u32 = 0x02;    
        g_pstRegIO_hdmi->ioshare_reg125.u32 = 0x02;

        //  u32GpioNo = 组号*8 + 在组里的编号

        //HDMI_TX_SCL GPIO2_4
        //2*8 + 4
        gpio_scl = 20;
        //Set GPIO2_5:HDMI_SDA input
        //Ret = HI_UNF_GPIO_SetDirBit(GPIO_ID*8 + GPIO_Reg, HI_TRUE);//HDMI_SDA
        //SI_GPIO_SetDirBit(2, 5, HI_TRUE);
        gpio_sda = 21;

        SI_DDC_ResetTV(gpio_scl,gpio_sda);

        //SDA/SCL Mode
        //ioshare reg124 0x00 HDMI_TX_SCL
        //ioshare reg125 0x00 HDMI_TX_SDA  //DDC
        g_pstRegIO_hdmi->ioshare_reg124.u32 = 0x00;
        g_pstRegIO_hdmi->ioshare_reg125.u32 = 0x00;
    }

#elif  defined(CHIP_TYPE_hi3716mv310)   \
    || defined(CHIP_TYPE_hi3716mv320)   \
    || defined(CHIP_TYPE_hi3716mv330)

    EDID_INFO("%s [3716MV310]\n",__FUNCTION__);
    //gpio

    if(g_pstRegIO_hdmi->ioshare_reg36_scl.u32 == 0x01)      
    {
        // GPIO Mode
        // ioshare reg35 0x02 GPIO3_5 // HDMI_TX_SDA
        // ioshare reg36 0x02 GPIO3_6 // HDMI_TX_SCL  
        g_pstRegIO_hdmi->ioshare_reg35_sda.u32 = 0x02;    
        g_pstRegIO_hdmi->ioshare_reg36_scl.u32 = 0x02;


        //HDMI_TX_SCL GPIO4_5
        gpio_scl = 30;
        //Set GPIO3_5:HDMI_SDA input
        gpio_sda = 29;

        SI_DDC_ResetTV(gpio_scl,gpio_sda);

        //SDA/SCL Mode
        //ioshare reg35 0x00 HDMI_TX_SDA    //DDC
        //ioshare reg36 0x00 HDMI_TX_SCL  
        g_pstRegIO_hdmi->ioshare_reg35_sda.u32 = 0x01;
        g_pstRegIO_hdmi->ioshare_reg36_scl.u32 = 0x01;
    }       

#endif

    return HI_SUCCESS;
}

static HI_S32 GetExtBlockNum(HI_U8 ExtBlockNum)
{
    if (ExtBlockNum > 3)
    {
        ExtBlockNum = 3;
        EDID_ERR("Ext Block num is too big\n");
    }
    return ExtBlockNum;
}

HI_S32 SI_ReadSinkEDID(HI_VOID)
{
    HI_U32 u32Index, u32ExtBlockNum, s32Ret, i;
    HI_U8  u8Data[16];
    HI_U16 u16Byte = 16;
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
    HDMI_PRIVATE_EDID_S *pPriSinkCap = DRV_Get_PriSinkCap(HI_UNF_HDMI_ID_0);

    DRV_Set_SinkCapValid(HI_UNF_HDMI_ID_0,HI_FALSE);
    memset(g_EdidMen, 0, EDID_SIZE);
    memset(pSinkCap, 0,sizeof(HI_UNF_HDMI_SINK_CAPABILITY_S));
   // memset((void*)g_s32VmodeOfUNFFormat, 0, sizeof(g_s32VmodeOfUNFFormat));
    memset(g_bErrList,HI_FALSE,EDID_MAX_ERR_NUM * sizeof(HI_BOOL));
    memset(pPriSinkCap,0,sizeof(HDMI_PRIVATE_EDID_S));
    //init native fmt
    pSinkCap->enNativeVideoFormat = HI_UNF_ENC_FMT_BUTT;

    SI_DDC_Adjust();
    EDID_INFO("read block one edid\n");
    //read first block edid
    for(u32Index = 0; u32Index < EDID_BLOCK_SIZE; u32Index += u16Byte)
    {
        s32Ret = SI_ReadEDID(u16Byte, u32Index, u8Data);
        if(HI_SUCCESS != s32Ret)
        {
            EDID_ERR("can't read edid block 1\n");
            return EDID_READ_FIRST_BLOCK_ERR;
        }

        for(i = 0; i < u16Byte; i++)
        {
            g_EdidMen[u32Index + i] = u8Data[i];//save mem
        }

        if((u32Index)%EDID_BLOCK_SIZE == 0)
        {
            EDID_INFO("EDID Debug Begin, Block_Num:%d(*128bytes):\n", (u32Index/EDID_BLOCK_SIZE + 1));
        }
        EDID_INFO("%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n",
        u8Data[0], u8Data[1], u8Data[2], u8Data[3], u8Data[4], u8Data[5], u8Data[6], u8Data[7],
        u8Data[8], u8Data[9], u8Data[10], u8Data[11], u8Data[12], u8Data[13], u8Data[14], u8Data[15]);
        //EDID_INFO("\n");
    }

    u32ExtBlockNum = (g_EdidMen[EXT_BLOCK_ADDR]);

    if(u32ExtBlockNum > 3)
    {
        EDID_WARN("Extern block: %d > 3, correct to 3 \n",u32ExtBlockNum);
        u32ExtBlockNum = 3;
    }
    pSinkCap->u8EDIDExternBlockNum = u32ExtBlockNum;

    //check first block sum
    s32Ret = BlockCheckSum(g_EdidMen);
    if(s32Ret != HI_SUCCESS)
    {
       // EDID_WARN("First Block Crc Error! \n");
        g_bErrList[_1ST_BLOCK_CRC_ERROR] = HI_TRUE;
    }

    //read extern block
    EDID_INFO("read extern block edid\n");
    for(u32Index = EDID_BLOCK_SIZE; u32Index < EDID_BLOCK_SIZE *(u32ExtBlockNum + 1); u32Index += u16Byte)
    {
        s32Ret = SI_ReadEDID(u16Byte, u32Index, u8Data);
        if(HI_SUCCESS != s32Ret)
        {
            EDID_ERR("can't read edid block %d \n",(u32Index/EDID_BLOCK_SIZE + 1));
            return (u32Index/EDID_BLOCK_SIZE + 1); // return err block no
        }

        for(i = 0; i < u16Byte; i++)
        {
            g_EdidMen[u32Index + i] = u8Data[i];//save mem
            //EDID_INFO("0x%02x,",u8Data[i]);
        }

        if((u32Index)%EDID_BLOCK_SIZE == 0)
        {
            EDID_INFO("EDID Debug Begin, Block_Num:%d(*128bytes):\n", (u32Index/EDID_BLOCK_SIZE + 1));
        }
        EDID_INFO("%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n",
        u8Data[0], u8Data[1], u8Data[2], u8Data[3], u8Data[4], u8Data[5], u8Data[6], u8Data[7],
        u8Data[8], u8Data[9], u8Data[10], u8Data[11], u8Data[12], u8Data[13], u8Data[14], u8Data[15]);
        //EDID_INFO("\n");
    }

    return HI_SUCCESS;
}


static HI_S32 CheckHeader(HI_U8 *pData)
{
    HI_U32 u32Index;
    const HI_U8 Block_Zero_header[] ={0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00};

    for (u32Index = 0; u32Index < 8; u32Index ++)
    {
        if(pData[u32Index] != Block_Zero_header[u32Index])
        {
            //EDID_WARN("BAD_HEADER Index:%d, 0x%02x\n",u32Index, pData[u32Index]);
            g_bErrList[BAD_HEADER] = HI_TRUE;
            return HI_FAILURE;
        }
    }
    return HI_SUCCESS;
}

static HI_S32 ParseVendorInfo(EDID_FIRST_BLOCK_INFO *pData)
{
    HI_U16 u16Index,u16Data;
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);

   	if(pData == NULL)
	{
        return HI_FAILURE;
    }

	u16Data = (pData->mfg_id[0]<<8) | (pData->mfg_id[1]);

	for(u16Index = 0; u16Index < 3; u16Index++)
	{
        pSinkCap->u8IDManufactureName[2 - u16Index]= ((u16Data & (0x1F << (5*u16Index))) >> (5*u16Index));
    	if((0 < pSinkCap->u8IDManufactureName[2 - u16Index])\
        && (27 > pSinkCap->u8IDManufactureName[2 - u16Index]))
		{
    		pSinkCap->u8IDManufactureName[2 - u16Index] += 'A' - 1;
		}
		else
		{
		    EDID_INFO("can't parse manufacture name\n");
			//return HI_FAILURE; //no must return
		}
	}
	pSinkCap->u32IDProductCode     = (pData->prod_code[1] << 8) | pData->prod_code[0];
	pSinkCap->u32IDSerialNumber    = (pData->serial[3] << 24) | (pData->serial[2] << 16) | (pData->serial[1] << 8) | (pData->serial[0]);
	pSinkCap->u32WeekOfManufacture = pData->mfg_week;
	pSinkCap->u32YearOfManufacture = pData->mfg_year + 1990;

	EDID_INFO("mfg name[%s]\n",pSinkCap->u8IDManufactureName);
	EDID_INFO("code:%d\n",pSinkCap->u32IDProductCode);
	EDID_INFO("serial:%d\n",pSinkCap->u32IDSerialNumber);
	EDID_INFO("year:%d,week:%d\n",pSinkCap->u32YearOfManufacture, pSinkCap->u32WeekOfManufacture);       

    return HI_SUCCESS;
}

static HI_S32 ParseVersion(HI_U8 *pData1,HI_U8 *pData2)
{
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);

    pSinkCap->u8Version  = *pData1;
    pSinkCap->u8Revision = *pData2;

    EDID_INFO("ver:%02d,rever:%02d\n",pSinkCap->u8Version,pSinkCap->u8Revision);
    return HI_SUCCESS;
}

HI_S32 ParseStandardTiming(HI_U8 *pData)
{
    HI_U8 TmpVal, i;
    HI_U32 Hor, Ver,aspect_ratio,freq;

    for(i = 0; i < STANDARDTIMING_SIZE; i += 2)
    {
        if((pData[i] == 0x01)&&(pData[i + 1]==0x01))
        {
            EDID_INFO("Mode %d wasn't defined! \n", (int)pData[i]);
        }
        else
        {
            HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
            Hor = (pData[i]+31)*8;
            // EDID_INFO(" Hor Act pixels %d \n", Hor);
            TmpVal = pData[i + 1] & 0xC0;
            if(TmpVal==0x00)
            {
               // EDID_INFO("Aspect ratio:16:10\n");
                aspect_ratio = _16_10;
                Ver = Hor *10/16;
            }
            else  if(TmpVal==0x40)
            {
               // EDID_INFO("Aspect ratio:4:3\n");
                aspect_ratio = _4;
                Ver = Hor *3/4;
            }
            else  if(TmpVal==0x80)
            {
               // EDID_INFO("Aspect ratio:5:4\n");
                aspect_ratio = _5_4;
                Ver = Hor *4/5;
            }
            else //0xc0
            {
               // EDID_INFO("Aspect ratio:16:9\n");
                aspect_ratio = _16;
                Ver = Hor *9/16;
            }
            freq = ((pData[i + 1])& 0x3F) + 60;
           // EDID_INFO(" Refresh rate %d Hz \n", freq);

            if(freq == 60)
            {
                if((Hor == 1280) && (Ver == 720))
                {
                   // EDID_INFO("1280X720 \n");
                    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1280X720_60] = HI_TRUE;
                }
                else if ((Hor == 1280) && (Ver == 800))
                {
                   // EDID_INFO("1280X800_RB \n");
                    //pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1280X800_60] = HI_TRUE;
                }
                else if ((Hor == 1280) && (Ver == 1024))
                {
                   // EDID_INFO("1280X1024 \n");
                    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1280X1024_60] = HI_TRUE;
                }
                else if ((Hor == 1360) && (Ver == 768))
                {
                   // EDID_INFO("1360X768 \n");
                    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1360X768_60] = HI_TRUE;
                }
                else if ((Hor == 1366) && (Ver == 768))
                {
                   // EDID_INFO("1366X768 \n");
                    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1366X768_60] = HI_TRUE;
                }
                else if ((Hor == 1400) && (Ver == 1050))
                {
                   // EDID_INFO("1400X1050_RB \n");
                    //pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1400X1050_60] = HI_TRUE;
                }
                else if ((Hor == 1440) && (Ver == 900))
                {
                   // EDID_INFO("1440X900_RB \n");
                    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1440X900_60_RB] = HI_TRUE;
                }
                else if ((Hor == 1600) && (Ver == 900))
                {
                   // EDID_INFO("1600X900_RB \n");
                    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1600X900_60_RB] = HI_TRUE;
                }
                else if ((Hor == 1600) && (Ver == 1200))
                {
                   // EDID_INFO("1600X1200 \n");
                    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1600X1200_60] = HI_TRUE;
                }
                //else if ((Hor == 1680) && (Ver == 1050))
                //{
                //    EDID_INFO("1680X1050_RB \n");
                //    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1680X1050_60_RB] = HI_TRUE;
                //}
                else if ((Hor == 1920) && (Ver == 1080))
                {
                   // EDID_INFO("1920X1080 \n");
                    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1920X1080_60] = HI_TRUE;
                }
                else if ((Hor == 1920) && (Ver == 1200))
                {
                   // EDID_INFO("1920X1200_RB \n");
                    //pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1920X1200_60] = HI_TRUE;
                }
                //else if ((Hor == 1920) && (Ver == 1440))
                //{
                //    EDID_INFO("1920X1440 \n");
                //    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1920X1440_60] = HI_TRUE;
                //}
                //else if ((Hor == 2048) && (Ver == 1152))
                //{
                //    EDID_INFO("2048X1152_RB \n");
                //    //pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_2048X1152_60] = HI_TRUE;
                //}
                //else if ((Hor == 2560) && (Ver == 1440))
                //{
                //    EDID_INFO("2560X1440_RB \n");
                //    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_2560X1440_60_RB] = HI_TRUE;
                //}
                //else if ((Hor == 2560) && (Ver == 1600))
                //{
                //    EDID_INFO("2560X1600_RB \n");
                //    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_2560X1600_60_RB] = HI_TRUE;
                //}
            }
        }
    }
    return HI_SUCCESS;
}

static HI_S32 ParseEstablishTiming(HI_U8 * pData)
{
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);

    if(pData[0]& 0x20)
    {
       // EDID_INFO("640 x 480 @ 60Hz\n");
        pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_861D_640X480_60] = HI_TRUE;
    }

    if(pData[0]& 0x01)
    {
        // EDID_INFO("800 x 400 @ 60Hz\n");
        pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_800X600_60] = HI_TRUE;
    }

    if(pData[1]& 0x08)
    {
        // EDID_INFO("1024 x 768 @ 60Hz\n");
        pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_VESA_1024X768_60] = HI_TRUE;
    }

#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    if(pData[0]& 0x80)
        EDID_INFO("720 x 400 @ 70Hz\n");
    if(pData[0]& 0x40)
        EDID_INFO("720 x 400 @ 88Hz\n");
    if(pData[0]& 0x10)
        EDID_INFO("640 x 480 @ 67Hz\n");
    if(pData[0]& 0x08)
        EDID_INFO("640 x 480 @ 72Hz\n");
    if(pData[0]& 0x04)
        EDID_INFO("640 x 480 @ 75Hz\n");
    if(pData[0]& 0x02)
        EDID_INFO("800 x 600 @ 56Hz\n");
    
    if(pData[1]& 0x80)
        EDID_INFO("800 x 600 @ 72Hz\n");
    if(pData[1]& 0x40)
        EDID_INFO("800 x 600 @ 75Hz\n");
    if(pData[1]& 0x20)
        EDID_INFO("832 x 624 @ 75Hz\n");
    if(pData[1]& 0x10)
        EDID_INFO("1024 x 768 @ 87Hz\n");
    if(pData[1]& 0x04)
        EDID_INFO("1024 x 768 @ 70Hz\n");
    if(pData[1]& 0x02)
        EDID_INFO("1024 x 768 @ 75Hz\n");
    if(pData[1]& 0x01)
        EDID_INFO("1280 x 1024 @ 75Hz\n");

    if(pData[2]& 0x80)
        EDID_INFO("1152 x 870 @ 75Hz\n");

    if((!pData[0])&&(!pData[1])&&(!pData[2]))
        EDID_INFO("No established video modes\n");
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

    return HI_SUCCESS;
}

HI_S32 ParsePreferredTiming(HI_U8 * pData)
{
#if 0
    HI_U32 u32Temp;
    DETAILED_TIMING_BLOCK *pDetailed = (DETAILED_TIMING_BLOCK*)pData;
    //HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
    //HI_UNF_EDID_TIMING_S *pEdidTiming = &pSinkCap->stPerferTiming;

     //pixel clock
    u32Temp = (pDetailed->pixel_clk[0]|(pDetailed->pixel_clk[1]<<8))*10; //unit HZ
    EDID_INFO("pixel clock :%d\n",u32Temp);
    //pEdidTiming->u32PixelClk = u32Temp;

     //vfb
    u32Temp = pDetailed->v_border ;
    u32Temp += (pDetailed->vs_offset_pulse_width >> 4)| ((pDetailed->hs_offset_vs_offset&0x0C) << 4);
    EDID_INFO("VFB :%d\n",u32Temp);
    //pEdidTiming->u32VFB = u32Temp;

    //vbb
    //v_active_blank == vblack == vfront + vback + vsync = VFB(vfront) + VBB(vback + vsync)
    u32Temp = ((pDetailed->v_active_blank & 0x0F)<<8)|pDetailed->v_blank;
    EDID_INFO("VBB :%d\n",u32Temp);
    //pEdidTiming->u32VBB = u32Temp - pEdidTiming->u32VFB;

    //vact
    u32Temp = ((pDetailed->v_active_blank & 0xF0) << 4)|pDetailed->v_active;
    EDID_INFO("VACT :%d\n",u32Temp);
    //pEdidTiming->u32VACT = u32Temp;

    //HFB
    u32Temp = pDetailed->h_border;
    u32Temp += pDetailed->h_sync_offset|((pDetailed->hs_offset_vs_offset & 0xC0)<<2);
    EDID_INFO("HFB :%d\n",u32Temp);
    //pEdidTiming->u32HFB = u32Temp;
    //HBB
    u32Temp = pDetailed->h_blank;
    u32Temp += (pDetailed->h_active_blank&0x0F) << 8;
    EDID_INFO("HBB :%d\n",u32Temp);
    //h_active_blank == hblack == hfront + hback + hsync = HFB(hfront) + HBB(hback + hsync)
    //pEdidTiming->u32HBB = u32Temp - pEdidTiming->u32HFB;

    //HACT
    u32Temp = ((pDetailed->h_active_blank & 0xF0) << 4)| pDetailed->h_active;
    EDID_INFO("HACT :%d\n",u32Temp);
    //pEdidTiming->u32HACT = u32Temp;

	//VPW
    u32Temp = (pDetailed->hs_offset_vs_offset & 0x03) << 4;
    u32Temp |= (pDetailed->vs_offset_pulse_width &0x0F);
    EDID_INFO("VPW :%d\n",u32Temp);
    //pEdidTiming->u32VPW = u32Temp;
    //HPW
    u32Temp = (pDetailed->hs_offset_vs_offset & 0x30) << 4;
    u32Temp |= pDetailed->h_sync_pulse_width;
    EDID_INFO("HPW :%d\n",u32Temp);
    //pEdidTiming->u32HPW = u32Temp;

    // H image size
    u32Temp = pDetailed->h_image_size;
    u32Temp |= (pDetailed->h_v_image_size & 0xF0) << 4;
    EDID_INFO("H image size :%d\n",u32Temp);
    //pEdidTiming->u32ImageWidth = u32Temp;

    //V image size
    u32Temp = (pDetailed->h_v_image_size & 0x0F) << 8;
    u32Temp  |= pDetailed->v_image_size ;
    EDID_INFO("V image size :%d\n",u32Temp);
    //pEdidTiming->u32ImageHeight = u32Temp;
    if(pDetailed->flags & 0x80)         /*Interlaced flag*/
	{
        EDID_INFO("Output mode: interlaced\n");
        //pEdidTiming->bInterlace = HI_TRUE;
	}
	else
	{
        EDID_INFO("Output mode: progressive\n");
        //pEdidTiming->bInterlace = HI_FALSE;
	}

    /*Sync Signal Definitions Type*/
    if(0 == (pDetailed->flags & 0x10))     /*Analog Sync Signal Definitions*/
	{
		switch((pDetailed->flags & 0x0E) >> 1)
		{
			case 0x00:          /*Analog Composite Sync - Without Serrations - Sync On Green Signal only*/
                EDID_INFO("sync acs ws green\n");
				break;

			case 0x01:                  /*Analog Composite Sync - Without Serrations - Sync On all three (RGB) video signals*/
                EDID_INFO("sync acs ws all\n");
				break;

			case 0x02:                  /*Analog Composite Sync - With Serrations (H-sync during V-sync); - Sync On Green Signal only*/
                EDID_INFO("sync acs ds green\n");
				break;

			case 0x03:                  /*Analog Composite Sync - With Serrations (H-sync during V-sync); - Sync On all three (RGB) video signals*/
                EDID_INFO("sync acs ds all\n");
                break;

			case 0x04:                  /*Bipolar Analog Composite Sync - Without Serrations; - Sync On Green Signal only*/
                EDID_INFO("sync bacs ws green\n");
                break;

			case 0x05:                  /*Bipolar Analog Composite Sync - Without Serrations; - Sync On all three (RGB) video signals*/
                EDID_INFO("sync bacs ws all\n");
                break;

			case 0x06:                  /*Bipolar Analog Composite Sync - With Serrations (H-sync during V-sync); - Sync On Green Signal only*/
                EDID_INFO("sync bacs ds green\n");
                break;

			case 0x07:                  /*Bipolar Analog Composite Sync - With Serrations (H-sync during V-sync); - Sync On all three (RGB) video signals*/
                EDID_INFO("sync bacs ds all\n");
                break;
			default:
				break;

          }
    }
    else                /*Digital Sync Signal Definitions*/
    {
 		switch((pDetailed->flags & 0x0E) >> 1)
		{
			case 0x01:
            case 0x00:                  /*Digital Composite Sync - Without Serrations*/
				//new_customer->Sync_type = HI_UNF_EDID_SYNC_DCS_WS;
                //pEdidTiming->bIHS = 0;
                //pEdidTiming->bIVS = 0;
                break;

			case 0x02:                   /*Digital Composite Sync - With Serrations (H-sync during V-sync)*/
			case 0x03:
				//new_customer->Sync_type = HI_UNF_EDID_SYNC_DCS_DS;
                break;

			case 0x04:                  /*Digital Separate Sync Vsync(-) Hsync(-)*/
				//new_customer->Sync_type = HI_UNF_EDID_SYNC_DSS_VN_HN;
                //pEdidTiming->bIHS = 0;
                //pEdidTiming->bIVS = 0;
                break;

			case 0x05:                  /*Digital Separate Sync Vsync(-) Hsync(+)*/
				//new_customer->Sync_type = HI_UNF_EDID_SYNC_DSS_VN_HP;
                //pEdidTiming->bIHS = 1;
                //pEdidTiming->bIVS = 0;
                break;

			case 0x06:                  /*Digital Separate Sync Vsync(+) Hsync(-)*/
				//new_customer->Sync_type = HI_UNF_EDID_SYNC_DSS_VP_HN;
                //pEdidTiming->bIHS = 0;
                //pEdidTiming->bIVS = 1;
                break;

			case 0x07:                  /*Digital Separate Sync Vsync(+) Hsync(+)*/
			//	new_customer->Sync_type = HI_UNF_EDID_SYNC_DSS_VP_HP;
                //pEdidTiming->bIHS = 1;
                //pEdidTiming->bIVS = 1;
                break;

			default:
				break;

		}
    }
    //pEdidTiming->bIDV = 0;
    /*Stereo Viewing Support*/
    switch(((pDetailed->flags & 0x60) >> 4)|(pDetailed->flags & 0x01))
	{
		case 0x02:
            EDID_INFO("stereo sequential R\n");
			break;

		case 0x04:
            EDID_INFO("stereo sequential L\n");
			break;

		case 0x03:
            EDID_INFO("stereo interleaved 2R\n");
			break;

		case 0x05:
            EDID_INFO("stereo interleaved 2L\n");
			break;

		case 0x06:
             EDID_INFO("stereo interleaved 4\n");
			break;

		case 0x07:
            EDID_INFO("stereo interleaved SBS\n");
			break;

		default:
            EDID_INFO("stereo no\n");
			break;

	}
#endif
     return HI_SUCCESS;
}

HI_S32 ParseFirstBlock(HI_U8 *pData)
{
    EDID_FIRST_BLOCK_INFO *pEdidInfo = (EDID_FIRST_BLOCK_INFO*)pData;

    CheckHeader(pData);
    ParseVendorInfo(pEdidInfo);
    ParseVersion(&pEdidInfo->version,&pEdidInfo->revision);
    ParseEstablishTiming(pEdidInfo->est_timing);
    ParseStandardTiming(pEdidInfo->std_timing);
    ParsePreferredTiming(&pData[FIRST_DETAILED_TIMING_ADDR]);
    return HI_SUCCESS;
}

static HI_VOID ParseDTVMonitorAttr(HI_U8 *pEDID)
{
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
    //HI_UNF_EDID_COLOR_SPACE_S *pColorSpace = &pSinkCap->stColorSpace;
    HDMI_PRIVATE_EDID_S *pPriSinkCap = DRV_Get_PriSinkCap(HI_UNF_HDMI_ID_0);

    //pColorSpace->bRGB444   = HI_TRUE;
    //pColorSpace->bYCbCr422 = (pEDID[0] & BIT4 ? HI_TRUE : HI_FALSE) ;
    pSinkCap->bSupportYCbCr = (pEDID[0] & BIT5 ? HI_TRUE : HI_FALSE);
    //EDID_INFO("IT Underscan:0x%02x\n", ((pEDID[0] & BIT7)>>7));

    pPriSinkCap->bUnderScanDev = (((pEDID[0] & BIT7)>>7)? HI_TRUE : HI_FALSE);
    //pColorSpace->unScanInfo.u32ScanInfo = (pEDID[0] & BIT7) >> 4;
   // EDID_INFO("basic audio:0x%02x\n",  (pEDID[0] & BIT6));
    //EDID_INFO("bYCbCr444:%d\n", pSinkCap->bSupportYCbCr);
    //EDID_INFO("bYCbCr422:%d\n", pColorSpace->bYCbCr422);
  //  EDID_INFO("DTDS num:0x%02x\n",  (pEDID[0] & 0x0F));
}

static HI_S32 ParseAudioBlock(HI_U8 *pData, HI_U8 u8Len)
{
    HI_U8 AudioFormatCode, u8bit, Index;
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);

    /*one short audio descriptors length is 3 Bytes*/
    for(Index = 0; Index < (u8Len / 3); Index ++)
    {
        AudioFormatCode = (pData[Index*3] & AUDIO_FORMAT_CODE)>>3;

        if (AudioFormatCode < HI_UNF_HDMI_MAX_AUDIO_CAP_COUNT)
        {
            pSinkCap->bAudioFmtSupported[AudioFormatCode] = HI_TRUE;
        }
        else
        {
            EDID_WARN("Audio Capability count over max number %d \n", HI_UNF_HDMI_MAX_AUDIO_CAP_COUNT);
            break;
        }

        EDID_INFO("Audio Format Code %i: \n",(int)AudioFormatCode);
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
        switch (AudioFormatCode)
        {
            case 1:
                EDID_INFO("Liniar PCM\n");
                break;
            case 2:
                EDID_INFO("AC-3\n");
                break;
            case 3:
                EDID_INFO("MPEG-1\n");
                break;
            case 4:
                EDID_INFO("MP3\n");
                break;
            case 5:
                EDID_INFO("MPEG2\n");
                break;
            case 6:
                EDID_INFO("AAC\n");
                break;
            case 7:
                EDID_INFO("DTS\n");
                break;
            case 8:
                EDID_INFO("ATRAC\n");
                break;
            default:
                EDID_INFO("reserved\n");
        }
        EDID_INFO("Max N of channels %i\n",(int)((pData[Index*3] & AUDIO_MAX_CHANNEL)+1));
        EDID_INFO("Fs: \n");
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

        u8bit = pData[Index*3 + 1];
        EDID_INFO("sample rate:0x%02x\n",u8bit);
        if(u8bit&0x01)
        {
            //EDID_INFO(" 32 KHz\n");
            pSinkCap->u32AudioSampleRateSupported[0] = HI_UNF_SAMPLE_RATE_32K;
        }
        if(u8bit&0x02)
        {
           // EDID_INFO(" 44 KHz\n");
            pSinkCap->u32AudioSampleRateSupported[1] = HI_UNF_SAMPLE_RATE_44K;
        }
        if(u8bit&0x04)
        {
           // EDID_INFO(" 48 KHz\n");
            pSinkCap->u32AudioSampleRateSupported[2] = HI_UNF_SAMPLE_RATE_48K;
        }
        if(u8bit&0x08)
        {
           // EDID_INFO(" 88 KHz\n");
            pSinkCap->u32AudioSampleRateSupported[3] = HI_UNF_SAMPLE_RATE_88K;
        }
        if(u8bit&0x10)
        {
            //EDID_INFO(" 96 KHz\n");
            pSinkCap->u32AudioSampleRateSupported[4] = HI_UNF_SAMPLE_RATE_96K;
        }
        if(u8bit&0x20)
        {
            //EDID_INFO(" 176 KHz\n");
            pSinkCap->u32AudioSampleRateSupported[5] = HI_UNF_SAMPLE_RATE_176K;
        }
        if(u8bit&0x40)
        {
            //EDID_INFO(" 192 KHz\n");
            pSinkCap->u32AudioSampleRateSupported[6] = HI_UNF_SAMPLE_RATE_192K;
        }

        if(AudioFormatCode == 1)
        {
            if(pSinkCap->u32MaxPcmChannels < ((pData[Index * 3] & AUDIO_MAX_CHANNEL) + 1))
            {
               pSinkCap->u32MaxPcmChannels = (pData[Index * 3] & AUDIO_MAX_CHANNEL) + 1;
            }
            
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
            EDID_INFO("Supported length: \n");
            if(pData[Index * 3 + 2] & 0x01)
                EDID_INFO("16 bits\n");
            if(pData[Index * 3 + 2] & 0x02)
                EDID_INFO("20 bits\n");
            if(pData[Index * 3 + 2] & 0x04)
                EDID_INFO("24 bits\n");
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
        }        
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
        else
            EDID_INFO(" Maximum bit rate %i KHz\n", (int)(pData[Index * 3 + 2] << 3));               
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    } 
    
    return HI_SUCCESS;
}

static HI_S32 ParseVideoDataBlock(HI_U8 *pData, HI_U8 u8Len)
{
    HI_U8 Index;
    HI_UNF_ENC_FMT_E enFmt, enNativeFmt = HI_UNF_ENC_FMT_BUTT;
    HI_U32 vic,hdmiModeIdx;
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
    extern HI_U32 VModeTablesIndexMax; 
    

    if(pData == HI_NULL)
    {
        EDID_ERR("hdmi video point null!\n");
        return HI_FAILURE;
    }

    for(Index = 0; Index < u8Len; Index++)
    {
        vic = pData[Index] & EDID_VIC;
        EDID_INFO("vic:0x%02x\n",vic);
        for(hdmiModeIdx = 0; hdmiModeIdx < VModeTablesIndexMax; hdmiModeIdx++)
        {
            if(VModeTables[hdmiModeIdx].ModeId.enUNFFmt_C1 >= HI_UNF_ENC_FMT_BUTT)
            {
                continue;
            }
            enFmt = VModeTables[hdmiModeIdx].ModeId.enUNFFmt_C1;  
           // g_s32VmodeOfUNFFormat[enFmt] = hdmiModeIdx;
            if (VModeTables[hdmiModeIdx].ModeId.Mode_C1 == vic)
            {

                pSinkCap->bVideoFmtSupported[enFmt] = HI_TRUE;  /* support timing foramt */
                if(enNativeFmt == HI_UNF_ENC_FMT_BUTT)
                {
                    enNativeFmt = enFmt; //if no native flag set first define format
                }

                if(pData[Index]&0x80)
                {
                    if(HI_UNF_ENC_FMT_BUTT == pSinkCap->enNativeVideoFormat)
                    {
                        pSinkCap->enNativeVideoFormat = enFmt;
                    }
                    EDID_INFO("Native fmt :0x%02x\n",pData[Index]);
                }
            }
        }
    }

    if(HI_UNF_ENC_FMT_BUTT == pSinkCap->enNativeVideoFormat)
    {
        pSinkCap->enNativeVideoFormat = enNativeFmt; //set The first order fmt 
    }
    //EDID_INFO("*****Native fmt :0x%02x\n",pSinkCap->enNativeVideoFormat);

    //We need to add default value:640x480p@60Hz.
    pSinkCap->bVideoFmtSupported[HI_UNF_ENC_FMT_861D_640X480_60] = HI_TRUE;
    //g_s32VmodeOfUNFFormat[HI_UNF_ENC_FMT_861D_640X480_60] = 0x01;
    return HI_SUCCESS;
}

static HI_S32 ParseVendorSpecificDataBlock(HI_U8 *pData, HI_U8 u8Len )
{
    HI_U8 index ,HDMI_VIC_LEN, HDMI_3D_LEN,u83D_present, u83D_Multi_present,u83D_Structure;
    HI_U8 u8Temp;
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
    HI_U8 offset = 0;// for dynamic offset

    EDID_INFO("IEERegId:0x%02x, 0x%02x, 0x%02x\n", pData[0], pData[1], pData[2]);
    if ((pData[0] == 0x03) && (pData[1] == 0x0c)
      && (pData[2] == 0x00))
    {
        EDID_INFO("This is HDMI Device\n");
        pSinkCap->bSupportHdmi = HI_TRUE;
    }
    else
    {
        //pSinkCap->bSupportHdmi = HI_FALSE;
        //EDID_INFO("This is DVI Device, we don't parse it\n");
        //return HI_FAILURE;
        EDID_INFO("unknown Device, we don't parse it\n");
        return HI_SUCCESS;
    }

    if(u8Len < 4)
    {
        EDID_INFO("len:%d\n",u8Len);
        return HI_SUCCESS;
    }
        /* Vendor Specific Data Block */
    pSinkCap->u8PhyAddr_A = (pData[3] & 0xF0)>>4;
    pSinkCap->u8PhyAddr_B = (pData[3] & 0x0F);
    pSinkCap->u8PhyAddr_C = (pData[4] & 0xF0)>>4;
    pSinkCap->u8PhyAddr_D = (pData[4] & 0x0F);

    if((pSinkCap->u8PhyAddr_A != 0xF )&&(pSinkCap->u8PhyAddr_B != 0xF )&&
       (pSinkCap->u8PhyAddr_C != 0xF )&&(pSinkCap->u8PhyAddr_D != 0xF ))
    {
        pSinkCap->bIsPhyAddrValid = TRUE;
    }
    else
    {
        pSinkCap->bIsPhyAddrValid = FALSE;
    }

    //EDID_INFO("PhyAddr %02x.%02x.%02x.%02x\n", g_stEdidInfo.u8PhyAddrA, g_stEdidInfo.u8PhyAddrB, g_stEdidInfo.u8PhyAddrC, g_stEdidInfo.u8PhyAddrD);

    if(u8Len < 6)
    {
        EDID_INFO("len:%d\n",u8Len);
        return HI_SUCCESS;
    }

    pSinkCap->bSupportDVIDual    = (pData[5] & 0x01);
    pSinkCap->bSupportDeepColorYCBCR444  = (pData[5] & 0x08) >> 3;
    pSinkCap->bSupportDeepColor30Bit = (pData[5] & 0x10) >> 4;
    pSinkCap->bSupportDeepColor36Bit = (pData[5] & 0x20) >> 5;
    pSinkCap->bSupportDeepColor48Bit = (pData[5] & 0x40) >> 6;
    pSinkCap->bSupportAI = (pData[5] & 0x80) >> 7;
    EDID_INFO("DVI_Dual:%d,Y444:%d,30bit:%d,48bit:%d,AI:%d\n",pSinkCap->bSupportDVIDual,
                pSinkCap->bSupportDeepColorYCBCR444, pSinkCap->bSupportDeepColor30Bit,
                pSinkCap->bSupportDeepColor48Bit,pSinkCap->bSupportAI);
    if(u8Len < 7)
    {
        EDID_INFO("len:%d\n",u8Len);
        return HI_SUCCESS;
    }
   // g_stEdidInfo.u32MaxTMDSClk   = (pData[6] & 0xff) * 5;
    EDID_INFO("Max TMDS Colock:%d\n", (pData[6] & 0xff) * 5);

    if(u8Len < 8)
    {
        EDID_INFO("len:%d\n", u8Len);
        return HI_SUCCESS;
    }

    //HDMI_Video_present is used as 3d support tag now. we don't use 3D_present to judge 3dsupport
    pSinkCap->bHDMI_Video_Present = (pData[7] & 0x20) >> 5;
    EDID_INFO("support 3d:%d\n",pSinkCap->bHDMI_Video_Present);
    EDID_INFO("bLatency_Fields_Present:%d\n",(pData[7] & 0x80) >> 7);
    EDID_INFO("bI_Latency_Fields_Present:%d\n",(pData[7] & 0x40) >> 6);
    EDID_INFO("CNC:%d\n",(pData[7] & 0x0F));
    if(u8Len < 9)
    {
        EDID_INFO("len:%d\n", u8Len);
        return HI_SUCCESS;
    }

    offset = 8;
    if(((pData[7] & 0x80) >> 7) != 0)
    {
        EDID_INFO("u8Video_Latency:%d\n",(pData[offset++] & 0xff));//if valid,always in 8
        EDID_INFO("u8Audio_Latency:%d\n",(pData[offset++] & 0xff));// 9

    }

    if(((pData[7] & 0x40) >> 6) != 0)
    {
        EDID_INFO("u8Interlaced_Video_Latency:%d\n",(pData[offset++] & 0xff));
        EDID_INFO("u8Interlaced_Audio_Latency:%d\n",(pData[offset++] & 0xff));
    }

    /* for CodeCC, The condition "u8Len < offset + 1" cannot be true.*/
    //if(u8Len < (offset+1))
    //{
    //    EDID_INFO("len:%d\n", u8Len);
    //    return HI_SUCCESS;
    //}
    
    EDID_INFO("u8ImagSize:%d\n",((pData[offset]& 0x18)>>2));
    u83D_present = (pData[offset]& 0x80) >> 7;
    u83D_Multi_present = (pData[offset]& 0x60) >> 5;

    EDID_INFO("3D present:%d ,u83D_Multi_present:%d \n",u83D_present,u83D_Multi_present);
    offset++;

    if(u8Len < (offset+1))
    {
        EDID_INFO("len:%d\n", u8Len);
        return HI_SUCCESS;
    }
    
    HDMI_3D_LEN = (pData[offset]& 0x1F);
    HDMI_VIC_LEN = (pData[offset]& 0xE0) >> 5;
    offset++; // 14
    
    index = 0;

    EDID_INFO("3D_LEN:%d,VIC:%d\n",HDMI_3D_LEN, HDMI_VIC_LEN);
    if ((HDMI_VIC_LEN > 0) && (u8Len >= (HDMI_VIC_LEN + offset)))
    {
        for(index = 0; index < HDMI_VIC_LEN; index ++)
        {
            //g_stEdidInfo.bSupportFmt4K_2K[index] = HI_TRUE;
            u8Temp = pData[offset++];
            if(u8Temp <= 4)
            {
                HI_U32 u32temp = VICModeTables[u8Temp].fmt;
                if(u32temp < HI_UNF_ENC_FMT_BUTT)
                {
                    pSinkCap->bVideoFmtSupported[u32temp] = HI_TRUE;
                }
                else
                {
                    EDID_WARN("Getted Butt fmt when parse 4k cap \n");
                }
            }
            EDID_INFO("4k*2k VIC:%d\n",u8Temp);
        }
    }

    if((HDMI_3D_LEN > 0) && (u8Len >= (HDMI_3D_LEN + offset))) 
    {
        //index = 0;
        if(u83D_present)
        {
            if ((u83D_Multi_present == 0x1) || (u83D_Multi_present == 0x2))
            {
               
                //3d structure_All_15...8 resever
                u8Temp = pData[offset++] & 0xFF;
                EDID_INFO("3D_Structure_ALL_15…8 :0x%x\n",u8Temp);
                //if(0x01 == u8Temp)
                //{
                //   pSinkCap->st3DInfo.bSupport3DType[HI_UNF_3D_SIDE_BY_SIDE_HALF] = HI_TRUE; 
                //}
                u8Temp = pData[offset++] & 0xFF;
                EDID_INFO("3D_Structure_ALL_7…0 :0x%x\n",u8Temp);
                
                
                //if(0x01&u8Temp)
                //{
                //   pSinkCap->st3DInfo.bSupport3DType[HI_UNF_3D_FRAME_PACKETING] = HI_TRUE; 
                //}
                //if(0x02&u8Temp)
                //{
                //   pSinkCap->st3DInfo.bSupport3DType[HI_UNF_3D_FIELD_ALTERNATIVE] = HI_TRUE; 
                //}
                //if(0x04&u8Temp)
                //{
                //   pSinkCap->st3DInfo.bSupport3DType[HI_UNF_3D_LINE_ALTERNATIVE] = HI_TRUE; 
                //}
                //if(0x08&u8Temp)
                //{
                //   pSinkCap->st3DInfo.bSupport3DType[HI_UNF_3D_SIDE_BY_SIDE_FULL] = HI_TRUE; 
                //}
                //if(0x10&u8Temp)
                //{
                //   pSinkCap->st3DInfo.bSupport3DType[HI_UNF_3D_L_DEPTH] = HI_TRUE; 
                //}
                //if(0x20&u8Temp)
                //{
                //   pSinkCap->st3DInfo.bSupport3DType[HI_UNF_3D_L_DEPTH_GRAPHICS_GRAPHICS_DEPTH] = HI_TRUE; 
                //}
                //if(0x40&u8Temp)
                //{
                //   pSinkCap->st3DInfo.bSupport3DType[HI_UNF_3D_TOP_AND_BOTTOM] = HI_TRUE; 
                //}
                //index += 2;
            }

            if(u83D_Multi_present == 0x1)
            {
                //3D_MASK_0...15 resever
                u8Temp = pData[offset++] & 0xFF;
                EDID_INFO("3D_MASK_15…8 :0x%x\n",u8Temp);

                u8Temp = pData[offset++] & 0xFF;
                EDID_INFO("3D_MASK_7…0 :0x%x\n",u8Temp);
            }
        }
    }

    for(index = offset ; index < u8Len; index ++)
    {
        u83D_Structure = (pData[offset]&0xF0)>>4;
        EDID_INFO("2D_VIC_order:0x%02x\n", u83D_Structure);
        u83D_Structure = (pData[offset]&0x0F);
        if(u83D_Structure >= 0x08)
        {
            EDID_INFO("3D_Detailed > 0x08 :0x%02x\n", u83D_Structure);
            u83D_Structure = (pData[offset]&0xF0)>>4;
        }

        offset++;
        EDID_INFO("3D_Detailed :0x%02x\n", u83D_Structure);
    }
    

    return HI_SUCCESS;
}

HI_S32 ParseSpeakerDataBlock(HI_U8 *pData, HI_U8 u8Len)
{
    HI_U8 u32Bit;
    
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);

    u32Bit = pData[0];
    EDID_INFO("Speaker0:0x%02x\n",u32Bit);
    
    pSinkCap->u8Speaker = *pData;
    
    return HI_SUCCESS;
}

static HI_S32 ParseExtDataBlock(HI_U8 *pData, HI_U8 u8Len)
{
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);

    switch(pData[0])
    {
     case COLORIMETRY_DATA_BLOCK:
       // g_stEdidInfo.unColorimetry.u32Colorimetry = (pData[1]|(pData[2]<<8));
        if(XVYCC601&pData[1])
        {
            pSinkCap->bSupportxvYCC601 = HI_TRUE;
        }
        if(XVYCC709&pData[1])
        {
            pSinkCap->bSupportxvYCC709 = HI_TRUE;
        }
        //if(SYCC601&pData[1])
        //{
        //    pSinkCap->stColorMetry.bsYCC601 = HI_TRUE;
        //}
        //if(ADOBE_XYCC601&pData[1])
        //{
        //    pSinkCap->stColorMetry.bAdobleYCC601 = HI_TRUE;
        //}
        //if(ADOBE_RGB&pData[1])
        //{
        //    pSinkCap->stColorMetry.bAdobleRGB = HI_TRUE;
        //}
        //EDID_INFO("Colorimetry:0x%02x\n", pData[1]);
        break;
        
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
        case VIDEO_CAPABILITY_DATA_BLOCK:
        EDID_INFO("Video Capability Data Block\n");
        //g_stEdidInfo.unScanInfo.u32ScanInfo |= pData[1]&0xFF;
        EDID_INFO("ScanType:%d\n",pData[1]);
        break;
    case VENDOR_SPECIFIC_VIDEO_DATA_BLOCK:
        EDID_INFO("vendor specific data block\n");
        break;
    case RESERVED_VESA_DISPLAY_DEVICE:
        EDID_INFO("reserved vesa display device\n");
        break;
    case RESERVED_VESA_VIDEO_DATA_BLOCK:
        EDID_INFO("reserved vesa video data block\n");
        break;
    case RESERVED_HDMI_VIDEO_DATA_BLOCK:
        EDID_INFO("reserved hdmi video data block\n");
        break;

    case CEA_MISCELLANENOUS_AUDIO_FIELDS:
        EDID_INFO("CEA miscellanenous audio data fileds\n");
        break;
    case VENDOR_SPECIFIC_AUDIO_DATA_BLOCK:
        EDID_INFO("vendor specific audio data block\n");
        break;
    case RESERVED_HDMI_AUDIO_DATA_BLOCK:
        EDID_INFO("reserved hdmi audio data block\n");
        break;
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
     default:
        break;
    }
    return HI_SUCCESS;
}

HI_S32 ParseDTVBlock(HI_U8 *pData)
{
    HI_U8 offset, length, len;
    HI_S32 s32Ret;

    if(pData == HI_NULL)
    {
        EDID_ERR("null ponit\n");
        return HI_FAILURE;
    }

    s32Ret = BlockCheckSum(pData);

    if(s32Ret != HI_SUCCESS)
    {
        //EDID_WARN("Extend Block Crc Error! \n");
        g_bErrList[EXTENSION_BLOCK_CRC_ERROR] = HI_TRUE;
    }


    if((pData[0] != EXT_VER_TAG)|| (pData[1] < EXT_REVISION))//0x03
    {
        EDID_ERR("extern block revison err:%d.%d\n", pData[0], pData[1]);
        return HI_FAILURE;
    }

    length = pData[2];
    //EDID_INFO("data block length:0x%x\n",length);
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    if(length == 0)
    {
        EDID_ERR("no detailed timing data and no reserved provided!\n");
        return HI_FAILURE;
    }
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    if(length <= 4)
    {
        EDID_ERR("no reserved provided! len:%d\n",length);
        return HI_FAILURE;
    }
    offset = 4;

    ParseDTVMonitorAttr(&pData[3]);

    while(offset < length)
    {
        len = pData[offset] & DATA_BLOCK_LENGTH;
        EDID_INFO("data ID:%d,len:%d,data:0x%02x\n",((pData[offset] & DATA_BLOCK_TAG_CODE) >> 5),len,pData[offset]);
        switch((pData[offset] & DATA_BLOCK_TAG_CODE) >> 5)
        {
            case AUDIO_DATA_BLOCK:
                (HI_VOID)ParseAudioBlock(&pData[offset + 1], len);
                break;
            case VIDEO_DATA_BLOCK:
                (HI_VOID)ParseVideoDataBlock(&pData[offset + 1], len);
                break;
            case VENDOR_DATA_BLOCK:
                s32Ret = ParseVendorSpecificDataBlock(&pData[offset + 1], len);
                if(HI_SUCCESS != s32Ret)
                {
                    EDID_ERR("Vendor parase error!\n");
                    //return s32Ret;
                }
                break;
            case SPEAKER_DATA_BLOCK:
                (HI_VOID)ParseSpeakerDataBlock(&pData[offset + 1], len);
                break;
            case VESA_DTC_DATA_BLOCK:
                EDID_INFO("VESA_DTC parase\n");
                break;
            case USE_EXT_DATA_BLOCK:
                (HI_VOID)ParseExtDataBlock(&pData[offset + 1], len);
                break;
             default:
                EDID_INFO("resvered block tag code define");
                break;
        }
        offset += len + 1;
    }

    return HI_SUCCESS;

}

static HI_BOOL g_bDefHDMIMode = HI_TRUE;
HI_U8 SI_SetDefaultOutputMode(HI_BOOL bDefHDMIMode)
{
    g_bDefHDMIMode = bDefHDMIMode;

    return HI_SUCCESS;
}

HI_U8 SI_GetDefaultOutputMode(HI_BOOL *pDefHDMIMode)
{
    *pDefHDMIMode = g_bDefHDMIMode;
    return HI_SUCCESS;
}

void SI_OldAudioAdjust(void)
{
    HI_DRV_HDMI_AUDIO_CAPABILITY_S *tempAudioCap = DRV_Get_OldAudioCap();
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
    //HI_U32 i,j;

    memset(tempAudioCap,0,sizeof(HI_DRV_HDMI_AUDIO_CAPABILITY_S));
#if 0
    for(i = 0; i < HI_UNF_HDMI_MAX_AUDIO_CAP_COUNT; i++)
    {
        if(pSinkCap->bAudioFmtSupported[i])
        {
            tempAudioCap->bAudioFmtSupported[pSinkCap->bAudioFmtSupported[i]] = HI_TRUE;
            
            //PROC_PRINT(p, "%-3d %-12s| ",pSinkCap->bAudioFmtSupported[[i].enAudFmtCode, g_pAudioFmtCode[pSinkCap->bAudioFmtSupported[[i].enAudFmtCode]);
            //PROC_PRINT(p, "%-15d| ",pSinkCap->bAudioFmtSupported[[i].u8AudChannel);
            if((pSinkCap->bAudioFmtSupported[i] == HDMI_AUDIO_CODING_PCM) 
                && (pSinkCap->bAudioFmtSupported[i] > tempAudioCap->u32MaxPcmChannels))
            {
                tempAudioCap->u32MaxPcmChannels = pSinkCap->bAudioFmtSupported[i];
            }            

            for (j = 0; j < HI_UNF_HDMI_MAX_AUDIO_SMPRATE_COUNT; j++)
            {
                if(pSinkCap->u32AudioSampleRateSupported[j] == HI_UNF_SAMPLE_RATE_32K)
                {
                    tempAudioCap->u32AudioSampleRateSupported[0] = HI_UNF_SAMPLE_RATE_32K;
                }
                if(pSinkCap->u32AudioSampleRateSupported[j] == HI_UNF_SAMPLE_RATE_44K)
                {
                    tempAudioCap->u32AudioSampleRateSupported[1] = HI_UNF_SAMPLE_RATE_44K;
                }
                if(pSinkCap->u32AudioSampleRateSupported[j] == HI_UNF_SAMPLE_RATE_48K)
                {
                    tempAudioCap->u32AudioSampleRateSupported[2] = HI_UNF_SAMPLE_RATE_48K;
                }
                if(pSinkCap->u32AudioSampleRateSupported[j] == HI_UNF_SAMPLE_RATE_88K)
                {
                    tempAudioCap->u32AudioSampleRateSupported[3] = HI_UNF_SAMPLE_RATE_88K;
                }
                if(pSinkCap->u32AudioSampleRateSupported[j] == HI_UNF_SAMPLE_RATE_96K)
                {
                    tempAudioCap->u32AudioSampleRateSupported[4] = HI_UNF_SAMPLE_RATE_96K;
                }
                if(pSinkCap->u32AudioSampleRateSupported[j] == HI_UNF_SAMPLE_RATE_176K)
                {
                    tempAudioCap->u32AudioSampleRateSupported[5] = HI_UNF_SAMPLE_RATE_176K;
                }
                if(pSinkCap->u32AudioSampleRateSupported[j] == HI_UNF_SAMPLE_RATE_192K)
                {
                    tempAudioCap->u32AudioSampleRateSupported[6] = HI_UNF_SAMPLE_RATE_192K;
                }
            }
        }
    }
#else
    memcpy(tempAudioCap->bAudioFmtSupported, pSinkCap->bAudioFmtSupported,
            sizeof(HI_BOOL) * HI_UNF_HDMI_MAX_AUDIO_CAP_COUNT);
    memcpy(tempAudioCap->u32AudioSampleRateSupported, pSinkCap->u32AudioSampleRateSupported,
               sizeof(HI_U32) * HI_UNF_HDMI_MAX_AUDIO_SMPRATE_COUNT);
    tempAudioCap->u32MaxPcmChannels = pSinkCap->u32MaxPcmChannels;
    //tempAudioCap->u8Speaker = pSinkCap->u8Speaker;    
#endif
}

// when we found 0x03 0x0c 0x00 in edid, hdmi mode
// 0 extend block, dvi mode
// no vsdb flag(030c00) && crc ok && 1st head ok && no pcm capability, dvi mode
// else user decision default mode
HI_U8 SI_ParseEDID(HI_U8 *DisplayType)
{
    HI_S32 s32Ret,Index;
    HI_U8  *pData = g_EdidMen; // Parse sink cap
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
    HI_DRV_HDMI_AUDIO_CAPABILITY_S *pOldAudioCap;

    ParseFirstBlock(pData);

    if(pSinkCap->u8EDIDExternBlockNum == 0)
    {
        pSinkCap->bSupportHdmi = HI_FALSE;
        DRV_Set_SinkCapValid(HI_UNF_HDMI_ID_0,HI_TRUE);
        COM_INFO("%s<--\n",__FUNCTION__);
        return HI_SUCCESS;
    }

#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    if(pSinkCap->u8EDIDExternBlockNum > 3)
    {
        EDID_INFO("Extern block too big: 0x%02x \n",pSinkCap->u8EDIDExternBlockNum);
        EDID_INFO("Setting to 3 Block \n");;
        pSinkCap->u8EDIDExternBlockNum = 3;
    }
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

    //g_stEdidInfo.bRealEDID = HI_TRUE;
    //g_stEdidInfo.bRGB444 = HI_TRUE;//always HI_TRUE
    for(Index = 1; (Index <= pSinkCap->u8EDIDExternBlockNum)&&(Index <= 3); Index++)
    {
        s32Ret = ParseDTVBlock(&pData[EDID_BLOCK_SIZE*Index]);
        if(HI_SUCCESS == s32Ret)
        {
            EDID_INFO("Successfully resolved ext block NO:0x%x\n",Index);
            break;
        }
    }

    SI_OldAudioAdjust();

    pOldAudioCap = DRV_Get_OldAudioCap();

    if(pSinkCap->bSupportHdmi == HI_FALSE)
    {
        if(g_bErrList[BAD_HEADER] || g_bErrList[_1ST_BLOCK_CRC_ERROR] || g_bErrList[EXTENSION_BLOCK_CRC_ERROR]
           || pOldAudioCap->bAudioFmtSupported[HDMI_AUDIO_CODING_PCM] )
        {
            EDID_INFO("Unknown mode, Go to Force Mode");
            EDID_INFO("BAD_HEADER:%d,_1ST_BLOCK_CRC_ERROR:%d,EXTENSION_BLOCK_CRC_ERROR:%d,PCM:%d\n",
                g_bErrList[BAD_HEADER],g_bErrList[_1ST_BLOCK_CRC_ERROR],g_bErrList[EXTENSION_BLOCK_CRC_ERROR],pOldAudioCap->bAudioFmtSupported[HDMI_AUDIO_CODING_PCM]);

            return HI_FAILURE;
        }
        EDID_INFO("DVI DEVICE\n");
        *DisplayType = DVI_DISPLAY;
    }
    else
    {
        EDID_INFO("HDMI DEVICE\n");
        *DisplayType = HDMI_DISPLAY;
    }

    DRV_Set_SinkCapValid(HI_UNF_HDMI_ID_0,HI_TRUE);

    return HI_SUCCESS;
}

HI_U8 SI_Proc_ReadEDIDBlock(HI_U8 *DataBlock, HI_U32 *size)
{
    HI_U32 BlockNum = 0;
    
    if ((HI_NULL == DataBlock)||(HI_NULL == size))
    {
        EDID_ERR("ReadEDID add==NULL: &buf=0x%p,&size=0x%p\n",DataBlock, size);
        return HI_FAILURE;
    }
    
    BlockNum = GetExtBlockNum(g_EdidMen[EXT_BLOCK_ADDR]);
    if(BlockNum > 3)
    {
        BlockNum = 3;
    }

    *size = 128 + 128 * BlockNum;

    memcpy(DataBlock, g_EdidMen, *size);
    
    return HI_SUCCESS;
}

//This function is used in enjoy project.
HI_U8 SI_Force_GetEDID(HI_U8 *datablock, HI_U32 *length)
{
    HI_U32 ret;
    HI_U8  DisplayType = 0;

    ret = SI_ReadSinkEDID();
    if(ret != HI_SUCCESS)
    {
        EDID_ERR("ReadSinkEDID fail!\n");
        return ret;
    }

    SI_Proc_ReadEDIDBlock(datablock, length);

    if(!SI_ParseEDID(&DisplayType))
    {
        EDID_INFO("finish SI_EDIDProcessing\n");
    }
    else
    {
        EDID_ERR("edid parse error! \b");
    }

    return 0;
}

HI_S32 SI_GetHdmiSinkCaps(HI_UNF_HDMI_SINK_CAPABILITY_S *pCapability)
{
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);

    if(DRV_Get_IsValidSinkCap(HI_UNF_HDMI_ID_0))
    {
        memcpy(pCapability,pSinkCap,sizeof(HI_UNF_HDMI_SINK_CAPABILITY_S));
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}





