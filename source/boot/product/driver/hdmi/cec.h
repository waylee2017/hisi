/***********************************************************************************/
/*  Copyright (c) 2002-2006, Silicon Image, Inc.  All rights reserved.             */
/*  No part of this work may be reproduced, modified, distributed, transmitted,    */
/*  transcribed, or translated into any language or computer format, in any form   */
/*  or by any means without written permission of: Silicon Image, Inc.,            */
/*  1060 East Arques Avenue, Sunnyvale, California 94085                           */
/***********************************************************************************/

#ifndef _CEC_H_
#define _CEC_H_

#include "typedefs.h"

typedef enum
{

    SiI_CEC_API_Version = 0x00,
    SiI_CEC_API_Revision = 0x00,
    SiI_CEC_API_Build = 0x01

} eSiI_CEC_VerInfo_t;

#define ON 1    // Turn ON
#define OFF 0   // Turn OFF
#define SII_MAX_CMD_SIZE 16 // defnes number of operands

typedef enum
{
    SiI_CEC_LogAddr_TV          = 0x00,
    SiI_CEC_LogAddr_RecDev1     = 0x01,
    SiI_CEC_LogAddr_RecDev2     = 0x02,
    SiI_CEC_LogAddr_STB1        = 0x03,
    SiI_CEC_LogAddr_DVD1        = 0x04,
    SiI_CEC_LogAddr_AudSys      = 0x05,
    SiI_CEC_LogAddr_STB2        = 0x06,
    SiI_CEC_LogAddr_STB3        = 0x07,
    SiI_CEC_LogAddr_DVD2        = 0x08,
    SiI_CEC_LogAddr_RecDev3     = 0x09,
    SiI_CEC_LogAddr_Res1        = 0x0A,
    SiI_CEC_LogAddr_Res2        = 0x0B,
    SiI_CEC_LogAddr_Res3        = 0x0C,
    SiI_CEC_LogAddr_Res4        = 0x0D,
    SiI_CEC_LogAddr_FreeUse     = 0x0E,
    CEC_LOGADDR_UNREGORBC_MSG   = 0x0F

} ecSiI_CEC_LogAddr_t;

#define CEC_PA_EDID_CH0      0x1000
#define CEC_PA_EDID_CH1      0x2000
#define CEC_PA_EDID_CH2      0x3000
#define CEC_PA_EDID_CH3      0x4000


typedef enum {

    eSiI_UseOldDest = 0xFF

} eSiI_TXCmdMod_t;


typedef struct
{
    HI_U8 bCount;
    HI_U8 bRXNextCount;
    HI_U8 bDestOrRXHeader;
    HI_U8 bOpcode;
    HI_U8 bOperand[ SII_MAX_CMD_SIZE ];

} SiI_CEC_t;

typedef enum {
    eSiI_CEC_ShortPulse = 0x80,
    eSiI_CEC_StartIrregular = 0x40,
    eSiI_CEC_RXOverFlow = 0x20,
} eSiI_CECErrors_t;

typedef enum {
    eSiI_TXWaitCmd,
    eSiI_TXSending,
    eSiI_TXSendAcked,
    eSiI_TXFailedToSend
} eSiI_TXState;

typedef struct {

    HI_U8 bRXState;
    HI_U8 bTXState;
    HI_U8 bCECErrors;

} SiI_CEC_Int_t;

//HI_U8 SiI_9185_CEC_CAPTURE_ID_Set( HI_U8 );
HI_U8 CEC_CAPTURE_ID_Set( HI_U8 );
void SiI_CEC_SendPing ( HI_U8 );
HI_U8 SiI_CEC_SetCommand( SiI_CEC_t * );
HI_U8 SiI_CEC_GetCommand( SiI_CEC_t * );
//HI_U8 SiI_CEC_IntProcessing ( SiI_CEC_Int_t * );
HI_U8 CEC_IntProcessing ( SiI_CEC_Int_t * );

void HDMI_CEC_Init( void );


// debug functions

HI_U8 SiI_CEC_SetSnoop ( HI_U8 , Bool );


// CEC_A6_TX_MSG_SENT_EVENT

#define CEC_A6_TX_MSG_SENT_EVENT 0x20

// CEC_A7_TX_RETRY_EXCEEDED_EVENT

#define CEC_A7_TX_RETRY_EXCEEDED_EVENT 0x02
extern HI_U8 CECCalibration ( void ) ;


//=============================================================================
// C E C   M e s s a g e   I n f o r m a t i o n   L o o k  u p  T a b l e
//=============================================================================
/* Request Opcode */
#define RP (8)
/* Reply Opcode   */
#define RQ (4)
/* Direct Addressing Mode    */
#define DA (2)
/* Broadcast Addressing Mode */
#define BC (1)

typedef enum
{
  CEC_REQST_DA_E = (RQ | DA),
  CEC_REQST_BC_E = (RQ | BC),
  CEC_REQST_BOTH_DA_BC = (RQ | BC | DA),
  CEC_REPLY_DA_E = (RP|DA),
  CEC_REPLY_BC_E = (RP|DA),
  CEC_REPLY_BOTH_DA_BC = (RP|DA|BC),
  CEC_BOTH_REQ_DA_REP_DA = (RP|RQ|DA),
  CEC_BOTH_REQ_BC_REP_BC = (RP|RQ|BC),
  CEC_BOTH_REQ_REP_BOTH_DA_BC =(RP|RQ|DA|BC)
} CEC_RX_MSG_TYPE_ET;

