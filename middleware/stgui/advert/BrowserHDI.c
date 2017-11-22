
#include "mm_common.h"
#include "section_api.h"
#include  "BrowserHDI.h"
#include "lodepng.h"
#include "gif.h"

#define ENABLE_BROWER_DEBUG 0

#define BROWER_ERROR(msg,...) MLMF_Print("[Ad Error]<%s:%d>"msg,__FUNCTION__,__LINE__,##__VA_ARGS__)
#if ENABLE_BROWER_DEBUG
#define BROWER_DEBUG(msg,...) MLMF_Print("[Ad Debug]<%s:%d>"msg,__FUNCTION__,__LINE__,##__VA_ARGS__)
#else
#define BROWER_DEBUG(msg,...)
#endif

#ifdef  BROWSER_SWITCH_FLAG

#define BROWSER_TASK_PRIORITY	11

#define MAKE_MSG_INDEX_TO_HANDLE(x) (x+1)
#define MAKE_MSG_HANDLE_TO_INDEX(x) (x-1)

#define BROWER_MAX_MSGQUEUE_NUM 10
typedef struct
{
	BROWSER_BOOLEAN_T bUsed;
	BROWSER_HANDLE hdMsgId;
	BROWSER_U32 u32ElementSize;
	BROWSER_U32 u32ElementNum;
}Browser_Msg_Info;

typedef struct _Filter_Cb_Node
{
	MET_PTI_FilterHandle_T FilterHandle;
	BrowserFilterCallback_T Filter_Cb;
	struct _Filter_Cb_Node *next;
}Browser_Filter_Cb_Node;

static Browser_Filter_Cb_Node *pBrowser_Callback_list = NULL;
static Browser_Msg_Info stMsg_Info[BROWER_MAX_MSGQUEUE_NUM];
static MET_Sem_T sem_MsgAccess = -1;
static MET_Sem_T sem_FilterAccess = -1;

#define SEM_MSG_P() \
{\
	if(-1 == sem_MsgAccess) \
	{\
			MLMF_Sem_Create(&sem_MsgAccess,1);\
	}\
	MLMF_Sem_Wait(sem_MsgAccess,MM_SYS_TIME_INIFIE);\
}

#define SEM_MSG_V()  MLMF_Sem_Release(sem_MsgAccess)

#define SEM_Filter_P() \
{\
	if(-1 == sem_FilterAccess) \
	{\
			MLMF_Sem_Create(&sem_FilterAccess,1);\
	}\
	MLMF_Sem_Wait(sem_FilterAccess,MM_SYS_TIME_INIFIE);\
}

#define SEM_Filter_V()  MLMF_Sem_Release(sem_FilterAccess)


static BROWSER_U8 _browser_get_unused_index(void)
{
	BROWSER_U8 i = 0;
	
	for(i = 0;i < BROWER_MAX_MSGQUEUE_NUM;i++)
	{
		if(!stMsg_Info[i].bUsed)
		{
			return i;
		}
	}

	return 0xFF;
}

BROWSER_HANDLE  Browser_Os_CreateMutex(void)
{
	return  BROWSER_INVALID_HANDLE;
}

BROWSER_BOOLEAN_T   Browser_Os_DeleteMutex(BROWSER_HANDLE  p_handle)
{
	return  BROWSER_FALSE;
}

void   Browser_Os_LockMutex(BROWSER_HANDLE  p_handle)
{
	return;
}

void   Browser_Os_ReleaseMutex(BROWSER_HANDLE  p_handle)
{
	return;
}

BROWSER_HANDLE  Browser_Os_CreateSemaphore(const BROWSER_BOOLEAN_T  p_init_val)
{
	MMT_STB_ErrorCode_E ret = MM_NO_ERROR;
	BROWSER_U32 init_val = 0; 
	MET_Sem_T semID = BROWSER_INVALID_HANDLE;

	init_val = p_init_val ? 1 : 0;
	ret = MLMF_Sem_Create(&semID,init_val);
	if(MM_NO_ERROR == ret)
	{
		return (BROWSER_HANDLE)semID;
	}
	
	BROWER_ERROR("CreateSemaphore Fail\n");
	return  BROWSER_INVALID_HANDLE;
}

