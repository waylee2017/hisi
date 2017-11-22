/***********************************************************************************/
/*  Copyright (c) 2002-2006, Silicon Image, Inc.  All rights reserved.             */
/*  No part of this work may be reproduced, modified, distributed, transmitted,    */
/*  transcribed, or translated into any language or computer format, in any form   */
/*  or by any means without written permission of: Silicon Image, Inc.,            */
/*  1060 East Arques Avenue, Sunnyvale, California 94085                           */
/***********************************************************************************/
#ifndef __MDDC_H__
#define __MDDC_H__


#include "typedefs.h"
#include "defsmddc.h"
#include "hdmitx.h"

#define MDDCWriteOffset(SGM_OFFSET)  WriteByteHDMITXP0(MDDC_SEGMENT_ADDR, SGM_OFFSET)
#define MDDCCommand( CMD ) WriteByteHDMITXP0(MDDC_COMMAND_ADDR, CMD)
#define ClrManualCtrlReg() WriteByteHDMITXP0(MDDC_MANUAL_ADDR, 0)
#define MDDCReadOffset()  ReadByteHDMITXP0(MDDC_SEGMENT_ADDR)


HI_U8 BlockRead_MDDC(MDDCType * );
HI_U8 BlockWrite_MDDC(MDDCType * );
HI_U8 BlockWriteHDMITXP0(HI_U8 , HI_U8 , HI_U8 *);
HI_U8 BlockReadHDMITXP0(HI_U8 , HI_U8 , HI_U8 *);
HI_U8 BlockReadMDDCFifo(HI_U8 ucLen, HI_U8 *pucData);

#endif

