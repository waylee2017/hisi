/*
** NAME:
**   ssassd.h
** DESCRIPTION:
**   SSA-SSD API - One-shot signature check
** COPYRIGHT:
**   2002-2003 Kudelski SA NagraVision
** CONDITIONAL COMPILATION
**   None
***************************************************************
** $Header: /cvsroot/NagraSoft/STBProducts/projects/ssa_huawei_IX/components/ssa/src/com/ssassd.h,v 1.10 2005/07/20 14:53:59 nicoulin Exp $
***************************************************************
** HISTORY:
**   $Log: ssassd.h,v $
**   Revision 1.10  2005/07/20 14:53:59  nicoulin
**   PRMS ID: 28849
**    c++ compliant.
**
**   Revision 1.9  2003/05/22 13:30:51  hernande
**   PRMS ID: NONE
**   Added buffer length argument to one-shot SBP-HDD and SSD APIs.
**
**   Revision 1.8  2003/05/14 18:23:01  hernande
**   PRMS ID: NONE
**   Finished updates for new signature format. Split code SHA-1/MD5. Updated return codes for SBP and SSD APIs.
**
**   Revision 1.7  2003/05/09 14:34:25  hernande
**   PRMS ID: NONE
**   Updated APIs: Removed hash type flag.
**
**   Revision 1.6  2003/02/27 13:17:06  hernande
**   PRMS ID: NONE
**   Cleaned up. Formatted following coding conventions.
**
**   Revision 1.5  2003/02/19 15:48:54  hernande
**   PRMS ID: NONE
**   Updated following coding conventions
**
**   Revision 1.4  2003/01/27 17:57:45  hernande
**   PRMS ID: NONE
**   Changed signature check return values (OK != 0)
**
**   Revision 1.3  2003/01/24 09:50:14  hernande
**   PRMS ID: NONE
**   Added return value for invalid version number
**
**   Revision 1.2  2003/01/24 08:22:06  hernande
**   PRMS ID: NONE
**   Fixed problems with includes
**
**   Revision 1.1  2003/01/23 17:46:47  hernande
**   PRMS ID: NONE
**   Added SSD, changed SSA signature format, split ssasign.c into two.
**
**   Revision 1.0  1999/07/20 Sartori
**   First issue
**
*/

#ifndef SSASSD_H
#define SSASSD_H

#include "ssa.h"


#ifdef __cplusplus
extern "C" {
#endif

/*************************************************************************/
/*                               Constants                               */
/*************************************************************************/

#define SSD_SIGNATURE_DATE_LENGTH				8
#define SSD_SIGNATURE_HARDWARE_ID_LENGTH		6

/*************************************************************************/
/*                               Data Types                              */
/*************************************************************************/

typedef TUnsignedInt8 TSsdDate[SSD_SIGNATURE_DATE_LENGTH];
typedef TUnsignedInt8 TSsdHardwareId[SSD_SIGNATURE_HARDWARE_ID_LENGTH];

typedef TUnsignedInt32  TSsdCheckStatus;


#define  SSD_CHECK_INVALID             0
#define  SSD_CHECK_VALID_NO_ERROR      1

/**********************************************************************/
/*                          Public Functions                          */
/**********************************************************************/

/*
** Name:
**   ssaSsdCheck
** Description:
**   Checks the SSD signature of a software loaded in RAM.
** Precondition:
**   The whole signed file must be present in RAM.
**   The SBP memory map must be in place.
** Postcondition:
**   none.
** Side effects:
**   none.
** In:
**	  pxSignedBlock
**	    Pointer to the first byte of the signed software in RAM.
**	  xBufferSize
**	    Size in bytes of the buffer in which the complete signed
**     block (including length field and signature) is stored.
**     Note that the total size of the signed block must be less
**     than or equal to the buffer size. Otherwise, the signature
**     check will fail.
**	  xHardwareId
**	    Hardware ID (6 bytes)
**	  xCurrentDate
**	    Current data in ASCII YYYYMMDD format
** Out:
**   none.
** InOut:
**   none.
** Return:
**   TSsdCheckStatus (see ssassd.h)
** Remarks:
**   none.
*/
TSsdCheckStatus ssaSsdCheck
(
	TUnsignedInt8*		pxSignedBlock,
	TUnsignedInt32		xBufferSize,
	TSsdHardwareId		xHardwareId,
	TSsdDate				xCurrentDate
);

#ifdef __cplusplus
}
#endif

#endif /* SSASSD_H */
