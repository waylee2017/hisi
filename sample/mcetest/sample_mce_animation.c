/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mplayer.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/01/26
  Description   :
  History       :
  1.Date        : 2010/01/26
    Author      : w58735
    Modification: Created file

******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <sys/poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>
#include <semaphore.h>
#include <time.h>

#include "hi_type.h"

#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_unf_hdmi.h"
#include "hi_unf_ecs.h"
#include "hi_unf_mce.h"
#include "mpi_mmz.h"
#include "hi_adp.h"
#include "hi_adp_boardcfg.h"
#include "hi_go.h"


//#define USE_RE_ENCODE

#define FILE_ALIGN_SIZE 128
#define DEF_PLAY_BUF_SIZE 0x1000000
#define FILE_MAX_NUM 100

typedef struct 
{
	HI_CHAR szFileName[256];
}TEST_FILE_S;

HI_UNF_MCE_PLAY_PARAM_S g_gphWtParam;
HI_UNF_MCE_PLAY_PARAM_S g_gphRdParam;

HI_MMZ_BUF_S  playWtBuf;
HI_MMZ_BUF_S  playRdBuf;

/*********************************************************************************************************************/
/**********************		properties config area							       ******************/
/*********************************************************************************************************************/
//animation common  show properties
HI_U32 g_aniComXpos = 0;
HI_U32 g_aniComYpos = 0;
HI_U32 g_aniComWidth = 1280;
HI_U32 g_aniComHeight = 720;
HI_U32 g_aniComBGColor = 0xFFFF0000;

//animation playmode
HI_UNF_PIC_PLAYMODE g_aniComPlayMode = HI_UNF_PIC_PLAYMODE_LOOP;
HI_U32 g_aniComPlaySecond = 20;
HI_U32 g_aniComLoopCount = -1;

//animation show properties

HI_U32 g_aniPicShowXpos = 100;
HI_U32 g_aniPicShowYpos = 100;
HI_U32 g_aniPicShowWidth = 1080;
HI_U32 g_aniPicShowHeight = 520;
HI_U32 g_aniPicShowDelayTime = 200;

//animation pictures
TEST_FILE_S g_szfilenames[] =
{
	{"res/1.jpg"},		
	{"res/2.jpg"},
	{"res/3.jpg"},
	{"res/4.jpg"},
	{"res/5.jpg"},	
};
TEST_FILE_S *g_tmpfilenames = NULL;
/*********************************************************************************************************************/
/*********************************************************************************************************************/


#define WINDOWSSTYLE 0      //window style: the background color is transparent or white, don't use the background color setted by gif file.

#define PIC_DIRNAME "./res/gif"
#define MAX_FILENAME_LEN 256
#define DEFPIXELFORMAT HIGO_PF_1555
#ifndef INVALID_HANDLE
#define INVALID_HANDLE 0
#endif
#define CHECKRET(Ret) \
    do { \
        if (Ret != HI_SUCCESS) \
        { \
            sample_printf ("error :%x, line: %d\n", Ret, __LINE__); \
            return Ret; \
        } \
    }while (0)
    
#define DEBUGINFO(ret) \
    do { \
        if (ret != HI_SUCCESS) \
        { \
            sample_printf ("error :%x, line: %d\n", ret, __LINE__); \
        } \
    }while (0)
    
/*************************** Structure Definition ****************************/
typedef struct 
{
    HI_HANDLE BkSurface;  //the tmp bksurface for Render;
    HI_HANDLE DecHandle;  //handle of decoder
    HI_RECT   BKRect;    //record the region of last frame
}ANIMATION_INFO;
            


/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/

//create a animation.
HI_S32 HI_ANIMATION_Create(HI_CHAR *pFileName, HI_HANDLE *phRender)
{
    HI_S32 ret;
    HIGO_DEC_ATTR_S SrcDesc;
    HIGO_DEC_PRIMARYINFO_S PrimaryInfo;
    ANIMATION_INFO *pRender;
    HI_HANDLE DecHanle, Surface;

    if ((pFileName == NULL)|| (phRender == NULL))
    {
        DEBUGINFO(HI_FAILURE);
        return HI_FAILURE;
    }    
    SrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
    SrcDesc.SrcInfo.pFileName = pFileName;
    ret = HI_GO_CreateDecoder(&SrcDesc, &DecHanle);
    if (ret != HI_SUCCESS)
    {
        DEBUGINFO(HI_FAILURE);
        return HI_FAILURE;
    }

    ret = HI_GO_DecCommInfo(DecHanle, &PrimaryInfo);
    if (ret != HI_SUCCESS)
    {
        goto err1;
    }
    ret = HI_GO_CreateSurface(PrimaryInfo.ScrWidth, PrimaryInfo.ScrHeight, DEFPIXELFORMAT, &Surface);
    if (ret != HI_SUCCESS)
    {
        goto err1;
    }
    
    pRender = (ANIMATION_INFO *)malloc (sizeof(ANIMATION_INFO));
    if (pRender == NULL)
    {   
        ret = HI_FAILURE;
        goto err2;
    }
    memset (pRender, 0, sizeof(ANIMATION_INFO));
    pRender->BkSurface = Surface;
    pRender->DecHandle = DecHanle;

    *phRender = (HI_HANDLE)pRender;
    return HI_SUCCESS;
err2:
    HI_GO_FreeSurface(Surface);
err1:
    HI_GO_DestroyDecoder(DecHanle);
    return ret;
}

