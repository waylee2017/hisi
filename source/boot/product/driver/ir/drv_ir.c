/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/

#include <uboot.h>
#include "hi_reg.h"

#include "hi_unf_ir.h"
#include "hi_boot_common.h"

/*************************************************************************
                        3.0  ir module
*************************************************************************/

/* config  param */
#define IR_BASE_ADDR 0x101e1000

#define IR_EN 0x0
#define IR_CFG 0x04
#define IR_LEADS 0x08
#define IR_LEADE 0x0c
#define IR_SLEADE 0x10
#define IR_B0 0x14
#define IR_B1 0x18
#define IR_BUSY 0x1c
#define IR_DATAH 0x20
#define IR_DATAL 0x24
#define IR_INT_MASK 0x28
#define IR_INT_STATUS 0x2c
#define IR_INT_CLR 0x30
#define IR_START 0x34

/* valiable*/
static HI_UNF_IR_CODE_E enIRType = 0;
static HI_BOOL bSymbolFetchOver	 = HI_FALSE;
static HI_U64 u64IrSymbolValue = 0x0;
static HI_U32 su32Data = 0;

/*************************************************************************
                        3.1  raw module
*************************************************************************/
typedef struct necIrFmt
{
    HI_U16 lead_s_up;
    HI_U16 lead_s_low;
    HI_U16 lead_e_up;
    HI_U16 lead_e_low;
    HI_U16 lead2_s_up;
    HI_U16 lead2_s_low;
    HI_U16 lead2_e_up;
    HI_U16 lead2_e_low;
    HI_U8  bit0_s_up;
    HI_U8  bit0_s_low;
    HI_U8  bit0_e_up;
    HI_U8  bit0_e_low;
    HI_U8  bit1_s_up;
    HI_U8  bit1_s_low;
    HI_U8  bit1_e_up;
    HI_U8  bit1_e_low;
    HI_U8  bits_num;
}NECIRFMT;

typedef struct rc6IrFmt
{
    HI_U16 lead_s_up;
    HI_U16 lead_s_low;
    HI_U16 lead_e_up;
    HI_U16 lead_e_low;
    HI_U8  bit0_up;
    HI_U8  bit0_low;
    HI_U8  bit0_wth;
    HI_U8  bit1_up;
    HI_U8  bit1_low;
    HI_U8  bit1_wth;
    HI_U8  bits_num;
    HI_U8  bits_rvs;
}RC6IRFMT;

typedef struct rc5IrFmt
{
    HI_U8 lead_s_up;
    HI_U8 lead_s_low;
    HI_U8 lead_e_up;
    HI_U8 lead_e_low;
    HI_U8 bit_up;
    HI_U8 bit_low;
    HI_U8 bit_wth;
    HI_U8 bits_num;
    HI_U8 bits_rvs;
}RC5IRFMT;

typedef struct hiKEY_INFO_S
{
    HI_U64				u64KeyVal;
    HI_UNF_KEY_STATUS_E enKeyPressState;
}HI_KEY_INFO_S;

#define KEY_MACRO_NO 0xffffffff
#define MAX_REPEATKEY_INTERVAL 54 //18 * 10 ms
static HI_KEY_INFO_S g_OldKey;
static HI_U64 s_key_code_curr = KEY_MACRO_NO;

static HI_U8 u8IRFmt = 0;
static HI_U8 u8IRNum = 0;
static HI_U8 u8IRRcvNum = 0xff;
static HI_U8 u8RcvVal0	= 0;
static HI_U8 u8RcvVal1	= 0;
static HI_U8 u8RcvBit = 0;

#define IR_NEC_NUM 0x4
#define IR_RC6_NUM 0x2
#define IR_RC5_NUM 0x1
#define key_match(max, min, val) (((max) >= (val)) && ((val) >= (min)))

static HI_U32 u32IRRawLKey;
static HI_U32 u32IRRawHKey;
static HI_U32 u32IRRsvLKey;
static HI_U32 u32IRRsvHKey;

