/***********************************************************************************/
/*  Copyright (c) 2002-2006, Silicon Image, Inc.  All rights reserved.             */
/*  No part of this work may be reproduced, modified, distributed, transmitted,    */
/*  transcribed, or translated into any language or computer format, in any form   */
/*  or by any means without written permission of: Silicon Image, Inc.,            */
/*  1060 East Arques Avenue, Sunnyvale, California 94085                           */
/***********************************************************************************/
#ifndef _ISR_
#define _ISR_

typedef struct
{
  HI_U8 Audio;
  HI_U8 Sys;
  HI_U8 Info;
} HDMIIntType;

void OnlyExtInterruptEnable(void);
//void SysTimerInterrupts(HI_U8);
void ClrHDMIRXIntInRX(void);
void InterruptHandler( void );
void PrepareForAudioStatTest(HI_U8);
void ReadAudioStatData (HI_U8 *);
void InitDVIInterruptMasks(void);
void RiCheckInterruptMask(HI_U8);
void ClearBiphaseSampleDroppedInterrupts( void );
HI_U8 CheckBiphaseSampleDroppedInterrupts( void );
Bool WaitPixClockStable(void);
void HotPlugInOrOut(void);		

extern void SetEncryption(HI_U8);

#endif




