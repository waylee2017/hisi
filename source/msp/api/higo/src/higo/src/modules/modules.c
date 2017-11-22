/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon. Co., Ltd.

******************************************************************************
File Name        : modules.c
Version            : Initial Draft
Author            :
Created            : 2012/11/05
Function List     :


History           :
Date                Author                Modification
2012/11/05           y00181162              Created file
******************************************************************************/




/*********************************add include here******************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <pthread.h>
#include <dlfcn.h>

#include "modules.h"
#include "hi_go_errno.h"
#include "higo_common.h"
#include "higo_common.h"
/***************************** Macro Definition ******************************/


#define  MODULES_DEFAULT_DIR     "/usr/lib/higo-adp"

/**
 **解码
 **/
#define  IMAG_HEAD_MAX_LENGTH        10       /** 解码器读文件头的长度 **/
#define  DECODER_COMPONENT_NUM       10       /** 解码类型个数         **/
#define  MODULES_DIR_MAX_LENGTH      15       /** 底下子目录的最大长度 **/
#define  MODULES_DECODER_DIR         "/decoder"
#define  MODULES_ENCODER_DIR         "/encoder"
#define  MODULES_FONT_DIR            "/font"

/** 每个解码器带有的判断解码类型的函数 **/
#define  HIGO_ADP_DETECTDECTYPE      "HIGO_ADP_DetectDecType"


/**
 **编码
 **/
#define  ENCODER_COMPONENT_NUM       10       /** 编码类型个数         **/
/** 每个编码器带有的判断编码类型的函数 **/
#define  HIGO_ADP_DETECTENCTYPE      "HIGO_ADP_DetectEncType"


/**
 **字体
 **/
#define  FONT_COMPONENT_NUM       10       /** 字体类型个数         **/
/** 每个字体器带有的判断字体类型的函数 **/
#define  HIGO_ADP_DETECTFONTTYPE      "HIGO_ADP_DetectFontType"

#ifndef HI_ADVCA_FUNCTION_RELEASE
#define HIGO_Fprintf fprintf
#else
#define HIGO_Fprintf(fmt,args...)
#endif
#if 0
#define MODULESCHECK(X...)                                                     \
{                                                                              \
     if (NULL==X) {                                                            \
       HIGO_Fprintf(stderr, "%s : %s <%d>:\n\t", __FILE__,__FUNCTION__, __LINE__ ); \
       return HI_FAILURE;                                                      \
     }                                                                         \
     else                                                                      \
     {                                                                         \
        return HI_SUCCESS;                                                     \
     }                                                                         \
}
#else
#define MODULESCHECK(X...)                                                     \
{                                                                              \
     if (NULL==X) {                                                            \
       HIGO_Fprintf(stderr, "%s : %s <%d>:\n\t", __FILE__,__FUNCTION__, __LINE__ ); \
       return HI_FAILURE;                                                      \
     }                                                                         \
}
#endif

//#define _HIGO_DEBUG


/******************** to see which include file we want to use***************/



/*************************** Structure Definition ****************************/
typedef enum tagDlopenType_E
{

     DLOPEN_TYPE_DECODER  = 0,       /**< 打开解码器目录   */
     DLOPEN_TYPE_ENCODER  = 1,       /**< 打开编码器目录   */
     DLOPEN_TYPE_FONT     = 2,       /**< 打开字体库目录   */
     DLOPEN_TYPE_BUTT

} DLOPEN_TYPE_E;


typedef struct tagHigoAdpModulesCtx_S
{
      HI_CHAR* pmodule_dir;
      HI_VOID* pDecHandle[DECODER_COMPONENT_NUM];
      HI_VOID* pEncHandle[ENCODER_COMPONENT_NUM];
      HI_VOID* pFontHandle[FONT_COMPONENT_NUM];
      DECODER_STREAM_INFO_S  sDecStreamInfo;

}HIGOADP_MODULES_CTX_S,*HIGOADP_MODULES_CTX_S_PTR;



/********************** Global Variable declaration **************************/

static pthread_mutex_t  modules_lock = PTHREAD_MUTEX_INITIALIZER;

static HIGOADP_MODULES_CTX_S gs_sHigoAdpModulesCtx = {0};

static HI_S32  s_InitModulesCount = 0;

/******************************* API forward declarations *******************/


/******************************* API realization *****************************/


/**************************** realize modules.h **************************/


/*=============================================================================
                         decoder

 ==============================================================================**/

