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

#ifndef _PVR_BITSTREAM_HEAD_
#define	_PVR_BITSTREAM_HEAD_

#ifdef __cplusplus
extern "C" {
#endif

#include "hi_type.h"

typedef struct _PVR_BITSTREAM{
	HI_U8	*pHead;
	HI_U8	*pTail;
	HI_U32  Bufa;
	HI_U32  Bufb;
	HI_S32	BsLen;
	HI_S32  BufPos;
	HI_S32  TotalPos;
}PVR_BS, *LP_PVR_BS;


HI_VOID PvrBsInit( PVR_BS *pBS, HI_U8 *pInput, HI_S32 length );
HI_S32  PvrBsGet( PVR_BS *pBS, HI_S32 nBits );
HI_S32  PvrBsShow( PVR_BS *pBS, HI_S32 nBits );
HI_S32  PvrBsPos( PVR_BS *pBS );
HI_S32  PvrBsSkip( PVR_BS *pBS, HI_S32 nBits );
HI_S32  PvrBsToNextByte( PVR_BS *pBS );
HI_S32  PvrBsBitsToNextByte( PVR_BS *pBS );
HI_S32  PvrBsResidBits( PVR_BS *pBS );
HI_S32  PvrBsIsByteAligned( PVR_BS *pBS );
HI_S32  PvrBsNextBitsByteAligned( PVR_BS *pBS, HI_S32 nBits );
HI_S32  PvrBsLongSkip(PVR_BS *pBS, HI_S32 nBits);
HI_S32  PvrBsSkipWithoutCount( PVR_BS *pBS, HI_S32 nBits );
HI_U8*  PvrBsGetNextBytePtr( PVR_BS *pBS );
HI_U32  PvrZerosMS_32(HI_U32 data);


#ifdef __cplusplus
}
#endif

#endif

