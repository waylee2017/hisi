
#include "mm_common.h"
#include "advert_api.h"
#include "bmp_src.h"
#include "advert_api.h"
#include "nvm_api.h"

#define ADVERT_USE_DECODE_MEM	0
#define ADVERT_STREAM_PID	1112

#define ADVERT_TS_MEM_SIZE	(1024*1024*1)
#define ADVERT_MEM_SIZE	(1024*1024*1)
#define ADVERT_PIC_DECODE_MEM_SIZE	(1024*1024*8)


//#define ADVERT_DEBUG(msg,...) MLMF_Print("[Ad_api Debug]<%s:%d>"msg,__FUNCTION__,__LINE__,##__VA_ARGS__)
#define ADVERT_DEBUG(msg,...)

static BROWSER_U8 *pu8Advert_Ts_Mem_Addr;
static BROWSER_U8 *pu8Advert_Mem_Addr;
#if ADVERT_USE_DECODE_MEM
static BROWSER_U8 *pu8Advert_Pic_Mem_Addr;
#endif


static MBT_BOOL advert_check_bootscreen_ad(void)
{
	BrowserGifPicture_T stBootGif;
	MBT_U32 iSize;
    MBT_U32 u32ImgID;
    MBT_U8 *pu8Data = MM_NULL;
	MMT_STB_ErrorCode_E stRet;

	//return MM_FALSE;
	stBootGif = Browser_Ad_GetGifInfo(BROWSER_AD_BOOT_SCREEN);
	if(stBootGif.i_gif_picture_buffer_p)
	{
		u32ImgID = MM_IMAGE_KCBPLSTARTUPGIF;

	    iSize = MMF_GetSpecifyImageSize(u32ImgID);
	    if(0 == iSize)
	    {
	    	ADVERT_DEBUG("iSize is 0\n");
	        return MM_FALSE;
	    }
	    
	    pu8Data = MLMF_Malloc(iSize);
	    if(MM_NULL == pu8Data)
	    {
	        ADVERT_DEBUG("MLMF_Malloc fail\n");
	        return MM_FALSE;
	    }
	    stRet = MMF_GetSpecifyImage(u32ImgID,pu8Data, &iSize);
	    if(MM_NO_ERROR !=  stRet)
	    {
	    	ADVERT_DEBUG("get gif fail\n");
	        MLMF_Free(pu8Data);
	        return MM_FALSE;
	    }

		if(iSize != stBootGif.i_gif_picture_buffer_len || memcmp(stBootGif.i_gif_picture_buffer_p,pu8Data,iSize))
		{
			MLMF_Free(pu8Data);
			stRet = MMF_SetSpecifyImage(u32ImgID,stBootGif.i_gif_picture_buffer_p,stBootGif.i_gif_picture_buffer_len);
			if(MM_NO_ERROR == stRet)
			{
				ADVERT_DEBUG("change boot gif succ!,len=%d\n",stBootGif.i_gif_picture_buffer_len);
				return MM_TRUE;
			}

			ADVERT_DEBUG("change boot gif fail!,len=%d\n",stBootGif.i_gif_picture_buffer_len);
			return MM_FALSE;
		}
		MLMF_Free(pu8Data);
		
		ADVERT_DEBUG("do not change boot ad,because they are same\n");
		return MM_FALSE;
	}

	ADVERT_DEBUG("do not get boot ad\n");
	return MM_FALSE;
}

static MBT_VOID advert_Process(MBT_VOID *pvParam)
{	
	MBT_BOOL ret = 0;
	while(1)
	{
		ret = Browser_Ad_VersionChange();
		//MLMF_Print("advert_Process ret=%d\n",ret);
		if(ret)
		{
			advert_check_bootscreen_ad();
		}
		MLMF_Task_Sleep(1000);
	}
}