/*****************************************************************************
* func       : higo_modules_explore_dec_directory
* description: dlsym dec lib so
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_S32 get_dec_func_ptr(DEC_FUNC* pDecFunc[DECODER_FUNCS_NUM],\
                                       const HI_S32 s32NeedDecHandleNum)
{

          HI_CHAR *pERR = NULL;
          HI_S32 s32Loop = 0;
          HI_CHAR *DecFunMap[] =
          {
                "HIGO_ADP_CreateDecoder",        /* 0 */
                "HIGO_ADP_DestroyDecoder",       /* 1 */
                "HIGO_ADP_ResetDecoder",         /* 2 */
                "HIGO_ADP_DecCommInfo",          /* 3 */
                "HIGO_ADP_DecImgInfo",           /* 4 */
                "HIGO_ADP_DecImgData",           /* 5 */
                "HIGO_ADP_DecExtendData",        /* 6 */
                "HIGO_ADP_ReleaseDecExtendData", /* 7 */
                "HIGO_ADP_WriteStream",          /* 8 */
                "HIGO_ADP_GetActualSize",        /* 9 */
                "HIGO_ADP_SetLeaveMemSize"       /* 10 */
          };

          /**
           **先判断之前有没有错误，要是没有错误则反回NULL
           **/
          pERR = (HI_CHAR*)dlerror();
          if(NULL!=pERR)
          {
             return HI_FAILURE;
          }

          for(s32Loop = 0; s32Loop<DECODER_FUNCS_NUM;s32Loop++)
          {

                  pDecFunc[s32Loop] = \
                     dlsym(gs_sHigoAdpModulesCtx.pDecHandle[s32NeedDecHandleNum], \
                            DecFunMap[s32Loop]);
                 if (!pDecFunc[s32Loop])
                     return HI_FAILURE;

          }

          return HI_SUCCESS;


}



/*****************************************************************************
* func       : detect_decoder
* description: detect the decoder
* param[in]  :
* param[in]  :
* retval     : *ps32DecHandleNum 将要使用的解码器
* retval     :
* others:     :
*****************************************************************************/
static HI_S32 detect_decoder(const DECODER_STREAM_INFO_S *psDecStreamInfo,\
                                     HI_S32 *ps32DecHandleNum,                   \
                                     DECODER_IMGTYPE_E* pImgType)
{


        HI_S32 s32Ret = HI_SUCCESS;
        HI_S32 s32Loop = 0;

        HI_S32 (*pDecFunc)(HI_VOID* p, ...);

        HI_CHAR HeadInfo[IMAG_HEAD_MAX_LENGTH] = {0};

        *pImgType = DECODER_IMGTPYE_BUTT; /** 先初始化为无解码类型 **/


        /** 分析输入源，获取头部信息*/
        switch (psDecStreamInfo->SrcType)
        {

            case DECODER_SRCTYPE_FILE:
            {

                    FILE *pFile;
                    HI_U32 Length;
                    if (NULL == psDecStreamInfo->SrcInfo.pFileName)
                    {
                        return HIGO_ERR_NULLPTR;
                    }
                    pFile = fopen((const HI_CHAR *)psDecStreamInfo->SrcInfo.pFileName,
                                       (const HI_CHAR *)"rb");
                    if (NULL == pFile)
                    {
                        return HIGO_ERR_INVFILE;
                    }

                    Length = fread(HeadInfo, 1, IMAG_HEAD_MAX_LENGTH, pFile);
                    if (IMAG_HEAD_MAX_LENGTH != Length)
                    {
                        fclose(pFile);
                        return HI_FAILURE;
                    }

                    fclose(pFile);
                    break;

            }
            case DECODER_SRCTYPE_MEM:
            {

                    if (NULL == psDecStreamInfo->SrcInfo.MemInfo.pAddr)
                    {
                        return HIGO_ERR_NULLPTR;
                    }

                    memcpy(HeadInfo, psDecStreamInfo->SrcInfo.MemInfo.pAddr, IMAG_HEAD_MAX_LENGTH);
                    break;

            }
            case DECODER_SRCTYPE_STREAM:
                      /**
                       ** 流式只有在启动解码的时候才确认码流类型，目前只有JPEG支持流式
                       ** 所以直接返回jpeg类型
                       **/
                    if (HI_NULL_PTR == psDecStreamInfo->SrcInfo.pWriteCB)
                    {
                        return HIGO_ERR_NULLPTR;
                    }

                   *pImgType = DECODER_IMGTYPE_JPEG;
                    break;
            default:
                  return HIGO_ERR_INVSRCTYPE;

        }

        /**======================================================================
                    choose which decoder
        ========================================================================**/
        for(s32Loop = 0; s32Loop < DECODER_COMPONENT_NUM; s32Loop++)
        {/** 遍历所有解码器，寻找需求解码器 **/
            if(NULL!=gs_sHigoAdpModulesCtx.pDecHandle[s32Loop])
            {

                pDecFunc = NULL;
                pDecFunc = dlsym(gs_sHigoAdpModulesCtx.pDecHandle[s32Loop], \
                                   HIGO_ADP_DETECTDECTYPE);

                MODULESCHECK(pDecFunc);

                s32Ret = pDecFunc(HeadInfo,pImgType);
                if(HI_SUCCESS==s32Ret)
                {
                    *ps32DecHandleNum = s32Loop;
                    /**
                     **假如这里跑png图片切是跑了jpeg流程，请看十六进制文件进行分析
                     **/
                    return HI_SUCCESS;
                }
            }

        }

        /** 退出for循环，说明解码器没有找到 **/
        return HIGO_ERR_INVIMAGETYPE;


}



