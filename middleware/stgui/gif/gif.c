/*=====================================================================================
文件名	:gif.c
版本号	:V1.0
=====================================================================================*/

#include "bmp_src.h"
#include "gif.h"
#include "string.h"
#include "stdio.h"
#include "ffs.h"
#include "ospctr.h"

//请选择用作中间缓冲区的内存分区

#define MALLOC_FORTEMPBUF(size) OSPMalloc(size)
#define FREE_FORTEMPBUF(p) OSPFree(p)

#define MALLOC_FORTARGET(size) OSPMalloc(size)
#define FREE_FORTARGET(p) OSPFree(p)


#define RGB(r,g,b)          ((MBT_U32)(((MBT_U8)(r)|((MBT_U16)((MBT_U8)(g))<<8))|(((MBT_U32)(MBT_U8)(b))<<16)))
#define max(a, b)  (((a) > (b)) ? (a) : (b)) 
#define min(a, b)  (((a) < (b)) ? (a) : (b))

#define GIFBUFTAM 16383
#define MAX_CODES   4095
#define CXIMAGE_MAX_MEMORY 256000000

#define BI_RGB        0
#define OUT_OF_MEMORY -10
#define BAD_CODE_SIZE -20


typedef struct
{
     MBT_U8      rgbBlue;
     MBT_U8      rgbGreen;
     MBT_U8      rgbRed;
     MBT_U8      rgbReserved;
} RGBQUAD;


typedef struct
{
    MBT_U32     biSize;
    MBT_U32     biWidth;
    MBT_U32     biHeight;
    MBT_U16     biPlanes;
    MBT_U16     biBitCount;
    MBT_U32     biCompression;
    MBT_U32     biSizeImage;
    MBT_U32     biXPelsPerMeter;
    MBT_U32     biYPelsPerMeter;
    MBT_U32     biClrUsed;
    MBT_U32     biClrImportant;
} BITMAPINFOHEADER;

typedef struct tag_gifgce
{
	MBT_U32 transpcolflag:1;
	MBT_U32 userinputflag:1;
	MBT_U32 dispmeth:3;
	MBT_U32 res:3;
	MBT_U32 delaytime:16;
	MBT_U32 transpcolindex:8;
} struct_gifgce;


typedef struct tag_dscgif
{		/* Logic Screen Descriptor  */
  MBT_CHAR header[6];				/* Firma and version */
  MBT_U16 scrwidth;
  MBT_U16 scrheight;
  MBT_U8 pflds;
  MBT_U8 bcindx;
  MBT_U8 pxasrat;
} struct_dscgif;

typedef struct tag_image
{      /* Image Descriptor */
  MBT_U16 l;
  MBT_U16 t;
  MBT_U16 w;
  MBT_U16 h;
  MBT_U8   pf;
} struct_image;

typedef struct tag_rgb_color 
{ 
	MBT_U8 r,g,b; 
}rgb_color;

typedef struct tag_TabCol
{		/* Tabla de colores */
  MBT_S16 colres;					/* color resolution */
  MBT_S16 sogct;					/* size of global color table */
  rgb_color paleta[256];		/* paleta */
} struct_TabCol;


typedef struct tagCxImageInfo {
	MBT_U32		dwEffWidth;			///< MBT_U32 aligned scan line width
	MBT_U8*		pImage;				///< THE IMAGE BITS
	MBT_U32		nBkgndIndex;		///< used for GIF, PNG, MNG
	RGBQUAD		nBkgndColor;		///< used for RGB transparency
	MBT_U32		nFrame;				///< used for TIF, GIF, MNG : actual frame
	MBT_U32		nNumFrames;			///< used for TIF, GIF, MNG : total number of frames
	MBT_U32		dwFrameDelay;		///< used for GIF, MNG
	RGBQUAD		last_c;				///< for GetNearestIndex optimization
	MBT_U8		last_c_index;
	MBT_BOOL		last_c_isvalid;

} CXIMAGEINFO;


typedef struct tagGIFIMAGE
{
	MBT_VOID*				pDib; //contains the header, the palette, the pixels
    	BITMAPINFOHEADER    head; //standard header
	CXIMAGEINFO			info; //extended information
	MBT_U8*				pSelection;	//selected region
	MBT_U8*				pAlpha; //alpha channel

	struct_gifgce gifgce;
	

	MBT_S32             curx, cury;
	MBT_U32             CountDown;
	MBT_U32    cur_accum;
	MBT_S32              cur_bits;
	MBT_S32 interlaced, iypos, istep, iheight, ipass;
	MBT_S32 ibf;
	MBT_S32 ibfmax;
	MBT_U8 buf[GIFBUFTAM + 1];

	MBT_S16 curr_size;                     /* The current code size */
	MBT_S16 clear;                         /* Value for a clear code */
	MBT_S16 ending;                        /* Value for a ending code */
	MBT_S16 newcodes;                      /* First available code */
	MBT_S16 top_slot;                      /* Highest code for current size */
	MBT_S16 slot;                          /* Last read code */

	/* The following static variables are used
	* for seperating out codes */
	MBT_S16 navail_bytes;              /* # bytes left in block */
	MBT_S16 nbits_left;                /* # bits left in current MBT_U8 */
	MBT_U8 b1;                           /* Current MBT_U8 */
	MBT_U8 byte_buff[257];               /* Current block */
	MBT_U8 *pbytes;                      /* Pointer to next MBT_U8 in block */
	/* The reason we have these seperated like this instead of using
	* a structure like the original Wilhite code did, is because this
	* stuff generally produces significantly faster code when compiled...
	* This code is full of similar speedups...  (For a good book on writing
	* C for speed or for space optomisation, see Efficient C by Tom Plum,
	* published by Plum-Hall Associates...)
	*/
	MBT_U8 stack[MAX_CODES + 1];            /* Stack for storing pixels */
	MBT_U8 suffix[MAX_CODES + 1];           /* Suffix table */
	MBT_U16 prefix[MAX_CODES + 1];           /* Prefix linked list */
}GIFIMAGE;

typedef struct tagCImageIterator
{
	MBT_S32 Itx, Ity;		// Counters
	MBT_S32 Stepx, Stepy;
	MBT_U8* IterImage;	//  Image pointer
	GIFIMAGE *ima;
}CImageIterator;

//#define GIF_DEBUG(x)   MLMF_Print x
#define GIF_DEBUG(x) 


#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2

typedef struct tagGIFFILE
{
	MBT_S8* pGifCurPos;
	MBT_S8* pGifFileHead;
	MBT_S32 iGifFileLen;
	MBT_BOOL bEOF;	
}GIFFILE;

static const MBT_U32 gifv_codeMask[] = 
{ 
0x0000, 0x0001, 0x0003, 0x0007, 0x000F,0x001F, 0x003F, 0x007F, 0x00FF,0x01FF, 0x03FF, 0x07FF, 0x0FFF,0x1FFF, 0x3FFF, 0x7FFF, 0xFFFF 
};

static MBT_CHAR *gifv_cFileGif[3] = 
{
    "root/BusiAdver",
    "root/FlagAdver",
    "root/ManaAdver",
};

static MBT_S32 gifv_i32WaitTime = 2000;

MBT_VOID Gif_FreeAdData(ADPICBMP *pPicData)
{
	ADPICBMP *pTemPicData = pPicData;
	ADPICFRAM *pAdFramData;
	ADPICFRAM *pNextAdFramData;
	BITMAPTRUECOLOR  *pBmpInfo;

	GIF_DEBUG(("enter Gif_FreeAdData()\n"));

	pAdFramData = pTemPicData->framData;
	while(pAdFramData)
	{
		pNextAdFramData = pAdFramData->pNextFram;
		pBmpInfo = &(pAdFramData->fBmpInfo);
		if(pBmpInfo->pBData)
		{
			FREE_FORTARGET(pBmpInfo->pBData);
			pBmpInfo->pBData = MM_NULL;

			GIF_DEBUG(("before decode free for last pBmpInfo->pBData\n"));
		}
		FREE_FORTARGET(pAdFramData);
		GIF_DEBUG(("before decode free for last pAdFramData\n"));
		pAdFramData = pNextAdFramData;
	}

	pTemPicData->framNum = 0;
	pTemPicData->valid = 0;
	pTemPicData->framData = MM_NULL;
}

static MBT_VOID Gif_FreeGIFIMAGEMember( GIFIMAGE* pSrc )
{
	if ( pSrc )
	{
		GIF_DEBUG(("ready free pdib:%x\n", pSrc->pDib));
		if ( pSrc->pDib )
		{
			FREE_FORTEMPBUF(pSrc->pDib);
			GIF_DEBUG(("free for pDib\n"));
			pSrc->pDib = MM_NULL;
		}

		if ( pSrc->pSelection )
		{
			FREE_FORTEMPBUF(pSrc->pSelection);
			GIF_DEBUG(("free for pSelection\n"));
			pSrc->pSelection = MM_NULL;
		}

		if ( pSrc->pAlpha )
		{
			FREE_FORTEMPBUF(pSrc->pAlpha);
			GIF_DEBUG(("free for pAlpha\n"));
			pSrc->pAlpha = MM_NULL;
		}

	}
}

static MBT_U32 Gif_GetPaletteSize(GIFIMAGE* pcurgif)
{
	return (pcurgif->head.biClrUsed * sizeof(RGBQUAD));
}

static MBT_U32 Gif_GetSize(GIFIMAGE* pcurgif)
{
	return pcurgif->head.biSize + pcurgif->head.biSizeImage + Gif_GetPaletteSize(pcurgif);
}

static RGBQUAD* Gif_GetPalette(GIFIMAGE* pcurgif)
{
	if ((pcurgif->pDib)&&(pcurgif->head.biClrUsed))
	{
		return (RGBQUAD*)((MBT_U8*)pcurgif->pDib + sizeof(BITMAPINFOHEADER));
	}
	else
	{
		return MM_NULL;
	}
}