BROWSER_BOOLEAN_T   Browser_Os_DeleteSemaphore(BROWSER_HANDLE  p_handle)
{
	MMT_STB_ErrorCode_E ret = MM_NO_ERROR;
	ret = MLMF_Sem_Destroy((MET_Sem_T)p_handle);
	if(MM_NO_ERROR == ret)
	{
		return BROWSER_TRUE;
	}

	BROWER_ERROR("DeleteSemaphore Fail\n");
	return  BROWSER_FALSE;
}

BROWSER_BOOLEAN_T   Browser_Os_SemaphoreSignal(BROWSER_HANDLE  p_handle)
{
	MMT_STB_ErrorCode_E ret = MM_NO_ERROR;
	
	ret = MLMF_Sem_Release((MET_Sem_T)p_handle);
	if(MM_NO_ERROR == ret)
	{
		return BROWSER_TRUE;
	}
	
	return BROWSER_FALSE;
}

BROWSER_BOOLEAN_T   Browser_Os_SemaphoreWait(BROWSER_HANDLE  p_handle, const BROWSER_U32  p_wait_timeout_us)
{
	MMT_STB_ErrorCode_E ret = MM_NO_ERROR;
	MBT_U32 waitTime = (MBT_U32)p_wait_timeout_us;
	
	ret = MLMF_Sem_Wait((MET_Sem_T)p_handle,waitTime);
	if(MM_NO_ERROR == ret)
	{
		return BROWSER_TRUE;
	}
	
	return BROWSER_FALSE;
}

BROWSER_HANDLE  Browser_Os_CreateMessageQueue(const BROWSER_U32  p_element_size, const BROWSER_U32  p_element_num)
{
	MMT_STB_ErrorCode_E ret = MM_NO_ERROR;
	MET_Msg_T msgID;
	BROWSER_U8 index = 0;
	
	ret = MLMF_Msg_Create(p_element_size,p_element_num,&msgID);
	if(MM_NO_ERROR == ret)
	{
		SEM_MSG_P();
		index = _browser_get_unused_index();
		if(0xFF == index )
		{
			BROWER_ERROR("CreateMessageQueue Fail,full\n");
			MLMF_Msg_Destroy(msgID);
			SEM_MSG_V();
			return  BROWSER_INVALID_HANDLE;
		}
		stMsg_Info[index].bUsed = BROWSER_TRUE;
		stMsg_Info[index].hdMsgId = (BROWSER_HANDLE)msgID;
		stMsg_Info[index].u32ElementSize = p_element_size;
		stMsg_Info[index].u32ElementNum = p_element_num;
		SEM_MSG_V();
		return (BROWSER_HANDLE)MAKE_MSG_INDEX_TO_HANDLE(index);
	}
	
	BROWER_ERROR("CreateMessageQueue Fail\n");
	return  BROWSER_INVALID_HANDLE;
}

BROWSER_BOOLEAN_T   Browser_Os_DeleteMessageQueue(BROWSER_HANDLE  p_handle)
{
	MMT_STB_ErrorCode_E ret = MM_NO_ERROR;
	BROWSER_U8 index = 0;
	BROWSER_HANDLE MsgID;

	if(BROWSER_INVALID_HANDLE == p_handle || p_handle > BROWER_MAX_MSGQUEUE_NUM)
	{
		BROWER_ERROR("DeleteMessageQueue Fail,p_handle is invalid\n");
		return  BROWSER_FALSE;
	}

	index = MAKE_MSG_HANDLE_TO_INDEX(p_handle);
	SEM_MSG_P();
	MsgID = stMsg_Info[index].hdMsgId;
	memset(&(stMsg_Info[index]),0,sizeof(Browser_Msg_Info));
	SEM_MSG_V();
	ret = MLMF_Msg_Destroy((MET_Msg_T)MsgID);
	if(MM_NO_ERROR == ret)
	{
		return BROWSER_TRUE;
	}
	
	BROWER_ERROR("DeleteMessageQueue Fail\n");
	return  BROWSER_FALSE;
}

void*  Browser_Os_MessageQueueClaim(BROWSER_HANDLE  p_handle)
{
	BROWSER_U8 index = 0;
	void* pMsg = NULL;
	BROWSER_U32 size;
		
	if(BROWSER_INVALID_HANDLE == p_handle || p_handle > BROWER_MAX_MSGQUEUE_NUM)
	{
		BROWER_ERROR("MessageQueueClaim Fail,p_handle is invalid\n");
		return  NULL;
	}

	index = MAKE_MSG_HANDLE_TO_INDEX(p_handle);
	SEM_MSG_P();
	size = stMsg_Info[index].u32ElementSize;
	SEM_MSG_V();
	
	pMsg = MLMF_Malloc(size);
	
	return  pMsg;
}