/*****************************************************************************
* func       : higo_adp_decoder_lookup
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 higo_adp_decoder_lookup(\
                               const DECODER_STREAM_INFO_S *psDecStreamInfo, \
                               DEC_FUNC* pDecFunc[DECODER_FUNCS_NUM],       \
                               DECODER_IMGTYPE_E* pImgType)
{


       HI_S32 s32Ret = HI_SUCCESS;
       HI_S32 s32NeedDecHandleNum = 0;

       if(NULL == psDecStreamInfo || NULL == pDecFunc)
       {
             return HI_FAILURE;
       }

       (HI_VOID)pthread_mutex_lock(&modules_lock);

       s32Ret = detect_decoder(psDecStreamInfo,&s32NeedDecHandleNum,pImgType);
       if(HI_SUCCESS!=s32Ret)
       {
            pthread_mutex_unlock(&modules_lock);
            return s32Ret;
       }

       s32Ret = get_dec_func_ptr(pDecFunc,s32NeedDecHandleNum);
       if(HI_SUCCESS!=s32Ret)
       {
           pthread_mutex_unlock(&modules_lock);
           return HI_FAILURE;
       }

       pthread_mutex_unlock(&modules_lock);

       return HI_SUCCESS;

}



/*=============================================================================
                         encoder

 ==============================================================================**/


/*****************************************************************************
* func       : get_enc_func_ptr
* description: dlsym enc lib so
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_S32 get_enc_func_ptr(ENC_FUNC* pEncFunc[ENCODER_FUNCS_NUM],\
                                       const HI_S32 s32NeedEncHandleNum)
{


          HI_CHAR *pERR = NULL;
          HI_S32 s32Loop = 0;
          HI_CHAR *EncFunMap[] =
          {
                "HIGO_ADP_CreateEncoder",         /* 0 */
                "HIGO_ADP_EncodeImg",             /* 1 */
                "HIGO_ADP_DestroyEncoder"         /* 2 */
          };

          /**
           **先判断之前有没有错误，要是没有错误则反回NULL
           **/
          pERR = (HI_CHAR*)dlerror();
          if(NULL!=pERR)
          {
             return HI_FAILURE;
          }

          for(s32Loop = 0; s32Loop<ENCODER_FUNCS_NUM;s32Loop++)
          {

                  pEncFunc[s32Loop] = \
                     dlsym(gs_sHigoAdpModulesCtx.pEncHandle[s32NeedEncHandleNum], \
                            EncFunMap[s32Loop]);
                 if (!pEncFunc[s32Loop])
                     return HI_FAILURE;

          }


          return HI_SUCCESS;


}