static MBT_U8* Gif_GetBits(MBT_U32 row, GIFIMAGE* pcurgif)
{ 
	if (pcurgif->pDib)
	{
		if (row) 
		{
			if (row<(MBT_U32)pcurgif->head.biHeight)
			{
				return ((MBT_U8*)pcurgif->pDib + *(MBT_U32*)pcurgif->pDib + Gif_GetPaletteSize(pcurgif) + (pcurgif->info.dwEffWidth * row));
			} 
			else 
			{
				return MM_NULL;
			}
		} 
		else 
		{
			return ((MBT_U8*)pcurgif->pDib + *(MBT_U32*)pcurgif->pDib + Gif_GetPaletteSize(pcurgif));
		}
	}
	
	return MM_NULL;
}

static MBT_U16 Gif_GetBpp(GIFIMAGE* pcurgif)
{
	return pcurgif->head.biBitCount;
}

static MBT_VOID Gif_Clear(MBT_U8 bval, GIFIMAGE* pcurgif)
{
	if (pcurgif->pDib == 0) return;

	if (Gif_GetBpp(pcurgif) == 1){
		if (bval > 0) bval = 255;
	}
	if (Gif_GetBpp(pcurgif) == 4){
		bval = (MBT_U8)(17*(0x0F & bval));
	}

	memset(pcurgif->info.pImage,bval,pcurgif->head.biSizeImage);
}

static MBT_U32 Gif_GetWidth(GIFIMAGE* pcurgif)
{
	return pcurgif->head.biWidth;
}

static MBT_U32 Gif_GetHeight(GIFIMAGE* pcurgif)
{
	return pcurgif->head.biHeight;
}

static MBT_VOID Gif_SetPalette(RGBQUAD* pPal,MBT_U32 nColors, GIFIMAGE* pcurgif)
{
	if ((pPal==MM_NULL)||(pcurgif->pDib==MM_NULL)||(pcurgif->head.biClrUsed==0)) 
	{
		return;
	}
	memcpy(Gif_GetPalette(pcurgif),pPal,min(Gif_GetPaletteSize(pcurgif),nColors*sizeof(RGBQUAD)));
	pcurgif->info.last_c_isvalid = MM_FALSE;
}

static MBT_VOID Gif_SetPalette1(MBT_U32 n, MBT_U8 *r, MBT_U8 *g, MBT_U8 *b, GIFIMAGE* pcurgif)
{
	RGBQUAD* ppal = MM_NULL;
	MBT_U32 m;
	MBT_U32 i;

	if ((!r)||(pcurgif->pDib==MM_NULL)||(pcurgif->head.biClrUsed==0)) 
	{
		return;
	}

	if (!g) 
	{
		g = r;
	}

	if (!b) 
	{
		b = g;
	}

	ppal=Gif_GetPalette(pcurgif);
	m=min(n,pcurgif->head.biClrUsed);
	for (i=0; i<m;i++)
	{
		ppal[i].rgbRed=r[i];
		ppal[i].rgbGreen=g[i];
		ppal[i].rgbBlue=b[i];
	}
	pcurgif->info.last_c_isvalid = MM_FALSE;
}

static inline RGBQUAD Gif_GetPaletteColor(MBT_U8 idx, GIFIMAGE* pcurgif)
{
	RGBQUAD rgb = {0,0,0,0};
	if ((pcurgif->pDib)&&(pcurgif->head.biClrUsed))
	{
		MBT_U8* iDst = (MBT_U8*)(pcurgif->pDib) + sizeof(BITMAPINFOHEADER);
		if (idx<pcurgif->head.biClrUsed)
		{
			MBT_U32 ldx=idx*sizeof(RGBQUAD);
			rgb.rgbBlue = iDst[ldx++];
			rgb.rgbGreen=iDst[ldx++];
			rgb.rgbRed =iDst[ldx++];
			rgb.rgbReserved = iDst[ldx];
		}
	}
	return rgb;
}

static inline MBT_U8 Gif_GetPixelIndex(MBT_U32 x,MBT_U32 y, GIFIMAGE* pcurgif)
{
	if ((pcurgif->pDib==MM_NULL)||(pcurgif->head.biClrUsed==0)) 
	{
		return 0;
	}

	if ((x>=pcurgif->head.biWidth)||(y>=pcurgif->head.biHeight)) 
	{
		if (pcurgif->info.nBkgndIndex != -1)
		{
			return (MBT_U8)pcurgif->info.nBkgndIndex;
		}
		else 
		{
			return *pcurgif->info.pImage;
		}
	}
	if (pcurgif->head.biBitCount==8)
	{
		return pcurgif->info.pImage[y*pcurgif->info.dwEffWidth + x];
	} 
	else 
	{
		MBT_U8 pos;
		MBT_U8 iDst= pcurgif->info.pImage[y*pcurgif->info.dwEffWidth + (x*pcurgif->head.biBitCount >> 3)];
		if (pcurgif->head.biBitCount==4)
		{
			pos = (MBT_U8)(4*(1-x%2));
			iDst &= (0x0F<<pos);
			return (MBT_U8)(iDst >> pos);
		} 
		else if (pcurgif->head.biBitCount==1)
		{
			pos = (MBT_U8)(7-x%8);
			iDst &= (0x01<<pos);
			return (MBT_U8)(iDst >> pos);
		}
	}
	return 0;
}

static RGBQUAD Gif_GetPixelColor(MBT_U32 x,MBT_U32 y, MBT_BOOL bGetAlpha, GIFIMAGE* pcurgif)
{
	RGBQUAD rgb=pcurgif->info.nBkgndColor; //<mpwolski>
	if ((pcurgif->pDib==MM_NULL)||(x>=pcurgif->head.biWidth)||(y>=pcurgif->head.biHeight))
	{
		if (pcurgif->info.nBkgndIndex != -1)
		{
			if (pcurgif->head.biBitCount<24) 
			{
				return Gif_GetPaletteColor((MBT_U8)pcurgif->info.nBkgndIndex, pcurgif);
			}
			else
			{
				return pcurgif->info.nBkgndColor;
			}
		}
		else if (pcurgif->pDib) 
		{
			return Gif_GetPixelColor(0,0, MM_TRUE, pcurgif);
		}
		return rgb;
	}

	if (pcurgif->head.biClrUsed)
	{
		rgb = Gif_GetPaletteColor(Gif_GetPixelIndex(x,y, pcurgif), pcurgif);
	} 
	else 
	{
		MBT_U8* iDst  = pcurgif->info.pImage + y*pcurgif->info.dwEffWidth + x*3;
		rgb.rgbBlue = *iDst++;
		rgb.rgbGreen= *iDst++;
		rgb.rgbRed  = *iDst;
	}

	rgb.rgbReserved = 0;

	return rgb;
}

static MBT_VOID* Gif_Create(MBT_U32 dwWidth, MBT_U32 dwHeight, MBT_U32 wBpp, GIFIMAGE* pcurgif)
{
	// use our bitmap info structure to fill in first part of
    // our DIB with the BITMAPINFOHEADER
    BITMAPINFOHEADER*  lpbi;
	RGBQUAD* pal = MM_NULL;

	// prevent further actions if width or height are not vaild <Balabasnia>
	if ((dwWidth == 0) || (dwHeight == 0))
	{
		return MM_NULL;
	}

    // Make sure bits per pixel is valid
    if(wBpp <= 1)
	{
		wBpp = 1;
	}
    else if (wBpp <= 4)	
	{
		wBpp = 4;
	}
    else if (wBpp <= 8)	
	{
		wBpp = 8;
	}
    else
	{
		wBpp = 24;
	}

	// limit memory requirements (and also a check for bad parameters)
	if (((dwWidth*dwHeight*wBpp)>>8) > CXIMAGE_MAX_MEMORY)
	{
		return MM_NULL;
	}

	// set the correct bpp value
    switch (wBpp)
	{
        case 1:
            pcurgif->head.biClrUsed = 2;	
			break;

        case 4:
            pcurgif->head.biClrUsed = 16; 
			break;

        case 8:
            pcurgif->head.biClrUsed = 256; 
			break;

        default:
            pcurgif->head.biClrUsed = 0;
    }

	//set the common image informations
    pcurgif->info.dwEffWidth = ((((wBpp * dwWidth) + 31) / 32) * 4);

    // initialize BITMAPINFOHEADER
	pcurgif->head.biSize = sizeof(BITMAPINFOHEADER); //<ralphw>
    pcurgif->head.biWidth = dwWidth;		// fill in width from parameter
    pcurgif->head.biHeight = dwHeight;	// fill in height from parameter
    pcurgif->head.biPlanes = 1;			// must be 1
    pcurgif->head.biBitCount = (MBT_U16)wBpp;		// from parameter
    pcurgif->head.biCompression = BI_RGB;    
    pcurgif->head.biSizeImage = pcurgif->info.dwEffWidth * dwHeight;
    pcurgif->head.biClrImportant = 0;

	if (pcurgif->pDib)
	{
		FREE_FORTEMPBUF(pcurgif->pDib);
		pcurgif->pDib = MM_NULL;
	}
	pcurgif->pDib = MALLOC_FORTEMPBUF(Gif_GetSize(pcurgif)); // alloc memory block to store our bitmap
    if (!pcurgif->pDib)
	{
		return MM_NULL;
	}
	GIF_DEBUG(("malloc for pDib\n"));

	//clear the palette
	pal=Gif_GetPalette(pcurgif);
	if (pal) 
	{
		memset(pal,0,Gif_GetPaletteSize(pcurgif));
	}

	lpbi = (BITMAPINFOHEADER*)(pcurgif->pDib);
    *lpbi = pcurgif->head;

	pcurgif->info.pImage=Gif_GetBits(0, pcurgif);

    return pcurgif->pDib; //return handle to the DIB
}

