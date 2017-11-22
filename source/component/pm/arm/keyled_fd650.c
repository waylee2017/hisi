#include "base.h"
#include "gpio.h"
#include "keyled.h"

#ifdef KEYLED_FD650

/*************************************************************************
                        2.3 keyled_fd650 module
*************************************************************************/

/* 1 cfg param */
#define STB (5)
#define DIO (2)// 5
#define CLK (3)// 3


#define CMD_DIP_ON (0x8f)
#define CMD_DIP_OFF (0x80)

HI_U8 disp_reg[4] = {
    0
};
HI_U8 key_buf_arr[2] = {
    0x00, 0x00
};
HI_U8 ledDisDot_fd650[10] = {
    0xbf, 0x86, 0xdb, 0xcf, 0xe6, 0xed, 0xfd, 0x87, 0xff, 0xef
};
HI_U8 ledDisCode_fd650[10] = {
    0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f
};

#define udelay_fd650(x) do \
    { \
        HI_U8 s; \
        for (s = 0; s < x; s++) \
        { \
            ; \
        } \
    } while (0)

/***************************/

//
//      FD650 cmd define
//

/***************************/
HI_U8 hi_gpio_read_SDA_IN(void);

#define FD650_SCL (CLK)
#define FD650_SDA (DIO)
#define HIGH (1)
#define LOW (0)

#define DELAY udelay_fd650(100)
#define FD650_SCL_SET gpio5_write_bit(FD650_SCL, HIGH)
#define FD650_SCL_CLR gpio5_write_bit(FD650_SCL, LOW)
#define FD650_SCL_D_OUT gpio5_dirset_bit(FD650_SCL, 0)
#define FD650_SDA_SET gpio5_write_bit(FD650_SDA, HIGH)
#define FD650_SDA_CLR gpio5_write_bit(FD650_SDA, LOW)
#define FD650_SDA_IN hi_gpio_read_SDA_IN()
#define FD650_SDA_D_OUT gpio5_dirset_bit(FD650_SDA, 0)
#define FD650_SDA_D_IN gpio5_dirset_bit(FD650_SDA, 1)

#define FD650_BIT_ENABLE 0x01
#define FD650_BIT_SLEEP 0x04
#define FD650_BIT_7SEG 0x08
#define FD650_BIT_INTENS1 0x10
#define FD650_BIT_INTENS2 0x20
#define FD650_BIT_INTENS3 0x30
#define FD650_BIT_INTENS4 0x40
#define FD650_BIT_INTENS5 0x50
#define FD650_BIT_INTENS6 0x60
#define FD650_BIT_INTENS7 0x70
#define FD650_BIT_INTENS8 0x00

#define FD650_SYSOFF 0x0400
#define FD650_SYSON (FD650_SYSOFF | FD650_BIT_ENABLE)
#define FD650_SLEEPOFF FD650_SYSOFF
#define FD650_SLEEPON (FD650_SYSOFF | FD650_BIT_SLEEP)
#define FD650_7SEG_ON (FD650_SYSON | FD650_BIT_7SEG)
#define FD650_8SEG_ON (FD650_SYSON | 0x00)
#define FD650_SYSON_1 (FD650_SYSON | FD650_BIT_INTENS1)
#define FD650_SYSON_2 (FD650_SYSON | FD650_BIT_INTENS2)
#define FD650_SYSON_3 (FD650_SYSON | FD650_BIT_INTENS3)
#define FD650_SYSON_4 (FD650_SYSON | FD650_BIT_INTENS4)
#define FD650_SYSON_5 (FD650_SYSON | FD650_BIT_INTENS5)
#define FD650_SYSON_6 (FD650_SYSON | FD650_BIT_INTENS6)
#define FD650_SYSON_7 (FD650_SYSON | FD650_BIT_INTENS7)
#define FD650_SYSON_8 (FD650_SYSON | FD650_BIT_INTENS8)

#define FD650_DIG0 0x1400
#define FD650_DIG1 0x1500
#define FD650_DIG2 0x1600
#define FD650_DIG3 0x1700
#define FD650_DOT 0x0080

#define FD650_GET_KEY 0x0700

HI_U8 hi_gpio_read_SDA_IN(void)
{
    HI_U8 sda_in = 0;

    gpio5_read_bit(FD650_SDA, &sda_in);

    return sda_in;
}

void FD650_Start( void )
{
    //FD650_SDA_SET;
    FD650_SDA_D_OUT;
    FD650_SDA_SET;

    //FD650_SCL_SET;
    FD650_SCL_D_OUT;
    FD650_SCL_SET;
    DELAY;
    FD650_SDA_CLR;
    DELAY;
    FD650_SCL_CLR;
    return;
}

void FD650_Stop( void )
{
    //FD650_SDA_CLR;
    FD650_SDA_D_OUT;
    FD650_SDA_CLR;
    DELAY;
    FD650_SCL_SET;
    DELAY;
    FD650_SDA_SET;
    DELAY;
    FD650_SDA_D_IN;
    return;
}

void FD650_WrByte( HI_U8 dat )
{
    HI_U8 i;

    FD650_SDA_D_OUT;
    for (i = 0; i != 8; i++)
    {
        if (dat & 0x80)
        {
            FD650_SDA_SET;
        }
        else
        {
            FD650_SDA_CLR;
        }

        DELAY;
        FD650_SCL_SET;
        dat <<= 1;
        DELAY;
        FD650_SCL_CLR;
    }

     FD650_SDA_D_IN;//mmm
    //FD650_SDA_SET;//mmm
    DELAY;
    FD650_SCL_SET;
    DELAY;
    FD650_SCL_CLR;
    FD650_SDA_D_IN;
    return;
}