typedef void (*CEC_MSG_HANDLER)( SiI_CEC_t * SiI_CEC );

typedef struct
{
  HI_U8                  opcode ;
  HI_U8                  num_operand ;
  CEC_RX_MSG_TYPE_ET  msg_type ;
  CEC_MSG_HANDLER     opcode_handler ;
} LUT_CEC_MSG_INFO;

typedef enum
{
  STATE_ON      =0x00,
  STATE_STBY    =0x01,
  STATE_STBY2ON =0x02,
  STATE_ON2STBY =0x03,
} POWER_STATUS_ET;

//
//  Used to collect events that will be executed by the Event Handler.
//  Used in an array for deeper buffering.
//
typedef struct
{
  HI_U8  cec_event_id ;
  HI_U8  param[5] ;
  SiI_CEC_t * SiI_CEC ;
} EVENT_DESCRIPTOR;

typedef struct
{
  HI_U8                  cec_event_id ;
  CEC_MSG_HANDLER     cec_event_handler ;
} LUT_CEC_EVENT_HANDLER;

// ====================================================
//
// !!!!!!!Order is very important!!!!!! Don't Touch !!!
// !!Must be kept consistent with CEC_RX_REPLY_LUT[] !!
//
// =====================================================
typedef enum
{
  CEC_EVT_ONE_TOUCH_PLAY = 0x00,
  CEC_EVT_POWER_ON,
  CEC_EVT_POWER_OFF,
  //CEC_EVT_IR_REMOTE_KEY_PRESSED,
  //CEC_EVT_HDMI_PLUG_DETECT,
  //CEC_EVT_MSG_RECEIVED,
  //CEC_EVT_MSG_WAITING_TO_BE_SENT,
  CEC_EVT_LAST_EVENT,

} CEC_EVENT_HANDLER_ID_ET;

typedef enum
{
  DSCRPTR_EMPTY,  // Descriptor is available for use.
  DSCRPTR_BUSY,   // Descriptor is taken and is being filled/updated.
  DSCRPTR_FULL,   // Descriptor is taken and is full/ready for use.
} DESCRIPTOR_STATUS;

//
//  CEC Event Descriptor
//  is used for a task to communicate to the System Event Handler
//  to look out for a specific CEC Opcode from a specific
//  source Logical Address of the next frame received.
//  Once there is a match, the Event Handler specified i.e. cec_event_hdlr_id,
//  is call with the cec_event_next_state as a parameter.
//  cec_event_next_state tells where the
//
//
typedef struct
{
  DESCRIPTOR_STATUS       dscrptr_status;     // Used to provide the status of the descriptor.
  CEC_EVENT_HANDLER_ID_ET event_hdlr_id ;     // EVENT ID, must be registered in CEC_EVENT_HANDLER_ID_ET.
  HI_U8                      event_next_state;   // Next State of handler
  HI_U8                      trgt_opcode ;       // Targeted Opcode
  HI_U8                      trgt_source_addr ;  // Targeted Source Logical Address
} CEC_EVENT_DESCRIPTOR;

//void SiI_918x_Event_Handler( void );
void CEC_Event_Handler( void );

void CEC_event_descriptor_clear() ;

extern HI_U8 bCECSlvAddr;

//
// CEC Software Connection #3: Target System to provide local I2C Read function.
//                        I.E. Replace hlReadHI_U8_8BA() with Target System's with own function.
//
#define SiI_918x_RegRead(DEVICE, ADDR) hlReadHI_U8_8BA( DEVICE, ADDR )

//
// CEC Software Connection #4: Target System to provide local I2C Write function.
//                        I.E. Replace hlWriteHI_U8_8BA() with Target System with own function.
//
#define SiI_918x_RegWrite(DEVICE, ADDR, DATA) hlWriteHI_U8_8BA( DEVICE, ADDR, DATA )


//
// CEC Software Connection #6: Target System to provide local I2C Read function.
//                        I.E. Replace SiI_918x_RegReadModWrite() with Target System's with own Read-Modify-Write function.
//
#define SiI_918x_RegReadModWrite( DEVICE, ADDR, MASK, DATA ) siiReadModWriteHI_U8 ( DEVICE, ADDR, MASK, DATA )


// CEC Globals

typedef enum {

    SII_CEC_TV,
    SII_CEC_DVD,
    SII_CEC_STB,
    SII_CEC_SW

} CECDev_t;

typedef enum {

    SiI_EnumTV,
    SiI_EnumDVD

} SiI_EnumType;

typedef enum {

    SiI_CEC_Idle,
    SiI_CEC_ReqPing,
    SiI_CEC_ReqCmd1,
    SiI_CEC_ReqCmd2,
    SiI_CEC_ReqCmd3,
    SiI_CEC_Enumiration

} SiI_CECOp_t;

extern HI_U8 bCECTask;
extern HI_U8 InitiatorAddress;
extern HI_U8 bFollowerAddress;
extern HI_U8 bTXState;
extern HI_U8 bCECDev;
extern HI_U8 bEnumType;

#define UCEC_ACTIVE     0x82
#define UCEC_STANDBY    0x36

#endif // _SII_CEC_H_