/*****************************************************************************
* func       : decect_encoder
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_S32 decect_encoder(const ENCODER_IMGTYPE_E eEncImgType,\
                                     HI_S32 *ps32EncHandleNum)
{


        HI_S32 s32Ret = HI_SUCCESS;
        HI_S32 s32Loop = 0;

        HI_S32 (*pEncFunc)(ENCODER_IMGTYPE_E p, ...);

        /**======================================================================
                    choose which encoder
        ========================================================================**/
        for(s32Loop = 0; s32Loop < ENCODER_COMPONENT_NUM; s32Loop++)
        {/** 遍历所有编码器，寻找需求编码器 **/
            if(NULL!=gs_sHigoAdpModulesCtx.pEncHandle[s32Loop])
            {
                /**
                 ** 这里要注意，假如有适配库就要有实现，否则不能有适配库，因为这里
                 ** 会找不到符号，也就是假如不支持某种功能，就不能编译该库
                 **/
                pEncFunc = dlsym(gs_sHigoAdpModulesCtx.pEncHandle[s32Loop], \
                                   HIGO_ADP_DETECTENCTYPE);

                MODULESCHECK(pEncFunc);

                s32Ret = pEncFunc(eEncImgType);
                if(HI_SUCCESS==s32Ret)
                {
                    *ps32EncHandleNum = s32Loop;
                    return HI_SUCCESS;
                }
            }

        }

        /** 退出for循环，说明编码没有找到 **/
        return HI_FAILURE;


}
/*****************************************************************************
* func       : higo_adp_encoder_lookup
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 higo_adp_encoder_lookup(\
                               const ENCODER_IMGTYPE_E eEncImgType, \
                               ENC_FUNC* pEncFunc[ENCODER_FUNCS_NUM])
{

       HI_S32 s32Ret = HI_SUCCESS;
       HI_S32 s32NeedEncHandleNum = 0;

       if(NULL == pEncFunc)
       {
             return HI_FAILURE;
       }

       (HI_VOID)pthread_mutex_lock(&modules_lock);

       s32Ret = decect_encoder(eEncImgType,&s32NeedEncHandleNum);
       if(HI_SUCCESS!=s32Ret)
       {
            pthread_mutex_unlock(&modules_lock);
            return HI_FAILURE;
       }

       s32Ret = get_enc_func_ptr(pEncFunc,s32NeedEncHandleNum);
       if(HI_SUCCESS!=s32Ret)
       {
           pthread_mutex_unlock(&modules_lock);
           return HI_FAILURE;
       }

       pthread_mutex_unlock(&modules_lock);

       return HI_SUCCESS;


}



/*=============================================================================
                         font

 ==============================================================================**/
static HI_S32 get_font_func_ptr(FONT_FUNC* pFontFunc[FONT_FUNCS_NUM], const HI_S32 s32NeedFontHandleNum)
{

     HI_CHAR *pERR = NULL;
     HI_S32 s32Loop = 0;
     HI_CHAR *FontFunMap[] ={
                               "HIGO_ADP_FontInit",
                               "HIGO_ADP_FontDInit",
                               "HIGO_ADP_CreateInstance",
                               "HIGO_ADP_DestroyInstance",
                               "HIGO_ADP_GetGlyphInfo",
                               "HIGO_ADP_GetCharIndex",
                               "HIGO_ADP_GetKerning",
                               "HIGO_ADP_HarfbuzzFont",
                               "HIGO_ADP_HarfbuzzFace",
                            };


     pERR = (HI_CHAR*)dlerror();
     if (NULL != pERR){
       #ifdef _HIGO_DEBUG
            HIGO_Printf("\n=================================================\n");
            HIGO_Printf("func %s line %d pERR = %s\n",__FUNCTION__,__LINE__,pERR);
            HIGO_Printf("=================================================\n");
        #endif
        return HI_FAILURE;
     }

     for (s32Loop = 0; s32Loop < FONT_FUNCS_NUM; s32Loop++){
         pFontFunc[s32Loop] = dlsym(gs_sHigoAdpModulesCtx.pFontHandle[s32NeedFontHandleNum],FontFunMap[s32Loop]);
         pERR = (HI_CHAR*)dlerror();
         #ifdef _HIGO_DEBUG
            HIGO_Printf("\n=================================================\n");
            HIGO_Printf("func %s line %d pERR = %s\n",__FUNCTION__,__LINE__,pERR);
            HIGO_Printf("=================================================\n");
         #endif
         if (NULL == pFontFunc[s32Loop]){
             return HI_FAILURE;
         }
     }

     return HI_SUCCESS;
}


