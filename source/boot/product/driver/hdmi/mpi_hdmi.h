#ifndef __MPI_HDMI_H__
#define __MPI_HDMI_H__

#define _HI_UNF_HDMI_DRV 0

#define MAX_SIZE 0x3000L

#define HDMI_MALLOC malloc

extern HI_S32 OpenHdmiDevice(void);
extern void CloseHdmiDevice(void);

extern void WriteDefaultConfigToEEPROM( void);
extern HI_U8 TimerHandler(void);
extern void SHAHandler(void);
extern void TX_SetHDMIMode(HI_U8 Enabled);
void DelayMS( HI_U16 count);
extern void CEC_Event_Handler( void );

extern void SetHdmiAudio(HI_U8 Enabled);
extern void SetHdmiVideo(HI_U8 Enabled);
extern void BlockWriteEEPROM(HI_U8 NBytes, HI_U16 Addr, HI_U8 * Data);
extern HI_U8 ReadByteEEPROM(HI_U8 RegAddr);
extern void WriteByteEEPROM(HI_U8 RegAddr, HI_U8 RegData);

#endif

