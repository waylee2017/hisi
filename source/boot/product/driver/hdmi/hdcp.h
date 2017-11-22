/***********************************************************************************/
/*  Copyright (c) 2002-2006, Silicon Image, Inc.  All rights reserved.             */
/*  No part of this work may be reproduced, modified, distributed, transmitted,    */
/*  transcribed, or translated into any language or computer format, in any form   */
/*  or by any means without written permission of: Silicon Image, Inc.,            */
/*  1060 East Arques Avenue, Sunnyvale, California 94085                           */
/***********************************************************************************/
#include "typedefs.h"
#include "hlviic.h"
#include "globdefs.h"
#include "hdcpdefs.h"

HI_U8 MDDCBlockReadHDCPRX(HI_U8 , HI_U8 , HI_U8 * );

#define WriteByteHDCPRX(ADDR, DATA) WriteByte_8BA(BUS_0, HDCPRX_SLV, ADDR, DATA)
#define WriteWordHDCPRX(ADDR, DATA) WriteWord_8BA(BUS_0, HDCPRX_SLV, ADDR, DATA)
#define ReadByteHDCPRX(ADDR) ReadByte_8BA(BUS_0, HDCPRX_SLV, ADDR)
#define ReadWordHDCPRX(ADDR) ReadWord_8BA(BUS_0, HDCPRX_SLV, ADDR)

#define WriteByteHDCPRX(ADDR, DATA) WriteByte_8BA(BUS_0, HDCPRX_SLV, ADDR, DATA)
#define ReadByteHDCPRX(ADDR) ReadByte_8BA(BUS_0, HDCPRX_SLV, ADDR)

#define WaitForAckHDCPRX( TO ) WaitForAck(BUS_0, HDCPRX_SLV, TO)

HI_U8 AreRiMatch(HI_U8 *);
HI_U8 Authentication( void );
HI_U8 CheckIfHDMIRX(void);
HI_U8 CheckFIFOReady(void);
void AuthHandler(void);
void ReAthentication( void );
void AutoRiCheck( Bool );
void AutoRiFailureHandler( HI_U8 );
void AutoKSVReadyCheck ( Bool );

extern HI_U8 AuthState;
extern HI_U8 MX_TX[8];