/*****************************************************************************
* func       : decect_font
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_S32 decect_font(const HI_CHAR* pFileName,   \
                                const HI_U32 u32FileSize,  \
                                HI_S32 *ps32FontHandleNum)
{


        HI_S32 s32Ret = HI_SUCCESS;
        HI_S32 s32Loop = 0;

        HI_S32 (*pFontFunc)(const HI_CHAR* p,HI_S32 q, ...);

         /**
          **暂时只有freetyp2 and bitmap两种
          **/
        /**======================================================================
                    choose which font
        ========================================================================**/
        for(s32Loop = 0; s32Loop < FONT_COMPONENT_NUM; s32Loop++)
        {/** 遍历所有字体库，寻找需求字体 **/
            if(NULL!=gs_sHigoAdpModulesCtx.pFontHandle[s32Loop])
            {
                pFontFunc = dlsym(gs_sHigoAdpModulesCtx.pFontHandle[s32Loop], \
                                   HIGO_ADP_DETECTFONTTYPE);

                MODULESCHECK(pFontFunc);

                s32Ret = pFontFunc(pFileName,u32FileSize);
                if(HI_SUCCESS==s32Ret)
                {
                    *ps32FontHandleNum = s32Loop;
                    return HI_SUCCESS;
                }
            }

        }

        /** 退出for循环，说明字体没有找到 **/
        return HI_FAILURE;


}
/*****************************************************************************
* func       : higo_adp_font_lookup
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 higo_adp_font_lookup(const HI_CHAR* pFileName, \
                                        const HI_U32 u32FileSize, \
                                        FONT_FUNC* pFontFunc[FONT_FUNCS_NUM])
{


       HI_S32 s32Ret = HI_SUCCESS;
       HI_S32 s32NeedFontHandleNum = 0;

       if(NULL == pFontFunc)
       {
             return HI_FAILURE;
       }
       if( (NULL == pFileName) || (0 == u32FileSize))
       {
            return HI_FAILURE;
       }

       (HI_VOID)pthread_mutex_lock(&modules_lock);

       s32Ret = decect_font(pFileName,u32FileSize,&s32NeedFontHandleNum);
       if(HI_SUCCESS!=s32Ret)
       {
            pthread_mutex_unlock(&modules_lock);
            return HI_FAILURE;
       }

       s32Ret = get_font_func_ptr(pFontFunc,s32NeedFontHandleNum);
       if(HI_SUCCESS!=s32Ret)
       {
           pthread_mutex_unlock(&modules_lock);
           return HI_FAILURE;
       }


       pthread_mutex_unlock(&modules_lock);

       return HI_SUCCESS;


}



/**==========================================================================
      初始化的时候参数设置
===========================================================================**/
/*****************************************************************************
* func       : get_so_name
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_S32 dlopen_so_name(const HI_CHAR* pDir, \
                                       const DIR *dir,      \
                                       const DLOPEN_TYPE_E eDlopenType)
{


            HI_CHAR *pPos         = NULL;
         struct dirent *ptr    = NULL;
         HI_U32 u32Length      = 0;
         HI_CHAR *pFileNameDir = NULL;

         #ifdef _HIGO_DEBUG
         HI_CHAR* pDlopenRetrun = NULL;
         #endif

         HI_S32 s32DecoderNum  = 0;
         HI_S32 s32EncoderNum  = 0;
         HI_S32 s32FontNum     = 0;

         u32Length = strlen(pDir) + 25;
         pFileNameDir = (HI_CHAR*)calloc(u32Length,1);
         if(NULL==pFileNameDir)
         {
            return HI_FAILURE;
         }

         while((ptr = readdir((DIR *)dir))!=NULL)
         {

                 pPos = strrchr(ptr->d_name, '.');
                 if (NULL == pPos)
                 {
                    continue;
                 }
                 pPos++;
                 if (strncasecmp(pPos,"so",2) != 0)
                 {
                    continue;
                 }

                 pPos = strrchr(ptr->d_name, '_');
                 if (NULL == pPos)
                 {
                    continue;
                 }
                 pPos = pPos-7;
                 if (strncasecmp(pPos,"libhigo",7) != 0)
                 {
                    continue;
                 }

                 strncpy(pFileNameDir, pDir, u32Length);          /** get dir          **/
                 strncat(pFileNameDir, "/", u32Length - strlen(pFileNameDir) - 1);           /** get dir/         **/
                 strncat(pFileNameDir, ptr->d_name, u32Length - strlen(pFileNameDir) - 1);   /** get dir/filename **/
                 pFileNameDir[u32Length - 1] = '\0';
                  /**
                   **RTLD_NOW设置这个模式，再找不到libhi_jpge.so依赖库的时候
                   **会有提示，其它模式直接返回空，不会有提示，可以使用
                   ** RTLD_LAZY来调试 RTLD_GLOBAL|RTLD_LAZY
                   ** RTLD_NOW配置这个参数的时候使用静态库会无法打开这个库
                   **/
                 /*======================================================================
                              decoder
                 =======================================================================*/
                 if( DLOPEN_TYPE_DECODER == eDlopenType)
                 {
                     gs_sHigoAdpModulesCtx.pDecHandle[s32DecoderNum] = \
                                              dlopen(pFileNameDir, RTLD_GLOBAL|RTLD_NOW);
                     s32DecoderNum++;

                     #ifdef _HIGO_DEBUG
                     /**
                      **调试为什么dlopen方式使用失败
                      **/
                     pDlopenRetrun = (HI_CHAR*)dlerror();
                     HIGO_Printf("\n=================================================\n");
                     HIGO_Printf("dlopen decode info\n");
                     HIGO_Printf("open so   = %s\n",pFileNameDir);
                     HIGO_Printf("open info = %s\n",pDlopenRetrun);
                     HIGO_Printf("=================================================\n");
                     #endif

                  }

                 /*======================================================================
                              encoder
                 =======================================================================*/
                  if( DLOPEN_TYPE_ENCODER== eDlopenType)
                  {
                     gs_sHigoAdpModulesCtx.pEncHandle[s32EncoderNum] = \
                                              dlopen(pFileNameDir, RTLD_GLOBAL|RTLD_NOW);
                     s32EncoderNum++;

                     #ifdef _HIGO_DEBUG
                     pDlopenRetrun = (HI_CHAR*)dlerror();
                     HIGO_Printf("\n=================================================\n");
                     HIGO_Printf("dlopen encode info\n");
                     HIGO_Printf("open so   = %s\n",pFileNameDir);
                     HIGO_Printf("open info = %s\n",pDlopenRetrun);
                     HIGO_Printf("=================================================\n");
                     #endif

                  }
                 /*======================================================================
                              font
                 =======================================================================*/
                  if( DLOPEN_TYPE_FONT== eDlopenType)
                  {
                     gs_sHigoAdpModulesCtx.pFontHandle[s32FontNum] = \
                                              dlopen(pFileNameDir, RTLD_GLOBAL|RTLD_NOW);
                     s32FontNum++;

                     #ifdef _HIGO_DEBUG
                     pDlopenRetrun = (HI_CHAR*)dlerror();
                     HIGO_Printf("\n=================================================\n");
                     HIGO_Printf("dlopen font info\n");
                     HIGO_Printf("open so   = %s\n",pFileNameDir);
                     HIGO_Printf("open info = %s\n",pDlopenRetrun);
                     HIGO_Printf("=================================================\n");
                     #endif

                  }

           }

           s32DecoderNum  = 0;
           s32EncoderNum  = 0;
           s32FontNum     = 0;

           free(pFileNameDir);

           return HI_SUCCESS;


}


