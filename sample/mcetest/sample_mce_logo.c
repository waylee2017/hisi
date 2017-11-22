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
#include "hi_adp_boardcfg.h"
#include "hi_go.h"
#include "hi_go_encoder.h"
#include "hi_go_decoder.h"
#include "hi_adp.h"
#include "mpi_mmz.h"

/* re-encode file */
//#define USE_RE_ENCODE

#define BLOCK_ALIGN_SIZE 0x2000
#define PARAM_TOTAL_SIZE 0x6000
#define FILE_ALIGN_SIZE 128
#define FILE_MAX_NUM 100


static HI_MMZ_BUF_S  logoWtBuf ;
static HI_MMZ_BUF_S  logoRdBuf ;
static HI_MMZ_BUF_S  playBakupBuf ;

HI_UNF_MCE_LOGO_PARAM_S logoWtParam;
HI_UNF_MCE_LOGO_PARAM_S logoRdParam;

static HI_S32 get_file_length(HI_CHAR *pFilename,HI_U32 *plength)
{
	FILE *fpsrc = (void *)0;
	
	fpsrc = fopen(pFilename, "rb");
	if (!fpsrc)
	{
		sample_printf("couldn't open file: %s \n",pFilename);
		return -1;
	}
	fseek(fpsrc, 0, SEEK_END);
	*plength = ftell(fpsrc);
	fseek(fpsrc, 0, SEEK_SET);
	fclose(fpsrc);	
	return HI_SUCCESS;
}
int read_file(char *name, unsigned char *buf, unsigned int size)
{
	unsigned int len;
	FILE  *tsFile = HI_NULL;
	// 0
	tsFile = fopen(name, "rb");
	if (!tsFile)
	{
		sample_printf("open file %s err!\n", name);
		return -1;
	}
	// 1
	len = fread(buf, sizeof(HI_S8), size, tsFile);
	sample_printf("file size = 0x%x!\n", len);
	// 2
	fclose(tsFile);
	tsFile = HI_NULL;
	return (int)len;
}

HI_S32 logo_init(HI_CHAR *pLogoFile)
{
	HI_S32 ret;
	HI_U32 len;
	ret = get_file_length(pLogoFile,&len);
	if(ret)
	{
		sample_printf("couldn't open file %s\n",pLogoFile);
		return -1;
	}
	snprintf(logoWtBuf.bufname, sizeof(logoWtBuf.bufname),"logoWtBuf");
	
	//logoWtBuf.bufsize = (len + BLOCK_ALIGN_SIZE-1) & (~(BLOCK_ALIGN_SIZE -1));
	logoWtBuf.bufsize = len;
	
	ret = HI_MPI_MMZ_Malloc(&logoWtBuf);
	if(ret != HI_SUCCESS)
	{
		sample_printf("HI_MPI_MMZ_Malloc logoWtBuf err \n");
		return -1;
	}
	// 1
	snprintf(logoRdBuf.bufname, sizeof(logoRdBuf.bufname),"logoRdBuf");
	logoRdBuf.bufsize =  (len + BLOCK_ALIGN_SIZE-1) & (~(BLOCK_ALIGN_SIZE -1));
	ret = HI_MPI_MMZ_Malloc(&logoRdBuf);
	if(ret != HI_SUCCESS)
	{
		HI_MPI_MMZ_Free(&logoWtBuf);
		sample_printf("HI_MPI_MMZ_Malloc logoRdBuf err \n");
		return -1;
	}
	return 0;
}
HI_S32 logo_deinit()
{
	if(logoWtBuf.bufsize !=0)
	{
		HI_MPI_MMZ_Free(&logoWtBuf);		
		logoWtBuf.bufsize = 0;
	}
	if(logoRdBuf.bufsize !=0)
	{
		HI_MPI_MMZ_Free(&logoRdBuf);	
		logoRdBuf.bufsize = 0;	
	}
	if(playBakupBuf.bufsize !=0)
	{
		HI_MPI_MMZ_Free(&playBakupBuf);	
		playBakupBuf.bufsize = 0;
	}
	return 0;
}
#ifdef USE_RE_ENCODE