//destroy animation. 
HI_S32 HI_ANIMATION_Destroy(HI_HANDLE hRender)
{
    HI_S32 ret;
    ANIMATION_INFO *pRender;

    pRender = (ANIMATION_INFO *)hRender;
    if (pRender == NULL)
    {
        DEBUGINFO(HI_FAILURE);
        return HI_FAILURE;
    }
    ret = HI_GO_DestroyDecoder(pRender->DecHandle);

    ret = HI_GO_FreeSurface(pRender->BkSurface);
    
    free(pRender);
    return ret;
}

// When call this function, you should created before
HI_S32 HI_ANIMATION_GetPrimaryInfo(HI_HANDLE hRender, HIGO_DEC_PRIMARYINFO_S * pPrimaryInfo)
{
    HI_S32 Ret;
    ANIMATION_INFO *pRender;

    pRender = (ANIMATION_INFO *)hRender;
    if (pRender == NULL)
    {
        DEBUGINFO(HI_FAILURE);
        return HI_FAILURE;
    }
    Ret = HI_GO_DecCommInfo(pRender->DecHandle, pPrimaryInfo);
    CHECKRET(Ret);
    return HI_SUCCESS;
}


// When call this function, you should created before. attention, there are 3 limitations 
// 1.    the decoding order is  (0- (framecount -1))
//2.     the same animation use the same destination surface each time
// 3.     the same animation use the same x0, y0 each time.
HI_S32 HI_ANIMATION_RenderFrame(HI_HANDLE hRender, HI_HANDLE DstSurface, HI_U32 Index, HI_S32 x0, HI_S32 y0, HI_S32 *pDelayTime)
{
    HI_S32 Disposal;
    HI_S32 Ret;
    HIGO_DEC_IMGINFO_S ImgInfo, LastImgInfo;
    HIGO_DEC_PRIMARYINFO_S PrimaryInfo;
    HI_COLOR BKColor;
    HIGO_BLTOPT_S BltOpt = {0};
    HI_HANDLE ImgSurface;
    HIGO_BLTOPT_S BltOptKey = {0};
    HI_RECT Rect, DstRect, LastRect;
    ANIMATION_INFO *pRender;

    pRender = (ANIMATION_INFO *)hRender;
    
    Ret = HI_GO_DecCommInfo(pRender->DecHandle, &PrimaryInfo);
    CHECKRET(Ret);
#ifndef WINDOWSSTYLE
    if (PrimaryInfo.IsHaveBGColor)
    {
        BKColor = PrimaryInfo.BGColor;
    }
    else
    {
        BKColor = 0xffffffff;
    }
#else
        BKColor = 0xffffffff; //ATTENTION: This Color Can be transparent, for example: 0x00ffffff
#endif
    Ret = HI_GO_DecImgInfo(pRender->DecHandle, Index, &ImgInfo);
    CHECKRET(Ret);

    //get the scree rect in dst surface;
	DstRect.x = x0;
	DstRect.y = y0;
	DstRect.w = PrimaryInfo.ScrWidth;
	DstRect.h = PrimaryInfo.ScrHeight;
    //sample_printf ("================index:%d, disposal method:%d\n", Index, ImgInfo.DisposalMethod);

    
	if (0 == Index)
	{
	    Ret = HI_GO_FillRect(DstSurface, &DstRect, BKColor, HIGO_COMPOPT_NONE);    
	    CHECKRET(Ret);
	}
	else
	{
	    HI_S32 LastDisposal;
	    // get the last frame disposal method;
        
        Ret = HI_GO_DecImgInfo(pRender->DecHandle, (Index - 1), &LastImgInfo);
        CHECKRET(Ret);        
        LastDisposal = LastImgInfo.DisposalMethod;

        //get the last rect
  	    LastRect.x = x0 + pRender->BKRect.x;
        LastRect.y = y0 + pRender->BKRect.y;
        LastRect.w = pRender->BKRect.w;
        LastRect.h = pRender->BKRect.h;
        
	    if (2 == LastDisposal)
	    {
	        //fill background;
	        Ret = HI_GO_FillRect(DstSurface, &LastRect, BKColor, HIGO_COMPOPT_NONE);
            CHECKRET(Ret);
	    }
	    else if (3 == LastDisposal)
	    {
	        //convert to previous
	        Ret = HI_GO_Blit(pRender->BkSurface, &(pRender->BKRect), DstSurface, &LastRect, &BltOpt );
            CHECKRET(Ret);
	    }
	    
	}

    //record info of 
   	pRender->BKRect.x = ImgInfo.OffSetX;
    pRender->BKRect.y = ImgInfo.OffSetY;
    pRender->BKRect.w = ImgInfo.Width;
    pRender->BKRect.h = ImgInfo.Height;
    //sample_printf ("rect:x,:%d, y:%d, w:%d,h:%d\n", BKRect.x, BKRect.y, BKRect.w, BKRect.h);

    Disposal = ImgInfo.DisposalMethod;
	if (3 == Disposal)
	{
    	//copy DstSurface to back surface, back the whole frame info
        Ret = HI_GO_Blit(DstSurface, &DstRect, pRender->BkSurface, NULL, &BltOpt);
        CHECKRET(Ret);      
	}

    //fill the new surface
    Ret = HI_GO_DecImgData(pRender->DecHandle, Index, NULL, &ImgSurface);    // the imgatt must be null
    CHECKRET(Ret);

    Rect.x = ImgInfo.OffSetX + x0;
    Rect.y = ImgInfo.OffSetY + y0;
    Rect.w = ImgInfo.Width;
    Rect.h = ImgInfo.Height;
    if (ImgInfo.IsHaveKey)
    {
        BltOptKey.ColorKeyFrom = HIGO_CKEY_SRC;
    }
    Ret = HI_GO_Blit(ImgSurface, HI_NULL, DstSurface, &Rect, &BltOptKey );
    if (Ret != HI_SUCCESS) 
        goto err;
    
    *pDelayTime = ImgInfo.DelayTime;

    HI_GO_FreeSurface(ImgSurface);
	return HI_SUCCESS;
err:
    HI_GO_FreeSurface(ImgSurface);
    return Ret;
	
}