NECIRFMT irfmtnec[IR_NEC_NUM] = { {650, 350, 650, 350, 0, 0, 0, 0, 33, 17, 67, 35, 65, 35, 132, 70, 12},
                                       {1080, 720, 540, 360, 0, 0, 0, 0, 73, 39, 73, 39, 73, 39, 220, 118, 32}, //nec simple
                                       /*{437, 298, 216, 147, 437, 298, 216, 147, 73, 39, 73, 39, 73, 39, 146, 78, 40}, nec simple 2header*/
                                       {437, 298, 216, 147, 0, 0, 0, 0, 60, 20, 60, 20, 60, 20, 180, 100, 48}, //necfull
                                       {660, 540, 220, 180, 400, 327, 400, 327, 80, 30, 80, 30, 80, 30, 146, 78, 40}
                                     };

RC6IRFMT irfmtrc6[IR_RC6_NUM] = { /*{ 320, 213, 107, 71, 61, 33, 47, 115, 62, 89, 21, 15},*/
    { 320, 213, 107, 71, 61, 33, 47, 115, 62, 89, 37, 15}
};
RC5IRFMT irfmtrc5[IR_RC5_NUM] = { { 116, 62, 116, 62, 116, 62, 89, 14, 11}};

static HI_VOID DRV_IR_RawReset(HI_VOID)
{
    u8IRFmt = 0xff;
    u8IRNum = 0xff;
    u8IRRcvNum = 0;
    u32IRRawLKey = 0;
    u32IRRawHKey = 0;

    u8RcvVal0 = 0;
    u8RcvVal1 = 0;
    u8RcvBit  = 1;
    u32IRRsvLKey = 0xff;
    u32IRRsvHKey = 0xff;

    //printf("\n ir_raw_reset \n");

    return;
}

void set_data_bit(HI_U8 pos)
{
    if (pos < 32)
    {
        u32IRRawLKey |= 1 << pos;
    }
    else if (pos < 64)
    {
        u32IRRawHKey |= 1 << (pos - 32);
    }
    else
    {}

    return;
}

#define rec_data_bit(pos, val) do \
    { \
        if (val) \
        { \
            set_data_bit(pos); \
        } \
    } while (0)

static HI_VOID DRV_IR_Rc6Parse(HI_VOID)
{
    HI_S8 rsv = 2;

    while (1)
    {
        if (u8RcvVal0)
        {
            if (2 == rsv)
            {
                /* The low half byte belongs to last bit */
                /*CNcomment: 低位为上一个bit的值 */
                u8RcvVal1 = (su32Data & 0xff);
            }
            else if (1 == rsv)
            {
                /* The low half byte has two parts, one belongs to last bit, the other belongs to the next */
                /*CNcomment: 本组值的低位前半部分属于上一个bit,后半部属于下一个bit */
                u8RcvVal1 = (su32Data >> 16) & 0xff;
            }
        }
        else
        {
            /* This byte is in the same bit */
            /*CNcomment: 这组值正好是同一个bit */
            u8RcvVal0 = (su32Data & 0xff);
            u8RcvVal1 = (su32Data >> 16) & 0xff;
            rsv = 1;
        }

        //printf("\n u8RcvVal0 = %d,  u8RcvVal1 = %d, rsv = %d, u8IRRcvNum = %d u8RcvBit = %d \n",
        //       u8RcvVal0, u8RcvVal1, rsv, u8IRRcvNum, u8RcvBit);
        if (key_match(irfmtrc6[u8IRNum].bit0_up, irfmtrc6[u8IRNum].bit0_low, u8RcvVal0))
        {
            if (!key_match(irfmtrc6[u8IRNum].bit0_up, irfmtrc6[u8IRNum].bit0_low, u8RcvVal1))
            {
                u8RcvVal0 = u8RcvVal1 - irfmtrc6[u8IRNum].bit0_wth;
                u8RcvVal1 = 0;
                rec_data_bit(irfmtrc6[u8IRNum].bits_num - u8IRRcvNum - 1, u8RcvBit);
                u8RcvBit = 1 - u8RcvBit;
                u8IRRcvNum++;
                if (u8IRRcvNum >= irfmtrc6[u8IRNum].bits_num)
                {
                    break;
                }

                --rsv;
                if (0 == rsv)
                {
                    break;
                }
            }
            else
            {
                if (1 == rsv)
                {
                    u8RcvVal0 = 0;
                }
                else if (2 == rsv)
                {
                    u8RcvVal0 = (su32Data >> 16) & 0xff;
                }

                u8RcvVal1 = 0;
                rec_data_bit(irfmtrc6[u8IRNum].bits_num - u8IRRcvNum - 1, u8RcvBit);
                u8IRRcvNum++;
                break;
            }
        }
        /* judge whether this bit is triggle bit or not */
        /*CNcomment: 判断是否是TR */
        else if (key_match(irfmtrc6[u8IRNum].bit1_up, irfmtrc6[u8IRNum].bit1_low, u8RcvVal0))
        {
            if (!key_match(irfmtrc6[u8IRNum].bit1_up, irfmtrc6[u8IRNum].bit1_low, u8RcvVal1))
            {
                u8RcvVal0 = u8RcvVal1 - irfmtrc6[u8IRNum].bit1_wth;
                u8RcvVal1 = 0;
                rec_data_bit(irfmtrc6[u8IRNum].bits_num - u8IRRcvNum - 1, u8RcvBit);
                u8RcvBit = 1 - u8RcvBit;
                u8IRRcvNum++;
                --rsv;
                if (0 == rsv)
                {
                    break;
                }
            }
            else
            {
                u8RcvVal0 = (su32Data >> 16) & 0xff;
                u8RcvVal1 = 0;
                rec_data_bit(irfmtrc6[u8IRNum].bits_num - u8IRRcvNum - 1, u8RcvBit);
                u8IRRcvNum++;
                break;
            }
        }
        else
        {
            DRV_IR_RawReset();
            break;
        }
    }
}