HI_U8  FD650_RdByte( void )
{
    HI_U8 dat, i;

    FD650_SDA_D_OUT;
    FD650_SDA_SET;
    FD650_SDA_D_IN;
    dat = 0;
    for (i = 0; i != 8; i++)
    {
        DELAY;
        FD650_SCL_SET;
        DELAY;
        dat <<= 1;
        if (FD650_SDA_IN)
        {
            dat++;
        }

        FD650_SCL_CLR;
    }

    FD650_SDA_D_OUT;
    FD650_SDA_SET;
    DELAY;
    FD650_SCL_SET;
    DELAY;
    FD650_SCL_CLR;

    return dat;
}

void FD650_Write( HI_U16 cmd )
{
    FD650_Start();
    FD650_WrByte((HI_U8)(((HI_U8)(cmd >> 7) & 0x3E) | 0x40));
    FD650_WrByte((HI_U8)cmd);
    FD650_Stop();

    return;
}

HI_U8 keyled_fd650_get_keycode(HI_U8 u8rawkey)
{
    if ((u8rawkey & 0x7f) == 0)
    {
        return 0xFF;
    }

    return u8rawkey;
}

void keyled_fd650_readkey(void)
{
    HI_U8 keycode = 0;

    FD650_Start();
    FD650_WrByte((((HI_U8)(FD650_GET_KEY >> 7) & 0x3E) | 0x01) | 0x40);
    keycode = FD650_RdByte();
    FD650_Stop();
    if ((keycode & 0x00000040) == 0)
    {
        keycode = 0;
    }

    key_buf_arr[0] = keyled_fd650_get_keycode(keycode);

    return;
}

void keyled_fd650_display_addr_inc(void)
{
    FD650_Write( FD650_SYSON_2);
    FD650_Write( FD650_DIG0 | (HI_U8)disp_reg[0] );
    FD650_Write( FD650_DIG1 | (HI_U8)disp_reg[1] );
    FD650_Write( FD650_DIG2 | (HI_U8)disp_reg[2] );
    FD650_Write( FD650_DIG3 | (HI_U8)disp_reg[3] );
    return;
}

void keyled_fd650_display_addr_inc_init(void)
{
    keyled_fd650_display_addr_inc();
    return;
}

void pin_fd650_config(void)
{
    /* FIXME */
    gpio5_bit_reuse(FD650_SCL);
    gpio5_bit_reuse(FD650_SDA);
    return;
}

void keyled_reset_usr(void)
{
    pin_fd650_config();
    disp_reg[0] = 0x0;
    disp_reg[1] = 0x0;
    disp_reg[2] = 0x0;
    disp_reg[3] = 0x0;
    keyled_fd650_display_addr_inc_init();

    return;
}

void keyled_disable_usr(void)
{
    disp_reg[0] = 0x0;
    disp_reg[1] = 0x0;
    disp_reg[2] = 0x0;
    disp_reg[3] = 0x0;
    keyled_fd650_display_addr_inc_init();
    return;
}

void keyled_isr_usr(void)
{
    // 1
    keyled_fd650_readkey();

    if (key_buf_arr[0] == klPmocVal)
    {
        pmocType = 1;
        pmocflag = 1;
    }

    return;
}

void timer_display_usr(void)
{
    HI_U8 index = 0;

    // 0
    index = time_hour / 10;
    disp_reg[0] = ledDisCode_fd650[index];
    index = time_hour % 10;
    if (time_dot)
    {
        disp_reg[1] = ledDisDot_fd650[index];
    }
    else
    {
        disp_reg[1] = ledDisCode_fd650[index];
    }

    index = time_minute / 10;
    disp_reg[2] = ledDisCode_fd650[index];
    index = time_minute % 10;
    disp_reg[3] = ledDisCode_fd650[index];

    // 1
    keyled_fd650_display_addr_inc();
    return;
}

void chan_display_usr(void)
{
    HI_U8 index;

    // 0
    index = (channum >> 24) & 0xff;
    disp_reg[0] = ledDisCode_fd650[index];
    index = (channum >> 16) & 0xff;
    disp_reg[1] = ledDisCode_fd650[index];
    index = (channum >> 8) & 0xff;
    disp_reg[2] = ledDisCode_fd650[index];
    index = (channum) & 0xff;
    disp_reg[3] = ledDisCode_fd650[index];

    // 1
    keyled_fd650_display_addr_inc();
    return;
}

void no_display_usr(void)
{
    // 0
    disp_reg[0] = 0x0;
    disp_reg[1] = 0x0;
    disp_reg[2] = 0x0;
    disp_reg[3] = 0x0;

    // 1
    keyled_fd650_display_addr_inc();
    return;
}

void dbg_display_usr(HI_U16 val)
{
    HI_U16 tmp;
    HI_U16 index;

    if (val > 9999)
    {
        return;
    }

    // 1.0
    tmp = val / 10;
    index = (val - tmp * 10);

    disp_reg[3] = ledDisCode_fd650[index];

    // 1.1
    val = tmp;
    tmp = val / 10;
    index = (val - tmp * 10);
    disp_reg[2] = ledDisCode_fd650[index];

    // 1.2
    val = tmp;
    tmp = val / 10;
    index = (val - tmp * 10);
    disp_reg[1] = ledDisCode_fd650[index];

    // 1.3
    val = tmp;
    tmp = val / 10;
    index = (val - tmp * 10);
    disp_reg[0] = ledDisCode_fd650[index];

    // 2
    keyled_fd650_display_addr_inc();
    return;
}

#endif
