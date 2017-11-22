//RDA FM 5807X drv
//Version 4.0
#include "hi_type.h"

/***************************************************
RDA5807X interfaces
****************************************************/

#define FM_I2C_NUM  0
#define FM_DEV_ADDR 0x22


#define HI_FATAL_FM(fmt...) \
         printf(fmt)

#define HI_ERR_FM(fmt...) \
         printf(fmt)

#define HI_WARN_FM(fmt...) \
         printf(fmt)

#define HI_INFO_FM(fmt...) \
        printf(fmt)


//static HI_U32 g_I2cNum = 0;

HI_VOID RDA5807X_PowerOffProc(HI_VOID);
HI_VOID RDAFM_SetI2cNum(HI_U32 I2cNum);
HI_VOID RDAFM_I2C_ReadReg(HI_U8 reg, HI_U16* data);
HI_VOID RDAFM_I2C_WriteReg(HI_U8 reg, HI_U16 data);
HI_VOID RDA5807X_SetMute(HI_BOOL mute);
HI_U16 RDA5807X_FreqToChan(HI_U16 frequency);
HI_VOID RDA5807X_SetFreq( HI_S16 curf );
HI_BOOL RDA5807X_ValidStop(HI_S16 freq);
HI_U8 RDA5807X_GetSigLvl( HI_S16 curf );
HI_VOID RDA5807X_SetVolumeLevel(HI_U8 level);
HI_BOOL RDA5807X_Intialization(HI_VOID);
HI_U16 RDA5807X_ChanToFreq(HI_U16 chan);