static HI_VOID DRV_IR_Rc5Parse(HI_VOID)
{
    HI_S8 rsv = 2;

    while (1)
    {
        if (u8RcvVal0)
        {
            if (2 == rsv)
            {
                /* The low half byte belongs to last bit */
                /*CNcomment: 低位为上一个bit的值 */
                u8RcvVal1 = (su32Data & 0xff);
            }
            else if (1 == rsv)
            {
                /* The low half byte has two parts, one belongs to last bit, the other belongs to the next */
                /*CNcomment: 本组值的低位前半部分属于上一个bit,后半部属于下一个bit */
                u8RcvVal1 = (su32Data >> 16) & 0xff;
            }
        }
        else
        {
            /* This byte is in the same bit */
            /*CNcomment: 这组值正好是同一个bit */
            u8RcvVal0 = (su32Data & 0xff);
            u8RcvVal1 = (su32Data >> 16) & 0xff;
            rsv = 1;
        }

        if (key_match(irfmtrc5[u8IRNum].bit_up, irfmtrc5[u8IRNum].bit_low, u8RcvVal0))
        {
            if (!key_match(irfmtrc5[u8IRNum].bit_up, irfmtrc5[u8IRNum].bit_low, u8RcvVal1))
            {
                u8RcvVal0 = u8RcvVal1 - irfmtrc5[u8IRNum].bit_wth;
                u8RcvVal1 = 0;
                rec_data_bit(irfmtrc5[u8IRNum].bits_num - u8IRRcvNum - 1, u8RcvBit);
                u8RcvBit = 1 - u8RcvBit;
                u8IRRcvNum++;
                if (u8IRRcvNum >= irfmtrc5[u8IRNum].bits_num)
                {
                    break;
                }

                --rsv;
                if (0 == rsv)
                {
                    break;
                }
            }
            else
            {
                if (1 == rsv)
                {
                    u8RcvVal0 = 0;
                }
                else if (2 == rsv)
                {
                    u8RcvVal0 = (su32Data >> 16) & 0xff;
                }

                u8RcvVal1 = 0;
                rec_data_bit(irfmtrc5[u8IRNum].bits_num - u8IRRcvNum - 1, u8RcvBit);
                u8IRRcvNum++;
                break;
            }
        }
		else
		{
                DRV_IR_RawReset();
				break;
		}
    }
}