static MBT_VOID Gif_Copy(GIFIMAGE *src, GIFIMAGE* pDes, MBT_BOOL copypixels, MBT_BOOL copyselection, MBT_BOOL copyalpha)
{
	MBT_U32 nSize;
	//copy the attributes
	
	memcpy(&pDes->info,&src->info,sizeof(CXIMAGEINFO));
	//rebuild the image
	Gif_Create(Gif_GetWidth(src),Gif_GetHeight(src),Gif_GetBpp(src), pDes);
	//copy the pixels and the palette, or at least copy the palette only.
	if (copypixels && pDes->pDib && src->pDib) 
	{
		memcpy(pDes->pDib,src->pDib,Gif_GetSize(pDes));
	}
	else 
	{
		Gif_SetPalette(Gif_GetPalette(src), 256, pDes);
	}
	
	nSize = pDes->head.biWidth * pDes->head.biHeight;

	//copy the selection
	if (copyselection && src->pSelection)
	{
		if (pDes->pSelection) 
			{
			FREE_FORTEMPBUF(pDes->pSelection);
			GIF_DEBUG(("free for pSelection\n"));
			pDes->pSelection = MM_NULL;
			}
		pDes->pSelection = (MBT_U8*)MALLOC_FORTEMPBUF(nSize);
		GIF_DEBUG(("malloc for pSelection\n"));
		memcpy(pDes->pSelection,src->pSelection,nSize);
	}

	//copy the alpha channel
	if (copyalpha && src->pAlpha)
	{
		if (pDes->pAlpha) 
			{
				FREE_FORTEMPBUF(pDes->pAlpha);
				GIF_DEBUG(("free for pSelection\n"));
				pDes->pAlpha = MM_NULL;
			}
		pDes->pAlpha = (MBT_U8*)MALLOC_FORTEMPBUF(nSize);
		GIF_DEBUG(("malloc for pAlpha\n"));
		memcpy(pDes->pAlpha,src->pAlpha,nSize);
	}
}

static MBT_U32 Gif_GetTransIndex(GIFIMAGE* pcurgif) 
{
	return pcurgif->info.nBkgndIndex;
}

static inline MBT_VOID Gif_SetPixelIndex(MBT_U32 x,MBT_U32 y,MBT_U8 i, GIFIMAGE* pcurgif)
{
	if ((pcurgif->pDib==MM_NULL)||(pcurgif->head.biClrUsed==0)||(x>=pcurgif->head.biWidth)||(y>=pcurgif->head.biHeight))
	{
		return ;
	}

	if (pcurgif->head.biBitCount==8)
	{
		pcurgif->info.pImage[y*pcurgif->info.dwEffWidth + x]=i;
		return;
	} 
	else 
	{
		MBT_U8 pos;
		MBT_U8* iDst= pcurgif->info.pImage + y*pcurgif->info.dwEffWidth + (x*pcurgif->head.biBitCount >> 3);
		if (pcurgif->head.biBitCount==4)
		{
			pos = (MBT_U8)(4*(1-x%2));
			*iDst &= ~(0x0F<<pos);
			*iDst |= ((i & 0x0F)<<pos);
			return;
		} 
		else if (pcurgif->head.biBitCount==1)
		{
			pos = (MBT_U8)(7-x%8);
			*iDst &= ~(0x01<<pos);
			*iDst |= ((i & 0x01)<<pos);
			return;
		}
	}
}

static MBT_VOID Gif_GifMix(GIFIMAGE *src, GIFIMAGE* pDes, struct_image* imgdesc)
{
	MBT_U32 ymin = (MBT_U32)(Gif_GetHeight(pDes)-imgdesc->t - imgdesc->h);
	MBT_U32 ymax = Gif_GetHeight(pDes)-imgdesc->t;
	MBT_U32 xmin = imgdesc->l;
	MBT_U32 xmax = min(Gif_GetWidth(pDes), (MBT_U32)(imgdesc->l + imgdesc->w));

	MBT_U32 ibg2= Gif_GetTransIndex(src);
  	MBT_U8 i2;
	MBT_U32 y;
	MBT_U32 x;

	for(y = ymin; y < ymax; y++)
	{
		for(x = xmin; x < xmax; x++)
		{
			i2 = Gif_GetPixelIndex(x-xmin,y-ymin, src);
			if(i2!=ibg2) 
			{
				Gif_SetPixelIndex(x,y,i2, pDes);
			}
		}
	}
}

static MBT_VOID Gif_SetTransIndex(MBT_U32 idx, GIFIMAGE* pcurgif)
{
	pcurgif->info.nBkgndIndex = idx;
}

static MBT_BOOL Gif_Transfer(GIFIMAGE* pSrc, GIFIMAGE* pDes)
{
	MBT_VOID* pDib = pDes->pDib;
	MBT_U8* pSelection = pDes->pSelection;
	MBT_U8* pAlpha = pDes->pAlpha;
	
	memcpy(&pDes->head,&pSrc->head,sizeof(BITMAPINFOHEADER));
	memcpy(&pDes->info,&pSrc->info,sizeof(CXIMAGEINFO));

	pDes->pDib = pSrc->pDib;
	pDes->pSelection = pSrc->pSelection;
	pDes->pAlpha = pSrc->pAlpha;

	pSrc->pDib= pDib;
	pSrc->pSelection = pSelection;
	pSrc->pAlpha = pAlpha;

	memset(&pSrc->head,0,sizeof(BITMAPINFOHEADER));
	memset(&pSrc->info,0,sizeof(CXIMAGEINFO));

	Gif_FreeGIFIMAGEMember(pSrc);
	return MM_TRUE;
}

static MBT_U8 Gif_GetNearestIndex(RGBQUAD c, GIFIMAGE* pcurgif)
{
	MBT_U32 distance=200000;
	MBT_S32 i,j = 0;
	MBT_U32 k,l;
	MBT_S32 m;
	MBT_U8* iDst;

	if ((pcurgif->pDib==MM_NULL)||(pcurgif->head.biClrUsed==0)) 
	{
		return 0;
	}

	// <RJ> check matching with the previous result
	if (pcurgif->info.last_c_isvalid && (*(MBT_U32*)&pcurgif->info.last_c == *(MBT_U32*)&c)) 
	{
		return pcurgif->info.last_c_index;
	}
	pcurgif->info.last_c = c;
	pcurgif->info.last_c_isvalid = MM_TRUE;

	iDst = (MBT_U8*)(pcurgif->pDib) + sizeof(BITMAPINFOHEADER);
	m = (MBT_S32)(pcurgif->head.biClrImportant==0 ? pcurgif->head.biClrUsed : pcurgif->head.biClrImportant);
	for(i=0,l=0;i<m;i++,l+=sizeof(RGBQUAD))
	{
		k = (iDst[l]-c.rgbBlue)*(iDst[l]-c.rgbBlue)+
			(iDst[l+1]-c.rgbGreen)*(iDst[l+1]-c.rgbGreen)+
			(iDst[l+2]-c.rgbRed)*(iDst[l+2]-c.rgbRed);

		if (k==0)
		{
			j=i;
			break;
		}
		if (k<distance)
		{
			distance=k;
			j=i;
		}
	}
	pcurgif->info.last_c_index = j;
	return (MBT_U8)j;
}

static inline MBT_VOID Gif_SetPixelColor(MBT_U32 x,MBT_U32 y,RGBQUAD c, MBT_BOOL bSetAlpha, GIFIMAGE* pcurgif)
{
	if ((pcurgif->pDib==MM_NULL)||(x>=pcurgif->head.biWidth)||(y>=pcurgif->head.biHeight)) 
	{
		return;
	}
	if (pcurgif->head.biClrUsed)
	{
		Gif_SetPixelIndex(x,y,Gif_GetNearestIndex(c, pcurgif), pcurgif);
	}
	else 
	{
		MBT_U8* iDst = pcurgif->info.pImage + y*pcurgif->info.dwEffWidth + x*3;
		*iDst++ = c.rgbBlue;
		*iDst++ = c.rgbGreen;
		*iDst   = c.rgbRed;
	}
}

static MBT_VOID Gif_SetTransColor(RGBQUAD rgb, GIFIMAGE* pcurgif)
{
	rgb.rgbReserved=0;
	pcurgif->info.nBkgndColor = rgb;
}

static MBT_U32 Gif_GetEffWidth(GIFIMAGE* pcurgif)
{
	return pcurgif->info.dwEffWidth;
}

static MBT_VOID Gif_Upset(CImageIterator* iter, GIFIMAGE* pcurgif)
{
	iter->Itx = 0;
	iter->Ity = Gif_GetHeight(pcurgif)-1;
	iter->IterImage = Gif_GetBits(0, pcurgif) + Gif_GetEffWidth(pcurgif)*(Gif_GetHeight(pcurgif)-1);
}

static MBT_S16 Gif_InitExp(MBT_S16 size, GIFIMAGE* pcurgif)
{
	pcurgif->curr_size = (MBT_S16)(size + 1);
	pcurgif->top_slot = (MBT_S16)(1 << pcurgif->curr_size);
	pcurgif->clear = (MBT_S16)(1 << size);
	pcurgif->ending = (MBT_S16)(pcurgif->clear + 1);
	pcurgif->slot = pcurgif->newcodes = (MBT_S16)(pcurgif->ending + 1);
	pcurgif->navail_bytes = pcurgif->nbits_left = 0;

	memset(pcurgif->stack,0,MAX_CODES + 1);
	memset(pcurgif->prefix,0,MAX_CODES + 1);
	memset(pcurgif->suffix,0,MAX_CODES + 1);
	return(0);
}

static MBT_VOID Gif_SetY(MBT_S32 y, CImageIterator* iter, GIFIMAGE* pcurgif)
{
	if ((y < 0) || (y > (MBT_S32)Gif_GetHeight(pcurgif))) 
	{
		return;
	}
	iter->Ity = y;
	iter->IterImage = Gif_GetBits(0, pcurgif) + Gif_GetEffWidth(pcurgif)*y;
}