HI_S32 printComInfo(HI_UNF_PIC_COMMINFO *pcomInfo)
{
	sample_printf("animation com info+++++++++++++++++++++++++++++++++++++++\n");
	sample_printf(" 	uCount  : %d\n",pcomInfo->uCount);
	sample_printf(" 	u32Xpos  : %d\n",pcomInfo->u32Xpos);
	sample_printf(" 	u32Ypos  : %d\n",pcomInfo->u32Ypos);
	sample_printf(" 	u32Width  : %d\n",pcomInfo->u32Width);
	sample_printf(" 	u32Height  : %d\n",pcomInfo->u32Height);
	sample_printf(" 	BGColor  : 0x%x\n",pcomInfo->BGColor);
	sample_printf(" 	PlayMode  : %d\n",pcomInfo->PlayMode);
	sample_printf(" 	uLoopCount  : %d\n",pcomInfo->uLoopCount);
	sample_printf(" 	uPlaySecond  : %d\n",pcomInfo->uPlaySecond);
	sample_printf("\n----------\n");
	return 0;
}
HI_S32 printDataInfo(HI_UNF_PIC_PICTURE	   *ppicInfo,int num)
{
	HI_U32 i;
	sample_printf("animation picdata info+++++++++++++++++++++++++++++++++++++++\n");
	for(i = 0;i< num;i++)
	{
		sample_printf(" 	u32FileAddr[%d]  : 0x%x\n",i,ppicInfo[i].u32FileAddr);
		sample_printf(" 	u32FileLen[%d]  : %d\n",i,ppicInfo[i].u32FileLen);
		sample_printf(" 	u32Xpos[%d]  : %d\n",i,ppicInfo[i].u32Xpos);
		sample_printf(" 	u32Ypos[%d]  : %d\n",i,ppicInfo[i].u32Ypos);
		sample_printf(" 	u32Width[%d]  : %d\n",i,ppicInfo[i].u32Width);
		sample_printf(" 	u32Height[%d]  : %d\n",i,ppicInfo[i].u32Height);
		sample_printf(" 	u32DelayTime[%d]  : %d\n",i,ppicInfo[i].u32DelayTime);
		sample_printf("\n----------\n");
	}
	return 0;
	
}

//static int gp_files_contentlen = 0;
static HI_S32 get_file_length(HI_CHAR *pFilename,HI_U32 *plength)
{
	FILE *fpsrc = (void *)0;
	
	fpsrc = fopen(pFilename, "rb");
	if (!fpsrc)
	{
		return -1;
	}
	fseek(fpsrc, 0, SEEK_END);
	*plength = ftell(fpsrc);
	fseek(fpsrc, 0, SEEK_SET);
	fclose(fpsrc);	
	return HI_SUCCESS;
}
/*
*read file data to buffer
*/
int  read_files(TEST_FILE_S *files,int filenum,unsigned char *buf, unsigned int size,unsigned int align)
{
	HI_S32 i;
	HI_U32 fileoffset = 0;
	FILE *fpsrc = (void *)0;
	HI_U32 len,len2;
	
	for(i =0;i< filenum ;i++)
	{
		fpsrc = fopen(files[i].szFileName, "rb");
		if (!fpsrc)
		{
			sample_printf("can't open file.filename : %s\n",files[i].szFileName);
			return -1;
		}
		fseek(fpsrc, 0, SEEK_END);
		len = ftell(fpsrc);
		if(len + fileoffset > size)
		{
			sample_printf("memory is not enough.filename : %s\n",files[i].szFileName);
			return -1;
		}
		fseek(fpsrc, 0, SEEK_SET);
		len2 = fread(buf + fileoffset, sizeof(HI_S8), len, fpsrc);
		if(len2 != len)
		{
			sample_printf("ead file error\n");
			return -1;
		}	
		fclose(fpsrc);	
		if(align != 0)
		{
			fileoffset += ( len + align -1) &(~(align-1));	
		}
		else
		{
			fileoffset += len;
		}
	}
	
	return fileoffset;
}

