/**********************************************************************************

File Name   : ui_api.h

Description : This is an API head file of Menu DIR in ST5105 project.

COPYRIGHT (C) STMicroelectronics 2004

Date               		Modification                                              Name
----               		------------                                          ----
5/17/2004			Created         			                             Louie
11/16/2005			Modified								C.S.R.	
<$ModMark> (do not move/delete)
***********************************************************************************/

#ifndef __MENU_H__		/* Prevent multiple inclusion of the file */
#define __MENU_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "mm_common.h"

/* --- */
typedef	enum
{
    KEYBOARD_MODULE,
    DBASE_MODULE,   
    REMOTE_KEYBOARD,
    CAS_MSG_MODULE,
    TUNER_MODULE,
    USB_MODULE,
    PVR_MODULE
} reporting_module_t;


#define TVSCREENWIDTH	 720 
#define TVSCREENHEIGHT	 576 


typedef	struct	usif_cmd_struct_tag 
{
    reporting_module_t		from_which_module;

    union  
    {
        /*
        * Keyboard module communication format
        */
        struct 
        {
            MBT_U32     scancode;		/* key scan code */
            MBT_BOOL	 repeat_status;	/* MM_TRUE	if the key is pressed repeatedly */
            MBT_U8	 device;			/* device type REMOTE or FRONT_PANEL keyboard */
            MBT_U32	 uExtern;	
        } keyboard;
        

        /*
        * database module communication format
        */
        struct 
        {
            MBT_U16					u16MsgLen;	/* status of the DBASE */
            MBT_U16					table_under_construction;	/* which table is being	built now */
            MBT_U32					uExtern;	/* */
            MBT_U32					uExtern1;	/* */
            MBT_VOID*				pMsgData;	/* */
        } dbase;
        
        /*
        * timer module communication format
        */
        struct 
        {
            MBT_U8					        uEventType;	/* channel number */
            MBT_U8					        uVideoRadio;	/* 电视还是广播 0=TV 1 = Radio*/
            MBT_U8					        uTimerType;	/* channel number */
            MBT_U8					        uTimerIndex;	/* 电视还是广播 0=TV 1 = Radio*/
            MBT_S32			iOtherInfo;	/* 其它消息 */
            MBT_VOID*	    pData;	/* channel number */
            MBT_U32		    uChannel_number;	/* channel number */
        } Timer;

        /*
        * timer module communication format
        */
        struct 
        {
            MBT_S32 iType;
            MBT_U16 stPid;
            MBT_U16 iDataSize;
            MBT_U32 uExtern;
            MBT_U32 uExtern1;
            MBT_VOID *pData;
        } CASMsg;
    } contents;
} usif_cmd_t;

extern MBT_VOID UIF_SetVolume(MBT_U16 left_volume, MBT_U16 right_volume, MBT_S16 nVolAdjust);
extern MBT_VOID UIF_TvSystemTogFunction(MMT_AV_HDResolution_E iTemp);
extern MBT_VOID UIF_SendKeyToUi(MBT_U32 u32Key);
extern MBT_VOID UIF_GetCAOsdMsg( MBT_S32 iType,MBT_U32 stPid, MBT_VOID *pData,MBT_S32 iDataSize);
extern MBT_VOID UIF_GetUsbEventMsg(MMT_USB_DeviceStatus_E type,MBT_CHAR * pstringName);
extern MBT_VOID UIF_GetPvrEventMsg(MBT_U8 Event);
extern MBT_VOID UIF_StopAV(MBT_VOID);
extern MBT_VOID UIF_PlayBckGrdIframe(MBT_VOID);
extern MBT_VOID UIF_InitUIQueue(MBT_VOID);
extern MBT_VOID UIF_InitOSDLauguage(MBT_VOID);
extern MBT_VOID UIF_OpenStartUpGif(MBT_VOID);
extern MBT_VOID UIF_CloseStartUpGif(MBT_VOID);
extern MBT_U32 UIF_ShowStartUpGif(MBT_VOID);
extern MBT_VOID UIF_DecoderWaterLogoPNG(MBT_VOID);
extern MBT_BOOL UIF_DVBAppInit(MBT_VOID);
extern MBT_BOOL UIF_IsHwSuit(MBT_U8 *pstData);
extern MBT_BOOL UIF_BIsSTBPoswerOn(MBT_VOID);
extern MBT_BOOL UIF_SetMute(MBT_VOID);
extern MBT_CHAR *UIF_GetSoftwareVersion( MBT_VOID );
#ifdef __cplusplus
}
#endif

#endif 	/* #ifndef __CLUT8DEF_H__  */