/*****************************************************************************
* func       : open_module
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_S32 open_module()
{


        HI_S32 s32Ret     = HI_SUCCESS;
        HI_U32 u32Length  = 0;
        HI_CHAR* TmpDir   = NULL;

        DIR *dir;

        if(NULL==gs_sHigoAdpModulesCtx.pmodule_dir)
        {
            HIGO_SetError(HI_FAILURE);
            return HI_FAILURE;
        }

        u32Length  = strlen(gs_sHigoAdpModulesCtx.pmodule_dir) + 1;
        if(NULL==TmpDir)
        {
           TmpDir = (HI_CHAR*)calloc(u32Length + MODULES_DIR_MAX_LENGTH,1);
           if(NULL==TmpDir)
           {
            HIGO_SetError(HI_FAILURE);
               return HI_FAILURE;
           }
        }

        /***===============================================================
                                     decoder
         ==================================================================**/
        memcpy(TmpDir, gs_sHigoAdpModulesCtx.pmodule_dir, u32Length);
        strncat(TmpDir, MODULES_DECODER_DIR,MODULES_DIR_MAX_LENGTH);
        dir = opendir(TmpDir);
        if(NULL==dir)
        {
            HIGO_SetError(HI_FAILURE);
             goto ERR;
        }
        s32Ret = dlopen_so_name(TmpDir,dir,DLOPEN_TYPE_DECODER);
        if(HI_SUCCESS!=s32Ret)
        {
            HIGO_SetError(HI_FAILURE);
            goto ERR2;
        }

        closedir(dir);

        memset(TmpDir,0,u32Length + MODULES_DIR_MAX_LENGTH);
        /***===============================================================
                                     encoder
         ==================================================================**/

        memcpy(TmpDir, gs_sHigoAdpModulesCtx.pmodule_dir, u32Length);
        strncat(TmpDir, MODULES_ENCODER_DIR, MODULES_DIR_MAX_LENGTH);
        dir = opendir(TmpDir);
        if(NULL==dir)
        {
            HIGO_SetError(HI_FAILURE);
            goto ERR;
        }
        s32Ret = dlopen_so_name(TmpDir,dir,DLOPEN_TYPE_ENCODER);
        if(HI_SUCCESS!=s32Ret)
        {
            HIGO_SetError(HI_FAILURE);
            goto ERR2;
        }

        closedir(dir);

        memset(TmpDir,0,u32Length + MODULES_DIR_MAX_LENGTH);
        /***===============================================================
                                     font
         ==================================================================**/
        memcpy(TmpDir, gs_sHigoAdpModulesCtx.pmodule_dir, u32Length);
        HIGO_Strncat(TmpDir, MODULES_FONT_DIR, MODULES_DIR_MAX_LENGTH);
        dir = opendir(TmpDir);
        if(NULL==dir)
        {
            HIGO_SetError(HI_FAILURE);
             goto ERR;
        }
        s32Ret = dlopen_so_name(TmpDir,dir,DLOPEN_TYPE_FONT);
        if(HI_SUCCESS!=s32Ret)
        {
            HIGO_SetError(HI_FAILURE);
             goto ERR2;
        }
        memset(TmpDir,0,u32Length + MODULES_DIR_MAX_LENGTH);

        closedir(dir);
         if(NULL!=TmpDir)
        {
             free(TmpDir);
             TmpDir = NULL;
        }
        return HI_SUCCESS;

     ERR2:

         closedir(dir);

     ERR:
         if(NULL!=TmpDir)
        {
             free(TmpDir);
             TmpDir = NULL;
        }

        return HI_FAILURE;

}