void   Browser_Os_MessageQueueRelease(BROWSER_HANDLE  p_handle,  void* p_msg_p)
{
	if(NULL == p_msg_p)
	{
		return;
	}
		
	if(BROWSER_INVALID_HANDLE == p_handle || p_handle > BROWER_MAX_MSGQUEUE_NUM)
	{
		BROWER_ERROR("MessageQueueRelease Fail,p_handle is invalid\n");
		return;
	}

	MLMF_Free(p_msg_p);
	return;
}

BROWSER_BOOLEAN_T   Browser_Os_MessageQueueSend(BROWSER_HANDLE  p_handle,  void* p_msg_p)
{
	BROWSER_U8 index = 0;
	MMT_STB_ErrorCode_E ret = MM_NO_ERROR;
	MET_Msg_T msgID;
	BROWSER_U32 size;

	if(NULL == p_msg_p)
	{
		return BROWSER_FALSE;
	}
		
	if(BROWSER_INVALID_HANDLE == p_handle || p_handle > BROWER_MAX_MSGQUEUE_NUM)
	{
		BROWER_ERROR("MessageQueueSend Fail,p_handle is invalid\n");
		return BROWSER_FALSE;
	}

	index = MAKE_MSG_HANDLE_TO_INDEX(p_handle);

	SEM_MSG_P();
	msgID = stMsg_Info[index].hdMsgId;
	size = stMsg_Info[index].u32ElementSize;
	SEM_MSG_V();
	
	ret = MLMF_Msg_SendMsg(msgID,p_msg_p,size,MM_SYS_TIME_INIFIE);
	MLMF_Free(p_msg_p);
	if(MM_NO_ERROR == ret)
	{
		//BROWER_DEBUG("-->send msg id=%d,p_msg_p=0x%x,size=%d,p_msg_p[0]=%d\n",msgID,p_msg_p,size,*(MBT_U8 *)p_msg_p);
		return BROWSER_TRUE;
	}

	BROWER_ERROR("MessageQueueSend Fail\n");
	return BROWSER_FALSE;
}

void*  Browser_Os_MessageQueueReceive(BROWSER_HANDLE  p_handle,  const BROWSER_U32  p_milli_seconds)
{
	BROWSER_U8 index = 0;
	MMT_STB_ErrorCode_E ret = MM_NO_ERROR;
	void* p_msg_p = NULL;
	MET_Msg_T msgID;
	BROWSER_U32 size;
		
	if(BROWSER_INVALID_HANDLE == p_handle || p_handle > BROWER_MAX_MSGQUEUE_NUM)
	{
		BROWER_ERROR("MessageQueueSend Fail,p_handle is invalid\n");
		return NULL;
	}

	index = MAKE_MSG_HANDLE_TO_INDEX(p_handle);
	SEM_MSG_P();
	msgID = stMsg_Info[index].hdMsgId;
	size = stMsg_Info[index].u32ElementSize;
	SEM_MSG_V();

	p_msg_p = MLMF_Malloc(size);
	if(NULL == p_msg_p)
	{
		BROWER_ERROR("malloc mem fail\n");
		return NULL;
	}
	
	ret = MLMF_Msg_WaitMsg(msgID,p_msg_p,size,p_milli_seconds);
	//BROWER_DEBUG("-->get msg id=%d,p_msg_p=0x%x,size=%d,p_msg_p[0]=%d\n",msgID,p_msg_p,size,*(MBT_U8 *)p_msg_p);
	if(MM_NO_ERROR == ret)
	{
		return p_msg_p;
	}

	MLMF_Free(p_msg_p);
	//BROWER_ERROR("MessageQueueReceive Fail,ret=%d,p_milli_seconds=0x%x\n",ret,p_milli_seconds);
	return  NULL;
}

static MBT_VOID BrowserTaskFunc(MBT_VOID *pFunc)
{
	BrowserTaskFunc_T pTaskFunc = (BrowserTaskFunc_T)pFunc;
	pTaskFunc();
}

