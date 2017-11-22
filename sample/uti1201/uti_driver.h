
#ifndef _UTI_DRIVER_H_
#define _UTI_DRIVER_H_

#include <signal.h>
#include "hi_type.h"
#include "unitend.h"

// driver needed api
UTI_SINT32 UTIDriverReadRegU8(UTI_UINT32 address, UTI_UINT8 *u8_data);
UTI_SINT32 UTIDriverWriteRegU8(UTI_UINT32 address, UTI_UINT8 u8_data);
UTI_SINT32 UTIDriverReadRegU16(UTI_UINT32 address, UTI_UINT16 *u16_data);
UTI_SINT32 UTIDriverWriteRegU16(UTI_UINT32 address, UTI_UINT16 u16_data);
UTI_SINT32 UTIDriverReadRegU32(UTI_UINT32 address, UTI_UINT32 *u32_data);
UTI_SINT32 UTIDriverWriteRegU32(UTI_UINT32 address, UTI_UINT32 u32_data);

UTI_SINT32 UTIDriverReadRegBuffer(UTI_UINT32 address, UTI_UINT8 *u8_data, UTI_UINT32 buffer_len);
UTI_SINT32 UTIDriverWriteRegBuffer(UTI_UINT32 address, UTI_UINT8 *u8_data, UTI_UINT32 buffer_len);

UTI_SINT32 UTIDriverSetBaseAddress(void *address);

HI_S32 HI_UNF_SMI_Init(HI_U32 bw);
HI_S32 HI_UNF_SMI_Open();
HI_S32 HI_UNF_SMI_Close();
HI_S32 HI_UNF_SMI_DeInit();



#endif
