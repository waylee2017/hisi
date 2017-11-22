/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_type.h
* Description ：Global define for error code base
* 
* Version ：Version ：1.0.0
* Author ：wangyafeng : 
* Date ：2010-08-11
* Record : Change it into standard mode
*
* History :
* (1) 	Version ：1.0.0
* 		Author ：wangyafeng  : 
* 		Date ：2010-08-11
*		Record : Create File 
****************************************************************************/

#ifndef	__MLM_TYPE_H__ /* 防止头文件被重复引用 */
#define	__MLM_TYPE_H__


/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#ifndef DEFINEDMBT_CHAR
#define DEFINEDMBT_CHAR
typedef char MBT_CHAR;
#endif

#ifndef DEFINEDMBT_S8
#define DEFINEDMBT_S8
typedef signed char MBT_S8;
#endif

#ifndef DEFINEDMBT_S16
#define DEFINEDMBT_S16
typedef signed short MBT_S16;
#endif

#ifndef DEFINEDMBT_S32
#define DEFINEDMBT_S32
typedef signed int MBT_S32;
#endif

#ifndef DEFINEDMBT_U32
#define DEFINEDMBT_U32
typedef unsigned int MBT_U32;
#endif

#ifndef DEFINEDMBT_ULONG
#define DEFINEDMBT_ULONG
typedef unsigned long MBT_ULONG;
#endif

#ifndef DEFINEDMBT_SLONG
#define DEFINEDMBT_SLONG
typedef signed long MBT_SLONG;
#endif

#ifndef DEFINEDMBT_U8
#define DEFINEDMBT_U8
typedef unsigned char MBT_U8;
#endif

#ifndef DEFINEDMBT_U16
#define DEFINEDMBT_U16
typedef unsigned short MBT_U16;
#endif


#ifndef MBT_VOID
#define MBT_VOID void    
#endif

#ifndef MM_NULL
#define MM_NULL ((void *)0)
#endif



#ifndef DEFINEDMBT_BOOL
#define DEFINEDMBT_BOOL
typedef enum _m_bool_
{
    MM_FALSE = 0,
    MM_TRUE = 1
} MBT_BOOL;
#endif



#define MM_SYS_TIME_IMEDIEA  0 /*信号量或者消息队列等待的一个特殊时间，立即返回*/
#define MM_SYS_TIME_INIFIE  (0xFFFFFFFF)/*信号量或者消息队列等待的一个特殊时间，无限等待*/
#define MM_INVALID_HANDLE  (-1) /*非法句柄*/

#define UNUSED_PARAM(x) ((x)=(x))


typedef enum _m_error_code_
{
    MM_NO_ERROR = 0,       /* 0 */
    MM_ERROR_BAD_PARAMETER,      /* 1 Bad parameter passed       */
    MM_ERROR_NO_MEMORY,     /* 2 Memory allocation failed   */
    MM_ERROR_UNKNOWN_DEVICE, /* 3 Unknown device name        */
    MM_ERROR_ALREADY_INITIALIZED,      /* 4 Device already initialized */
    MM_ERROR_NO_FREE_HANDLES,     /* 5 Cannot open device again   */
    MM_ERROR_OPEN_HANDLE,        /* 6 At least one open handle   */
    MM_ERROR_INVALID_HANDLE,    /* 7 Handle is not valid        */
    MM_ERROR_FEATURE_NOT_SUPPORTED,/* 8 Feature unavailable        */
    MM_ERROR_INTERRUPT_INSTALL,       /* 9 Interrupt install failed   */
    MM_ERROR_INTERRUPT_UNINSTALL,     /* 10 Interrupt uninstall failed */
    MM_ERROR_TIMEOUT,         /* 11 Timeout occured  */
    MM_ERROR_DEVICE_BUSY, /* 12 Device is currently busy   */
    MM_ERROR_SUSPENDED,  /* 13 Device is in D1 or D2 state */
    MM_ERROR_NOT_INITIALIZE,  /* 14  Device not initialize */
    MM_ERROR_UNKNOW
} MMT_STB_ErrorCode_E;


#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_TYPE_H__ */
/*EOF*/