HI_VOID DRV_IR_NECParse(HI_VOID)
{
    if (key_match(irfmtnec[u8IRNum].bit0_s_up, irfmtnec[u8IRNum].bit0_s_low, (su32Data & 0xff))
        && key_match(irfmtnec[u8IRNum].bit0_e_up, irfmtnec[u8IRNum].bit0_e_low, (su32Data >> 16) & 0xff))
    {
        rec_data_bit(u8IRRcvNum, 0);
        u8IRRcvNum++;
    }
    else if (key_match(irfmtnec[u8IRNum].bit1_s_up, irfmtnec[u8IRNum].bit1_s_low, (su32Data & 0xff))
             && key_match(irfmtnec[u8IRNum].bit1_e_up, irfmtnec[u8IRNum].bit1_e_low, (su32Data >> 16) & 0xff))
    {
        rec_data_bit(u8IRRcvNum, 1);
        u8IRRcvNum++;
    }
    else if (key_match(irfmtnec[u8IRNum].lead2_s_up, irfmtnec[u8IRNum].lead2_s_low, (su32Data >> 16 )& 0xffff) //regData.val16[1])
             && key_match(irfmtnec[u8IRNum].lead2_e_up, irfmtnec[u8IRNum].lead2_e_low, su32Data & 0xffff))
    {
        ;
    }
    else
    {
        DRV_IR_RawReset();
        return;
    }

    return;
}

static HI_VOID DRV_IR_RawGetFmtVal(HI_VOID)
{
    HI_U8 i;

    for (i = 0; i < IR_NEC_NUM; i++)
    {
        //printf("\n ir_raw_getfmtval = %d \n", i);
        if (key_match(irfmtnec[i].lead_s_up, irfmtnec[i].lead_s_low, (su32Data & 0xffff))
            && key_match(irfmtnec[i].lead_e_up, irfmtnec[i].lead_e_low, (su32Data >> 16) & 0xffff))
        {
            u8IRRcvNum = 0;
            u8IRFmt = 0;
            u8IRNum = i;
            return;
        }
    }

    for (i = 0; i < IR_RC6_NUM; i++)
    {
        if (key_match(irfmtrc6[i].lead_s_up, irfmtrc6[i].lead_s_low, (su32Data & 0xffff))
            && key_match(irfmtrc6[i].lead_e_up, irfmtrc6[i].lead_e_low, (su32Data >> 16) & 0xffff))
        {
            //printf("\n ir_raw_getfmtval RC6 = %d \n", i);
            u8IRRcvNum = 0;
            u8IRFmt = 1;
            u8IRNum = i;
            u8RcvVal0 = 0;
            u8RcvVal1 = 0;
            u8RcvBit  = 1;
            return;
        }
    }

    for (i = 0; i < IR_RC5_NUM; i++)
    {
  		if ((key_match(irfmtrc5[i].bit_up, irfmtrc5[i].bit_low, su32Data & 0xff)
			||(key_match(irfmtrc5[i].bit_up+irfmtrc5[i].bit_wth, irfmtrc5[i].bit_low+irfmtrc5[i].bit_wth, su32Data & 0xff)))
			&&(key_match(irfmtrc5[i].bit_up, irfmtrc5[i].bit_low, (su32Data>>16)&0xff)
			|| key_match(irfmtrc5[i].bit_up+irfmtrc5[i].bit_wth, irfmtrc5[i].bit_low+irfmtrc5[i].bit_wth, (su32Data>>16)&0xff)))

        {
            //printf("\n ir_raw_getfmtval RC5 = %d \n", i);
            u8IRRcvNum = 0;
            u8IRFmt = 2;
            u8IRNum = i;
            u8RcvVal0 = irfmtrc5[i].bit_wth;
            u8RcvVal1 = 0;
            u8RcvBit  = 1;
            DRV_IR_Rc5Parse();
            return;
        }
    }

    return;
}

static HI_VOID DRV_IR_RawCmpVal(HI_VOID)
{
    //printf("\n ir_raw_cmpval = %d \n", u8IRRcvNum);

    if (u8IRFmt == 0)
    {
        if (irfmtnec[u8IRNum].bits_num != u8IRRcvNum)
        {
            return;
        }
    }

    if (u8IRFmt == 1)
    {
        if (irfmtrc6[u8IRNum].bits_num != u8IRRcvNum)
        {
            if ((su32Data >> 16) >= 4000)
            {
                DRV_IR_RawReset();
            }

            return;
        }
    }

    if (u8IRFmt == 2)
    {
        if (irfmtrc5[u8IRNum].bits_num != u8IRRcvNum)
        {
            return;
        }
    }

    //printf("\n get key now \n");
    bSymbolFetchOver = HI_TRUE;

    u64IrSymbolValue  = u32IRRawHKey & 0xffff;
    u64IrSymbolValue  = u64IrSymbolValue << 32;
    u64IrSymbolValue |= u32IRRawLKey;

    //printf("\n u64IrSymbolValue = 0x%llx  \n", u64IrSymbolValue);

    DRV_IR_RawReset();

    return;
}