BROWSER_HANDLE  Browser_Os_CreateTask(char*  p_task_name_p, BrowserTaskFunc_T  p_task_func_p, const BROWSER_U32  p_stack_size)
{
	MMT_STB_ErrorCode_E ret = MM_NO_ERROR;
	MET_Task_T taskid = 0;
	
	ret = MLMF_Task_Create(BrowserTaskFunc,p_task_func_p,p_stack_size,BROWSER_TASK_PRIORITY,&taskid,p_task_name_p);
	if(MM_NO_ERROR == ret)
	{
		return (BROWSER_HANDLE)taskid;
	}

	BROWER_ERROR("CreateTask Fail\n");
	return  BROWSER_INVALID_HANDLE;
}

BROWSER_BOOLEAN_T   Browser_Os_DeleteTask(BROWSER_HANDLE  p_handle)
{
	MMT_STB_ErrorCode_E ret = MM_NO_ERROR;
	MET_Task_T taskid = (MET_Task_T)p_handle;
	
	ret = MLMF_Task_Destroy(taskid);
	if(MM_NO_ERROR == ret)
	{
		return (BROWSER_HANDLE)taskid;
	}

	BROWER_ERROR("DeleteTask Fail\n");
	return  BROWSER_FALSE;
}

void  Browser_Os_TaskSleep(const BROWSER_U32  p_milli_seconds)
{
	MLMF_Task_Sleep(p_milli_seconds);
	return;
}

void*  Browser_Os_Malloc_Plus(const BROWSER_U32  p_buffer_size)
{
	return  MLMF_Malloc(p_buffer_size);
}

void  Browser_Os_Free_Plus(void*  p_buffer_p)
{
	MLMF_Free(p_buffer_p);
	return;
}

void  Browser_Os_Memset(void*  p_buffer_p,  const BROWSER_U8  p_char,  const BROWSER_U32  p_buffer_size)
{
	memset(p_buffer_p,p_char,p_buffer_size);
	return;
}

void  Browser_Os_Memcpy(void*  p_dest_buffer_p,  const void* p_source_buffer_p,  const BROWSER_U32  p_buffer_size)
{
	memcpy(p_dest_buffer_p,p_source_buffer_p,p_buffer_size);
	return;
}

static MBT_VOID TableParseCallBack(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen)
{
	Browser_Filter_Cb_Node *pCbNode  = NULL;;
	BrowserFilterCallback_T pCb = NULL;

	SEM_Filter_P();
	pCbNode = pBrowser_Callback_list;
	while(pCbNode)
	{
		if(pCbNode->FilterHandle == stFilterHandle)
		{
			break;
		}
		pCbNode = pCbNode->next;
	}
	
	if(pCbNode)
	{
		pCb = pCbNode->Filter_Cb;
	}
	SEM_Filter_V();
	
	if(pCb)
	{
		pCb(pu8MsgData,iMsgLen);
	}
	else
	{
		BROWER_ERROR("-->cb NULL !pid=0x%x,tabldid=0x%x,hd=%d,len=%d,cb=0x%x\n",stCurPid ,pu8MsgData[0],stFilterHandle,iMsgLen,pCb);
	}
	
}

BROWSER_HANDLE  Browser_Stb_SetFilter(BROWSER_U32  p_pid, BROWSER_U8  p_table_id, BrowserFilterCallback_T  p_filter_callback)
{
	MMT_STB_ErrorCode_E ret = MM_NO_ERROR;
	MET_PTI_FilterHandle_T FilterHandle;
	MBT_U8 pstData[FILTER_DEPTH_SIZE];
    MBT_U8 pstMask[FILTER_DEPTH_SIZE];
	Browser_Filter_Cb_Node *pTempCb = NULL;

	memset(pstData,0,sizeof(pstData));
    memset(pstMask,0,sizeof(pstMask));
    pstData[0] = p_table_id;
    pstMask[0] = 0xff;

	SEM_Filter_P();
	ret = SRSTF_SrchSectTable(TableParseCallBack,p_pid,4096,pstData,pstMask,
		1,200,MM_NULL,IPANEL_NO_VERSION_RECEIVE_MODE,&FilterHandle);

	if(MM_NO_ERROR == ret)
	{
		BROWER_DEBUG("SetFilter OK,p_pid=0x%x,p_table_id=0x%x,FilterHandle=%d,p_filter_callback=0x%x\n",p_pid,p_table_id,FilterHandle,p_filter_callback);
		pTempCb = (Browser_Filter_Cb_Node *)MLMF_Malloc(sizeof(Browser_Filter_Cb_Node));
		pTempCb->Filter_Cb = p_filter_callback;
		pTempCb->FilterHandle = FilterHandle;
		pTempCb->next = pBrowser_Callback_list;
		pBrowser_Callback_list = pTempCb;
		
		SEM_Filter_V();
		return (BROWSER_HANDLE)FilterHandle;
	}

	BROWER_ERROR("SetFilter Fail,p_pid=0x%x,p_table_id=0x%x\n",p_pid,p_table_id);
	SEM_Filter_V();
	return  BROWSER_INVALID_HANDLE;
}

