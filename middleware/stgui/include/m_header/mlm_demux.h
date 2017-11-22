/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_demux.h
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
#ifndef	__MLM_DENUX_H__ /* 防止头文件被重复引用 */
#define	__MLM_DENUX_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*------------------------Module Macors---------------------------*/
#define MM_MAX_PTI_MASK_LEN 16
/*------------------------Module Constants---------------------------*/

/*------------------------Module Types---------------------------*/
typedef	MBT_U16		MET_PTI_PID_T;
typedef	MBT_U32		MET_PTI_FilterHandle_T;
typedef	MBT_U32		MET_DescramblerHandle;


#define MM_PTI_INVALIDHANDLE 0xffffffff
#define MM_PTI_INVALIDPID 0xe000
#define MM_PTI_INVALIDID 0xffff


/*channel 的类型*/
typedef enum _M_PTI_ChannelType_e
{
    MM_PTI_CHANNEL_PSI,
    MM_PTI_CHANNEL_VIDEO,
    MM_PTI_CHANNEL_AUDIO,
    MM_PTI_CHANNEL_PCR,
    MM_PTI_CHANNEL_TYPE_END
}MMT_PTI_ChannelType_E;

/*数据来源的类型*/
typedef enum _M_PTI_DataSrc_e
{
    MM_PTI_HW_INJECT,
    MM_PTI_SOFT_INJECT
}MMT_PTI_DataSrc_E;

/*filter填充结构*/
typedef struct  _M_PTI_MaskData_t
{
    MBT_U8 filter[MM_MAX_PTI_MASK_LEN];
    MBT_U8 mask[MM_MAX_PTI_MASK_LEN];
    MBT_U32	filter_len;
} MST_PTI_MaskData_T;

typedef enum _m_pti_dsmmode_e
{
    MM_PTI_DSM_PES,
    MM_PTI_DSM_TS,
    MM_PTI_DSM_UNKNOWN
} MMT_PTI_DsmMode_E;

/*-----------------------Module Functions-------------------------*/
/*
*说明：设置一个回调，当数据到来时通过调用此回调函数来通知上层。
*被动接收数据.设置好过滤条件后,每次有数据上来,会调用回调函数,
*把数据送上来.因为数据的接收很快，数据量庞大，为了提高运行效率，
*减少一次数据拷贝的过程，这里规定由底层申请了pbuff的内存，传给pDataCallbk函数后，
*pbuff由上层接管，底层不释放pbuff，上层用完后调用MLMF_PTI_FreeSectionBuffer释放。
*输入参数：
*	pDataCallbk：接收到数据以后需要调用的回调函数，此回调函数会在极短的时间内
*                                在调用此回调函数时如果返回错误，说明上层没有接管此数据，
*                               底层需要自行释放buffer的内存
*执行完，不会引起底层的阻塞。
*输出参数:
*			无。
*		返回
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_PTI_SetNotify(MMT_STB_ErrorCode_E(* pDataCallbk)(MET_PTI_PID_T stCurPid,MBT_U8 * pbuff,MBT_U32 u32Len,MET_PTI_FilterHandle_T stFileterHanel));



/*
*说明：在通道上创建二级过滤，用来过滤子表。
*输入参数：
*		cHandle：通道句柄。
*输出参数:
*			pFilter：创建成功后返回的filter句柄，若不成功则返回MBT_NULL。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号:失败。
*/
extern MMT_STB_ErrorCode_E MLMF_PTI_CreateFilter(MET_PTI_PID_T pid,MBT_U32 u32BufSize,MET_PTI_FilterHandle_T * pFilter,MMT_PTI_DataSrc_E eDataType);

/*
*说明：销毁一个filter。
*输入参数：
*		cHandle：通道句柄。
*			vFilter：输入参数，要销毁的filter句柄。
*输出参数:
*			无。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号:失败。
*/
extern MMT_STB_ErrorCode_E MLMF_PTI_DestroyFilter(MET_PTI_FilterHandle_T vFilter);

/*
*说明：设置一个filter的过滤参数。同时注册数据接收的回调函数.被动接收数据.设置好过滤条件后,每次有数据上来,会调用回调函数,把数据送上来.因为数据的接收很快，数据量庞大，为了提高运行效率，减少一次数据拷贝的过程，这里规定由底层申请了pbuff的内存，传给pDataCallbk函数后，pbuff由上层接管，底层不释放pbuff，上层用完后释放。
*输入参数：
*			vFilter：需要设置的filter句柄。
*			MaskData：过滤参数结构。
*pDataCallbk：接收到数据以后需要调用的回调函数，此回调函数会在极短的时间内执行完，不会引起底层的阻塞。
*输出参数:
*			无。
*		返回
*			MM_NO_ERROR:成功。
*			错误号:失败。
*/
extern MMT_STB_ErrorCode_E MLMF_PTI_SetFilter(MET_PTI_FilterHandle_T vFilter,MST_PTI_MaskData_T *MaskData);
/*
*说明：启动一个filter过滤数据。
*输入参数：
*			ChannelHandle：channel的句柄。
*			vFilter：filter的句柄。
*输出参数:
*			无。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号:失败。
*/
extern MMT_STB_ErrorCode_E MLMF_PTI_EnableFilter(MET_PTI_FilterHandle_T vFilter);

