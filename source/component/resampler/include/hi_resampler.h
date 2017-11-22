
/******************************************************************************
  Copyright (C), 2004-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
  File Name     : hi_unf_sound.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/1/22
  Last Modified :
  Description   : header file for audio and video output control
  Function List :
  History       :
  1.Date        :
  Author        : z67193
  Modification  : Created file
******************************************************************************/


#ifndef _HI_RESAMPLER_H_
#define _HI_RESAMPLER_H_

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

/**
 * \file
 * \brief Describes the information about the rate resample. CNcomment:提供重采样接口 CNend
 */   
    
/*************************** Structure Definition ****************************/
/** \addtogroup      SOUND */
/** @{ */  /** <!--  【SOUND】 */

typedef void *HResampler;

/** @} */  /** <!-- ==== Structure Definition end ==== */


/******************************* API declaration *****************************/
/** \addtogroup      SOUND */
/** @{ */  /** <!--  【SOUND】 */

/**
\brief Create resampler. CNcomment:创建重采样模块 CNend
\attention \n
none. CNcomment:无 CNend
\param[in] inrate  rate before process .CNcomment:原采样率 CNend
\param[in] outrate rate after  process .CNcomment:处理之后输出采样率 CNend
\param[in] chans   channeds after process .CNcomment:处理之后输出声道数 CNend
\retval ::the point of resampler handles. CNcomment: 重采样句柄指针 CNend
\see \n
none.CNcomment:无 CNend
*/ 
HResampler HI_Resampler_Create(int inrate, int outrate, int chans);

/**
\brief Create resampler. CNcomment:创建重采样模块 CNend
\attention \n
none. CNcomment:无 CNend
\param[in] inst  the point of resampler handles .CNcomment:重采样句柄指针  CNend
\param[in] inbuf the point of input buffer .CNcomment:输入buffer的指针 CNend
\param[in] insamps   the size of input sample .CNcomment:输入数据采样点的数量 CNend
\param[in] outbuf the point of output buffer .CNcomment:输出buffer的指针 CNend
\retval ::the size of output sample. CNcomment: 输出数据采样点的数量 CNend
\see \n
none.CNcomment:无 CNend
*/ 

int  HI_Resampler_Process(HResampler inst, short *inbuf, int insamps, short *outbuf);

/**
\brief Free resampler. CNcomment:销毁重采样模块 CNend
\attention \n
none. CNcomment:无 CNend
\param[in] inst  the point of resampler handles .CNcomment:重采样句柄指针  CNend
\retval ::None CNcomment: 无 CNend
\see \n
none.CNcomment:无 CNend
*/ 

void HI_Resampler_Free(HResampler inst);

/** @} */  /** <!-- ==== API declaration end ==== */

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */




#endif