static HI_S32 DRV_IR_GetRawKey(HI_VOID)
{
    HI_U8 cnt;
    HI_U8 isrflg;
    HI_U32 reg;

    HI_REG_READ(IR_BASE_ADDR + IR_INT_STATUS, reg);

    if ((reg & 0x07000000) == 0)
    {
        return HI_FAILURE;
    }

    //overflow
    isrflg = reg & 0x07000000;
    if (isrflg & 0x04)
    {
        //symbol count
        HI_REG_READ(IR_BASE_ADDR + IR_DATAH, reg);
        cnt = reg & 0x3f;

        while (cnt--)
        {
            HI_REG_READ(IR_BASE_ADDR + IR_DATAL, reg);
        }
    }
    else // timeout or symbol
    {
        HI_REG_READ(IR_BASE_ADDR + IR_DATAH, reg);
        cnt = reg & 0x3f;

        //printf("\n count = %d\n", cnt);
        while (cnt--)
        {
            HI_REG_READ(IR_BASE_ADDR + IR_DATAL, reg);
            su32Data = reg;

            //printf("\n reg = 0x%x \n", reg);
            if (u8IRFmt != 0xff)
            {
                if (u8IRFmt == 0)
                {
                    DRV_IR_NECParse();
                }

                if (u8IRFmt == 1)
                {
                    DRV_IR_Rc6Parse();
                }

                if (u8IRFmt == 2)
                {
                    DRV_IR_Rc5Parse();
                }
            }
            else
            {
                DRV_IR_RawGetFmtVal();
                continue;
            }

            //compare whether received all key
            DRV_IR_RawCmpVal();

            //printf("\n u32IRRawLKey = 0x%x u32IRRawHKey = 0x%x \n", u32IRRawLKey, u32IRRawHKey);

            // 4 overtime int
            if (isrflg & 0x2)
            {
                DRV_IR_RawReset();
            }
        }
    }

    // clr
    HI_REG_WRITE(IR_BASE_ADDR + IR_INT_CLR, 0x00070000);

    return HI_SUCCESS;
}

