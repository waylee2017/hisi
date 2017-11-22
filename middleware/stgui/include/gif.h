/*=====================================================================================
文件名	:gif.h
版本号	:V1.0
注意		:由于不同软硬件环境导致内存分区不同，请仔细选择Gif解码后的数据保存
			 分区和用作解码过程中缓冲区的内存分区。
			 例:选择解码后位图存放在SystemPartition中，
			 	选择用作中间缓冲区的内存分区为NcachePartition中，
=====================================================================================*/

#ifndef _GIF_H_
#define _GIF_H_

#include "ui_api.h"
#include "wgui.h"

enum 
{
    BUSINESS_AD,
    FLAG_AD,
    MANAGER_AD,
    STARTUPBACKGROUND,
};

typedef struct _fram_
{
    MBT_U16 uXoffset;
    MBT_U16 uYoffset;
    MBT_U16 uDelayTime;
    BITMAPTRUECOLOR  fBmpInfo;
    MBT_VOID *pNextFram;
}ADPICFRAM;


typedef struct _ad_pic_
{
    MBT_U8 valid;
    MBT_U8 fileType;
    MBT_U8 framNum;
    MBT_U8 reserved;
    ADPICFRAM *framData;    
}ADPICBMP;





typedef enum _advertisement_pic_type_
{
	AD_BUSINESS,
	AD_FLAG,
	AD_MANAGER,
	AD_STARTUP,
	AD_SMALL_VIDEO
}ADVERTISEMENT_PIC_TYPE;



//外部接口:

extern MBT_VOID gif_DecodGif(ADPICBMP *pPicData,MBT_VOID *pSrcData,MBT_S32 iSrcDataSize,MBT_S32 iFiletype);
extern MBT_VOID Gif_FreeAdData(ADPICBMP *pPicData);
extern MBT_VOID Gif_InitAdverVersion(MBT_VOID);
extern MBT_VOID Gif_Open(MBT_VOID);
extern MBT_VOID Gif_Close(MBT_VOID);
extern MBT_S32 Gif_WaitTime(MBT_VOID);

extern MBT_S32 Gif_Show(MBT_S32 iStartX,MBT_S32 iStartY,MBT_S32 iWidth,MBT_S32 iHeight,MBT_S32 iFileType,MBT_BOOL bFirst);

extern MBT_VOID Gif_DecodeSaveNew(MBT_VOID *me_Data,MBT_U32 iDataType,MBT_U32 iDataSize,MBT_U32 uVersion);

extern MBT_BOOL Gif_ParseGifData(MBT_U8* data, MBT_S32 size, ADPICBMP* gif);

extern MBT_VOID Gif_DeleteGifData(ADPICBMP* gif);

extern MBT_BOOL Gif_CommonShow(MBT_S32 iStartX,MBT_S32 iStartY,MBT_S32 iWidth,MBT_S32 iHeight,ADPICBMP* gif,MBT_S32 framcount,MBT_S32 *delaytime);


#endif


