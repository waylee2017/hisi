#include "exports.h"
#include "hi_type.h"
#include "hi_boot_common.h"
#include "hi_reg_common.h"

HI_VOID  HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType,HI_CHIP_VERSION_E *penChipVersion)
{
    unsigned int regv = 0;
    unsigned int regChipType = 0;
    unsigned int u32ChipID;

    HI_CHIP_TYPE_E      ChipType    = HI_CHIP_TYPE_BUTT;
    HI_CHIP_VERSION_E   ChipVersion = HI_CHIP_VERSION_BUTT;

      /* penChipType or penChipVersion maybe NULL, but not both */
    if (HI_NULL == penChipType && HI_NULL == penChipVersion)
    {
        printf("invalid input parameter\n");
        return;
    }
    
    regv = 0;
    regv |= (0xff & READ_REG(SYS_REG_SYSID0,0));
    regv |= (0xff & READ_REG(SYS_REG_SYSID1,0)) << 8;
    regv |= (0xff & READ_REG(SYS_REG_SYSID2,0)) << 16;
    regv |= (0xff & READ_REG(SYS_REG_SYSID3,0)) << 24;
    u32ChipID  = regv;
    if((u32ChipID & 0xffff) == 0xb010)
    {
        regv = READ_REG(SYS_REG_BASE_ADDR_PHY1,0);
        regChipType = regv >> 14;
        regChipType &= 0x1f;

        /*
        芯片版本标识。
        0000：Hi3720V100；
        0001：Hi3716C；
        0010：Hi3716H；
        0011：Hi3716M；
        其它：预留。
        */
        switch(regChipType)
        {
            case 0x03:
                ChipType = HI_CHIP_TYPE_HI3716M;
                break;
            case 0x02:
                ChipType = HI_CHIP_TYPE_HI3716H;
                break;
            case 0x01:
                ChipType = HI_CHIP_TYPE_HI3716C;
                break;
            default:
                ChipType = HI_CHIP_TYPE_HI3720;
                break;
        }
        ChipVersion = HI_CHIP_VERSION_V100;
 
    }
    else if((u32ChipID & 0xffff) == 0x200)
    {
        regv = READ_REG(SYS_REG_BASE_ADDR_PHY2,0);
        regChipType = regv >> 14;
        regChipType &= 0x1f;

        /*
        芯片版本标识
        00000：Hi3716L；
        01000：Hi3716M；
        01101：Hi3716H；
        11110：Hi3716C；
        其它：预留
        */
        switch(regChipType)
        {
            case 0x08:
                ChipType = HI_CHIP_TYPE_HI3716M;
                break;
            case 0x0d:
                ChipType = HI_CHIP_TYPE_HI3716H;
                break;
            case 0x1e:
                ChipType = HI_CHIP_TYPE_HI3716C;
                break;
            default:
                ChipType = HI_CHIP_TYPE_HI3720;
                break;
        }

        if(u32ChipID == 0x37200200)
        {
            ChipVersion = HI_CHIP_VERSION_V101;
        }
        else
        {
            ChipVersion = HI_CHIP_VERSION_V200;
        }
    }
    else if (u32ChipID == 0x37160300)
    { 
	    ChipType = HI_CHIP_TYPE_HI3716M;
        ChipVersion = HI_CHIP_VERSION_V300;
 
    }
    else if (u32ChipID == 0x37160310)
    { 
    	 switch (g_pstRegPeri->PERI_SOC_FUSE_0.bits.chip_id)
        {
             case 0x0:
             case 0x1:
                 ChipType    = HI_CHIP_TYPE_HI3716M;
                 ChipVersion = HI_CHIP_VERSION_V310;
                break;
            case 0x10:
            case 0x11:
                ChipType   = HI_CHIP_TYPE_HI3716M;
                ChipVersion = HI_CHIP_VERSION_V320;
                break;
            case 0x18:
            case 0x19:
                ChipType    = HI_CHIP_TYPE_HI3110E;
                ChipVersion = HI_CHIP_VERSION_V500;
                break;
            default:
                ChipType    = HI_CHIP_TYPE_HI3716M;
                ChipVersion = HI_CHIP_VERSION_V310;
                break;
        }
    }
    else if (u32ChipID == 0x37160330)
    {
        ChipType   = HI_CHIP_TYPE_HI3716M;
        ChipVersion = HI_CHIP_VERSION_V330;
    }
    else if (u32ChipID == 0x37120100)
    {
    	ChipType = HI_CHIP_TYPE_HI3712;
    	ChipVersion = HI_CHIP_VERSION_V100;
    }
    else
    {
        ChipType = HI_CHIP_TYPE_BUTT;    
        ChipVersion = HI_CHIP_VERSION_BUTT;
        printf("Get system ID error :%x!\n",regv);
    }

    if (penChipType)
    {
        *penChipType = ChipType;
    }

    if (penChipVersion)
    {
        *penChipVersion = ChipVersion;
    }
    return;
}