/***************************************************************************************/
static HI_VOID DRV_IR_Init(HI_VOID)
{
    HI_U32 reg;
    HI_CHIP_TYPE_E enChipType=HI_CHIP_TYPE_BUTT;
    HI_CHIP_VERSION_E enChipID=HI_CHIP_VERSION_BUTT;

    HI_DRV_SYS_GetChipVersion(&enChipType, &enChipID);

    /* check ir module is busy or not */
    do
    {
        HI_REG_READ(IR_BASE_ADDR + IR_BUSY, reg);
        reg = reg & 0x01;
    } while (reg);

    /* 1.IR_CFG */
    if (enIRType == HI_UNF_IR_CODE_NEC_SIMPLE)
    {
        reg = 0x00001f17;
    }
    else if (enIRType == HI_UNF_IR_CODE_TC9012)
    {
        reg = 0x00005f17;
    }
    else if (enIRType == HI_UNF_IR_CODE_NEC_FULL)
    {
        reg = 0x00009f17;
    }
    else if (enIRType == HI_UNF_IR_CODE_SONY_12BIT)
    {
        reg = 0x0000cb17;
    }
	else if (enIRType == HI_UNF_IR_CODE_RSTEP)
    {
        reg = 0x00021017;
    }
    else
    {
        // raw ir
        reg = 0x3e800197;
        HI_REG_WRITE(IR_BASE_ADDR + IR_CFG, reg);  		
		goto over;
    }
    HI_REG_WRITE(IR_BASE_ADDR + IR_CFG, reg);

    /* 2. IR_LEADS */
    if (enIRType == HI_UNF_IR_CODE_NEC_SIMPLE)
    {
        reg = 0x033c03cc;
    }
    else if (enIRType == HI_UNF_IR_CODE_TC9012)
    {
        reg = 0x019e01e6;
    }
    else if (enIRType == HI_UNF_IR_CODE_NEC_FULL)
    {
        reg = 0x033c03cc;
    }
    else if (enIRType == HI_UNF_IR_CODE_SONY_12BIT)
    {
        reg = 0x00c00120;
    }
    else if (enIRType == HI_UNF_IR_CODE_RSTEP)
    {
        reg = 0x0014002a;
	}
    HI_REG_WRITE(IR_BASE_ADDR + IR_LEADS, reg);

    /* 3. LEADE */
    if (enIRType == HI_UNF_IR_CODE_NEC_SIMPLE)
    {
        reg = 0x019e01e6;
    }
    else if (enIRType == HI_UNF_IR_CODE_TC9012)
    {
        reg = 0x019e01e6;
    }
    else if (enIRType == HI_UNF_IR_CODE_NEC_FULL)
    {
        reg = 0x019e01e6;
    }
    else if (enIRType == HI_UNF_IR_CODE_SONY_12BIT)
    {
        reg = 0x00300048;
    }
    else if (enIRType == HI_UNF_IR_CODE_RSTEP)
    {
        reg = 0x0014002a;
	}
    HI_REG_WRITE(IR_BASE_ADDR + IR_LEADE, reg);

    /* 4. SLEADE */
    if (enIRType == HI_UNF_IR_CODE_NEC_SIMPLE)
    {
        reg = 0x00b4010e;
    }
    else
    {
        reg = 0;
    }

    HI_REG_WRITE(IR_BASE_ADDR + IR_SLEADE, reg);

    /* 5. IR_B0 */
    if (enIRType == HI_UNF_IR_CODE_NEC_SIMPLE)
    {
        reg = 0x002d0043;
    }
    else if (enIRType == HI_UNF_IR_CODE_TC9012)
    {
        reg = 0x002d0043;
    }
    else if (enIRType == HI_UNF_IR_CODE_NEC_FULL)
    {
        reg = 0x002d0043;
    }
    else if (enIRType == HI_UNF_IR_CODE_SONY_12BIT)
    {
        reg = 0x00300048;
    }
    else if (enIRType == HI_UNF_IR_CODE_RSTEP)
    {
        reg = 0x0014002a;
	}
    HI_REG_WRITE(IR_BASE_ADDR + IR_B0, reg);

    /* 6. IR_B1 */
    if (enIRType == HI_UNF_IR_CODE_NEC_SIMPLE)
    {
        reg = 0x008700cb;
    }
    else if (enIRType == HI_UNF_IR_CODE_TC9012)
    {
        reg = 0x008700cb;
    }
    else if (enIRType == HI_UNF_IR_CODE_NEC_FULL)
    {
        reg = 0x008700cb;
    }
    else if (enIRType == HI_UNF_IR_CODE_SONY_12BIT)
    {
        reg = 0x00600090;
    }
    else if (enIRType == HI_UNF_IR_CODE_RSTEP)
    {
        reg = 0x0014002a;
	}
    HI_REG_WRITE(IR_BASE_ADDR + IR_B1, reg);	
	reg = 0x0007000e;
	HI_REG_WRITE(IR_BASE_ADDR + IR_INT_MASK, reg);
	
	return;

over:
    reg = 0x0000000f;
    HI_REG_WRITE(IR_BASE_ADDR + IR_INT_MASK, reg);

    return;
}

HI_S32 HI_UNF_IR_SetCodeType(HI_UNF_IR_CODE_E enIRCode)
{
    if(enIRCode == HI_UNF_IR_CODE_RSTEP)
    {
#if defined (CHIP_TYPE_hi3716mv330)
        enIRType = enIRCode;
#else
        printf("\n unsupport! \n");
#endif      
    }
	else
	{
        enIRType = enIRCode;
	}
	
    return HI_SUCCESS;
}

HI_S32 HI_UNF_IR_Init(HI_VOID)
{
    /* enable IR */
    HI_REG_WRITE(IR_BASE_ADDR + IR_EN, 0x1);

    DRV_IR_Init();

    if ((enIRType > HI_UNF_IR_CODE_SONY_12BIT)&&(enIRType != HI_UNF_IR_CODE_RSTEP))
    {
        DRV_IR_RawReset();
    }

    g_OldKey.u64KeyVal = KEY_MACRO_NO;

    return HI_SUCCESS;
}

HI_S32 HI_UNF_IR_Enable(HI_BOOL bEnable)
{
    /* start IR */
    HI_REG_WRITE(IR_BASE_ADDR + IR_START, 0x1);

    return HI_SUCCESS;
}

