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

#ifndef __SI_EDID_H_
#define __SI_EDID_H_

#include "hi_unf_hdmi.h"
#include "hi_error_mpi.h"

#ifdef __cplusplus
#if __cplusplus
	extern "C"{
#endif
#endif



#include "si_typedefs.h"
#include "si_hlviic.h"
#include "si_globdefs.h"
#include "si_global.h"
#include "hi_reg_common.h"

#define UNKNOWN_DISPLAY 0
#define DVI_DISPLAY 1
#define HDMI_DISPLAY 2


#define  EDID_READ_FIRST_BLOCK_ERR   0x1
#define  EDID_READ_SECOND_BLOCK_ERR  0x2
#define  EDID_READ_THIRD_BLOCK_ERR   0x3
#define  EDID_READ_FOURTH_BLOCK_ERR  0x4

#define  EDID_SIZE           0x200
#define  EDID_BLOCK_SIZE     0x80
#define  STANDARDTIMING_SIZE 12

#define  BIT0                0x00
#define  BIT1                0x02
#define  BIT2                0x04
#define  BIT3                0x08
#define  BIT4                0x10
#define  BIT5                0x20
#define  BIT6                0x40
#define  BIT7                0x80
#define  AUDIO_DATA_BLOCK    0x01
#define  VIDEO_DATA_BLOCK    0x02
#define  VENDOR_DATA_BLOCK   0x03
#define  SPEAKER_DATA_BLOCK  0x04
#define  VESA_DTC_DATA_BLOCK 0x05
#define  USE_EXT_DATA_BLOCK  0x07

#define  VIDEO_CAPABILITY_DATA_BLOCK      0x00
#define  VENDOR_SPECIFIC_VIDEO_DATA_BLOCK 0x01
#define  RESERVED_VESA_DISPLAY_DEVICE     0x02
#define  RESERVED_VESA_VIDEO_DATA_BLOCK   0x03
#define  RESERVED_HDMI_VIDEO_DATA_BLOCK   0x04
#define  COLORIMETRY_DATA_BLOCK           0x05
#define  CEA_MISCELLANENOUS_AUDIO_FIELDS  0x10
#define  VENDOR_SPECIFIC_AUDIO_DATA_BLOCK 0x11
#define  RESERVED_HDMI_AUDIO_DATA_BLOCK   0x12

// Codes of EDID Errors

#define NO_ERR 0
// 1-7 reserved for I2C Errors
#define BAD_HEADER 8
#define VER_DONT_SUPPORT_861B 9
#define _1ST_BLOCK_CRC_ERROR 10
#define _2ND_BLOCK_CRC_ERROR 11
#define EXTENSION_BLOCK_CRC_ERROR 11
#define NO_861B_EXTENSION 12
#define NO_HDMI_SIGNATURE 13
#define BLOCK_MAP_ERROR 14
#define CRC_CEA861EXTENSION_ERROR 15
#define EDID_MAX_ERR_NUM 16

#define  AUDIO_FORMAT_CODE   0x78
#define  AUDIO_MAX_CHANNEL   0x07
#define  DATA_BLOCK_LENGTH   0x1F
#define  DATA_BLOCK_TAG_CODE 0xE0
#define  EDID_VIC            0x7F
#define  NATIVE_FORMAT       0x80

#define  DDC_ADDR            0xA0
#define  EXT_BLOCK_ADDR      0x7E  
#define  FIRST_DETAILED_TIMING_ADDR 0x36
#define  EXT_VER_TAG         0x02
#define  EXT_REVISION        0x02

#define  XVYCC601            0x01
#define  XVYCC709            0x02
#define  SYCC601             0x04
#define  ADOBE_XYCC601       0x08
#define  ADOBE_RGB           0x10


#define  NUM_EXTENSIONS_ADDR 0x7E

#if    defined(CHIP_TYPE_hi3716mv310) \
    || defined(CHIP_TYPE_hi3716mv320) \
    || defined(CHIP_TYPE_hi3716mv330)

/* Define the union U_ioshare_reg0 */
typedef union
{
    /* Define the struct bits */
    struct
    {
        unsigned int    ioshare_reg : 32; /* [31..0]  */
    } bits;

    /* Define an unsigned member */
    unsigned int    u32;

} U_ioshare_reg_hdmi;

/* Define the global struct */
typedef struct
{
    volatile U_ioshare_reg_hdmi     ioshare_reg34_hotplug   ; /* 0x88 */
    volatile U_ioshare_reg_hdmi     ioshare_reg35_sda       ; /* 0x8c */
    volatile U_ioshare_reg_hdmi     ioshare_reg36_scl       ; /* 0x90 */
    volatile U_ioshare_reg_hdmi     ioshare_reg37_cec       ; /* 0x94 */
} S_IO_REGS_TYPE_HDMI;

typedef S_IO_REGS_TYPE_HDMI          HI_REG_IO_HDMI_S;
extern volatile HI_REG_IO_HDMI_S         *g_pstRegIO_hdmi;

#ifndef HI_IO_BASE_HDMI_ADDR        
#define HI_IO_BASE_HDMI_ADDR  (HI_IO_BASE_ADDR + 0x88)     //暂时沿用V1R2的, 等冯园反馈后修改    
#endif
#endif

typedef struct 
{
	HI_U8 header[8];
	/* Vendor & product info */
	HI_U8 mfg_id[2];
	HI_U8 prod_code[2];
	HI_U8 serial[4]; /* FIXME: byte order */
	HI_U8 mfg_week;
	HI_U8 mfg_year;
	/* EDID version */
	HI_U8 version;
	HI_U8 revision;
	/* Display info: */
	HI_U8 input;
	HI_U8 width_cm;
	HI_U8 height_cm;
	HI_U8 gamma;
	HI_U8 features;
	/* Color characteristics */
	HI_U8 red_green_low;
	HI_U8 black_white_low;
	HI_U8 red_x;
	HI_U8 red_y;
	HI_U8 green_x;
	HI_U8 green_y;
	HI_U8 blue_x;
	HI_U8 blue_y;
	HI_U8 white_x;
	HI_U8 white_y;
    HI_U8 est_timing[3];
    HI_U8 std_timing[16];
    HI_U8 detailed_timing[4];
	/* Number of 128 byte ext. blocks */
	HI_U8 extensions;
	/* Checksum */
	HI_U8 checksum;
} __attribute__((packed))EDID_FIRST_BLOCK_INFO;

typedef struct
{
    HI_U8 pixel_clk[2];
    HI_U8 h_active;
    HI_U8 h_blank;
    HI_U8 h_active_blank;
    HI_U8 v_active;
    HI_U8 v_blank;
    HI_U8 v_active_blank;
    HI_U8 h_sync_offset;
    HI_U8 h_sync_pulse_width;
    HI_U8 vs_offset_pulse_width;
    HI_U8 hs_offset_vs_offset;
    HI_U8 h_image_size;
    HI_U8 v_image_size;
    HI_U8 h_v_image_size;
    HI_U8 h_border;
    HI_U8 v_border;
    HI_U8 flags;
}DETAILED_TIMING_BLOCK;


HI_S32 SI_ReadSinkEDID(HI_VOID);

HI_U8 SI_ParseEDID(HI_U8 *DisplayType);

//HI_S32 SI_GetCapability(HI_U8 *pData);
#if 0
HI_S32 SI_GetParseCapability(HI_U8 *pu8Edid, HI_U32 u32EdidLength,HI_UNF_HDMI_SINK_CAPABILITY_EXT_S *pExtCapablity);
#endif
HI_S32 SI_SetForceSinkCapability(HI_VOID);

HI_U8 SI_Proc_ReadEDIDBlock(HI_U8 *DataBlock, HI_U32 *size);

HI_U8 SI_Force_GetEDID(HI_U8 *datablock, HI_U32 *length);

HI_U8 SI_ByteReadEDID(HI_U8, HI_U8, HI_U8 *);

HI_S32 SI_GetHdmiSinkCaps(HI_UNF_HDMI_SINK_CAPABILITY_S *pCapability);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif
