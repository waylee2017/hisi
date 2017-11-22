/*
 * mm_image.h
 * 
 * Copyright (c) 2005-2006 STMicroelectronics Limited. All right reserved.
 *
 * Header file for imageloader.c.
 */
#ifndef __MLM_IMAGE_H__
#define __MLM_IMAGE_H__


#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

// logo in flash address

typedef struct
{
    MBT_U32 manufacturerID   :  8;
    MBT_U32 HWID                    :  8;
    MBT_U32 reserved              :  8;
    MBT_U32 providerID           :  8;
    MBT_U32 produceYear        :  8;                         
    MBT_U32 produceWeek       :  8;        
    MBT_U32 reserved1              :  8;                         
    MBT_U32 reserved2              :  8;            
    MBT_U32 inerSeral              : 32;											
}OUTSERIAL;

typedef struct
{
    MBT_U32 u16EreaH            :  8;
    MBT_U32 u16EreaL           :  8;
    MBT_U32 u16VersionH      :  8;    
    MBT_U32 u16VersionL      :  8;    
    MBT_U32 ucFlash              :  4;
    MBT_U32 ucDDR                :  4;
    MBT_U32 ucAudio              :  2;        
    MBT_U32 ucCPU                 :  2;                         
    MBT_U32 ucTuner              :  4;
    MBT_U32 uCAType              : 4;											
    MBT_U32 ucFP                   :  2;            
    MBT_U32 ucTcp                 :  2;                         
    MBT_U32 uReservedUpdateInfo              : 4;											
    MBT_U32 ucFactoryID              : 4;											
}DVB_HWINFO;

typedef enum _m_imagetype_e
{
    MM_IMAGE_LOADER = 0,
    MM_IMAGE_CODE,
    MM_IMAGE_APPVERSION,
    MM_IMAGE_FONTLIB,
    MM_IMAGE_BMPDATA,
    MM_IMAGE_AUDIOLOGO,
    MM_IMAGE_KCBPLLOGO,
    MM_IMAGE_KCBPLSTARTUPGIF,
    MM_IMAGE_WATERLOGO,
} MMT_ImageType_E;

extern MMT_STB_ErrorCode_E MLMF_IMG_GetHightAppVer(MBT_U16 *pu16Version);

extern MMT_STB_ErrorCode_E MLMF_IMG_GetStbSerial(OUTSERIAL *ptrSerail);

extern MMT_STB_ErrorCode_E MLMF_IMG_GetStbMac(MBT_U8 *ptru8Mac);

extern MMT_STB_ErrorCode_E MLMF_IMG_GetStbHwInfo(DVB_HWINFO *ptrHwInfo);

extern MMT_STB_ErrorCode_E MLMF_IMG_GetStbLoaderVersion(MBT_U8 *pu8Version);

extern MMT_STB_ErrorCode_E MLMF_IMG_GetSpecifyImage(MMT_ImageType_E stImageType,MBT_U8 *pu8DestBuffer,MBT_U32 *pu32DestBufSize);

extern MMT_STB_ErrorCode_E MLMF_IMG_SetSpecifyImage(MMT_ImageType_E stImageType,MBT_U8 *pu8SrcBuffer,MBT_U32 u32SrcBufSize);

extern MBT_S32 MLMF_IMG_GetSpecifyImageSize(MMT_ImageType_E stImageType);

extern MBT_S32 MLMF_IMG_GetAppResEnd(void);

//extern MMT_STB_ErrorCode_E MoveLogo2FixAddr(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* __MLM_IMAGE_H__ */