static MBT_VOID Gif_SetRow(MBT_U8 *buf, MBT_S32 n, CImageIterator* iter, GIFIMAGE* pcurgif)
{
	if (n<0) 
	{
		n = (MBT_S32)Gif_GetEffWidth(pcurgif);
	}
	else 
	{
		n = min(n,(MBT_S32)Gif_GetEffWidth(pcurgif));
	}

	if ((iter->IterImage!=MM_NULL)&&(buf!=MM_NULL)&&(n>0)) memcpy(iter->IterImage,buf,n);
}

static MBT_BOOL Gif_IsInside(MBT_U32 x, MBT_U32 y, GIFIMAGE* pcurgif)
{
  return (y<pcurgif->head.biHeight && x<pcurgif->head.biWidth);
}

static MBT_BOOL Gif_ItOK (CImageIterator* iter, GIFIMAGE* pcurgif)
{
	return Gif_IsInside(iter->Itx, iter->Ity, pcurgif);
}

static MBT_BOOL Gif_PrevRow(CImageIterator* iter, GIFIMAGE* pcurgif)
{
	if (--iter->Ity < 0) 
	{
		return 0;
	}
	iter->IterImage -= Gif_GetEffWidth(pcurgif);
	return 1;
}

static MBT_S32 Gif_Outline(CImageIterator* iter, MBT_U8 *pixels, MBT_S32 linelen, GIFIMAGE* pcurgif)
{
	MBT_U32 x;
	//<DP> for 1 & 4 bpp images, the pixels are compressed
	if (pcurgif->head.biBitCount < 8)
	{
		for(x=0;x<pcurgif->head.biWidth;x++)
		{
			MBT_U8 pos;
			MBT_U8* iDst= pixels + (x*pcurgif->head.biBitCount >> 3);
			if (pcurgif->head.biBitCount==4)
			{
				pos = (MBT_U8)(4*(1-x%2));
				*iDst &= ~(0x0F<<pos);
				*iDst |= ((pixels[x] & 0x0F)<<pos);
			} 
			else if (pcurgif->head.biBitCount==1)
			{
				pos = (MBT_U8)(7-x%8);
				*iDst &= ~(0x01<<pos);
				*iDst |= ((pixels[x] & 0x01)<<pos);
			}
		}
	}

	/* AD - for interlace */
	if (pcurgif->interlaced)
	{
		Gif_SetY(pcurgif->iheight-pcurgif->iypos-1, iter, pcurgif);
		Gif_SetRow(pixels, linelen, iter, pcurgif);

		if ((pcurgif->iypos += pcurgif->istep) >= pcurgif->iheight) 
		{
			do 
			{
				if (pcurgif->ipass++ > 0) pcurgif->istep /= 2;
				pcurgif->iypos = pcurgif->istep / 2;
			}
			while (pcurgif->iypos > pcurgif->iheight);
		}
		return 0;
	} 
	else
	{
		if (Gif_ItOK(iter, pcurgif))
		{
			Gif_SetRow(pixels, linelen,iter, pcurgif);
			(MBT_VOID)Gif_PrevRow(iter, pcurgif);
			return 0;
		} 
		else 
		{
			return -1;
		}
	}
}


static MBT_S32 Gif_Read(MBT_VOID* pDes,  MBT_S32 iSize, GIFFILE* pFile)
{
	if ( ( pFile != MM_NULL ) && ( pDes != MM_NULL ) )
	{
		if ( pFile->pGifCurPos + iSize >= pFile->pGifFileHead + pFile->iGifFileLen )
		{
			iSize = pFile->pGifFileHead + pFile->iGifFileLen - pFile->pGifCurPos;
		}
		memcpy( pDes, pFile->pGifCurPos, iSize );
		pFile->pGifCurPos += iSize;

		if ( pFile->pGifCurPos >= pFile->pGifFileHead+pFile->iGifFileLen )
		{
			pFile->bEOF = MM_TRUE;
		}
		else
		{
			pFile->bEOF = MM_FALSE;
		}
	}
	else
	{
		iSize = 0;
	}

	return iSize;
}

static MBT_BOOL Gif_Seek(GIFFILE* pFile, MBT_S32 iOffset, MBT_S32 movetye )
{
	MBT_BOOL bSuc = MM_FALSE;
	
	if ( pFile )
	{
		switch ( movetye )
		{
			case SEEK_SET:
				if ( iOffset <= pFile->iGifFileLen )
				{
					pFile->pGifCurPos = pFile->pGifFileHead + iOffset;
					bSuc = MM_TRUE;
				}				
				break;

			case SEEK_CUR:
				if (pFile->pGifCurPos+iOffset<=pFile->pGifFileHead+pFile->iGifFileLen)
				{
					pFile->pGifCurPos += iOffset;
					bSuc = MM_TRUE;
				}
				break;

			case SEEK_END:
				if (iOffset<=0)
				{
					pFile->pGifCurPos = pFile->pGifFileHead+pFile->iGifFileLen+iOffset;
					bSuc = MM_TRUE;
				}
				break;
		}

		if ( pFile->pGifCurPos >= pFile->pGifFileHead+pFile->iGifFileLen )
		{
			pFile->bEOF = MM_TRUE;
		}
		else
		{
			pFile->bEOF = MM_FALSE;
		}
	}

	return bSuc;
}

static MBT_S32 Gif_Tell(GIFFILE* pFile)
{
	MBT_S32 iRet=0;

	if ( pFile )
	{
		iRet = pFile->pGifCurPos - pFile->pGifFileHead;
	}

	return iRet;
}

static MBT_BOOL Gif_StructInit( GIFIMAGE* pcurgif )
{
	if ( pcurgif == MM_NULL )
	{
		return MM_FALSE;
	}

	memset(pcurgif,0,sizeof(GIFIMAGE));
	pcurgif->info.nBkgndIndex = -1;

	return MM_TRUE;
}

static MBT_U32 Gif_Seeknextimage(GIFFILE* pFile, MBT_U32 position)
{
	MBT_CHAR ch1,ch2;

	Gif_Seek( pFile, position, SEEK_SET );
	
	ch1=ch2=0;

	while(Gif_Read(&ch2,1, pFile)>0)
	{
		if (ch1 == 0 && ch2 == ',')
		{
			Gif_Seek(pFile, -1,SEEK_CUR);
			return Gif_Tell(pFile);
		} 
		else 
		{
			ch1 = ch2;
		}
	}
	
	return -1;
}

static MBT_S32 Gif_DecodeExtension(GIFFILE* pFile, GIFIMAGE* pcurgif)
{
	MBT_BOOL bContinue = MM_FALSE;
	MBT_U8 count;
	MBT_U8 fc;
	MBT_CHAR buf[256];

	if ( Gif_Read( &fc, 1, pFile ) == 1 )
	{
		bContinue = MM_TRUE;
	}

	if (bContinue) 
	{
		/* AD - for transparency */
		if (fc == 0xF9)	
		{
			bContinue = (1 == Gif_Read( &count, 1, pFile ));
			if (bContinue) 
			{
				bContinue = (count == Gif_Read( &(pcurgif->gifgce), /*sizeof(struct_gifgce)*/4, pFile ) );
				if (bContinue) 
				{
					if (pcurgif->gifgce.transpcolflag) 
					{
						pcurgif->info.nBkgndIndex  = pcurgif->gifgce.transpcolindex;
					}
					pcurgif->info.dwFrameDelay = pcurgif->gifgce.delaytime;
				}	
			}	
		}

		if (fc == 0xFE)
		{ //<DP> Comment block
			bContinue = (1 == Gif_Read( &count, 1, pFile ) );
			if (bContinue) 
			{
				bContinue = (count == Gif_Read( buf, count, pFile ) );
			}	
		}

		if (fc == 0xFF) 
		{ //<DP> Application Extension block
			bContinue = (1 == Gif_Read( &count, 1, pFile ) );
			if (bContinue) 
			{
				bContinue = (count==11);
				if (bContinue)
				{
					MBT_CHAR AppID[11];
					bContinue = (count == Gif_Read( AppID, count, pFile ) );
					if (bContinue)
					{
						bContinue = (1 == Gif_Read( &count, 1, pFile ));
						if (bContinue) 
						{
							MBT_U8* dati = (MBT_U8*)MALLOC_FORTEMPBUF(count);
							bContinue = (dati!=MM_NULL);
							if (bContinue)
							{
								bContinue = (count==Gif_Read( dati, count, pFile ));
							}
							GIF_DEBUG(("malloc for dati\n"));
							FREE_FORTEMPBUF(dati);
							GIF_DEBUG(("free for dati\n"));
						}
					}
				}	
			}	
		}

		while (bContinue && Gif_Read( &count, 1, pFile ) && count) 
		{
			//log << "Skipping " << count << " bytes" << endl;
			Gif_Seek(pFile, count, SEEK_CUR);
		}
	}

	return bContinue;

}

static MBT_S32 Gif_GetByte(GIFFILE* file, GIFIMAGE* pcurgif)
{
	if (pcurgif->ibf>=GIFBUFTAM)
	{
		// FW 06/02/98 >>>
		pcurgif->ibfmax = Gif_Read( pcurgif->buf, GIFBUFTAM, file );
		if( pcurgif->ibfmax < GIFBUFTAM ) 
		{
			pcurgif->buf[ pcurgif->ibfmax ] = 255 ;
		}
		// FW 06/02/98 <<<
		pcurgif->ibf = 0;
	}

	if (pcurgif->ibf>=pcurgif->ibfmax) 
	{
		return -1; //<DP> avoid overflows
	}

	return pcurgif->buf[pcurgif->ibf++];
}

