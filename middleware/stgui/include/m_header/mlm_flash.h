/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_flash.h
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
#ifndef	__MLM_FLASH_H__ /* 防止头文件被重复引用 */
#define	__MLM_FLASH_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/*
*说明：往指定的FLASH地址读入数据，可重入。
*输入参数：
*			flash_addr: FLASH地址。
*			buf: 数据缓存指针。
*			len: 数据长度。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_Flash_Read(MBT_U32 flash_addr, MBT_VOID * buf, MBT_U32 len);

/*
*说明：往指定的FLASH地址写入数据，可重入。
*输入参数：
*			flash_addr: FLASH地址。
*			buf: 数据缓存指针。
*			len: 数据长度。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_Flash_Write(MBT_U32 flash_addr, MBT_U8 * buf,MBT_U32 len);

/*
*说明：擦除一个连续的区域，不足一个BLOCK，则擦除整个BLOCK。
*输入参数：
*			flash_addr: FLASH地址
*			size: 要擦除的flash长度
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_Flash_EraseBlock(MBT_U32 flash_addr);

/*------------------------Module Classes--------------------------*/

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_FLASH_H__ */

/*----------------------End of mlm_flash.h-------------------------*/

