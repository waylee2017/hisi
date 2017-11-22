/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
  File Name	: hi_ani_pic.h
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: 
    Modification	: Created file

*******************************************************************************/
#ifndef __HI_ANI_PIC_H__
#define __HI_ANI_PIC_H__

#include "hi_type.h"
#include "hi_go.h"
#include "hi_drv_mmz.h"
#include "hi_drv_mce.h"

#define ANI_ERROR(Errno,fmt,args... )\
 do { \
            HI_ERR_MCE("+++++++	ret 0x%x: "fmt,  Errno,##args);\
    } while (0)
    
/*play attribute*//* CNcomment: 播放属性*/
typedef enum
{
    HI_ANI_PIC_PLAYMODE_LOOP,  			/*time after time*//* CNcomment: 循环播放*/
    HI_ANI_PIC_PLAYMODE_ONE,   			/*once*//* CNcomment: 循环一次*/
    HI_ANI_PIC_PLAYMODE_BYTIME,			/*loop by time*//* CNcomment: 以时间作为播放控制模式*/
    HI_ANI_PIC_PLAYMODE_BUTT
}HI_ANI_PIC_PLAYMODE;

/*common attribute of player*//* CNcomment: 播放器的公共属性*/
typedef struct
{
    HI_U32 		   uCount;         			/*number of frame that need play*//* CNcomment: 播放的帧数*/
    HI_U32                     u32Xpos;        			/*X coordinate of palette*//* CNcomment: 显示画板上的X坐标*/
    HI_U32                    u32Ypos;        		 	/*Y coordinate of palette*//* CNcomment: 显示画板上的Y坐标*/
    HI_U32                    u32Width;        			/*width coordinate of palette*//* CNcomment:  显示画板上的width */
    HI_U32                  	  u32Height;        			/*height coordinate of palette*//* CNcomment: 显示画板上的height */
    HI_U32                     BGColor;         			/*background of player*//* CNcomment:  播放器的背景色*/ 
    HI_ANI_PIC_PLAYMODE     PlayMode;   		/*the mode for cartoon*//* CNcomment: 动画播放模式*/
    HI_U32 		   uLoopCount; 			/*times for play that only effect the loop mode*//* CNcomment: 需要循环的次数，只对LOOP模式有效，-1表示直到用户调用stop为止*/
    HI_U32 		   uPlaySecond;			/*time for paly that only effect the HI_ANI_PIC_PLAYMODE_BYTIME mode*//* CNcomment:  播放多少秒钟，只对HI_ANI_PIC_PLAYMODE_BYTIME模式有效*/
}HI_ANI_PIC_COMMINFO;


/*the attribute of signal picture*//* CNcomment:  单张图片的属性*/
typedef struct
{
	HI_U32          u32FileAddr;	/*the physics address of picture*//* CNcomment:  图片数据物理地址*/
	HI_U32          u32FileLen;	/*length of picture*//* CNcomment:  图片长度*/
	HI_U32          u32Xpos;    	/*X position to show*//* CNcomment:  显示位置*/
	HI_U32          u32Ypos;	     	/*Y position to show*//* CNcomment:  显示位置*/
	HI_U32          u32Width;		/*Width of show*//* CNcomment: 显示大小*/
	HI_U32          u32Height; 	/*Height of show*//* CNcomment:  显示大小*/
	HI_U32          u32DelayTime;	/*distance for play*//* CNcomment:  图片播放间隔*/
}HI_ANI_PIC_PICTURE;

/*init the higo and some variable*//* CNcomment:初始化higo以及一些变量*/
HI_S32 HI_ANI_PIC_Init(MMZ_BUFFER_S *pBuffer,HI_MCE_PALY_INFO_S *pPlayInfo,HI_U32 u32LayerID);

/*undefine the higo and reset some variable*//* CNcomment:去初始化higo以及复位一些变量*/
HI_S32 HI_ANI_PIC_Deinit(HI_VOID);

/*read the common information from flash*//* CNcomment:从flash读取动画的公共信息*/
HI_S32 HI_ANI_PIC_GetCommInfo(HI_U32 uLayerID , HI_ANI_PIC_COMMINFO *pComInfo);

/*read the data information from flash *//* CNcomment:从flash读取动画的数据信息*/
HI_S32 HI_ANI_PIC_GetPicInfo(HI_U32 uLayerID,HI_ANI_PIC_PICTURE *pPicInfo);

/*play logo*//* CNcomment:启动播放开机画面( 启动解码线程)*/
HI_S32 HI_ANI_PIC_Start(HI_U32 uLayerID, HI_ANI_PIC_COMMINFO *pComInfo, HI_ANI_PIC_PICTURE *pPicInfo);

/*stop logo*//* CNcomment:停止播放开机画面*/
HI_S32 HI_ANI_PIC_Stop(HI_U32 uLayerID);

/* get  stop ani state flag */
HI_S32 HI_ANI_PIC_IsFinish(HI_U32 uLayerID, HI_BOOL *bFinished);

/* set  extern stop ani flag */
HI_S32 HI_ANI_PIC_SetExtStopAni(HI_VOID);

/* get animotion loop play count*/
HI_U32 HI_ANI_PIC_GetPlayCount(HI_VOID);

#endif