static MBT_S16 Gif_GetNextCode(GIFFILE* file, GIFIMAGE* pcurgif)
{
	MBT_S16 i, x;
	MBT_U32 ret;

	if (pcurgif->nbits_left == 0) 
	{
		if (pcurgif->navail_bytes <= 0) 
		{
			/* Out of bytes in current block, so read next block */
			pcurgif->pbytes = pcurgif->byte_buff;
			if ((pcurgif->navail_bytes = (MBT_S16)Gif_GetByte(file, pcurgif)) < 0)
			{
				return(pcurgif->navail_bytes);
			}
			else if (pcurgif->navail_bytes) 
			{
				for (i = 0; i < pcurgif->navail_bytes; ++i)
				{
					if ((x = (MBT_S16)Gif_GetByte(file, pcurgif)) < 0) 
					{
						return(x);
					}
					pcurgif->byte_buff[i] = (MBT_U8)x;
				}
			}
		}
		pcurgif->b1 = *pcurgif->pbytes++;
		pcurgif->nbits_left = 8;
		--pcurgif->navail_bytes;
	}

	if (pcurgif->navail_bytes<0) 
	{
		return pcurgif->ending; // prevent deadlocks (thanks to Mike Melnikov)
	}

	ret = pcurgif->b1 >> (8 - pcurgif->nbits_left);
	while (pcurgif->curr_size > pcurgif->nbits_left)
	{
		if (pcurgif->navail_bytes <= 0)
		{
			/* Out of bytes in current block, so read next block*/
			pcurgif->pbytes = pcurgif->byte_buff;
			if ((pcurgif->navail_bytes = (MBT_S16)Gif_GetByte(file, pcurgif)) < 0)
			{
				return(pcurgif->navail_bytes);
			}
			else if (pcurgif->navail_bytes)
			{
				for (i = 0; i < pcurgif->navail_bytes; ++i)
				{
					if ((x = (MBT_S16)Gif_GetByte(file, pcurgif)) < 0)
					{
						return(x);
					}
					pcurgif->byte_buff[i] = (MBT_U8)x;
				}
			}
		}
		pcurgif->b1 = *pcurgif->pbytes++;
		ret |= pcurgif->b1 << pcurgif->nbits_left;
		pcurgif->nbits_left += 8;
		--pcurgif->navail_bytes;
	}
	pcurgif->nbits_left = (MBT_S16)(pcurgif->nbits_left-pcurgif->curr_size);
	ret &= gifv_codeMask[pcurgif->curr_size];

	return((MBT_S16)(ret));
}

static MBT_S16 Gif_Decoder(GIFFILE* file, CImageIterator* iter, MBT_S16 linewidth, MBT_S32* bad_code_count, GIFIMAGE* pcurgif)
{
	register MBT_U8 *sp, *bufptr;
	MBT_U8 *buf;
	register MBT_S16 code, fc, oc, bufcnt;
	MBT_S16 c, size, ret;
	MBT_S32 enter;
	
	enter = Gif_Tell(file);
	/* Initialize for decoding a new image... */
	*bad_code_count = 0;
	
	if ((size = (MBT_S16)Gif_GetByte(file, pcurgif)) < 0)	
	{
		return(size);
	}

	if (size < 2 || 9 < size)
	{
		return(BAD_CODE_SIZE);
	}
	

	// out_line = outline;
	Gif_InitExp(size, pcurgif);
	GIF_DEBUG(("L %d %x\n",linewidth,size));

	/* Initialize in case they forgot to put in a clear code.
	 * (This shouldn't happen, but we'll try and decode it anyway...)
	 */
	oc = fc = 0;

   /* Allocate space for the decode buffer */
	if ((buf = MALLOC_FORTEMPBUF( linewidth + 1 )) == MM_NULL) 
	{
		return(OUT_OF_MEMORY);
	}
	GIF_DEBUG(("malloc for buf\n"));

   /* Set up the stack pointer and decode buffer pointer */
	sp = pcurgif->stack;
	bufptr = buf;
	bufcnt = linewidth;

   /* This is the main loop.  For each code we get we pass through the
	* linked list of prefix codes, pushing the corresponding "character" for
	* each code onto the stack.  When the list reaches a single "character"
	* we push that on the stack too, and then start unstacking each
    * character for output in the correct order.  Special handling is
	* included for the clear code, and the whole thing ends when we get
    * an ending code.
    */
	while ((c = Gif_GetNextCode(file, pcurgif)) != pcurgif->ending) 
	{
		/* If we had a file error, return without completing the decode*/
		if (c < 0)
		{
			FREE_FORTEMPBUF(buf);
			GIF_DEBUG(("free for buf\n"));
			return(0);
		}
		/* If the code is a clear code, reinitialize all necessary items.*/
		if (c == pcurgif->clear)
		{
			pcurgif->curr_size = (MBT_S16)(size + 1);
			pcurgif->slot = pcurgif->newcodes;
			pcurgif->top_slot = (MBT_S16)(1 << pcurgif->curr_size);

			/* Continue reading codes until we get a non-clear code
			* (Another unlikely, but possible case...)
			*/
			while ((c = Gif_GetNextCode(file, pcurgif)) == pcurgif->clear);

			/* If we get an ending code immediately after a clear code
			* (Yet another unlikely case), then break out of the loop.
			*/
			if (c == pcurgif->ending) 
			{
				break;
			}

			/* Finally, if the code is beyond the range of already set codes,
			* (This one had better NOT happen...  I have no idea what will
			* result from this, but I doubt it will look good...) then set it
			* to color zero.
			*/
			if (c >= pcurgif->slot) 
			{
				c = 0;
			}
			oc = fc = c;

			/* And let us not forget to put the MBT_S8 into the buffer... And
			* if, on the off chance, we were exactly one pixel from the end
			* of the line, we have to send the buffer to the out_line()
			* routine...
			*/
			*bufptr++ = (MBT_U8)c;
			if (--bufcnt == 0) 
			{
				if ((ret = (MBT_S16)Gif_Outline(iter, buf, linewidth, pcurgif)) < 0) 
				{
					FREE_FORTEMPBUF(buf);
					GIF_DEBUG(("free for buf\n"));
					return(ret);
				}
				bufptr = buf;
				bufcnt = linewidth;
            }
		} 
		else 
		{
			/* In this case, it's not a clear code or an ending code, so
			* it must be a code code...  So we can now decode the code into
			* a stack of character codes. (Clear as mud, right?)
			*/
			code = c;

			/* Here we go again with one of those off chances...  If, on the
			* off chance, the code we got is beyond the range of those already
			* set up (Another thing which had better NOT happen...) we trick
			* the decoder into thinking it actually got the last code read.
			* (Hmmn... I'm not sure why this works...  But it does...)
			*/
			if (code >= pcurgif->slot) 
			{
				if (code > pcurgif->slot) 
				{
					++(*bad_code_count);
				}
				code = oc;
				*sp++ = (MBT_U8)fc;
            }

			/* Here we scan back along the linked list of prefixes, pushing
			* helpless characters (ie. suffixes) onto the stack as we do so.
			*/
			while (code >= pcurgif->newcodes) 
			{
				*sp++ = pcurgif->suffix[code];
				code = pcurgif->prefix[code];
            }

			/* Push the last character on the stack, and set up the new
			* prefix and suffix, and if the required slot number is greater
			* than that allowed by the current bit size, increase the bit
			* size.  (NOTE - If we are all full, we *don't* save the new
			* suffix and prefix...  I'm not certain if this is correct...
			* it might be more proper to overwrite the last code...
			*/
			*sp++ = (MBT_U8)code;
			if (pcurgif->slot < pcurgif->top_slot){
				pcurgif->suffix[pcurgif->slot] = (MBT_U8)(fc = (MBT_U8)code);
				pcurgif->prefix[pcurgif->slot++] = oc;
				oc = c;
            }
			if (pcurgif->slot >= pcurgif->top_slot){
				if (pcurgif->curr_size < 12) {
					pcurgif->top_slot <<= 1;
					++pcurgif->curr_size;
				}
			}

			/* Now that we've pushed the decoded string (in reverse order)
			* onto the stack, lets pop it off and put it into our decode
			* buffer...  And when the decode buffer is full, write another
			* line...
			*/
			while (sp > pcurgif->stack) 
			{
				*bufptr++ = *(--sp);
				if (--bufcnt == 0) 
				{
					if ((ret = (MBT_S16)Gif_Outline(iter, buf, linewidth, pcurgif)) < 0) 
					{
						FREE_FORTEMPBUF(buf);
						GIF_DEBUG(("free for buf\n"));
						return(ret);
					}
					bufptr = buf;
					bufcnt = linewidth;
				}
			}
		}
	}
	ret = 0;
	if (bufcnt != linewidth)
	{
		ret = (MBT_S16)Gif_Outline(iter, buf, (linewidth - bufcnt), pcurgif);
	}
	FREE_FORTEMPBUF(buf);
	GIF_DEBUG(("free for buf\n"));
	return(ret);
}