HI_U32 get_animation_size(HI_UNF_MCE_PLAY_PARAM_S *pgpParam)
{
	HI_U32 uCount = 0;
	HI_U32 size = 0;
	if(pgpParam->playType != HI_UNF_MCE_TYPE_PLAY_GPHFILE)
	{
		return 0;
	}
	uCount = pgpParam->param.gphFileParam.comInfo.uCount ;
	size += pgpParam->param.gphFileParam.ppicInfo[uCount - 1].u32FileAddr;
	size += (pgpParam->param.gphFileParam.ppicInfo[uCount - 1].u32FileLen + FILE_ALIGN_SIZE -1) &(~(FILE_ALIGN_SIZE-1));
	return size;
}
/*
set common information for animation
*/
HI_S32 set_animation_cominfo(HI_UNF_MCE_PLAY_PARAM_S *pgpParam,int filenum)
{
	if(pgpParam == NULL || filenum ==0)
	{
		sample_printf("	set_gp_cominfo failed\n");
		return -1;
	}
	pgpParam->playType = HI_UNF_MCE_TYPE_PLAY_GPHFILE;
	pgpParam->fastplayflag = HI_TRUE;
	pgpParam->param.gphFileParam.comInfo.uCount = filenum;
	pgpParam->param.gphFileParam.comInfo.u32Xpos = g_aniComXpos;
	pgpParam->param.gphFileParam.comInfo.u32Ypos = g_aniComYpos;
	pgpParam->param.gphFileParam.comInfo.u32Width = g_aniComWidth;
	pgpParam->param.gphFileParam.comInfo.u32Height = g_aniComHeight;
	pgpParam->param.gphFileParam.comInfo.u32ScreenWidth= g_aniComWidth;
	pgpParam->param.gphFileParam.comInfo.u32ScreenHeight = g_aniComHeight;
	pgpParam->param.gphFileParam.comInfo.BGColor = g_aniComBGColor;
	pgpParam->param.gphFileParam.comInfo.PlayMode = g_aniComPlayMode;
	pgpParam->param.gphFileParam.comInfo.uLoopCount = g_aniComLoopCount;
	pgpParam->param.gphFileParam.comInfo.uPlaySecond = g_aniComPlaySecond;
	memset(pgpParam->param.gphFileParam.comInfo.chVersion, 0, 8);//init 0 
	return 0;
}
#ifdef USE_RE_ENCODE
HI_S32 mce_GetFrameCount(TEST_FILE_S *pSrcImg, HI_S32 sSrcNum , HI_S32 *pRealFrameCount)
{
	HI_S32 ret;
	HIGO_DEC_ATTR_S SrcDesc;
	HI_HANDLE hDecoder;	
	HIGO_DEC_PRIMARYINFO_S szPrmInfo = {0};
	HI_S32 iImgIndex = 0;
	HI_S32 sNum = 0;
	
	if(pSrcImg == NULL|| sSrcNum <= 0 || pRealFrameCount == NULL)
	{
		return HI_FAILURE;
	}
	/** initial */
	ret = HI_GO_Init();
	if (HI_SUCCESS != ret)
	{
		sample_printf("HI_GO_Init failed. ret 0x%x,line %d\n",ret,__LINE__);
		return HI_FAILURE;
	}
		
	while(iImgIndex < sSrcNum)
	{		
		/** create decode */
		SrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
		SrcDesc.SrcInfo.pFileName = pSrcImg[iImgIndex].szFileName;
		ret = HI_GO_CreateDecoder(&SrcDesc, &hDecoder );
		if (HI_SUCCESS != ret)
		{
			sample_printf("HI_GO_CreateDecoder failed. ret 0x%x,line %d\n",ret,__LINE__);
			goto failed1;
		}
		ret = HI_GO_DecCommInfo(hDecoder, &szPrmInfo);
		if (HI_SUCCESS != ret)
		{
			sample_printf("HI_GO_DecCommInfo failed. ret 0x%x,line %d\n",ret,__LINE__);
			goto failed2;
		}
		if(HIGO_DEC_IMGTYPE_GIF == szPrmInfo.ImgType)
		{
	    		sNum += (szPrmInfo.Count ==0) ?1:szPrmInfo.Count;
		}
		else
		{
			sNum++;
		}
		ret = HI_GO_DestroyDecoder(hDecoder);
		iImgIndex++;
	}
	ret |= HI_GO_Deinit();
	if (HI_SUCCESS != ret)
	{
	    return HI_FAILURE;
	}
	*pRealFrameCount = sNum;
	return HI_SUCCESS;	
failed2:
	HI_GO_DestroyDecoder(hDecoder);
failed1:
	HI_GO_Deinit();

	return HI_FAILURE;
}

HI_S32 mce_GetGifInfo(HI_CHAR *pSrcFile, HI_BOOL *bGif,HI_S32 *pRealFrameCount)
{
	HI_S32 ret;
	HIGO_DEC_ATTR_S SrcDesc;
	HI_HANDLE hDecoder;	
	HIGO_DEC_PRIMARYINFO_S szPrmInfo = {0};
//	HI_S32 iImgIndex = 0;
//	HI_S32 sNum = 0;
	
	if(pSrcFile == NULL|| bGif <= 0 || pRealFrameCount == NULL)
	{
		return HI_FAILURE;
	}
	/** initial */
	ret = HI_GO_Init();
	if (HI_SUCCESS != ret)
	{
		sample_printf("HI_GO_Init failed. ret 0x%x,line %d\n",ret,__LINE__);
		return HI_FAILURE;
	}
			
	/** create decode */
	SrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
	SrcDesc.SrcInfo.pFileName =pSrcFile;
	ret = HI_GO_CreateDecoder(&SrcDesc, &hDecoder );
	if (HI_SUCCESS != ret)
	{
		sample_printf("HI_GO_CreateDecoder failed. ret 0x%x,line %d\n",ret,__LINE__);
		goto failed1;
	}
	ret = HI_GO_DecCommInfo(hDecoder, &szPrmInfo);
	if (HI_SUCCESS != ret)
	{
		sample_printf("HI_GO_DecCommInfo failed. ret 0x%x,line %d\n",ret,__LINE__);
		goto failed2;
	}
	*pRealFrameCount = szPrmInfo.Count;
	if(HIGO_DEC_IMGTYPE_GIF == szPrmInfo.ImgType)
	{
    		*bGif = HI_TRUE;
	}
	else
	{
    		*bGif = HI_FALSE;
	}
	ret = HI_GO_DestroyDecoder(hDecoder);
		
	if (HI_SUCCESS != ret)
	{
	    return HI_FAILURE;
	}
	HI_GO_Deinit();
	return HI_SUCCESS;	
failed2:
	HI_GO_DestroyDecoder(hDecoder);
failed1:
	HI_GO_Deinit();

	return HI_FAILURE;
}