HI_S32 mce_reEncodeImg(HI_CHAR *pSrcImage , HI_CHAR *pDstImage,HI_S32 uLen)
{
	HI_S32 ret;
	HIGO_DEC_ATTR_S SrcDesc;
	HIGO_DEC_IMGATTR_S ImgAttr;
	HIGO_ENC_ATTR_S Attr;  
	HI_HANDLE hDecoder,hDecSurface;
	HI_S32 srcLen = 0;
	HI_CHAR pPostfix[] = ".tmp_90";
	
	if(pSrcImage == NULL || pDstImage == NULL || uLen <= 0)
	{
		return HI_FAILURE;
	}
	srcLen = strlen(pSrcImage);
	if(uLen < srcLen + strlen(pPostfix))
	{
		sample_printf("uLen is too short\n");
		return HI_FAILURE;
	}	  
	memset(pDstImage,0,uLen);
	snprintf(pDstImage,uLen,"%s%s",pSrcImage,pPostfix);
	//snprintf(pDstImage,uLen,"%s",pSrcImage);
	/** initial */
	ret = HI_GO_Init();
	if (HI_SUCCESS != ret)
	{
		sample_printf("HI_GO_Init failed. ret 0x%x,line %d\n",ret,__LINE__);
		return HI_FAILURE;
	}

	/** create decode */
	SrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
	SrcDesc.SrcInfo.pFileName = pSrcImage;
	ret = HI_GO_CreateDecoder(&SrcDesc, &hDecoder );
	if (HI_SUCCESS != ret)
	{
		sample_printf("HI_GO_CreateDecoder failed. ret 0x%x,line %d\n",ret,__LINE__);
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

	Attr.ExpectType = HIGO_IMGTYPE_BMP;
	Attr.QualityLevel = 90;
	sample_printf("+++after encode ,file name is : %s\n",pDstImage);
	ret = HI_GO_EncodeToFile(hDecSurface, pDstImage, &Attr);
	if (HI_SUCCESS != ret)
	{
		sample_printf("HI_GO_EncodeToFile failed!!ret:%#x\n",ret);
		goto failed2;
	}
	/** free decode */
	ret = HI_GO_FreeSurface(hDecSurface);
	if (HI_SUCCESS != ret)
	{
		sample_printf("HI_GO_FreeSurface failed!!ret:%#x\n",ret);
		goto failed2;
	}
    
	ret = HI_GO_DestroyDecoder(hDecoder);
	ret |= HI_GO_Deinit();
	if (HI_SUCCESS != ret)
	{
		sample_printf("HI_GO_DestroyDecoder failed!!ret:%#x\n",ret);
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
HI_S32 mce_SetLogo(char *tmpFileName)
{
	HI_S32 ret;
    
	logo_deinit();
	ret = logo_init(tmpFileName);
	if(ret)
	{
		sample_printf("alloc memory failed\n");
		return ret;
	}
	ret = read_file(tmpFileName, logoWtBuf.user_viraddr, logoWtBuf.bufsize);
	if(ret <= 0)
	{
		sample_printf("read_file logo  err\n");
		return -1;
	}
	logoWtParam.contentLen = ret;
	logoWtParam.logoflag   = HI_TRUE;
	return 0;
}
HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
	HI_S32 ret;
	HI_CHAR ch = 0;
	if(argc != 2)
	{
        sample_printf("Usage: sample_mce_logo logofile \n");
		sample_printf("Example:./sample_mce_ts  ./logofile \n");
		return -1;
	}
	HI_SYS_PreAV(NULL);
	ret = HI_UNF_MCE_Init(HI_UNF_PARTION_TYPE_LOGO);
	if(ret)
	{
		sample_printf("HI_UNF_MCE_Init err! \n");
		return -1;
	}
    sample_printf("Usage:\n");
		sample_printf(" 'w' -- write\n");
		sample_printf(" 'r' --  read\n");
		sample_printf(" 'c' -- compare\n");
		sample_printf(" 'q' -- exit \n");
	while(ch !='q'&&ch !='Q')
	{	
		ch = getchar();
		switch(ch)
		{
		case 'w':
		case 'W':
			ret = mce_SetLogo(argv[1]);
			if(ret)
			{
				sample_printf("mce_SetLogo err \n");
				break;
			}

			HI_UNF_MCE_LOGO_PARAM_S LogoParam;
			ret = HI_UNF_MCE_GetLogoParam(&LogoParam);
			LogoParam.contentLen = logoWtParam.contentLen;
			/*updata logo parameter  */
			ret = HI_UNF_MCE_UpdateLogoParam(&LogoParam);
			if(ret)
			{
				sample_printf("update logo param err \n");
				break;
			}
			else
			{
				sample_printf("update logo param ok \n");
				
			}
			ret = HI_UNF_MCE_UpdateLogoContent(logoWtBuf.user_viraddr, logoWtParam.contentLen);
			if(ret)
			{
				sample_printf("update logo content err \n");
				break;
			}
			else
			{
				sample_printf("update logo content ok \n");
				sample_printf("write logo ok \n");
			}
			break;
		case 'r':
		case 'R':	
			ret = HI_UNF_MCE_GetLogoParam(&logoRdParam);
			if(ret)
			{
				sample_printf("get logo param err \n");
			}
			else
			{
			    	sample_printf("logo size 0x%x\n", logoRdParam.contentLen);
			}
			ret = HI_UNF_MCE_GetLogoContent(logoRdBuf.user_viraddr, logoWtParam.contentLen);
			if(ret)
			{
				sample_printf("get logo content err \n");
			}
			else
			{
			    	sample_printf("logo addr:0x%x, length:0x%x\n", (HI_U32)(logoRdBuf.user_viraddr), logoWtParam.contentLen);
			    	sample_printf("read ok\n");
			}	
			break;
			
		case 'c':
		case 'C':	
			ret = memcmp(logoWtBuf.user_viraddr, logoRdBuf.user_viraddr, logoWtParam.contentLen);
			if(ret)
			{
				sample_printf("logo data memcmp err \n");
			}
			else
			{
				sample_printf("logo data memcmp ok \n");
			}	
			ret = (logoRdParam.contentLen == logoWtParam.contentLen) ? 0 :1;
			if(ret)
			{
				sample_printf("logo parameter cmp err \n");
			}
			else
			{
				sample_printf("logo content size 0x%x\n",logoRdParam.contentLen);
				sample_printf("logo content memcmp ok \n");
				sample_printf("memcmp ok \n");
			}
			break;
		default:
			break;
		}
	}
	
	logo_deinit();
	HI_UNF_MCE_deInit();
	return 0;
}