static MBT_BOOL Gif_Decode(GIFFILE* pFile, ADPICBMP* pPicData, MBT_S32 iFiletype )
{	
	struct_dscgif dscgif;
	struct_image image;
	struct_TabCol TabCol;

	MBT_U32 bTrueColor=0;
	MBT_U32 first_transparent_index = 0;

	MBT_S32 iImage = 0;	
	MBT_S32 bpp;

	MBT_S32  prevdispmeth = 0;
	
	MBT_CHAR ch;
	MBT_BOOL bContinue = MM_TRUE;
	MBT_BOOL bPreviousWasNull = MM_TRUE;

	MBT_S32 badcode;

	GIFIMAGE* imaRGB=MM_NULL;
	GIFIMAGE* pstGifImage=MM_NULL;
	GIFIMAGE* pcurgif = MM_NULL;


	if (pFile == MM_NULL || pPicData == MM_NULL) 
	{
		return MM_FALSE;
	}

	Gif_FreeAdData(pPicData);


	Gif_Read(&dscgif, /*sizeof(dscgif)*/13, pFile);

	if ( strncmp(dscgif.header,"GIF8",4) !=0 ) 
	{
		return MM_FALSE;
	}

	pstGifImage = MALLOC_FORTEMPBUF(sizeof(GIFIMAGE));	
	if ( pstGifImage == MM_NULL )
	{
		return MM_FALSE;
	}
	GIF_DEBUG(("malloc for pstGifImage\n"));
	memset( pstGifImage, 0, sizeof ( GIFIMAGE ) );

	pcurgif = pstGifImage;

	Gif_StructInit( pcurgif );

	pcurgif->head.biWidth = dscgif.scrwidth;
	pcurgif->head.biHeight = dscgif.scrheight;

	/* AD - for interlace */
	TabCol.sogct = (MBT_S16)(1 << ((dscgif.pflds & 0x07)+1));
	TabCol.colres = (MBT_S16)(((dscgif.pflds & 0x70) >> 3) + 1);
	// Global colour map?
	if (dscgif.pflds & 0x80)
	{
		MBT_S32 i;
		memset(TabCol.paleta, 0, sizeof(TabCol.paleta) );
		for( i=0; i<TabCol.sogct; i++ )
		{
			//注意此处只能这样。因为sizeof(rgb_color) == 4;
			//而gif中的调色板是r,g,b三个字节连续排列的。
			Gif_Read((MBT_U8*)(TabCol.paleta)+i*sizeof(rgb_color), 3, pFile);
		}
	}
	else 
	{
		bTrueColor++;	//first chance for a TRUEcolor gif
	}


	while( bContinue )
	{
		if (Gif_Read(&ch, 1, pFile) != 1) 
		{
			break;
		}

		if (bPreviousWasNull || ch==0)
		{
			switch (ch)
			{
				case '!': // extension
					{
						bContinue = Gif_DecodeExtension(pFile, pcurgif);
						break;
					}

				case ',': // image
					{
						
						MBT_U8 *byteData = MM_NULL;
						GIFIMAGE* pBackImage = MM_NULL;
						CImageIterator*	iter = MM_NULL;
						MBT_S32 pos_start;
						
						pBackImage = MALLOC_FORTEMPBUF(sizeof(GIFIMAGE));
						if ( pBackImage == MM_NULL )
						{
							bContinue = MM_FALSE;
							break;
						}
						GIF_DEBUG(("malloc for pBackImage\n"));
						memset( pBackImage, 0, sizeof ( GIFIMAGE ) );

						Gif_Read(&image, /*sizeof(image)*/9, pFile);
						byteData = (MBT_U8 *) & image;
						image.l = byteData[0]|(byteData[1]<<8);
						image.t = byteData[2]|(byteData[3]<<8);
						image.w = byteData[4]|(byteData[5]<<8);
						image.h = byteData[6]|(byteData[7]<<8);

						if (((image.l + image.w) > dscgif.scrwidth)||((image.t + image.h) > dscgif.scrheight))
						{
							if ( pBackImage )
							{
								GIF_DEBUG(("ready to free pBackImage->member:%x\n", pBackImage));
								Gif_FreeGIFIMAGEMember(pBackImage);
								FREE_FORTEMPBUF(pBackImage);
								GIF_DEBUG(("free for pBackImage\n"));
								pBackImage = MM_NULL;
							}
							break;
						}

						// check if it could be a TRUEcolor gif
						if ((iImage==0) && (image.w != dscgif.scrwidth) && (image.h != dscgif.scrheight))
						{
							bTrueColor++;
						}

						// Local colour map?
						if (image.pf & 0x80) 
						{
							MBT_S32 i;
							TabCol.sogct = (MBT_S16)(1 << ((image.pf & 0x07) +1));
							
							memset(TabCol.paleta, 0, sizeof(TabCol.paleta) );
							for( i=0; i<TabCol.sogct; i++ )
							{
								//注意此处只能这样。因为sizeof(rgb_color) == 4;
								//而gif中的调色板是r,g,b三个字节连续排列的。
								Gif_Read((MBT_U8*)(TabCol.paleta)+i*sizeof(rgb_color), 3, pFile);
							}
						}

						if(TabCol.sogct <= 2)  
						{
							bpp = 1;
						}
						else if (TabCol.sogct <= 16) 
						{
							bpp = 4;
						}
						else
						{
							bpp = 8;
						}

						memcpy(&(pBackImage->info),&(pcurgif->info),sizeof(CXIMAGEINFO));
						if (iImage==0)
						{
							
							//first frame: build image background
							GIF_DEBUG(("call create() for pBackImage->pDib\n"));
							Gif_Create(dscgif.scrwidth, dscgif.scrheight, bpp, pBackImage);
							GIF_DEBUG(("after create() pBackImage->pDib:%x\n", pBackImage->pDib));
							first_transparent_index = pcurgif->info.nBkgndIndex;
							Gif_Clear((MBT_U8)pcurgif->gifgce.transpcolindex,pBackImage);

						} 
						else 
						{
						//generic frame: handle disposal method from previous one
						/*Values :  0 -   No disposal specified. The decoder is
										  not required to take any action.
									1 -   Do not dispose. The graphic is to be left
										  in place.
									2 -   Restore to background color. The area used by the
										  graphic must be restored to the background color.
									3 -   Restore to previous. The decoder is required to
										  restore the area overwritten by the graphic with
										  what was there prior to rendering the graphic.
						*/

							GIF_DEBUG(("call Gif_Copy() for pBackImage->pDib\n"));
							Gif_Copy(pcurgif, pBackImage, MM_TRUE, MM_TRUE, MM_TRUE);
							if (prevdispmeth==2)
							{
								Gif_Clear((MBT_U8)first_transparent_index,pBackImage);
							}

							
						}
						
						//active frame
						GIF_DEBUG(("call create() for pstGifImage->pDib\n"));						
						Gif_Create(image.w, image.h, bpp, pcurgif);
						

						if ((image.pf & 0x80) || (dscgif.pflds & 0x80)) 
						{
							MBT_U8 r[256], g[256], b[256];
							MBT_S32 i, has_white = 0;

							for (i=0; i < TabCol.sogct; i++)
							{
								r[i] = TabCol.paleta[i].r;
								g[i] = TabCol.paleta[i].g;
								b[i] = TabCol.paleta[i].b;

								if (RGB(r[i],g[i],b[i]) == 0xFFFFFF) has_white = 1;
							}

							// Force transparency colour white...
							//if (0) if (info.nBkgndIndex != -1)
							//	r[info.nBkgndIndex] = g[info.nBkgndIndex] = b[info.nBkgndIndex] = 255;
							// Fill in with white // AD
							if (pcurgif->info.nBkgndIndex != -1)
							{
								while (i < 256)
								{
									has_white = 1;
									r[i] = g[i] = b[i] = 255;
									i++;
								}
							}

							// Force last colour to white...   // AD
							//if ((info.nBkgndIndex != -1) && !has_white) {
							//	r[255] = g[255] = b[255] = 255;
							//}

							Gif_SetPalette1((pcurgif->info.nBkgndIndex != -1 ? 256 : TabCol.sogct), r, g, b, pcurgif);
						}

						iter = MALLOC_FORTEMPBUF(sizeof(CImageIterator));
						GIF_DEBUG(("malloc for iter\n"));
						Gif_Upset(iter, pcurgif);

						pcurgif->ibf = GIFBUFTAM+1;
						
						pcurgif->interlaced = image.pf & 0x40;
						pcurgif->iheight = image.h;
						pcurgif->istep = 8;
						pcurgif->iypos = 0;
						pcurgif->ipass = 0;

						pos_start = Gif_Tell(pFile);

						//if (interlaced) log << "Interlaced" << endl;
						
						Gif_Decoder(pFile, iter, image.w, &badcode, pcurgif);

						FREE_FORTEMPBUF( iter );
						GIF_DEBUG(("free for iter\n"));

						if (bTrueColor<2 )
						{ //standard GIF: mix frame with background
							Gif_GifMix(pcurgif,pBackImage, &image);
							GIF_DEBUG(("after Gif_GifMix() pBackImage->pDib:%x\n", pBackImage->pDib));
							Gif_SetTransIndex(first_transparent_index, pBackImage);
							GIF_DEBUG(("after Gif_SetTransIndex() pBackImage->pDib:%x\n", pBackImage->pDib));
							Gif_SetPalette(Gif_GetPalette(pcurgif),256, pBackImage);
							GIF_DEBUG(("after Gif_SetPalette() pBackImage->pDib:%x\n", pBackImage->pDib));
							Gif_Transfer(pBackImage, pcurgif);
							GIF_DEBUG(("after Gif_Transfer() pBackImage->pDib:%x\n", pBackImage->pDib));
						} 
						else 
						{ //it's a TRUEcolor gif!
							//force full image decoding
							MBT_U32 x;
							MBT_U32 y;
							pcurgif->info.nFrame=pcurgif->info.nNumFrames-1;

							//build the RGB image
							if (imaRGB==MM_NULL) 
							{
								imaRGB = MALLOC_FORTEMPBUF(sizeof(GIFIMAGE));
								if (imaRGB==MM_NULL)
								{
									bContinue = MM_FALSE;
									if ( pBackImage )
									{
										GIF_DEBUG(("ready to free pBackImage->member:%x\n", pBackImage));
										Gif_FreeGIFIMAGEMember(pBackImage);
										FREE_FORTEMPBUF(pBackImage);
										GIF_DEBUG(("free for pBackImage\n"));
										pBackImage = MM_NULL;
									}
									break;
								}
								GIF_DEBUG(("malloc for imaRGB\n"));
								memset(imaRGB, 0, sizeof (GIFIMAGE) );
								Gif_StructInit(imaRGB);
								GIF_DEBUG(("call create() for imaRGB->pDib\n"));
								Gif_Create(dscgif.scrwidth,dscgif.scrheight,24,imaRGB);
							}							
							
							//copy the partial image into the full RGB image
							for(y=0;y<image.h;y++)
							{
								for (x=0;x<image.w;x++)
								{
									Gif_SetPixelColor(x+image.l,dscgif.scrheight-1-image.t-y,Gif_GetPixelColor(x,image.h-y-1,MM_TRUE, pcurgif), MM_FALSE, imaRGB);
								}
							}
						}

						if ( pBackImage )
						{
							GIF_DEBUG(("ready to free pBackImage->member:%x\n", pBackImage));
							Gif_FreeGIFIMAGEMember(pBackImage);
							FREE_FORTEMPBUF(pBackImage);
							GIF_DEBUG(("free for pBackImage\n"));
							pBackImage = MM_NULL;
						}

						prevdispmeth = pcurgif->gifgce.dispmeth;

						//restore the correct position in the file for the next image
						if (badcode)
						{
							Gif_Seeknextimage(pFile,pos_start);
						} 
						else 
						{
							Gif_Seek(pFile, -(pcurgif->ibfmax - pcurgif->ibf - 1), SEEK_CUR );
						}
						
						{
							if (bTrueColor>=2 && imaRGB)
							{
								if (pcurgif->gifgce.transpcolflag)
								{
									Gif_SetTransColor(Gif_GetPaletteColor((MBT_U8)pcurgif->info.nBkgndIndex, pcurgif), imaRGB);
									Gif_SetTransIndex(0, imaRGB);
								}
								
								Gif_Transfer(imaRGB, pcurgif);			
																
							}
							
							{
								ADPICFRAM* pLastNode = pPicData->framData;
								ADPICFRAM* pTemp = pPicData->framData;
								MBT_S32 iTempSize;

								while ( pTemp )
								{
									pLastNode = pTemp;
									pTemp = pTemp->pNextFram;
								}

                                iTempSize = Gif_GetWidth(pstGifImage)*Gif_GetHeight(pstGifImage)*sizeof(MBT_U32);
                                if(0 == iTempSize)
                                {
                                    if ( pLastNode == MM_NULL )
                                    {
                                    pPicData->framData = MM_NULL;
                                    }
                                    else
                                    {
                                    pLastNode->pNextFram = MM_NULL;
                                    }
                                    bContinue=MM_FALSE;
                                    break;
                                }
                                                                        
								pTemp = (ADPICFRAM*)MALLOC_FORTARGET(sizeof(ADPICFRAM));
								/*if (pTemp==MM_NULL)
								{
									GIF_DEBUG(("pTemp malloc failed!\n"));
								}
								else
								{
									GIF_DEBUG(("image %d --- malloc for ptem size=%d\n", pPicData->framNum, sizeof(ADPICFRAM));
								}*/

								if ( pLastNode == MM_NULL )
								{
									pPicData->framData = pTemp;
								}
								else
								{
									pLastNode->pNextFram = pTemp;
								}

								if ( pTemp == MM_NULL )
								{
									bContinue=MM_FALSE;
									break;
								}
								else
								{
									memset(pTemp, 0, sizeof(ADPICFRAM));
									pTemp->fBmpInfo.pBData = (MBT_U16*)MALLOC_FORTARGET(iTempSize);
									pTemp->uDelayTime = pcurgif->info.dwFrameDelay;
									GIF_DEBUG(("pTemp->uDelayTime = %d\n",pTemp->uDelayTime));
									GIF_DEBUG(("pcurgif->gifgce.delaytime = %d\n",pcurgif->gifgce.delaytime));
									if ( pTemp->fBmpInfo.pBData == MM_NULL )
									{
										FREE_FORTARGET(pTemp);
										GIF_DEBUG(("pTemp->fBmpInfo.pBData malloc failed!iTempSize = %d\n",iTempSize));
										pTemp = MM_NULL;
										if ( pLastNode == MM_NULL )
										{
											pPicData->framData = MM_NULL;
										}
										else
										{
											pLastNode->pNextFram = MM_NULL;
										}
										bContinue=MM_FALSE;
										break;
									}
									else
									{
										MBT_S32 i, j, xsize, ysize;
										MBT_U32* pNode;
										RGBQUAD rgb;

										GIF_DEBUG(("malloc for fBmpInfo.pBData\n"));
										GIF_DEBUG(("image %d --- malloc for fBmpInfo.pBData size=%d\n", pPicData->framNum, Gif_GetWidth(pstGifImage)*Gif_GetHeight(pstGifImage)*sizeof(MBT_U32)));
										
										pPicData->fileType = iFiletype;
										pPicData->framNum ++;
										pPicData->valid = 1;
										pTemp->fBmpInfo.bColorType = MM_OSD_COLOR_MODE_ARGB1555;
										pTemp->uXoffset = 0;
										pTemp->uYoffset = 0;
										pTemp->fBmpInfo.bWidth= Gif_GetWidth(pstGifImage);
										pTemp->fBmpInfo.bHeight = Gif_GetHeight(pstGifImage);

										xsize = pTemp->fBmpInfo.bWidth;
										ysize = pTemp->fBmpInfo.bHeight;

										
										pNode = pTemp->fBmpInfo.pBData;
										for( i=ysize-1; i>=0;i--)
										{
											for( j=0; j<xsize; j++ )
											{
												if (pcurgif->head.biClrUsed)
												{
													rgb = Gif_GetPaletteColor(Gif_GetPixelIndex(j,i, pcurgif), pcurgif);
												} 
												else 
												{
													MBT_U8* iDst  = pcurgif->info.pImage + i*pcurgif->info.dwEffWidth + j*3;
													rgb.rgbBlue = *iDst++;
													rgb.rgbGreen= *iDst++;
													rgb.rgbRed  = *iDst;
												}

												rgb.rgbReserved = 0;	
												*pNode = (((rgb.rgbRed<<16)&0x00ff0000)|((rgb.rgbGreen<<8)&0x0000ff00)|rgb.rgbBlue|0xff000000);
												pNode ++;
											}
										}
									}
								}
							}
						}
						//else
						{
							iImage++;
							
						}

						break;

			
					}

				case ';': //terminator
					bContinue=MM_FALSE;
					break;

				default:
					bPreviousWasNull = (ch==0);
					break;
			}
		}
	}

	if ( imaRGB )
	{
		GIF_DEBUG(("ready to free imaRGB->member:%x\n", imaRGB));
		Gif_FreeGIFIMAGEMember(imaRGB);
		FREE_FORTEMPBUF(imaRGB);
		GIF_DEBUG(("free for imaRGB\n"));
		imaRGB = MM_NULL;
	}

	if ( pstGifImage )
	{
		GIF_DEBUG(("ready to free pstGifImage->member:%x\n", pstGifImage));
		Gif_FreeGIFIMAGEMember(pstGifImage);
		FREE_FORTEMPBUF(pstGifImage);
		GIF_DEBUG(("free for pstGifImage\n"));
		pstGifImage = MM_NULL;
	}

	

	return MM_TRUE;
}