/*
*说明：停止一个过滤数据的filter。
*输入参数：
*			ChannelHandle：channel的句柄。
*			vFilter：filter的句柄。
*输出参数:
*			无。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号:失败。
*/
extern MMT_STB_ErrorCode_E MLMF_PTI_DisableFilter(MET_PTI_FilterHandle_T vFilter);

/*
*说明：释放由pDataCallbk回调函数传过来的pbuff内存。
*输入参数：
*			ChannelHandle：channel的句柄。
*			vFilter：filter的句柄。
*pbuff：Section数据的内存指针。
*输出参数:
*			无。
*		返回
*			MM_NO_ERROR:成功。
*			错误号:失败。
*/
extern MBT_VOID MLMF_PTI_FreeSectionBuffer (MET_PTI_FilterHandle_T vFilter,MBT_U8 *pbuff);

/*
*说明:分配一个解扰器，并按照指定的解扰模式工作。
*输入参数：
*	dsmHandle：解扰器句柄。
*	Encryptmode：解扰模式。
*输出参数:
*			无。
*	返回：
*		MM_NO_ERROR:成功。
*		错误号：失败。
*/
extern MMT_STB_ErrorCode_E  MLMF_PTI_DescramblerAllocate(MET_DescramblerHandle *dsmHandle, MMT_PTI_DsmMode_E encryptmode);

/*
*说明：释放指定句柄的解扰器通道。
*输入参数：
*	dsmHandle：解扰器句柄。
*输出参数:
*			无。
*	返回
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
extern MMT_STB_ErrorCode_E  MLMF_PTI_DescramblerFree(MET_DescramblerHandle dsmHandle);

/*
*说明:为指定句柄的解扰器通道绑定一个pid。
*输入参数：
*dsmHandle：解扰器句柄。
*pid：被解扰的流的pid。
*输出参数:
*			无。
*返回：
*	MM_NO_ERROR:成功。
*错误号：失败。
*/
extern MMT_STB_ErrorCode_E  MLMF_PTI_DescramblerSetPid(MET_DescramblerHandle dsmHandle, MET_PTI_PID_T pid);

/*
*说明:为指定句柄的解扰器通道,设置奇控制字。
*输入参数：
*dsmHandle：解扰器句柄。
*key：控制字。
*keyLen：控制字长度。
*输出参数:
*			无。
*返回：
*MM_NO_ERROR：成功。
*错误号：失败。
*/
extern MMT_STB_ErrorCode_E  MLMF_PTI_DescramblerSetOddKey(MET_DescramblerHandle dsmHandle,MBT_U8 *key, MBT_S32 keyLen);

/*
*说明：为指定句柄的解扰器通道,设置偶控制字。
*输入参数：
*	dsmHandle：解扰器句柄。
*	key：控制字。
*	keyLen：控制字长度。
*输出参数:
*			无。
*	返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
extern MMT_STB_ErrorCode_E  MLMF_PTI_DescramblerSetEvenKey(MET_DescramblerHandle dsmHandle,MBT_U8 *key, MBT_S32 keyLen);


extern MMT_STB_ErrorCode_E  MLMF_PTI_AdvancedDescramblerSetKeys(MET_DescramblerHandle dsmHandle,MBT_U8 *OddKey,MBT_U8 *EvenKey,MBT_S32 keyLen);

extern MMT_STB_ErrorCode_E  MLMF_PTI_AdvancedSelectRootKey(MBT_U8 u8RootKeyID);

extern MMT_STB_ErrorCode_E  MLMF_PTI_AdvancedSetContentKey(MBT_U32 u32KeyLen,MBT_U8 *pu8ContentKey);

extern MMT_STB_ErrorCode_E  MLMF_PTI_AdvancedSetCommonKey(MBT_U16 u16Algorithm,MBT_U8 *pu8CommonKey);

extern MMT_STB_ErrorCode_E  MLMF_PTI_AdvancedSetTempSessionKey(MBT_U16 u16Algorithm,MBT_U8 *pu8EncrypedTSK);

/*------------------------Module Classes--------------------------*/

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_DENUX_H__ */

/*----------------------End of mlm_demux.h-------------------------*/