HI_S32 mce_reEncodeImgs(TEST_FILE_S *pSrcImg, HI_S32 sSrcNum , TEST_FILE_S **pDstImg,HI_S32 sReadFrameCount)
{
	HI_S32 ret;
	HIGO_DEC_ATTR_S SrcDesc;
	HIGO_DEC_IMGATTR_S ImgAttr;
	HIGO_ENC_ATTR_S Attr;  
	HI_HANDLE hDecoder,hDecSurface;
	HIGO_DEC_PRIMARYINFO_S szPrmInfo = {0};
	HI_CHAR pPostfix[] = ".tmp_90";
	
	HI_S32 iImgIndex = 0;
	HI_S32 srcLen = 0;
	HI_S32 iindex = 0;
//	HI_S32 uCount  = 0;
	HI_BOOL bIsGif = HI_FALSE;
	HI_S32 sGifFrameCount = 0;
	
	if(pSrcImg == NULL|| sSrcNum <= 0 )
	{
		return HI_FAILURE;
	}
	if(*pDstImg != NULL)
	{
		free(*pDstImg);
		*pDstImg = NULL;
	}
	*pDstImg = (TEST_FILE_S*)malloc(sizeof(TEST_FILE_S)*sReadFrameCount);
	if(*pDstImg == NULL)
	{
		sample_printf("alloc Destine image array failed\n");
		return HI_FAILURE;
	}
	memset(*pDstImg,0,sizeof(TEST_FILE_S)*sReadFrameCount);
	/** initial */
	ret = HI_GO_Init();
	if (HI_SUCCESS != ret)
	{
		sample_printf("HI_GO_Init failed. ret 0x%x,line %d\n",ret,__LINE__);
		return HI_FAILURE;
	}
	sample_printf("+++++++total Frame %d\n",sReadFrameCount);
	
	while(iImgIndex < sSrcNum)
	{
		srcLen = strlen(pSrcImg[iImgIndex].szFileName);
		if(256 < srcLen + strlen(pPostfix))
		{
			sample_printf("src len  is too long\n");
			return HI_FAILURE;
		}	
		memset(&szPrmInfo,0,sizeof(HIGO_DEC_PRIMARYINFO_S));

		ret = mce_GetGifInfo(pSrcImg[iImgIndex].szFileName,&bIsGif,&sGifFrameCount);
		if (HI_SUCCESS != ret)
		{
			sample_printf("mce_GetGifInfo failed. ret 0x%x,line %d\n",ret,__LINE__);
			return HI_FAILURE;
		}
		if(bIsGif == HI_FALSE || (bIsGif == HI_TRUE && sGifFrameCount <=1))
		{
			/** create decode */
			SrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
			SrcDesc.SrcInfo.pFileName = pSrcImg[iImgIndex].szFileName;
			ret = HI_GO_CreateDecoder(&SrcDesc, &hDecoder );
			if (HI_SUCCESS != ret)
			{
				sample_printf("HI_GO_CreateDecoder failed. ret 0x%x,line %d\n",ret,__LINE__);
				goto failed1;
			}
			
			ret = HI_GO_DecCommInfo(hDecoder, &szPrmInfo);
			if (HI_SUCCESS != ret)
			{
				sample_printf("HI_GO_DecCommInfo failed. ret 0x%x,line %d\n",ret,__LINE__);
				goto failed1;
			}
			ImgAttr.Format = HIGO_PF_8888;
			ImgAttr.Width = 1280;
			ImgAttr.Height = 720;
					
			/** picture decoding */
			ret = HI_GO_DecImgData(hDecoder, 0, &ImgAttr, &hDecSurface);
			if (HI_SUCCESS != ret)
			{
				sample_printf("HI_GO_DecImgData failed. ret 0x%x,line %d\n",ret,__LINE__);
				goto failed2;
			}
			
			Attr.ExpectType = HIGO_IMGTYPE_JPEG;
			Attr.QualityLevel = 90;
			memset((*pDstImg)[iindex].szFileName,0,256);
			snprintf((*pDstImg)[iindex].szFileName,256,"%s%s.jpg",pSrcImg[iImgIndex].szFileName,pPostfix);
		
			ret = HI_GO_EncodeToFile(hDecSurface, (*pDstImg)[iindex].szFileName, &Attr);
			if (HI_SUCCESS != ret)
			{
				goto failed2;
			}
			/** free decode */
			ret = HI_GO_FreeSurface(hDecSurface);
			if (HI_SUCCESS != ret)
			{
				goto failed2;
			}				
			ret = HI_GO_DestroyDecoder(hDecoder);
			iindex++;
		}
		else
		{
    			HI_HANDLE hRender;
    			HI_S32 Index = 0;
    			HI_S32 uFmCnt = 0;
    			HI_HANDLE hSurace;
    			HI_S32 DelayTime;
    			sample_printf("+++++++++++gif name %s count1 %d\n",pSrcImg[iImgIndex].szFileName, sGifFrameCount);
			ret = HI_ANIMATION_Create(pSrcImg[iImgIndex].szFileName, &hRender);
		        if (ret != HI_SUCCESS)
		        {   
		        		return HI_FAILURE;
		        }

		        //get render info
		        ret = HI_ANIMATION_GetPrimaryInfo(hRender, &szPrmInfo);
		        if (ret != HI_SUCCESS)
		        {   
		            	ret = HI_ANIMATION_Destroy(hRender);     
		        		return HI_FAILURE;
		        }

    			sample_printf("+++++++++++gif name %s count2 %d\n",pSrcImg[iImgIndex].szFileName, szPrmInfo.Count);
		        //render all the frame
		        uFmCnt = szPrmInfo.Count;
		        Index = 0;
		        ret = HI_GO_CreateSurface(szPrmInfo.ScrWidth, szPrmInfo.ScrHeight, HIGO_PF_8888, &hSurace);
		        if (ret != HI_SUCCESS)
		        {   
		           	 ret = HI_ANIMATION_Destroy(hRender);      
		        		return HI_FAILURE;
		        }
		        while(uFmCnt--)
		        {
		        	  
				ret = HI_ANIMATION_RenderFrame(hRender, hSurace, Index,  0, 0 , &DelayTime);
				if (ret != HI_SUCCESS)
				    	break;	
        
				Attr.ExpectType = HIGO_IMGTYPE_JPEG;
				Attr.QualityLevel = 90;
				memset((*pDstImg)[iindex + Index].szFileName,0,256);
				snprintf((*pDstImg)[iindex + Index].szFileName,256,"%s%s_%d.jpg",pSrcImg[iImgIndex].szFileName,pPostfix,Index+1);
			
				ret = HI_GO_EncodeToFile(hSurace, (*pDstImg)[iindex + Index].szFileName, &Attr);
				if (HI_SUCCESS != ret)
				{
					goto failed2;
				}		            
		           	 Index ++;		            
		        }
			iindex+= szPrmInfo.Count;
			HI_GO_FreeSurface(hSurace);	
		        HI_ANIMATION_Destroy(hRender);	
		}
		iImgIndex++;
	}
	ret |= HI_GO_Deinit();
	if (HI_SUCCESS != ret)
	{
	    return HI_FAILURE;
	}
	
	return HI_SUCCESS;
	
failed2:
	HI_GO_DestroyDecoder(hDecoder);
failed1:
	HI_GO_Deinit();

	return HI_FAILURE;

}
#endif