MBT_VOID gif_DecodGif(ADPICBMP *pPicData,MBT_VOID *pSrcData,MBT_S32 iSrcDataSize,MBT_S32 iFiletype)
{
	MBT_S32 iBytes=0;
	MBT_U8 ch;
	MBT_U8* p = MM_NULL;

	GIFFILE gif;

         if (pPicData==MM_NULL || pSrcData==MM_NULL || iFiletype > AD_STARTUP )
	{
		return;
	}

	p = (MBT_U8*)pSrcData+iSrcDataSize-1;

	ch = *p;
	while ( ch != ';' )//找到GIF文件的真正结尾。
	{
		iBytes++;
		p --;
		ch = *p;
	}

	iSrcDataSize -= iBytes;

	if ( iSrcDataSize <= 0 )
	{
		return;
	}

	gif.bEOF = 0;
	gif.iGifFileLen = iSrcDataSize;
	gif.pGifCurPos = pSrcData;
	gif.pGifFileHead = pSrcData;

	Gif_Decode( &gif, pPicData, iFiletype );
	
}


enum 
{
    m_BusinessFile,
    m_FlagFile,
    m_ManagerFile,
    m_MaxGifFile
};

static ADPICBMP me_pPicDataBmp[m_MaxGifFile] = 
{
    {0,0,0,0,MM_NULL},
    {0,0,0,0,MM_NULL},
    {0,0,0,0,MM_NULL},
};

static MBT_BOOL gif_UpdateGif(MBT_U32 u32Ver,MBT_VOID *pData,MBT_S32 nLogoSize,MBT_S32 iType)
{
    MBT_BOOL bRet = MM_FALSE;
    FFST_ErrorCode Error;
    FFST_FileHandle hFile;
    MBT_U32 u32LengthActual;
    MBT_CHAR *pFile = MM_NULL;
    MBT_U8 u8Buffer[8];
    MBT_U8 *pu8DataBuffer = pData;
    if(MM_NULL == pData)
    {
        return bRet;
    }

    switch(iType)
    {
        case BUSINESS_AD:
            pFile = gifv_cFileGif[m_BusinessFile];
            break;
        case FLAG_AD:
            pFile = gifv_cFileGif[m_FlagFile];
            break;
        case MANAGER_AD:
            pFile = gifv_cFileGif[m_ManagerFile];
            break;
    }
    u8Buffer[0] = (MBT_U8)((u32Ver>>24)&0x000000ff);
    u8Buffer[1] = (MBT_U8)((u32Ver>>16)&0x000000ff);
    u8Buffer[2] = (MBT_U8)((u32Ver>>8)&0x000000ff);
    u8Buffer[3] = (MBT_U8)(u32Ver&0x000000ff);

    u8Buffer[4] = (MBT_U8)((nLogoSize>>24)&0x000000ff);
    u8Buffer[5] = (MBT_U8)((nLogoSize>>16)&0x000000ff);
    u8Buffer[6] = (MBT_U8)((nLogoSize>>8)&0x000000ff);
    u8Buffer[7] = (MBT_U8)(nLogoSize&0x000000ff);
    Error=FFSF_FileOpen( (MBT_CHAR *)pFile , FFSM_OpenExist, &hFile );
    if(Error == FFSM_ErrorNoError)
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)pFile  , FFSM_OpenWrite, &hFile);
    }
    else
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)pFile, FFSM_OpenCreate, &hFile);
    }
    Error = FFSF_FileWrite(hFile, (MBT_U8 *)u8Buffer,(MBT_U32)8, &u32LengthActual);
    Error = FFSF_FileWrite(hFile, (MBT_U8 *)pu8DataBuffer,(MBT_U32)nLogoSize, &u32LengthActual);
    FFSF_FileSetEOF(hFile);
    Error = FFSF_FileClose(hFile);
    bRet = MM_TRUE;
    return bRet;
}