/*****************************************************************************
* func       : open_module
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_S32  modules_config_set( const HI_CHAR *name, const HI_CHAR *value )
{
    if((NULL==name)||(NULL==value))
    {
        return HI_FAILURE;
    }
    HI_U32 u32Length = strlen(value) + 1;

    if(NULL==gs_sHigoAdpModulesCtx.pmodule_dir)
    {
        gs_sHigoAdpModulesCtx.pmodule_dir= (HI_CHAR*)calloc(u32Length,1);
         if(NULL==gs_sHigoAdpModulesCtx.pmodule_dir)
         {
            return HI_FAILURE;
         }
    }

    if (strncmp(name, "module-dir", MAX(strlen(name), strlen("module-dir"))) == 0)
    {
        if (value)
        {
        memcpy(gs_sHigoAdpModulesCtx.pmodule_dir, value, u32Length);
        }
        else
        {
            return HI_FAILURE;
        }
    }

      return HI_SUCCESS;
}

/*****************************************************************************
* func       : parse_args
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_S32 modules_parse_args( const HI_CHAR *args )
{
    HI_U32 u32Length  = 0;
    HI_CHAR *buf      = NULL;
    HI_CHAR *pbuf      = NULL;
    HI_S32 s32Ret     = HI_SUCCESS;

    u32Length = strlen(args) + 1;
    buf = (HI_CHAR*)calloc(u32Length,1);
    if(NULL==buf)
    {
        return HI_FAILURE;
    }
    pbuf = buf;
    HIGO_Strncpy(buf, args, u32Length);

    while (buf && buf[0])
    {

          char *value;
          char *next;

          if ((next = strchr( buf, ',' )) != NULL)
          {
               *next++ = '\0';
          }

          if ((value = strchr( buf, '=' )) != NULL)
          {
               *value++ = '\0';
          }
      else
      {
              //HIGO_Printf("the export env failure,use as follows:\n");
            //HIGO_Printf("export HIGOARGS=module-dir=${dir}/higo-adp\n");
            free(pbuf);
          return HI_FAILURE;
      }

          s32Ret = modules_config_set(buf, value);
          switch (s32Ret)
         {
               case HI_SUCCESS:
                    break;
               case HI_FAILURE:
                    break;
               default:
            free(pbuf);
                   return s32Ret;
          }

          buf = next;

     }
        free(pbuf);
        return HI_SUCCESS;
}

/*****************************************************************************
* func       : higo_config_init
* description: export HIGOARGS=module-dir=/home/y00181162/STB/SDK_SVN_LINUX/higov300/higo/adp/lib/higo-adp
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_S32 modules_config_init()
{


          HI_CHAR *pHigoArgs = NULL;
          HI_S32 s32Ret      = HI_SUCCESS;
          HI_U32 u32Length   = 0;
          HI_CHAR *pModuleDefaultDir = MODULES_DEFAULT_DIR;

          /**
           **use the export entironment var
           **/
           pHigoArgs = getenv( "HIGOARGS" );
           if (pHigoArgs)
           {
               s32Ret = modules_parse_args(pHigoArgs);
           }

           if((NULL==pHigoArgs)||(HI_SUCCESS!=s32Ret))
           {/** if not have HIGOARGS entironment var **/

                    u32Length = strlen(pModuleDefaultDir) + 1;
                  if(NULL!=gs_sHigoAdpModulesCtx.pmodule_dir)
                  {
                       free(gs_sHigoAdpModulesCtx.pmodule_dir);
                       gs_sHigoAdpModulesCtx.pmodule_dir= NULL;
                  }

                  gs_sHigoAdpModulesCtx.pmodule_dir= (HI_CHAR*)calloc(u32Length,1);
                  if(NULL==gs_sHigoAdpModulesCtx.pmodule_dir)
                  {
                    HIGO_SetError(HI_FAILURE);
                       return HI_FAILURE;
                  }
                  memcpy(gs_sHigoAdpModulesCtx.pmodule_dir, pModuleDefaultDir, u32Length);

          }

          return HI_SUCCESS;


}


