/*
 * Copyright Unitend Technologies Inc. 
 * 
 * This file and the information contained herein are the subject of copyright
 * and intellectual property rights under international convention. All rights
 * reserved. No part of this file may be reproduced, stored in a retrieval
 * system or transmitted in any form by any means, electronic, mechanical or
 * optical, in whole or in part, without the prior written permission of Unitend 
 * Technologies Inc.
 *
 * File name: unitend.h,
 * Author: baihuisheng
 * Version:0.0.0.1
 * Date:2009-07-17
 * Description:this file define basic data type for UTI
 * History:
 *         Date:2009-07-17    Author:baihuisheng    Modification:Creation
 */
 
#ifndef _UNITEND_H_
#define _UNITEND_H_


#define    IN
#define    OUT
#define    INOUT

#define    K   (1024)
#define    M   (1024*1024)

#ifndef NULL
#define NULL 0
#endif

/************************************************************/
/*                                                          */
/*  below is basic DATA type define for UNITEND co.ltd           */
/*                                                          */
/************************************************************/

typedef  unsigned char   	UTI_BYTE;    /*  range :  0 to 255                   */
typedef  char      UTI_CHAR;    /*  range :  0 to 255 or -128 to 127    */
typedef  short       UTI_SHORT;
typedef  long     	UTI_LONG;    /*  range :  -2147483648 to 2147483647  */
typedef  unsigned long   	UTI_ULONG;   /*  range :  0 to 4294967295            */
typedef  unsigned short  	UTI_WORD;    /*  range :  0 to 65535                 */
typedef  unsigned long 		UTI_DWORD;	 /*  range :  0 to 4294967295            */

typedef unsigned char 		UTI_UINT8;   /*  range :  0 to 255                   */
typedef signed char 			UTI_SINT8;	 /*  range :  0 to 255 or -128 to 127    */

typedef unsigned short 		UTI_UINT16;  /*  range :  0 to 65535                 */
typedef signed short 			UTI_SINT16;  /*  range :  -32767 to 32767            */

typedef unsigned long 		UTI_UINT32;   /*  range :  0 to 4294967295            */
typedef signed long 			UTI_SINT32;  /*  range :  -2147483648 to 2147483647  */

typedef signed int        UTI_SINT;
typedef int								UTI_INT;
typedef unsigned int			UTI_UINT;

#ifndef _WINDEF_
   typedef  unsigned char   	UTI_BOOL;    /*  range :  TRUE or FALSE           */
   typedef  void            	UTI_VOID;    /*  range :  n.a.                    */
#endif
   
typedef  UTI_BYTE    *UTI_PBYTE;
typedef  UTI_CHAR    *UTI_PCHAR;
typedef  UTI_LONG    *UTI_PLONG;
typedef  UTI_ULONG   *UTI_PULONG;
typedef  UTI_WORD    *UTI_PWORD;
typedef  UTI_DWORD   *UTI_PDWORD;

typedef  UTI_UINT8 	 *UTI_PUINT8;
typedef  UTI_SINT8 	 *UTI_PSINT8;

typedef  UTI_UINT16  *UTI_PUINT16;
typedef  UTI_SINT16  *UTI_PSINT16;

typedef  UTI_UINT32  *UTI_PUINT32;
typedef  UTI_SINT32  *UTI_PSINT32;

typedef  UTI_INT			*UTI_PINT;
typedef  UTI_SINT			*UTI_PSINT;

typedef  UTI_BOOL    *UTI_PBOOL;
typedef  UTI_VOID    *UTI_PVOID;

#ifndef  UTI_TRUE
#define  UTI_TRUE    (UTI_BOOL) (1)
#endif

#ifndef  UTI_FALSE
#define  UTI_FALSE   (UTI_BOOL) (!UTI_TRUE) 
#endif

#ifndef UTI_NULL 
#define UTI_NULL     (UTI_PVOID)(0)
#endif

/************************************************************************/
/*									*/
/*below is some common error for unitend software			*/
/*									*/
/*									*/
/************************************************************************/

typedef UTI_INT				UTI_RESULT;

#define UTI_ERROR_OK			   						0   /*function call is success*/
#define UTI_ERROR_UNKNOWN_ERROR					-1  /*                        */
#define UTI_ERROR_WAIT_TIMEOUT   				-2	/*time out ocour when call function*/
#define UTI_ERROR_INVALID_ARGUMENT			-3	/*the argument passed to function is invalid*/
#define UTI_ERROR_NOT_ENOUGH_MEMORY   	-4	/*memory allocated by called function fail*/
#define UTI_ERROR_NOT_ENOUGH_RESOURCE		-5  /*resource such as some hardware is not enough*/
#define UTI_ERROR_NOT_SUPPORT						-6	/*this function is not support now*/
#define UTI_ERROR_DEVICE_NOT_PRESENT    -7  /*the device is not present  */




#endif  /* _UTI_TYPE_H_ */