/*
set picture information for animation
*/
HI_S32 set_animation_picinfo(HI_UNF_MCE_PLAY_PARAM_S *pgpParam,TEST_FILE_S *files,int filenum)
{
	HI_S32 i;
	HI_U32 fileoffset = 0;
	HI_S32 ret;
	if(pgpParam == NULL)
	{
		sample_printf("	set_animation_picinfo failed\n");
	}
	if( files== NULL)
	{
		sample_printf("	set_animation_picinfo failed\n");
	}
	if( filenum ==0)
	{
		sample_printf("	set_animation_picinfo failed\n");
	}
	if(pgpParam == NULL || files== NULL || filenum ==0)
	{
		sample_printf("	set_animation_picinfo failed\n");
		return -1;
	}
	for(i =0;i< filenum ;i++)
	{
		pgpParam->param.gphFileParam.ppicInfo[i].u32FileAddr = fileoffset;
		pgpParam->param.gphFileParam.ppicInfo[i].u32Xpos = g_aniPicShowXpos;
		pgpParam->param.gphFileParam.ppicInfo[i].u32Ypos = g_aniPicShowYpos;
		pgpParam->param.gphFileParam.ppicInfo[i].u32Width= g_aniPicShowWidth;
		pgpParam->param.gphFileParam.ppicInfo[i].u32Height= g_aniPicShowHeight;
		pgpParam->param.gphFileParam.ppicInfo[i].u32DelayTime = g_aniPicShowDelayTime;	
		ret = get_file_length(files[i].szFileName, &pgpParam->param.gphFileParam.ppicInfo[i].u32FileLen);
		if(ret != HI_SUCCESS)
		{
			sample_printf("	get_file_length err \n");	
			return -1;
		}
		fileoffset += (pgpParam->param.gphFileParam.ppicInfo[i].u32FileLen + FILE_ALIGN_SIZE -1) &(~(FILE_ALIGN_SIZE-1));		
	}
	return 0;
}