void  Browser_Stb_StopFilter(BROWSER_HANDLE  p_filter_handle)
{
	Browser_Filter_Cb_Node *pCb  = NULL;
	Browser_Filter_Cb_Node *pCbTmp  = NULL;
	MBT_BOOL bFlag = MM_FALSE;

	SEM_Filter_P();
	pCb = pBrowser_Callback_list;
	while(pCb)
	{
		if(pCb->FilterHandle == p_filter_handle)
		{
			bFlag = MM_TRUE;
			break;
		}
		pCb = pCb->next;
	}
	if(!bFlag)
	{
		BROWER_DEBUG("StopFilter fail,invalid FilterHandle=%d\n",p_filter_handle);
		SEM_Filter_V();
		return;
	}
	SRSTF_DeleteFilter(p_filter_handle);
	
	pCb = pBrowser_Callback_list;
	pCbTmp = pBrowser_Callback_list;
	while(pCb)
	{
		if(pCb->FilterHandle == p_filter_handle)
		{
			break;
		}
		pCbTmp = pCb;
		pCb = pCb->next;
	}

	if(pCb)
	{
		if(pCbTmp == pCb)
		{
			pBrowser_Callback_list = NULL;
		}
		else
		{
			pCbTmp->next = pCb->next;
		}
		MLMF_Free(pCb);
	}
	SEM_Filter_V();

	BROWER_DEBUG("StopFilter OK,FilterHandle=%d\n",p_filter_handle);
	return;
}

#ifdef  BROWSER_NAVIGATOR_FLAG

BROWSER_BOOLEAN_T  Browser_Driver_Init(void)
{
	return  BROWSER_FALSE;
}

BROWSER_BOOLEAN_T  Browser_Driver_Term(void)
{
	return  BROWSER_FALSE;
}

BROWSER_BOOLEAN_T  Browser_Ui_CreateRegion(const BROWSER_U32  p_width,  const BROWSER_U32  p_height)
{


	return  BROWSER_FALSE;
}

BROWSER_HANDLE  Browser_Ui_CreatePicture(BROWSER_U8  *p_pic_data_p,  const BROWSER_U32  p_pic_data_size,  BrowserArea_T  p_pic_area)
{
	return  BROWSER_INVALID_HANDLE;
}

BROWSER_BOOLEAN_T  Browser_Ui_DeletePicture(BROWSER_HANDLE  p_handle)
{
	return  BROWSER_FALSE;
}

BROWSER_HANDLE  Browser_Ui_CreateText(char  *p_text_string_p,  
											const BROWSER_TEXT_LANGUAGE_T  p_text_language,											
											const BROWSER_U32  p_text_string_length,  
											BrowserArea_T  p_text_area,  
											BrowserColourARGB_T  p_text_colour,  
											BROWSER_FONT_SIZE_T  p_text_font_size,
											BROWSER_STRING_ALIGN_MODE_T  p_text_align_mode,
											BROWSER_STRING_DYNAMIC_MODE_T  p_text_dynamic_mode
											)
{
	return  BROWSER_INVALID_HANDLE;
}

BROWSER_BOOLEAN_T  Browser_Ui_DeleteText(BROWSER_HANDLE  p_handle)
{
	return  BROWSER_FALSE;
}

void  Browser_Ui_DrawPicture(BROWSER_HANDLE  p_handle)
{
	return;
}

void  Browser_Ui_DrawText(BROWSER_HANDLE  p_handle)
{
	return;
}