MBT_VOID Gif_RemoveGifFile ( MBT_VOID ) 
{
    FFST_FileHandle hFile;

    if(FFSF_FileOpen( (MBT_CHAR *)gifv_cFileGif[m_BusinessFile] , FFSM_OpenExist, &hFile ) == FFSM_ErrorNoError)
    {
        FFSF_FileDelete((MBT_CHAR *)gifv_cFileGif[m_BusinessFile]);
    }

    if(FFSF_FileOpen( (MBT_CHAR *)gifv_cFileGif[m_FlagFile] , FFSM_OpenExist, &hFile ) == FFSM_ErrorNoError)
    {
        FFSF_FileDelete((MBT_CHAR *)gifv_cFileGif[m_FlagFile]);
    }

    if(FFSF_FileOpen( (MBT_CHAR *)gifv_cFileGif[m_ManagerFile] , FFSM_OpenExist, &hFile ) == FFSM_ErrorNoError)
    {
        FFSF_FileDelete((MBT_CHAR *)gifv_cFileGif[m_ManagerFile]);
    } 
}



static MBT_U8 * gif_GetGifInfo(MBT_S32 *piSize,MBT_U32 *pu32Ver,MBT_S32 iType)
{
    FFST_FileHandle hFile;
    MBT_U32 u32LengthActual;
    FFST_ErrorCode Error;
    MBT_CHAR *pFile = MM_NULL;
    MBT_U8 *pu8Data = MM_NULL;
    MBT_U8 u8Head[8];

    if(MM_NULL == piSize||MM_NULL == pu32Ver)
    {
        return pu8Data;
    }

    *piSize = 0;
    *pu32Ver = 0;
    switch(iType)
    {
        case BUSINESS_AD:
            pFile = gifv_cFileGif[m_BusinessFile];
            break;
        case FLAG_AD:
            pFile = gifv_cFileGif[m_FlagFile];
            break;
        case MANAGER_AD:
            pFile = gifv_cFileGif[m_ManagerFile];
            break;
    }
    Error = FFSF_FileOpen( (MBT_CHAR *)pFile , FFSM_OpenExist, &hFile);
    if(Error!=FFSM_ErrorNoError)
    {
        return pu8Data;
    }

    Error = FFSF_FileOpen( pFile , FFSM_OpenReadWrite, &hFile);
    Error=FFSF_FileRead(hFile, u8Head, 8, &u32LengthActual);
    *pu32Ver = ((u8Head[0]<<24)|(u8Head[1]<<16)|(u8Head[2]<<8)|u8Head[3]);
    *piSize = ((u8Head[4]<<24)|(u8Head[5]<<16)|(u8Head[6]<<8)|u8Head[7]);
    if(0 != *piSize)
    {
        pu8Data = MALLOC_FORTEMPBUF(*piSize);
    }

    if(MM_NULL != pu8Data)
    {
        Error=FFSF_FileRead(hFile, pu8Data, *piSize, &u32LengthActual);
    }
    Error = FFSF_FileClose(hFile);
    return pu8Data;
}

MBT_VOID Gif_InitAdverVersion(MBT_VOID)
{
    MBT_U32 i;
    MBT_S32 iSize;
    MBT_U32 u32Ver;
    MBT_U8 *pu8Data;
    MBT_S32 iType[3] = 
    {
        BUSINESS_AD,
        FLAG_AD,
        MANAGER_AD,
    };

    for(i = 0;i<m_MaxGifFile;i++)
    {        
        pu8Data = gif_GetGifInfo(&iSize,&u32Ver, iType[i]);
        if(MM_NULL != pu8Data)
        {
            FREE_FORTEMPBUF(pu8Data);
        }
    }
}


MBT_VOID Gif_Open(MBT_VOID)
{
    MBT_U32 i;
    MBT_S32 iSize;
    MBT_U32 u32Ver;
    MBT_U8 *pu8Data;
    MBT_S32 iType[3] = 
    {
        BUSINESS_AD,
        FLAG_AD,
        MANAGER_AD,
    };

    for(i = 0;i<m_MaxGifFile;i++)
    {        
        pu8Data = gif_GetGifInfo(&iSize,&u32Ver, iType[i]);
        if(MM_NULL != pu8Data)
        {
            GIF_DEBUG(("gif_DecodGif %d\n",i));
            gif_DecodGif(&(me_pPicDataBmp[i]),pu8Data,iSize,iType[i]);
            FREE_FORTEMPBUF(pu8Data);
        }
    }
}




MBT_VOID Gif_Close(MBT_VOID)
{
    MBT_U32 i;
    for(i = 0;i<m_MaxGifFile;i++)
    {
        Gif_FreeAdData(me_pPicDataBmp+i);
    }
}



MBT_S32 Gif_WaitTime(MBT_VOID)
{
    return gifv_i32WaitTime;
}

MBT_S32 Gif_Show(MBT_S32 iStartX,MBT_S32 iStartY,MBT_S32 iWidth,MBT_S32 iHeight,MBT_S32 iFileType,MBT_BOOL bFirst)
{
    BITMAPTRUECOLOR * pBmpInfo;
    
    static MBT_S32 iFremToShow[3] = {-1,-1,-1};
    ADPICFRAM *framData;   
    MBT_S32 i;

    if(iFileType > MANAGER_AD)
    {
        gifv_i32WaitTime = 1000;
        return -1;
    }

    if(me_pPicDataBmp[iFileType].valid == 0)
    {
        gifv_i32WaitTime = 1000;
        return -1;
    }

    if(bFirst)
    {
        iFremToShow[iFileType] = -1;
    }

    iFremToShow[iFileType]++;
    iFremToShow[iFileType] %= me_pPicDataBmp[iFileType].framNum;

    framData = me_pPicDataBmp[iFileType].framData;

    i = 0;
    while(i<iFremToShow[iFileType]&&framData)
    {
        framData = framData->pNextFram;
        i++;
    }

    if(MM_NULL == framData)
    {
        gifv_i32WaitTime = 1000;
        return -1;
    }

    pBmpInfo = &(framData->fBmpInfo);
    WGUIF_DisplayReginTrueColorBmp(iStartX+framData->uXoffset, iStartY+framData->uYoffset, 0,0,iWidth- framData->uXoffset,iHeight - framData->uYoffset,pBmpInfo,MM_FALSE);
    if(0 == framData->uDelayTime)
    {
        gifv_i32WaitTime = 1000;
    }
    else
    {
        gifv_i32WaitTime = framData->uDelayTime*10;
    }
    return gifv_i32WaitTime/10;
}

MBT_VOID Gif_DecodeSaveNew(MBT_VOID *me_Data,MBT_U32 iDataType,MBT_U32 iDataSize,MBT_U32 uVersion)
{    
    MBT_S32 iType;
    switch(iDataType)
    {
        case BUSINESS_AD:
            iType =   m_BusinessFile;
            break;

        case FLAG_AD:
            iType =   m_FlagFile;
            break;

        case MANAGER_AD:
            iType =   m_ManagerFile;
            break;

        default:
            return;
    } 
    gif_UpdateGif(uVersion, me_Data, iDataSize,iDataType);
    gif_DecodGif(&(me_pPicDataBmp[iType]), me_Data, iDataSize, iDataType);
}

#if 1
MBT_BOOL Gif_ParseGifData(MBT_U8* data, MBT_S32 size, ADPICBMP* gif)
{
	gif->framData = MM_NULL;
	gif_DecodGif(gif,data,size,0);
	if(gif->valid == 1)
	{
		return MM_TRUE;
	}
	else
	{
		return MM_FALSE;
	}
}

MBT_VOID Gif_DeleteGifData(ADPICBMP* gif)
{
	Gif_FreeAdData(gif);
}

MBT_BOOL Gif_CommonShow(MBT_S32 iStartX,MBT_S32 iStartY,MBT_S32 iWidth,MBT_S32 iHeight,ADPICBMP* gif,MBT_S32 framcount,MBT_S32 *delaytime)
{
    BITMAPTRUECOLOR * pBmpInfo;
    ADPICFRAM* temp;
    MBT_S32 i;

    if(gif->valid == 0)
    {
        return MM_FALSE;
    }

    framcount %= gif->framNum;

    i = 0;
    temp = gif->framData;
    while(i<framcount&&temp)
    {
        temp = temp->pNextFram;
        i++;
    }

    pBmpInfo = &(temp->fBmpInfo);
    WGUIF_DisplayReginTrueColorBmp(iStartX+temp->uXoffset, iStartY+temp->uYoffset, 0,0,iWidth- temp->uXoffset,iHeight - temp->uYoffset,pBmpInfo,MM_FALSE);

    *delaytime = (temp->uDelayTime == 0)?(40):(temp->uDelayTime*10);
    return MM_TRUE;
}

#endif