HI_S32 set_animation_info(unsigned char *buf, unsigned int size)
{
	HI_S32 ret;	
	HI_U32 uFilesSize = 0;
	HI_S32 g_gpFileNum =  sizeof(g_szfilenames)/sizeof(g_szfilenames[0]);
	TEST_FILE_S * pEncodeFiles = NULL;
	HI_S32 szRealFileNum = 0;

#ifdef USE_RE_ENCODE
	ret = mce_GetFrameCount(g_szfilenames,g_gpFileNum,&szRealFileNum);
	if(ret != HI_SUCCESS)
	{
		sample_printf("	mce_GetFrameCount failed\n");
		return -1;
	}
#else
	szRealFileNum = g_gpFileNum;
#endif
	/*set animation common info  */
	ret = set_animation_cominfo(&g_gphWtParam,szRealFileNum);	
	if(ret != HI_SUCCESS)
	{
		sample_printf("	set_gp_cominfo failed\n");
		return -1;
	}
	/*assign animation picture info struct memory space*/
	if(g_gphWtParam.param.gphFileParam.ppicInfo  != NULL)
	{
		free(g_gphWtParam.param.gphFileParam.ppicInfo);
		g_gphWtParam.param.gphFileParam.ppicInfo = NULL;
	}
	g_gphWtParam.param.gphFileParam.ppicInfo = (HI_UNF_PIC_PICTURE*)malloc(szRealFileNum *sizeof(HI_UNF_PIC_PICTURE));
	if(g_gphWtParam.param.gphFileParam.ppicInfo == NULL)
	{
		sample_printf("	malloc pic buffer err \n");		
		return -1;
	}

#ifdef USE_RE_ENCODE

	//re-encode file ,and set the re-encoder file data and parameter  
	ret = mce_reEncodeImgs(g_szfilenames,g_gpFileNum,&g_tmpfilenames,szRealFileNum);
	
	if(ret != 0)
	{
		sample_printf("	mce_reEncodeImgs  err \n");		
		return -1;		
	}
	pEncodeFiles = g_tmpfilenames;
#else
	pEncodeFiles = g_szfilenames;
#endif
	/*set animation picture info */
	
	ret = set_animation_picinfo(&g_gphWtParam,pEncodeFiles,szRealFileNum);
	sample_printf("playtype = %d\n", g_gphWtParam.playType);
	sample_printf("fastplayflag = %d\n", g_gphWtParam.fastplayflag);
	if(ret != 0)
	{
		sample_printf("	set_animation_picinfo  err \n");		
		return -1;		
	}
	/*read picture data */
	uFilesSize = read_files(pEncodeFiles,szRealFileNum,buf,size,FILE_ALIGN_SIZE);
	if( uFilesSize == -1)
	{
		sample_printf("	read pic data failed pic info  err \n");		
		return -1;		
	}
	memset(&g_gphRdParam,0, sizeof(HI_UNF_MCE_PLAY_PARAM_S));
	
#ifdef USE_RE_ENCODE
	for(i = 0;i< szRealFileNum; i++)
	{
		unlink(pEncodeFiles[i].szFileName);
	}
#endif
	return 0;
}
HI_S32 animation_init()
{
	HI_S32 ret;
	// 3
	snprintf(playWtBuf.bufname, sizeof(playWtBuf.bufname),"playWtBuf");
	playWtBuf.bufsize = DEF_PLAY_BUF_SIZE;
	ret = HI_MPI_MMZ_Malloc(&playWtBuf);
	if(ret != HI_SUCCESS)
	{
		sample_printf("	HI_MPI_MMZ_Malloc playWtBuf err \n");
		return ret;
	}
	// 4
	snprintf(playRdBuf.bufname, sizeof(playRdBuf.bufname),"playRdBuf");
	playRdBuf.bufsize = DEF_PLAY_BUF_SIZE;
	ret = HI_MPI_MMZ_Malloc(&playRdBuf);
	if(ret != HI_SUCCESS)
	{
		HI_MPI_MMZ_Free(&playWtBuf);
		sample_printf("	HI_MPI_MMZ_Malloc playRdBuf err \n");
		return ret;
	}
	memset(&g_gphRdParam,0,sizeof(g_gphRdParam));
	memset(&g_gphWtParam,0,sizeof(g_gphWtParam));
	
	return ret;
}
HI_S32 animation_deint()
{
	if(playWtBuf.bufsize !=0)
	{
		HI_MPI_MMZ_Free(&playWtBuf);		
	}
	if(playRdBuf.bufsize !=0)
	{
		HI_MPI_MMZ_Free(&playRdBuf);		
	}
	if(g_gphRdParam.param.gphFileParam.ppicInfo != NULL)
	{
		free(g_gphRdParam.param.gphFileParam.ppicInfo);
		g_gphRdParam.param.gphFileParam.ppicInfo = NULL;
	}
	if(g_gphWtParam.param.gphFileParam.ppicInfo  != NULL)
	{
		free(g_gphWtParam.param.gphFileParam.ppicInfo);
		g_gphWtParam.param.gphFileParam.ppicInfo = NULL;
	}
	return 0;
}
HI_S32 update_animation()
{
	HI_S32 ret;	
	ret = set_animation_info(playWtBuf.user_viraddr, playWtBuf.bufsize);
	if(ret != HI_SUCCESS)
	{
		sample_printf("set animation failed\n");
	}
	else
	{
		sample_printf("set animation success\n");
	}
	return ret;
}
HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{	
	HI_S32 ret;
	HI_CHAR ch = 0;

	HI_SYS_PreAV(NULL);
	
	ret = animation_init();
	if(ret != HI_SUCCESS)
	{
		sample_printf("animation init failed\n");
		return 0;
	}
	ret = HI_UNF_MCE_Init(HI_UNF_PARTION_TYPE_PLAY);
	if(ret)
	{
		sample_printf("	HI_UNF_MCE_Init err! \n");
		return -1;
	}

	while(ch !='q'&&ch !='Q')
	{
	    printf(" 'w' -- write animation data\n");
	    printf(" 'r' -- read animation data\n");
	    printf(" 'c' -- compare animation data \n");
	    printf(" 'q' -- exit \n");
		ch = getchar();
		switch(ch)
		{
		case 'w':
		case 'W':
			update_animation();
			/*updata animation parameter before updata animation  content*/
			ret = HI_UNF_MCE_UpdatePlayParam(&g_gphWtParam);
			if(ret)
			{
				sample_printf("update play param err \n");
			}
			else
			{
				sample_printf("write PlayParam ok,u32ScreenHeight:%d\n",g_gphWtParam.param.gphFileParam.comInfo.u32ScreenHeight);

			}				
			ret = HI_UNF_MCE_UpdatePlayContent(playWtBuf.user_viraddr, get_animation_size(&g_gphWtParam));
			if(ret)
			{
				sample_printf("update play content err \n");
			}
			else
			{
				//printf("update play content success.  size :0x%x \n",get_animation_size(&g_gphWtParam));
				printf("write PlayContent ok \n");
				sample_printf("ok\n");
			}					
			break;
		case 'r':
		case 'R':
			if(g_gphRdParam.param.gphFileParam.ppicInfo == NULL)
			{
				g_gphRdParam.param.gphFileParam.ppicInfo = (HI_UNF_PIC_PICTURE*)malloc(FILE_MAX_NUM *sizeof(HI_UNF_PIC_PICTURE));
				if(g_gphRdParam.param.gphFileParam.ppicInfo == NULL)
				{
					sample_printf("	malloc pic buffer err1 \n");		
					goto err1;
				}	
			}
			ret = HI_UNF_MCE_GetPlayParam(&g_gphRdParam);
			if(ret)
			{
				sample_printf("GetPlayParam err \n");	
				goto err1;
			}
			printComInfo(&g_gphRdParam.param.gphFileParam.comInfo);
			printDataInfo(g_gphRdParam.param.gphFileParam.ppicInfo,g_gphRdParam.param.gphFileParam.comInfo.uCount);
			ret = HI_UNF_MCE_GetPlayContent(playRdBuf.user_viraddr, DEF_PLAY_BUF_SIZE);
			if(ret)
			{
				sample_printf("GetPlayContent err\n");	
			}
			else
			{
			    sample_printf("g_gphRdParam.fastplayflag = %d\n",g_gphRdParam.fastplayflag);
			    sample_printf("g_gphRdParam.playType = HI_UNF_MCE_TYPE_PLAY_GPHFILE\n");
			    sample_printf("g_gphRdParam.param.gphFileParam.comInfo.uCount = %d\n",g_gphRdParam.param.gphFileParam.comInfo.uCount);
				sample_printf("read ok\n");	
			}	
			break;
		case 'c':
		case 'C':
			
			if(g_gphRdParam.param.gphFileParam.ppicInfo == NULL)
			{
				g_gphRdParam.param.gphFileParam.ppicInfo = (HI_UNF_PIC_PICTURE*)malloc(FILE_MAX_NUM *sizeof(HI_UNF_PIC_PICTURE));
				if(g_gphRdParam.param.gphFileParam.ppicInfo == NULL)
				{
					sample_printf("	malloc pic buffer err1 \n");	
					goto err1;
				}	
			}
			ret = HI_UNF_MCE_GetPlayParam(&g_gphRdParam);
			if(ret)
			{
				sample_printf("	GetPlayParam err \n");
			}
			else
			{
				HI_U32 utmpCount = 0;
				if(g_gphWtParam.playType != g_gphRdParam.playType)
				{
					sample_printf("	gphWtParam.playType(%d) != gphRdParam.playType(%d) \n", g_gphWtParam.playType, g_gphRdParam.playType);
					break;
				}
				ret = memcmp((unsigned char*)(&(g_gphWtParam.param.gphFileParam.comInfo)), (unsigned char*)(&(g_gphRdParam.param.gphFileParam.comInfo)),  sizeof(HI_UNF_PIC_COMMINFO));
				if(ret)
				{
					sample_printf("	memcmp comminfo err\n");
				}
				else
				{
					sample_printf("	comminfo the same\n");
				}
				utmpCount = g_gphWtParam.param.gphFileParam.comInfo.uCount;
				ret = memcmp((unsigned char*)((g_gphWtParam.param.gphFileParam.ppicInfo)), (unsigned char*)((g_gphRdParam.param.gphFileParam.ppicInfo)),  utmpCount*sizeof(HI_UNF_PIC_PICTURE));
				if(ret)
				{
					sample_printf("	memcmp picinfo err \n");
				}
				else
				{
					sample_printf("	picinfo the same\n");
				}
			}	
				
			ret = memcmp(playWtBuf.user_viraddr, playRdBuf.user_viraddr,get_animation_size(&g_gphWtParam));
			if(ret)
			{
				sample_printf("	memcmp play data err \n");
			}
			else
			{
				sample_printf("	animation data the same\n");
			}
			break;
		default:			
			break;
		}
	}
err1:
	animation_deint();
	HI_UNF_MCE_deInit();
	return 0;
}