void  Browser_Ui_FillRectangle(BrowserArea_T  p_area,  BrowserColourARGB_T  p_colour)
{
	return;
}

void  Browser_Ui_DrawFocus(BrowserArea_T  p_area,  BROWSER_FOCUS_STATE_T  p_focus_state)
{
	return;
}

void  Browser_Ui_BeginDraw(void)
{
	return;
}

void  Browser_Ui_EndDraw(void)
{
	return;
}

BROWSER_BOOLEAN_T  Browser_Stb_LockTuner(void)
{
	return  BROWSER_FALSE;
}

void  Browser_Stb_StopTuner(void)
{
	return;
}

void  Browser_Stb_WaitingNotice(void)
{
	return;
}

void  Browser_Stb_NoSignalNotice(void)
{
	return;
}

void  Browser_Stb_NoDataNotice(void)
{
	return;
}
#endif

#ifdef  BROWSER_AD_FLAG

BROWSER_BOOLEAN_T  Browser_Ad_LockTuner(void)
{
	return  BROWSER_TRUE;
}

void  Browser_Ad_StopTuner(void)
{
	return;
}

BROWSER_BOOLEAN_T  Browser_Ad_GetDateTime(BROWSER_AD_Date_T*  p_date_p,  BROWSER_AD_Time_T*  p_time_p)
{
	TIMER_M stTempTime;
	TMF_GetSysTime(&stTempTime);

	p_date_p->i_year = stTempTime.year;
	p_date_p->i_month = stTempTime.month;
	p_date_p->i_day = stTempTime.date;

	p_time_p->i_hour = stTempTime.hour;
	p_time_p->i_min = stTempTime.minute;
	p_time_p->i_sec = stTempTime.second;
	
	return  BROWSER_TRUE;
}

BROWSER_BOOLEAN_T  Browser_Ad_Driver_Init(void)
{
	return  BROWSER_TRUE;
}

BROWSER_BOOLEAN_T  Browser_Ad_Driver_Term(void)
{
	return  BROWSER_TRUE;
}

BrowserGifFrame_T  Browser_Decode_Pic_Frame(BROWSER_U8 *PicBuf,BROWSER_U32 BufSize)
{
	MBT_U32 iSize = BufSize;
    MBT_U8 *pu8Data = PicBuf;
    unsigned error;
    MBT_U8* image;
    MBT_U32 iWidth, iHeight, iLen;
	BrowserGifFrame_T GifInfo = {0};

	error = lodepng_decode32_file(&image, &iWidth, &iHeight, iSize, pu8Data);
	BROWER_DEBUG("error=%d,w=%d,h=%d,size=0x%x!,image=0x%x\n",error,iWidth,iHeight,iSize,image);
	if(error)
	{
		BROWER_DEBUG("pic decode error!\n");
	}
	else
	{
		iLen = iWidth*iHeight*4;
		GifInfo.i_gif_frame_buf_p = (MBT_U8*)MLMF_Malloc(iLen);
		memcpy(GifInfo.i_gif_frame_buf_p,image,iLen);
		GifInfo.i_gif_frame_delay_ten_ms = 2;
	}

	return GifInfo;
}

static ADPICBMP stAdvert_Pic;
BrowserGifFrame_T  Browser_Decode_Gif_Frame(BrowserGifPicture_T*  p_gif_picture_p, BROWSER_U32  p_gif_frame_index)
{
	BrowserGifFrame_T GifInfo = {0};
	MBT_BOOL ret;
	ADPICFRAM *pPicRam = NULL;

	MBT_U32 iSize = p_gif_picture_p->i_gif_picture_buffer_len;
    MBT_U8 *pu8Data = p_gif_picture_p->i_gif_picture_buffer_p;

	if(MM_NULL != stAdvert_Pic.framData)
    {
        Gif_FreeAdData(&stAdvert_Pic);
    }
	
    ret = Gif_ParseGifData(pu8Data, iSize,&stAdvert_Pic);
	BROWER_DEBUG("decode gif ret = %d\n",ret);

	pPicRam = stAdvert_Pic.framData;
	GifInfo.i_gif_frame_buf_p = (BROWSER_U8*)pPicRam->fBmpInfo.pBData;
	GifInfo.i_gif_frame_delay_ten_ms = pPicRam->uDelayTime;

	return GifInfo;
}


#endif

#endif