BROWSER_BOOLEAN_T Advert_Start(void)
{	
	MET_Task_T taskid = 0;
	
	pu8Advert_Ts_Mem_Addr = MLMF_Malloc(ADVERT_TS_MEM_SIZE);
	if(NULL == pu8Advert_Ts_Mem_Addr)
	{
		ADVERT_DEBUG("Advert_Start Fail,advert download Mem malloc fail !!!\n");
		return MM_FALSE;
	}

	Browser_Ad_Ts_Mem_Init(pu8Advert_Ts_Mem_Addr,ADVERT_TS_MEM_SIZE);
	
	pu8Advert_Mem_Addr = MLMF_Malloc(ADVERT_MEM_SIZE);
	if(NULL == pu8Advert_Mem_Addr)
	{
		ADVERT_DEBUG("Advert_Start Fail,advert Mem malloc fail !!!\n");
		MLMF_Free(pu8Advert_Ts_Mem_Addr);
		return MM_FALSE;
	}
	Browser_Ad_Mem_Init(pu8Advert_Mem_Addr,ADVERT_MEM_SIZE);

	#if ADVERT_USE_DECODE_MEM
	pu8Advert_Pic_Mem_Addr = MLMF_Malloc(ADVERT_PIC_DECODE_MEM_SIZE);
	if(NULL == pu8Advert_Pic_Mem_Addr)
	{
		ADVERT_DEBUG("Advert_Start Fail,advert pic decode Mem malloc fail !!!\n");
		MLMF_Free(pu8Advert_Ts_Mem_Addr);
		MLMF_Free(pu8Advert_Mem_Addr);
		return MM_FALSE;
	}

	Browser_Ad_Picture_Decode_Mem_Init(pu8Advert_Pic_Mem_Addr,ADVERT_PIC_DECODE_MEM_SIZE);
	#endif
	
	Browser_Ad_Download(ADVERT_STREAM_PID,MM_FALSE);

	MLMF_Task_Create ( advert_Process,
                                    MM_NULL,
                                    8192,
                                    7,
                                    &taskid,
                                    "advert_task");
	
	ADVERT_DEBUG("Advert_Start OK!\n");
	
	return MM_TRUE;
}

BROWSER_BOOLEAN_T Advert_Stop(void)
{
	MBT_BOOL ret;
	ret = Browser_Ad_Term();

	MLMF_Free(pu8Advert_Ts_Mem_Addr);
	MLMF_Free(pu8Advert_Mem_Addr);
	#if ADVERT_USE_DECODE_MEM
	MLMF_Free(pu8Advert_Pic_Mem_Addr);
	#endif

	ADVERT_DEBUG("Advert_Stop OK!\n");
	return ret;
}


BROWSER_BOOLEAN_T  Advert_ShowAdBitmap(BROWSER_U16 x,BROWSER_U16 y,BROWSER_AD_POSITION_T  p_ad_position)
{
	BROWSER_AD_BITMAP_T stAdBitmap;
	BITMAPTRUECOLOR stDisplayBitmap;
	BROWSER_U16 pic_x = 0;
	BROWSER_U16 pic_y = 0;
	BROWSER_U16 pic_h = 0;
	BROWSER_U16 pic_w = 0;
	
	stAdBitmap = Browser_Ad_GetBitmap(p_ad_position);

	if(NULL == stAdBitmap.i_bmp_data_p)
	{
		ADVERT_DEBUG("No Advert bitmap,pos=%d\n",p_ad_position);
		return MM_FALSE;
	}
	memset(&stDisplayBitmap,0,sizeof(BITMAPTRUECOLOR));

	stDisplayBitmap.bColorType = MM_OSD_COLOR_MODE_ARGB8888;
	stDisplayBitmap.bWidth = stAdBitmap.i_bmp_width;
	stDisplayBitmap.bHeight = stAdBitmap.i_bmp_height;
	stDisplayBitmap.pBData = stAdBitmap.i_bmp_data_p;

	switch(p_ad_position)
	{
		case BROWSER_AD_BOOT_SCREEN:
			pic_x = ADVERT_PIC_BOOT_POS_X;
			pic_y = ADVERT_PIC_BOOT_POS_Y;
			pic_w = ADVERT_PIC_BOOT_W;
			pic_h = ADVERT_PIC_BOOT_H;
			break;

		case BROWSER_AD_BANNER:
			pic_x = ADVERT_PIC_BANNER_POS_X;
			pic_y = ADVERT_PIC_BANNER_POS_Y;
			pic_w = ADVERT_PIC_BANNER_W;
			pic_h = ADVERT_PIC_BANNER_H;	
			WGUIF_DrawFilledRectangle(pic_x-1, pic_y-1, pic_w + 2, pic_h + 2, 0xfffff111); 
			break;

		case BROWSER_AD_CHANNEL_LIST:
			pic_x = ADVERT_PIC_CHANNEL_POS_X;
			pic_y = ADVERT_PIC_CHANNEL_POS_Y;
			pic_w = ADVERT_PIC_CHANNEL_W;
			pic_h = ADVERT_PIC_CHANNEL_H;	
			WGUIF_DrawFilledRectangle(pic_x-1, pic_y-1, pic_w + 2, pic_h + 2, 0xfffff111); 
			break;

		case BROWSER_AD_VOL_BAR:
			pic_x = ADVERT_PIC_VOL_POS_X;
			pic_y = ADVERT_PIC_VOL_POS_Y;
			pic_w = ADVERT_PIC_VOL_W;
			pic_h = ADVERT_PIC_VOL_H;
			break;

		case BROWSER_AD_EPG:
			pic_x = ADVERT_PIC_EPG_POS_X;
			pic_y = ADVERT_PIC_EPG_POS_Y;
			pic_w = ADVERT_PIC_EPG_W;
			pic_h = ADVERT_PIC_EPG_H;
			WGUIF_DrawFilledRectangle(pic_x-2, pic_y-2, pic_w + 4, pic_h + 4, 0xfffff111); 
			break;

		case BROWSER_AD_NONE:
		default:
			break;
	}

	ADVERT_DEBUG("Show Advert bitmap,pos=%d\n",p_ad_position);
	//pic_w = stDisplayBitmap.bWidth;
	//pic_h = stDisplayBitmap.bHeight;
	WGUIF_DisplayReginTrueColorBmp(pic_x,pic_y,0,0,pic_w,pic_h,&stDisplayBitmap,MM_FALSE);
	
	
	return MM_TRUE;
}

