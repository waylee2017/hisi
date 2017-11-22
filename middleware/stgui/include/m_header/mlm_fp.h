/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_pio.h
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
* 		Date ：2010-08-14
*		Record : Create File 
****************************************************************************/
#ifndef	__MLM_PIO_H__ /* 防止头文件被重复引用 */
#define	__MLM_PIO_H__


/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/*------------------------Module Macors---------------------------*/
typedef enum _m_fp_key_e
{
    MM_FRONTKEY_NULL = 0x00,			
    MM_FRONTKEY_OK,			
    MM_FRONTKEY_MENU,
    MM_FRONTKEY_UP,			
    MM_FRONTKEY_DOWN,
    MM_FRONTKEY_LEFT,
    MM_FRONTKEY_RIGHT,
    MM_FRONTKEY_EXIT,
    MM_FRONTKEY_VOLUMEUP,
    MM_FRONTKEY_VOLUMEDOWN,
    MM_FRONTKEY_POWER
}MMT_FP_KEY_E;


/*------------------------Module Constants---------------------------*/

/*
*说明：在前面板LED上显示一个字符串，能显示几位便显示几位。目前只要求显示英文字母和数字。
*输入参数：
*			pString: 要显示的字符串。
*			u32StrLen: 要求显示的长度。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_FP_Display (MBT_CHAR *pString,MBT_U32 u32StrLen,MBT_BOOL bDotStatus);

/*
*说明：刷新前面板，此函数会被上层第隔6ms调用一次，以保证前面板LED的正常显示，
*如果前面板中有记忆芯片不用CPU刷新，可以把此函数放空。
*输入参数：
*			无。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MBT_VOID MLMF_FP_LedFresh (MBT_VOID);

/*
*说明：点亮或关闭锁定灯。
*输入参数：
*			u8Light: u8Light为1表示点亮，为0表示熄灭。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_FP_SetLock (MBT_U8 u8Light);
extern MMT_STB_ErrorCode_E MLMF_FP_SetLedMode(MBT_U8 u8Light);
/*
*说明：点亮或关闭待机灯。
*输入参数：
*			u8Light: u8Light为1表示点亮，为0表示熄灭。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_FP_SetStandby(MBT_U8 u8Light);

/*
*说明：读取前面板按键，上层第隔200ms调用一次用来扫描前面板按键。
*输入参数：
*无。
*输出参数:
*    无。
*		返回
*		前面板按键类型。
*/
extern MMT_FP_KEY_E MLMF_FP_ReadKey(MBT_VOID);



/*------------------------Module Classes--------------------------*/

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_USB_H__ */

/*----------------------End of mlm_pio.h-------------------------*/