HI_S32 HI_UNF_IR_DeInit(HI_VOID)
{
    /* disable IR */
    HI_REG_WRITE(IR_BASE_ADDR + IR_EN, 0x0);

    return HI_SUCCESS;
}

static HI_U8 g_u8InvaildCount = 0;
HI_S32 HI_UNF_IR_GetValue(HI_UNF_KEY_STATUS_E *penPressStatus, HI_U64 *pu64KeyId, HI_U32 u32TimeoutMs)
{
    HI_U32 u32IrKeyDataH;
    HI_U32 u32IrKeyDataL;
    HI_U32 reg;
    HI_S32 s32Ret = 0;

    if (!pu64KeyId)
    {
        printf("pu64KeyId is null pointer.\n");
        return HI_FAILURE;
    }

    if ((enIRType < HI_UNF_IR_CODE_RAW)||(enIRType == HI_UNF_IR_CODE_RSTEP)) //std mode
    {
        HI_REG_READ(IR_BASE_ADDR + IR_INT_STATUS, reg);

        if ((reg & 0x000f0000) == 0)
        {
            ++g_u8InvaildCount;

			/* We don't receive valid key after max symbol time */
            if (g_u8InvaildCount >= MAX_REPEATKEY_INTERVAL)
            {
                s_key_code_curr = KEY_MACRO_NO;
            }
        }

        if (reg & 0x00010000)
        {
            g_u8InvaildCount = 0;
            HI_REG_READ(IR_BASE_ADDR + IR_DATAH, u32IrKeyDataH);
            HI_REG_READ(IR_BASE_ADDR + IR_DATAL, u32IrKeyDataL);

            s_key_code_curr	 = u32IrKeyDataH & 0xffff;
            s_key_code_curr	 = s_key_code_curr << 32;
            s_key_code_curr |= u32IrKeyDataL;
        }

        /* clear all irq */
        HI_REG_WRITE(IR_BASE_ADDR + IR_INT_CLR, 0x0f);
    }
    else //raw mode
    {
        s32Ret = DRV_IR_GetRawKey();
        if (HI_SUCCESS == s32Ret)
        {
            if (HI_TRUE == bSymbolFetchOver)
            {
                s_key_code_curr	 = u64IrSymbolValue;
                bSymbolFetchOver = HI_FALSE;
            }
            else
            {
                return HI_FAILURE;
            }
        }
        else
        {
            if ((0 == u32IRRawLKey) && (0 == u32IRRawHKey))
            {
                s_key_code_curr = KEY_MACRO_NO;
            }
            else
            {
                return HI_FAILURE;
            }
        }
    }

	/* We didn't receive key this time */
    if (KEY_MACRO_NO == s_key_code_curr)
    {
    	/* Last key is a valid key */
        if (KEY_MACRO_NO != g_OldKey.u64KeyVal)
        {
            if (HI_UNF_KEY_STATUS_DOWN == g_OldKey.enKeyPressState)
            {
                g_OldKey.enKeyPressState = HI_UNF_KEY_STATUS_UP;

				/* Return last key and "up" state */
                *pu64KeyId = g_OldKey.u64KeyVal;
                *penPressStatus = g_OldKey.enKeyPressState;

                //printf("pu64KeyId is null pointer.1\n");
                return HI_SUCCESS;
            }
            else
            {
                g_OldKey.u64KeyVal = KEY_MACRO_NO;
                g_OldKey.enKeyPressState = HI_UNF_KEY_STATUS_UP;
                return HI_FAILURE;
            }
        }

        return HI_FAILURE;
    }
	/* We received key this time */
    else
    {
    	/* Repeated key, do not return. */
        if ((g_OldKey.u64KeyVal == s_key_code_curr)
            && (HI_UNF_KEY_STATUS_DOWN == g_OldKey.enKeyPressState))
        {
            //printf("pu64KeyId is null pointer.fail 1\n");
            return HI_FAILURE;
        }

        g_OldKey.u64KeyVal = s_key_code_curr;
        g_OldKey.enKeyPressState = HI_UNF_KEY_STATUS_DOWN;

		/* Return the first key and "down" state */
        *pu64KeyId = s_key_code_curr;
        *penPressStatus = HI_UNF_KEY_STATUS_DOWN;

        //printf("pu64KeyId is null pointer.2\n");
        return HI_SUCCESS;
    }

    return HI_SUCCESS;
}