BROWSER_BOOLEAN_T  Advert_CleanAdvert(BROWSER_U16 x,BROWSER_U16 y,BROWSER_AD_POSITION_T  p_ad_position)
{
	BROWSER_U16 pic_x = 0;
	BROWSER_U16 pic_y = 0;
	BROWSER_U16 pic_h = 0;
	BROWSER_U16 pic_w = 0;

	switch(p_ad_position)
	{
		case BROWSER_AD_BOOT_SCREEN:
			pic_x = ADVERT_PIC_BOOT_POS_X;
			pic_y = ADVERT_PIC_BOOT_POS_Y;
			pic_w = ADVERT_PIC_BOOT_W;
			pic_h = ADVERT_PIC_BOOT_H;
			break;

		case BROWSER_AD_BANNER:
			pic_x = ADVERT_PIC_BANNER_POS_X - 1;
			pic_y = ADVERT_PIC_BANNER_POS_Y - 1;
			pic_w = ADVERT_PIC_BANNER_W + 2;
			pic_h = ADVERT_PIC_BANNER_H + 2;
			break;

		case BROWSER_AD_CHANNEL_LIST:
			pic_x = ADVERT_PIC_CHANNEL_POS_X - 1;
			pic_y = ADVERT_PIC_CHANNEL_POS_Y - 1;
			pic_w = ADVERT_PIC_CHANNEL_W + 2;
			pic_h = ADVERT_PIC_CHANNEL_H + 2;
			break;

		case BROWSER_AD_VOL_BAR:
			pic_x = ADVERT_PIC_VOL_POS_X;
			pic_y = ADVERT_PIC_VOL_POS_Y;
			pic_w = ADVERT_PIC_VOL_W;
			pic_h = ADVERT_PIC_VOL_H;
			break;

		case BROWSER_AD_EPG:
			pic_x = ADVERT_PIC_EPG_POS_X - 2;
			pic_y = ADVERT_PIC_EPG_POS_Y - 2 ;
			pic_w = ADVERT_PIC_EPG_W + 4;
			pic_h = ADVERT_PIC_EPG_H + 4;
			break;

		case BROWSER_AD_NONE:
		default:
			break;
	}

	WGUIF_ClsScreen(pic_x,pic_y ,pic_w ,pic_h );

	return MM_TRUE;
}