/*****************************************************************************
* func       : higo_adp_modules_init
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 higo_adp_modules_init()
{


        HI_S32 s32Ret = HI_SUCCESS;

        /** 重复初始化只进行简单记数字 */
        if (0 != s_InitModulesCount)
        {
            /** 引用记数*/
            s_InitModulesCount++;
            return HI_SUCCESS;

        }

        (HI_VOID)pthread_mutex_lock(&modules_lock);

       /*=============================================================*/
       /**init var **/
       memset(&gs_sHigoAdpModulesCtx,0,sizeof(gs_sHigoAdpModulesCtx));
       /*=============================================================*/
       s32Ret = modules_config_init();
       if(HI_SUCCESS!=s32Ret)
       {
          HIGO_SetError(HI_FAILURE);
          pthread_mutex_unlock(&modules_lock);
          return s32Ret;
       }

       s32Ret = open_module();
       if(HI_SUCCESS != s32Ret)
       {
            HIGO_SetError(HI_FAILURE);
           pthread_mutex_unlock(&modules_lock);
           return s32Ret;
       }


       s_InitModulesCount++;

       pthread_mutex_unlock(&modules_lock);

       return HI_SUCCESS;

}

/*****************************************************************************
* func       : higo_adp_modules_dinit
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 higo_adp_modules_dinit()
{

      /**
       **这个要使用计数，当计数为零的时候再调用
       **/

       HI_S32 s32Loop = 0;

       /** 防止未初始化 */
       if (0 == s_InitModulesCount)
       {
            return HIGO_ERR_NOTINIT;
       }

       /**
        ** 如果已经进行了多次初始化就直接退出
        ** 防止已经关闭了却还继续调用dlsym出来的函数导致挂死
        **/
       if (1!=s_InitModulesCount)
       {
            s_InitModulesCount--;
            return HI_SUCCESS;
       }

       (HI_VOID)pthread_mutex_lock(&modules_lock);

       if(NULL!=gs_sHigoAdpModulesCtx.pmodule_dir)
       {
           free(gs_sHigoAdpModulesCtx.pmodule_dir);
           gs_sHigoAdpModulesCtx.pmodule_dir= NULL;
       }

       /*===============================================================
                    decoder
       ================================================================**/
       for(s32Loop = 0;s32Loop<DECODER_COMPONENT_NUM;s32Loop++)
       {
             if(NULL!=gs_sHigoAdpModulesCtx.pDecHandle[s32Loop])
             {
                 dlclose(gs_sHigoAdpModulesCtx.pDecHandle[s32Loop]);
                 gs_sHigoAdpModulesCtx.pDecHandle[s32Loop] = NULL;
             }
       }

      /*===============================================================
                    encoder
       ================================================================**/
       for(s32Loop = 0;s32Loop<ENCODER_COMPONENT_NUM;s32Loop++)
       {
             if(NULL!=gs_sHigoAdpModulesCtx.pEncHandle[s32Loop])
             {
                 dlclose(gs_sHigoAdpModulesCtx.pEncHandle[s32Loop]);
                 gs_sHigoAdpModulesCtx.pEncHandle[s32Loop] = NULL;
             }
       }
       /*===============================================================
                    font
       ================================================================**/
       for(s32Loop = 0;s32Loop<FONT_COMPONENT_NUM;s32Loop++)
       {
             if(NULL!=gs_sHigoAdpModulesCtx.pFontHandle[s32Loop])
             {
                 dlclose(gs_sHigoAdpModulesCtx.pFontHandle[s32Loop]);
                 gs_sHigoAdpModulesCtx.pFontHandle[s32Loop] = NULL;
             }
       }

       /*=============================================================*/
       /**dinit var **/
       memset(&gs_sHigoAdpModulesCtx,0,sizeof(gs_sHigoAdpModulesCtx));
       /*=============================================================*/

       s_InitModulesCount--;

       pthread_mutex_unlock(&modules_lock);

       return HI_SUCCESS;

}
