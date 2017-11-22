/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_parse.c
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/


/*********************************add include here******************************/
#include "jpeg_common.h"
#include "jpeg_decctrl.h"
#include "jpeg_handle.h"
#include "jpeg_buf.h"
#include "jpeg_parse.h"

/*****************************************************************************/


/***************************** Macro Definition ******************************/
#define JPG_PARSED_SOI      0x00000001  
#define JPG_PARSED_DQT      0x00000002
#define JPG_PARSED_DHT      0x00000004
#define JPG_PARSED_SOF      0x00000008
#define JPG_PARSED_SOS      0x00000010
#define JPG_PARSED_APP0     0x00000020
#define JPG_PARSED_APP1     0x00000040 
#define JPG_PARSED_EOI      0x00000080
#define JPG_SYNTAX_ALL      0x0000001F
#define JPG_PARSED_ERR      0x00000100

#define JPG_JOINTSPACE_LEN  (1<<11)
#define JPGTAG                0xFF
#define JPG_EXIF              0x66697845


#define JPG_MAXCOMPS_IN_SCAN   4   



#define JPG_U16SWAP(u16Data)   ((u16Data << 8) | (u16Data >> 8)) 
#define JPG_MIN(a,b)            (((a) <= (b))  ?  (a) :  (b))

#define JPG_CHECK_SOI(pBuf) \
    (((JPGTAG == *(HI_U8*)(pBuf)) && (SOI == *(HI_U8*)((HI_U8*)(pBuf) + 1))) ? \
       HI_TRUE : HI_FALSE )

#define JPG_DECIDE_HINDPIC(ReqIdx, CurIdx)\
    (((CurIdx) > 0 && ((ReqIdx) == 0 || (ReqIdx) > (CurIdx))) ? HI_TRUE : HI_FALSE)


#define JPGPARSE_STATE_UPDATE(ParseState, pParseState) \
do {\
    pParseState->Index = ParseState.Index; \
    pParseState->State = ParseState.State; \
    pParseState->ThumbCnt = ParseState.ThumbCnt; \
}while(0)

#define JPGPARSE_LENGTHJUDGE(RealLen, ReqLen) \
do {\
    if (RealLen < ReqLen) \
        return HI_FAILURE; \
}while(0)

/*************************** Structure Definition ****************************/
typedef struct hiJPGPARSE_APP1_S
{
    HI_BOOL bActive;
    HI_U32  APP1MarkLen;
    HI_U32  BufLen;
    HI_VOID*  StartRdAddr;   
    HI_VOID*  EndRdAddr;     
    HI_U32    APP1Offset;
    HI_VOID*  OutAddr;      
}JPGPARSE_APP1_S;

typedef struct hiJPGPARSE_CTX_S
{
    JPG_PARSESTATE_S     ParseState;    
    JPG_PICPARSEINFO_S   MainPic;       
    JPG_PICPARSEINFO_S*  pCurrPic;      
    JPG_PICPARSEINFO_S*  pTailPic;      
    JPG_IMGTYPE_E             ImgType;       
    HI_BOOL              bMainState;   
    HI_U32               SkipLen;      
    HI_VOID*             pJointSpace;   
    JPGPARSE_APP1_S      stAPP1;        
    
    JPGPARSE_APP1_S      stExif;        
    HI_BOOL              bReqExif;       
}JPGPARSE_CTX_S;

typedef enum hiJPG_MARKER_E   /* JPEG marker codes */
{          
  SOF0  = 0xc0,
  SOF1  = 0xc1,
  SOF2  = 0xc2,
  SOF3  = 0xc3,
  DHT   = 0xc4,
  SOF5  = 0xc5,
  SOF6  = 0xc6,
  SOF7  = 0xc7,
  
  JPG   = 0xc8,
  SOF9  = 0xc9,
  SOF10 = 0xca,
  SOF11 = 0xcb,
  DAC   = 0xcc,
  SOF13 = 0xcd,
  SOF14 = 0xce,
  SOF15 = 0xcf,
  
  RST0  = 0xd0,
  RST1  = 0xd1,
  RST2  = 0xd2,
  RST3  = 0xd3,
  RST4  = 0xd4,
  RST5  = 0xd5,
  RST6  = 0xd6,
  RST7  = 0xd7,
  
  SOI   = 0xd8,
  EOI   = 0xd9,
  SOS   = 0xda,
  DQT   = 0xdb,
  DNL   = 0xdc,
  DRI   = 0xdd,
  DHP   = 0xde,
  EXP   = 0xdf,
  
  APP0  = 0xe0,
  APP1  = 0xe1,
  APP2  = 0xe2,
  APP3  = 0xe3,
  APP4  = 0xe4,
  APP5  = 0xe5,
  APP6  = 0xe6,
  APP7  = 0xe7,
  APP8  = 0xe8,
  APP9  = 0xe9,
  APP10 = 0xea,
  APP11 = 0xeb,
  APP12 = 0xec,
  APP13 = 0xed,
  APP14 = 0xee,
  APP15 = 0xef,
  
  JPG0  = 0xf0,
  JPG1  = 0xf1,
  JPG2  = 0xf2,
  JPG3  = 0xf3,
  JPG4  = 0xf4,
  JPG5  = 0xf5,
  JPG6  = 0xf6,
  JPG7  = 0xf7,
  JPG8  = 0xf8,
  JPG9  = 0xf9,
  JPG10 = 0xfa,
  JPG11 = 0xfb,
  JPG12 = 0xfc,
  JPG13 = 0xfd,
  COM   = 0xfe,
  
  TEM   = 0x01,
} JPG_MARKER_E;


/********************** Global Variable declaration **************************/
static const HI_U32 s_ZOrder[JPG_QUANT_DCTSIZE + 16] = {
  0,  1,  8, 16,  9,  2,  3, 10,
 17, 24, 32, 25, 18, 11,  4,  5,
 12, 19, 26, 33, 40, 48, 41, 34,
 27, 20, 13,  6,  7, 14, 21, 28,
 35, 42, 49, 56, 57, 50, 43, 36,
 29, 22, 15, 23, 30, 37, 44, 51,
 58, 59, 52, 45, 38, 31, 39, 46,
 53, 60, 61, 54, 47, 55, 62, 63,
 63, 63, 63, 63, 63, 63, 63, 63, /* extra entries for safety in decoder */
 63, 63, 63, 63, 63, 63, 63, 63
};


/******************************* API declaration *****************************/

/******************************* API realize *****************************/
static HI_S32 JPGParsingSOF(HI_U8 Marker, HI_VOID *pBuf, HI_U32 BufLen, 
                               JPG_PICPARSEINFO_S *pImage)
{
    HI_U8 Id, Factor;
    HI_U32 Cnt;
    JPG_COMPONENT_INFO * pCompnent;   
    HI_U8 *pTmp = (HI_U8*)pBuf;
    HI_U32 Length = BufLen;
    
    JPGPARSE_LENGTHJUDGE(BufLen, 6);
    pImage->CodeType = 0;
    
    pImage->Profile = Marker - SOF0;
    pImage->Precise = (HI_U32)*pTmp++;
    pImage->Height = (*pTmp << 8) | *(pTmp + 1);
    pTmp += 2;
    pImage->Width = (*pTmp << 8) | *(pTmp + 1);
    pTmp += 2;
    pImage->ComponentNum = *pTmp++;
    Length -= 6;
    if (Length != pImage->ComponentNum * 3)
    {
        return HI_FAILURE;
    }

    if(pImage->ComponentNum > 4)
    {
        return HI_FAILURE;
    }
    pCompnent = pImage->ComponentInfo; 
    for (Cnt = 0; Cnt < pImage->ComponentNum; Cnt++) 
    {
        Id = *pTmp++;    
        Factor = *pTmp++;

        pCompnent[Cnt].ComponentId = Id;
        pCompnent[Cnt].ComponentIndex = Cnt;
        pCompnent[Cnt].Used = HI_TRUE;
        pCompnent[Cnt].HoriSampFactor = (Factor >> 4) & 0x0f;
        pCompnent[Cnt].VertSampFactor= Factor & 0x0f;
        pCompnent[Cnt].QuantTblNo = *pTmp++;
		
		 if(pCompnent[Cnt].QuantTblNo >= 4)	
		 {
			return HI_FAILURE;
		 }
    }
	
    if(	  (pCompnent[0].ComponentId == pCompnent[1].ComponentId)
    	||(pCompnent[0].ComponentId == pCompnent[2].ComponentId)
    	||(   (pCompnent[1].ComponentId == pCompnent[2].ComponentId)
    		&&(0 != pCompnent[1].ComponentId)))	
    {
		return HI_FAILURE;
    }	

    pImage->SyntaxState |= JPG_PARSED_SOF;

    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGParsingSOS
* Description:   SOS
* Input:         pBuf   BUF
*                BufLen Buf
*                pImage 
* Output:        pImage 
* Return:        
* Others:        
******************************************************************************/
static HI_S32 JPGParsingSOS (HI_VOID *pBuf, HI_U32 BufLen, 
                               JPG_PICPARSEINFO_S *pImage)
{
    HI_U32 Cnt;
    HI_U8 Num, Id, CompNum;
    JPG_COMPONENT_INFO * pCompnent; 
    HI_U8 *pTmp = (HI_U8*)pBuf;
    
    if (0 != pImage->ScanNmber)
    {
        return HI_FAILURE;
    }
    JPGPARSE_LENGTHJUDGE(BufLen, 1);
    CompNum = *pTmp++;

    if ((BufLen != (HI_U32)(CompNum * 2 + 4)) || 
         (1 > CompNum) || (JPG_MAXCOMPS_IN_SCAN  < CompNum))
    {
        return HI_FAILURE;
    }

    pImage->ComponentInScan = CompNum;

    pCompnent = pImage->ComponentInfo;
    for (Cnt = 0; Cnt < CompNum; Cnt++)
    {
        Id = *pTmp++;

        if (HI_TRUE != pCompnent[Cnt].Used)
        {
            return HI_FAILURE;
        }       

        Num = *pTmp++;
        pCompnent->DcTblNo = (Num >> 4) & 0x0f;
        pCompnent->AcTblNo = Num & 0x0f;
    }

    pImage->Ss = *pTmp++;
    pImage->Se = *pTmp++;
    Num = *pTmp++;
    
    pImage->Ah = (Num >> 4) & 0x0f;
    pImage->Al = Num & 0x0f;
    pImage->ScanNmber++;

    pImage->SyntaxState |= JPG_PARSED_SOS;
    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGParsingDHT
* Description:   
* Input:         pBuf   BUF
*                BufLen Buf
*                pImage 
* Output:        pImage 
* Return:      
* Others:        
******************************************************************************/
static HI_S32 JPGParsingDHT(HI_VOID *pBuf, HI_U32 BufLen, 
                              JPG_PICPARSEINFO_S *pImage)
{
    HI_U8 Index;    
    HI_U32 IsActable;
    JPG_HUFF_TBL **pHtblptr;
    HI_U32 Cnt, CntTmp;
    HI_U8 *pTmp = (HI_U8*)pBuf;
    HI_U32 Length = BufLen;

    while (Length > 16)
    {
        Index = *pTmp++;

        IsActable = (Index & 0x10) ? HI_TRUE : HI_FALSE;
        Index &= 0x0f;

        if (Index >= JPG_NUM_HUFF_TBLS)
        {        
            return HI_FAILURE;
        }
        
        pHtblptr = IsActable ? &pImage->pAcHuffTbl[Index] : &pImage->pDcHuffTbl[Index];
        if (HI_NULL == *pHtblptr)
        {        
            *pHtblptr = (JPG_HUFF_TBL *)JPGFMW_MemGet(&s_DecCtrlMem.s_ParseMem, sizeof(JPG_HUFF_TBL));
            if(HI_NULL == *pHtblptr)
            {
                return HI_FAILURE;
            }
        }

        if (Length < 17)
        {
            //VCOS_free (*pHtblptr);
            *pHtblptr = NULL;
            return HI_FAILURE;
        }
        
        VCOS_memcpy(&((*pHtblptr)->Bits[1]), pTmp, 16);
        pTmp += 16;
        Length -= 17;

        Cnt = 0;
        for (CntTmp = 1; CntTmp <= 16; CntTmp++) 
        {
            Cnt += (*pHtblptr)->Bits[CntTmp];
        }

        if (Cnt > 256 ||  Cnt > Length)
        {
            //VCOS_free (*pHtblptr);
            *pHtblptr = NULL;
            return HI_FAILURE;
        }

        (*pHtblptr)->HuffValLen = (HI_U16)Cnt;

        if (Length < Cnt)
        {
            *pHtblptr = NULL;
            return HI_FAILURE;
        }
        VCOS_memcpy((*pHtblptr)->HuffVal, pTmp, Cnt);
        Length -= Cnt;

        if(0 != Length)
        {
            pTmp += Cnt; //z53517
        }
    }

    if (Length != 0)
    {
        return HI_FAILURE;
    }
    
    pImage->SyntaxState |= JPG_PARSED_DHT;
    return HI_SUCCESS;
}


/******************************************************************************
* Function:      JPGParsingDQT
* Description:   DQT
* Input:         pBuf   BUF
*                BufLen Buf
*                pImage 
* Output:        pImage 
* Return:        HI_SUCCESSHI_FAILURE
* Others:        
******************************************************************************/
static HI_S32 JPGParsingDQT (HI_VOID *pBuf, HI_U32 BufLen, JPG_PICPARSEINFO_S *pImage)
{
    HI_U8 Num, Prec;
    JPG_QUANT_TBL *pQuantPtr;
    HI_U32 Cnt;
    HI_U8 *pTmp = (HI_U8*)pBuf;
    HI_U32 Length = BufLen;

    while (Length > 0)
    {        
        Num = *pTmp++;

        Prec = Num >> 4;
        Num &= 0x0F;

        if (Num >= JPG_NUM_QUANT_TBLS)
        {
            return HI_FAILURE;
        }

        if (HI_NULL == pImage->pQuantTbl[Num])
        {
	         pImage->pQuantTbl[Num] = (JPG_QUANT_TBL *)JPGFMW_MemGet(&s_DecCtrlMem.s_ParseMem, sizeof(JPG_QUANT_TBL));
            if(HI_NULL == pImage->pQuantTbl[Num])
            {
                return HI_FAILURE;
            }
        }

        pQuantPtr = pImage->pQuantTbl[Num];
        pQuantPtr->Precise = Prec;

        if (Length < ((JPG_QUANT_DCTSIZE << Prec) + 1))
        {
            pImage->pQuantTbl[Num] = NULL;
            return HI_FAILURE;
        }
        
        if (Prec) 
        {
            for (Cnt = 0; Cnt < JPG_QUANT_DCTSIZE; Cnt++) 
            {
                pQuantPtr->Quantval[s_ZOrder[Cnt]] = (*pTmp << 8) | *(pTmp + 1);
                pTmp += 2;
            }
        }
        else
        {
            for (Cnt = 0; Cnt < JPG_QUANT_DCTSIZE; Cnt++) 
            {
                pQuantPtr->Quantval[s_ZOrder[Cnt]] = *pTmp++;
            }
        }

        Length -= (JPG_QUANT_DCTSIZE << Prec) + 1;
    }

    if (Length != 0)
    {
        return HI_FAILURE;
    }

    pImage->SyntaxState |= JPG_PARSED_DQT;
    return HI_SUCCESS;
}

/***************************************************************************************
* func          : JPGPARSESkipData
* description   : CNcomment: 跳过一段数据 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID JPGPARSESkipData(JPG_CYCLEBUF_S *pParseBuf, HI_U32* pLen)
{
    JPGBUF_DATA_S     BufInfo; 
    HI_U32   ReqSkipLen = *pLen;
    HI_U32  DataLen;

    (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &BufInfo);
    DataLen    = BufInfo.u32Len[0] + BufInfo.u32Len[1]; 
    ReqSkipLen = JPG_MIN(ReqSkipLen, DataLen);
    JPGBUF_SetRdHead(pParseBuf, (HI_S32)ReqSkipLen); 
    
    (*pLen) -= ReqSkipLen;
    return;
}

/******************************************************************************
* Function:      JPGPARSEFindMarker
* Description:   
* Input:            BUF
* Output:        pu8Mark Marker
* Return:        HI_SUCCESSHI_FAILURE
* Others:                 
******************************************************************************/
static HI_S32 JPGPARSEFindMarker(JPG_CYCLEBUF_S * pstCB, HI_U8* pu8Mark)
{
    JPGBUF_DATA_S stData;
    HI_U8  *pStart1, *pStart2;
    HI_U8 *pEnd1, *pEnd2;
    HI_U8*  pu8Char;
    HI_S32  s32Ret = HI_FAILURE;
    HI_U32 Offset;

    (HI_VOID)JPGBUF_GetDataBtwWhRh(pstCB,  &stData);
    if(0 == stData.u32Len[0])
    {
        *pu8Mark = 0;
        return HI_FAILURE;
    }
    
    pStart1 = (HI_U8*)stData.pAddr[0];
    pEnd1   = (HI_U8*)stData.pAddr[0] + (stData.u32Len[0] - 1);
    pStart2 = NULL;
    pEnd2    = NULL;
        
    pu8Char = pStart1;

    while(pu8Char != pEnd1)
    {
        if (JPGTAG == *pu8Char)
        {
            if (*(pu8Char + 1) >= SOF0 &&  *(pu8Char + 1) <= COM)
            {
                *pu8Mark = *(pu8Char + 1);
                s32Ret = HI_SUCCESS;
                break;
            }
        }
        pu8Char++;
    }

    if ((HI_SUCCESS != s32Ret) && (stData.u32Len[1] > 0))
    {
        pStart2 = (HI_U8*)stData.pAddr[1];
        pEnd2   = (HI_U8*)stData.pAddr[1] + (stData.u32Len[1] - 1);
        
        if ((JPGTAG == *pEnd1) && (*pStart2 >= SOF0 &&  *pStart2 <= COM))
        {
            pu8Char = pEnd1;
            *pu8Mark = *pStart2;
            s32Ret = HI_SUCCESS;
        }
        else
        {
            pu8Char = pStart2;
            while(pu8Char != pEnd2)
            {
                if (JPGTAG == *pu8Char)
                {
                    if (*(pu8Char + 1) >= SOF0 &&  *(pu8Char + 1) <= COM)
                    {
                        *pu8Mark = *(pu8Char + 1);
                        s32Ret = HI_SUCCESS;
                        break;
                    }
                }
                pu8Char++;
            }
        }
    }
    
    if (pu8Char >= pStart1)
        Offset = (HI_U32)((pu8Char - pStart1));
    else
        Offset = (HI_U32)((pu8Char - pStart2)) + stData.u32Len[0];

    if(HI_SUCCESS != s32Ret)
    {
        if(JPGTAG != *pu8Char)
        {
            Offset += 1;
            *pu8Mark = 0;
        }
        else
        {
            *pu8Mark = JPGTAG;
        }
    }
    

    JPGBUF_SetRdHead(pstCB, (HI_S32)Offset);

    return s32Ret;
}

/******************************************************************************
* Function:      JPGPARSEGetMarkLen
* Description:   
* Input:         
* Output:        pu16Len 
* Return:        HI_SUCCESS HI_FAILURE
* Others:      
******************************************************************************/
static HI_S32 JPGPARSEGetMarkLen(const JPG_CYCLEBUF_S * pstCB, HI_U16* pu16Len)
{
    JPGBUF_DATA_S stData;
    HI_U16  MarkLen = 0;
    HI_U8  SizeBuf[4];

    (HI_VOID)JPGBUF_GetDataBtwWhRh(pstCB,  &stData);
    if((stData.u32Len[0] + stData.u32Len[1]) < 4)
    {
        return HI_FAILURE;
    }

    JPGBUF_Read(pstCB, SizeBuf,4);
    
    MarkLen = (SizeBuf[2] << 8) | SizeBuf[3];
    
    *pu16Len = MarkLen; 
    return HI_SUCCESS;
}

/******************************************************************************
* Function:      JPGPARSEParseMarker
* Description:   

* :        
******************************************************************************/
static HI_S32 JPGPARSEParseMarker (HI_U8 Marker, HI_VOID *pBuf, HI_U32 BufLen, 
                                             JPG_PICPARSEINFO_S *pImage)
{
    switch (Marker)
    {
        case DQT:
        {
            return JPGParsingDQT(pBuf, BufLen, pImage);
        }
        case DHT:
        {
            return JPGParsingDHT(pBuf, BufLen, pImage);
        }
        case SOF0:
        case SOF1:
        case SOF2:
        case SOF3:
        {
            return JPGParsingSOF(Marker, pBuf, BufLen, pImage);
        }
        case SOS:
        {
            return JPGParsingSOS(pBuf, BufLen, pImage);
        }
        default:
        {
            assert(0);
        }
        
    }
    return HI_SUCCESS;
}

/******************************************************************************
* Function:       JPGPARSEReleaseTable
* Description:    
* Input:            
* Output:       
* Return:        
* Others:        
******************************************************************************/
static HI_VOID  JPGPARSEReleaseTable(JPG_PICPARSEINFO_S* pPicInfo)
{
    HI_U32 i;
    /*release DQT DHT*//* CNcomment:释放DQT  DHT*/
    for(i = 0; i < 4; i++)
    {
        if(NULL != pPicInfo->pQuantTbl[i])
        {
            pPicInfo->pQuantTbl[i] = NULL;
        }

        if(NULL != pPicInfo->pDcHuffTbl[i])
        {
            pPicInfo->pDcHuffTbl[i] = NULL;
        }

        if(NULL != pPicInfo->pAcHuffTbl[i])
        {
            pPicInfo->pAcHuffTbl[i] = NULL;
        }
    }
        
    return;
}

HI_VOID JPGPARSEInitApp1(JPG_CYCLEBUF_S* pParseBuf, JPGPARSE_APP1_S* pstAPP1,
                        HI_U32 MarkLen)
{
    JPGBUF_DATA_S  stData;
    HI_VOID*       BufAddr;
    HI_U32         BufLen;

    JPGBUF_GetBufInfo(pParseBuf, &BufAddr, &BufLen);
    (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);
    
    pstAPP1->APP1Offset = 0;
    pstAPP1->BufLen = BufLen;
    pstAPP1->APP1MarkLen = MarkLen;
    pstAPP1->StartRdAddr = stData.pAddr[0];
     
    return;
}


/***************************************************************************************
* func          : JPGPARSEUpdateApp1
* description   : CNcomment: 更新APP标志 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID JPGPARSEUpdateApp1(JPG_CYCLEBUF_S* pParseBuf, JPGPARSE_APP1_S* pstAPP1)
{
    JPGBUF_DATA_S  stData;
    HI_S32         RealLen;
    
    (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);

    pstAPP1->EndRdAddr = stData.pAddr[0];
    RealLen = (HI_S32)pstAPP1->EndRdAddr - (HI_S32)pstAPP1->StartRdAddr;
    if(RealLen < 0)
    {
        RealLen += pstAPP1->BufLen;
    }

    assert(RealLen >= 0);
    pstAPP1->APP1Offset += RealLen;
    pstAPP1->StartRdAddr = pstAPP1->EndRdAddr; 
     
    return;
}


/***************************************************************************************
* func          : JPGPARSEUpdateExif
* description   : CNcomment: 更新exif数据 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID JPGPARSEUpdateExif(JPG_CYCLEBUF_S *pParseBuf,   \
                                        JPGPARSE_APP1_S* pstAPP1,    \
                                        JPGPARSE_APP1_S* pstExif,    \
                                        HI_BOOL bExifEnd)
{
    HI_U8* pExifAddr = NULL;
    HI_U32 u32ExifLen = 0;
    JPGBUF_DATA_S stData;
    
    u32ExifLen = pstAPP1->APP1Offset - pstExif->APP1Offset;

    if((u32ExifLen >= 64) || (HI_TRUE == bExifEnd))
    {
        JPGBUF_GetDataBtwRhRt(pParseBuf, &stData);

        pExifAddr = (HI_U8*)pstExif->OutAddr + pstExif->APP1Offset;
        
        if(u32ExifLen <= stData.u32Len[0])
        {   
            VCOS_memcpy(pExifAddr, stData.pAddr[0], u32ExifLen); 
        }
        else
        {
            VCOS_memcpy(pExifAddr, stData.pAddr[0], stData.u32Len[0]); 
            VCOS_memcpy(pExifAddr + stData.u32Len[0], stData.pAddr[1],u32ExifLen - stData.u32Len[0]); 
        }
        
        JPGPARSEUpdateApp1(pParseBuf, pstExif);
        
        JPGBUF_StepRdTail(pParseBuf);
    }
  
    return;
}

/***************************************************************************************
* func          : JPGPARSE_CreateInstance
* description   : CNcomment: 创建解码器实例 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 JPGPARSE_CreateInstance(JPG_HANDLE *pHandle, JPG_IMGTYPE_E ImgType)
{
    JPG_HANDLE       ParseHandle;
    HI_S32          s32Ret;
    JPGPARSE_CTX_S* pParseCtx;

    JPG_ASSERT_NULLPTR(pHandle) ;

    pParseCtx = (JPGPARSE_CTX_S*)JPGFMW_MemGet(&s_DecCtrlMem.s_ParseMem, (sizeof(JPGPARSE_CTX_S) + JPG_JOINTSPACE_LEN));
    if(NULL == pParseCtx)
    {
        goto LABEL0;
    }
    
    s32Ret = JPG_Handle_Alloc(&ParseHandle, (HI_VOID*)pParseCtx);
    if(HI_SUCCESS != s32Ret)
    {
        goto LABEL1;
    }
    
    VCOS_memset((HI_VOID*)pParseCtx, 0, sizeof(JPGPARSE_CTX_S));
    pParseCtx->pJointSpace = pParseCtx + 1;
	
    pParseCtx->SkipLen    = 0;
    pParseCtx->bMainState = HI_TRUE;
    pParseCtx->pCurrPic   = &pParseCtx->MainPic;
    pParseCtx->pTailPic   = &pParseCtx->MainPic;
    pParseCtx->MainPic.SyntaxState = 0;
    pParseCtx->MainPic.Index       = 0;
    pParseCtx->ImgType             = ImgType;
    pParseCtx->ParseState.State    = JPGPARSE_STATE_STOP;
    pParseCtx->ParseState.Index     = 0;


    VCOS_memset(&pParseCtx->stAPP1, 0, sizeof(JPGPARSE_APP1_S));
    VCOS_memset(&pParseCtx->stExif, 0, sizeof(JPGPARSE_APP1_S));
    
    *pHandle = ParseHandle;
    
    return HI_SUCCESS;

    LABEL1:
        JPGFMW_MemReset(&s_DecCtrlMem.s_ParseMem, 0);
    LABEL0:
        return HI_ERR_JPG_NO_MEM;
		
}

/******************************************************************************
* Function:      JPGPARSE_DestroyInstance
* Description:   
* Input:         Handle      
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_VOID JPGPARSE_DestroyInstance(JPG_HANDLE Handle)
{
    JPGPARSE_CTX_S* pParseCtx;

    pParseCtx = (JPGPARSE_CTX_S*)JPG_Handle_GetInstance(Handle);
    JPG_ASSERT_HANDLE(pParseCtx);

    JPGPARSE_Reset(Handle);
    
    JPGFMW_MemReset(&s_DecCtrlMem.s_ParseMem, 0);
	
    JPG_Handle_Free(Handle);
    return;
}

/***************************************************************************************
* func          : JPGPARSEMarkDispose
* description   : CNcomment: 标记处理 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 JPGPARSEMarkDispose(JPGPARSE_CTX_S *pParseCtx,  \
                                                 JPG_CYCLEBUF_S *pParseBuf,  \
                                                 HI_U8 Marker,               \
                                                 HI_U32 Index)
{

    HI_VOID *pAnalAddr;  
    HI_S32  Ret;
    HI_U16  u16MarkLen;
    HI_U32  MarkLen;
    JPG_PICPARSEINFO_S* pCurrNode = pParseCtx->pCurrPic;
    JPGBUF_DATA_S       stData = {{HI_NULL}, {0}};
    JPGPARSE_APP1_S*    pstAPP1 = &pParseCtx->stAPP1;

    pParseCtx->ParseState.State = JPGPARSE_STATE_PARSING;
    pParseCtx->ParseState.Index = pCurrNode->Index;

    if(HI_FAILURE == JPGPARSEGetMarkLen(pParseBuf, &u16MarkLen))
    {
        return HI_ERR_JPG_WANT_STREAM;
    }

    MarkLen = (HI_U32)u16MarkLen;
    
    if ((MarkLen <= 2) || (MarkLen > JPG_JOINTSPACE_LEN - 2))
    {
        pCurrNode->SyntaxState |= JPG_PARSED_ERR;
        JPGBUF_SetRdHead(pParseBuf,2);
        return HI_ERR_JPG_PARSE_FAIL;
    }
    
    if((MarkLen + 2) > (pstAPP1->APP1MarkLen - 2) - pstAPP1->APP1Offset)
    {
        pCurrNode->SyntaxState |= JPG_PARSED_ERR;

        pParseCtx->pCurrPic   = &pParseCtx->MainPic;
        pParseCtx->bMainState = HI_FALSE;
        return  HI_ERR_JPG_PARSE_FAIL;
    }

    (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);
    if(stData.u32Len[0] + stData.u32Len[1] < MarkLen + 2)
    {
        return HI_ERR_JPG_WANT_STREAM;
    }

    if(MarkLen + 2 <= stData.u32Len[0])
    {
        pAnalAddr = (HI_U8*)stData.pAddr[0] + 4;
    }
    else
    {   
        VCOS_memcpy(pParseCtx->pJointSpace, stData.pAddr[0], stData.u32Len[0]);
        VCOS_memcpy((HI_U8*)pParseCtx->pJointSpace + stData.u32Len[0], stData.pAddr[1],MarkLen + 2 - stData.u32Len[0]);
        pAnalAddr = (HI_U8*)pParseCtx->pJointSpace + 4;
    }

    Ret = JPGPARSEParseMarker(Marker, pAnalAddr, MarkLen - 2, pCurrNode);

	JPGBUF_SetRdHead(pParseBuf,  MarkLen + 2);
    
    if(HI_SUCCESS != Ret)
    {
        pCurrNode->SyntaxState |= JPG_PARSED_ERR;
        return HI_ERR_JPG_PARSE_FAIL;
    }


    if(SOS == Marker)
    {
        
        if (JPG_SYNTAX_ALL == (pCurrNode->SyntaxState & JPG_SYNTAX_ALL))
        {
            if (0 != pCurrNode->Index)
            {
                pParseCtx->ParseState.ThumbCnt++;
            }

            if(pCurrNode->Index == Index)
            {   
                pParseCtx->ParseState.State = JPGPARSE_STATE_PARSED;
                return HI_SUCCESS;
            }
            else
            {
                pParseCtx->ParseState.State = JPGPARSE_STATE_PARTPARSED;
            }
        }
    }
    return HI_ERR_JPG_DEC_PARSING;
}

/***************************************************************************************
* func          : JPGPARSEMainParse
* description   : CNcomment: 解析标志 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 JPGPARSEMainParse(JPGPARSE_CTX_S *pParseCtx, 
                                             JPG_CYCLEBUF_S *pParseBuf, 
                                             HI_U8 Marker, HI_U32 Index)
{
    HI_S32 Ret = HI_ERR_JPG_DEC_PARSING;
    HI_U16 MarkerLen = 0;
    JPG_PICPARSEINFO_S *pCurrNode = pParseCtx->pCurrPic;

    switch(Marker)
    {
        case SOI:
        {
            pCurrNode->SyntaxState |= JPG_PARSED_SOI;
            pParseCtx->ParseState.Index = pCurrNode->Index;
            pParseCtx->ParseState.State = JPGPARSE_STATE_PARSING;
            
            JPGBUF_SetRdHead(pParseBuf, 2);
            JPGBUF_StepRdTail(pParseBuf);
            break;
        }
        case APP0:
        case APP1:    
        {
            assert(NULL != pCurrNode);

		   if(  (pParseCtx->pCurrPic->SyntaxState >= JPG_PARSED_DQT)
	          &&(pParseCtx->pCurrPic->SyntaxState  <= JPG_PARSED_SOS))
           {
               if(HI_FAILURE == JPGPARSEGetMarkLen(pParseBuf, &MarkerLen))
               {
                   return HI_ERR_JPG_WANT_STREAM;
               }

               JPGBUF_SetRdHead(pParseBuf, 4);
               pParseCtx->SkipLen = (HI_U32)MarkerLen - 2;
		 		break;
		   	}
            if(0 == pCurrNode->Index)
            {
                pParseCtx->bMainState = HI_FALSE;
                pParseCtx->ParseState.Index = pCurrNode->Index;
                pParseCtx->ParseState.State = JPGPARSE_STATE_PARTPARSED;
            }
            else
            {
               if(HI_FAILURE == JPGPARSEGetMarkLen(pParseBuf, &MarkerLen))  
               {
                   return HI_ERR_JPG_WANT_STREAM;
               }
               
               JPGBUF_SetRdHead(pParseBuf, 4);
               pParseCtx->SkipLen = (HI_U32)MarkerLen - 2;
            }
            break;
        }
        case DQT:
        case DHT:
        case SOF0:
        case SOF1:
        case SOF2:
        case SOF3:        
        case SOS:
        {
            if(JPG_PARSED_EOI == (pParseCtx->MainPic.SyntaxState & JPG_PARSED_EOI))
            {
                pParseCtx->MainPic.SyntaxState &= (~JPG_PARSED_EOI);
            }
            Ret = JPGPARSEMarkDispose(pParseCtx, pParseBuf, Marker, Index);
            if(HI_ERR_JPG_PARSE_FAIL == Ret)
            {
                if(0 == pCurrNode->Index)  
                {
                    return HI_ERR_JPG_PARSE_FAIL;
                }
                else            
                {
                    return HI_ERR_JPG_DEC_PARSING;
                }
            }
         
            break;
        }
            
        case EOI:
        {
            JPGBUF_SetRdHead(pParseBuf, 2);
            pCurrNode->SyntaxState |= JPG_PARSED_EOI;

            if (JPG_SYNTAX_ALL != (pCurrNode->SyntaxState & JPG_SYNTAX_ALL))
            {
                pCurrNode->SyntaxState |= JPG_PARSED_ERR;
            }
            
            pParseCtx->bMainState = HI_FALSE;
            pParseCtx->pCurrPic = &pParseCtx->MainPic;
            break;
        }
            
        default: 
        {
            JPGBUF_SetRdHead(pParseBuf, 2);
            break;
        }
    }
    return Ret;
}

/***************************************************************************************
* func          : JPGPARSEAppParse
* description   : CNcomment: 解析APP标记数据 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 JPGPARSEAppParse(JPGPARSE_CTX_S *pParseCtx, 
                                           JPG_CYCLEBUF_S *pParseBuf, 
                                           HI_U8 Marker, HI_U32 Index)
{
    HI_S32 Ret = HI_ERR_JPG_DEC_PARSING;
    HI_U16 MarkLen;
    HI_U32 ThumbCnt;
    JPG_PICPARSEINFO_S *pPicInfo = HI_NULL;
    JPG_PICPARSEINFO_S *pCurrNode;

    JPGPARSE_APP1_S*  pstAPP1 = &pParseCtx->stAPP1;
    JPGPARSE_APP1_S*  pstExif = &pParseCtx->stExif;
    
    HI_U8   u8Char[6] = {0};
    HI_U16 ReadMark;
    HI_U16 ReadMarkLen;
    HI_S32 RetRead;
    
    assert(pParseCtx->pCurrPic == &pParseCtx->MainPic);
    switch (Marker)
    {
        case SOI:
        {
            RetRead = JPGBUF_Read(pParseBuf, u8Char, 6);
            if(HI_FAILURE == RetRead)
            {
                return HI_ERR_JPG_WANT_STREAM;
            }

            ReadMark = u8Char[2];
            if(JPGTAG != ReadMark)
            {
                JPGBUF_SetRdHead(pParseBuf, 2);
                break;
            }

            ReadMark = u8Char[3];
            if(! ((DQT  == ReadMark) 
                || (DHT == ReadMark) 
                || ((SOF0 <= ReadMark) && (SOF3 >= ReadMark))
                || (SOS == ReadMark)
                ||((APP0 <= ReadMark) && (APP15 >= ReadMark))))
            {
                JPGBUF_SetRdHead(pParseBuf, 2);
                break;
            }
            if(pstAPP1->APP1MarkLen - pstAPP1->APP1Offset <= 256)
            {
                JPGBUF_SetRdHead(pParseBuf, 2);
                break;
            }

            ReadMarkLen = *(HI_U16*)(&u8Char[4]);
            ReadMarkLen = JPG_U16SWAP(ReadMarkLen);

            if(ReadMarkLen >= 0xFE00  || 0 == ReadMarkLen)
            {
                JPGBUF_SetRdHead(pParseBuf, 2);
                break;
            }
	        else if((ReadMarkLen + 6) >= (pstAPP1->APP1MarkLen - pstAPP1->APP1Offset))
			{
                JPGBUF_SetRdHead(pParseBuf, 2);
                break;
            }

            if(HI_TRUE == pstExif->bActive)
            {
                JPGPARSEUpdateExif(pParseBuf, pstAPP1, pstExif, HI_TRUE);
                return HI_SUCCESS;
            }
                       
            pCurrNode = pParseCtx->pTailPic;
            if(JPG_PARSED_ERR == (pCurrNode->SyntaxState & JPG_PARSED_ERR))
            {
                ThumbCnt = pCurrNode->Index;

                JPGPARSEReleaseTable(pCurrNode);
                
                VCOS_memset((HI_VOID *)pCurrNode, 0, sizeof(JPG_PICPARSEINFO_S));
       
                pParseCtx->bMainState = HI_TRUE;
                pCurrNode->Index  = ThumbCnt;
                pParseCtx->pCurrPic = pCurrNode;
                break;
            }

	     	pPicInfo = JPGFMW_MemGet(&s_DecCtrlMem.s_ParseMem, sizeof(JPG_PICPARSEINFO_S));
            if(NULL == pPicInfo)
            {
                return HI_ERR_JPG_NO_MEM;
            }
            
            VCOS_memset((HI_VOID *)pPicInfo, 0x0, sizeof(JPG_PICPARSEINFO_S));   

            ThumbCnt = pCurrNode->Index + 1;
            pCurrNode->pNext = (JPG_PICPARSEINFO_S*)pPicInfo;
            pCurrNode = pCurrNode->pNext;
            pCurrNode->Index = ThumbCnt;

            pParseCtx->pCurrPic = pCurrNode;  
            pParseCtx->pTailPic = pCurrNode;
            
            pParseCtx->bMainState = HI_TRUE;
            pParseCtx->ParseState.Index = pCurrNode->Index; 

            break;      
        }

        case APP0:
        case APP1:
        {
           if(HI_TRUE == pstAPP1->bActive)
           {

                if(pstAPP1->APP1MarkLen > (pstAPP1->APP1Offset + 6))
                {
                    JPGBUF_SetRdHead(pParseBuf, 2);
                    break;
                }
           }
           
            if(HI_SUCCESS != JPGPARSEGetMarkLen(pParseBuf, &MarkLen))
            {
                return HI_ERR_JPG_WANT_STREAM;
            }
            
            JPGBUF_SetRdHead(pParseBuf, 4);

            if(APP1 != Marker)  
            {
                pParseCtx->SkipLen = (HI_U32)MarkLen - 2;
            }
            else
            {
                pstAPP1->bActive = HI_TRUE;         
                JPGPARSEInitApp1(pParseBuf, pstAPP1, (HI_U32)MarkLen);
                JPGBUF_StepRdTail(pParseBuf);  
            }
            
            break;
       }
        
       case DQT:
       case DHT:
       case SOF0:
       case SOS:
       {
           if(HI_TRUE == pstAPP1->bActive)
           {

                if(pstAPP1->APP1MarkLen > (pstAPP1->APP1Offset + 6))
                {
                    JPGBUF_SetRdHead(pParseBuf, 2);
                    break;
                }
                else
                {
                     pstAPP1->bActive = HI_FALSE;
                }
           }
           
           if ((Index > 0) && (pParseCtx->ParseState.ThumbCnt < Index))
           {
              pParseCtx->ParseState.State = JPGPARSE_STATE_THUMBPARSED;
              return HI_ERR_JPG_THUMB_NOEXIST;
           }


           pParseCtx->pCurrPic = &pParseCtx->MainPic;
           pParseCtx->bMainState = HI_TRUE;
           
		   JPGBUF_StepRdTail(pParseBuf);
           break; 
       }
       default:
       {
           JPGBUF_SetRdHead(pParseBuf, 2);
           break;
       }
    }
    return Ret;
}

/***************************************************************************************
* func          : JPGPARSE_Parse
* description   : CNcomment: 图片解析 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 JPGPARSE_Parse(JPG_HANDLE Handle,           \
                                 JPG_CYCLEBUF_S *pParseBuf,    \
                                 HI_U32 Index,                 \
                                 HI_BOOL bInfo,                \
                                 JPG_PARSESTATE_S *pParseState)
{
    HI_S32 Ret = HI_FAILURE;
    HI_U8  Marker;
    HI_BOOL HaveBuf = HI_TRUE;
    JPGPARSE_CTX_S *pParseCtx;
    JPGBUF_DATA_S   stData = {{HI_NULL}, {0}};
    
    JPGPARSE_APP1_S*  pstAPP1;
    JPGPARSE_APP1_S*  pstExif;

    HI_U32 ExifRead = 0;
    HI_U8* pExifAddr = NULL;
    
    pParseCtx = (JPGPARSE_CTX_S *)JPG_Handle_GetInstance(Handle);
    JPG_ASSERT_HANDLE(pParseCtx);

    pstAPP1 = &pParseCtx->stAPP1;
    pstExif = &pParseCtx->stExif;
    pParseCtx->bReqExif = bInfo;
    if ((0 == pParseCtx->pCurrPic->Index) && !(pParseCtx->pCurrPic->SyntaxState & JPG_PARSED_SOI))
    {
        (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);

        if (2 > stData.u32Len[0])
        {
            JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
            return HI_ERR_JPG_WANT_STREAM;
        }            
        if(!JPG_CHECK_SOI(stData.pAddr[0]))
        {
            JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
            return HI_ERR_JPG_PARSE_FAIL;
        }
    }
    if(HI_TRUE == pParseCtx->stAPP1.bActive)
    {
        if(pParseState->ThumbEcsLen > 0)
        {
            JPGPARSEUpdateApp1(pParseBuf, pstAPP1);
            pParseCtx->stAPP1.APP1Offset += pParseState->ThumbEcsLen;
        }
    }
    while (HI_TRUE == HaveBuf)
    {     
        if (0 != pParseCtx->SkipLen)
        {
            JPGPARSESkipData(pParseBuf, &pParseCtx->SkipLen);
	        if(  (Marker == APP0 ||Marker == APP1)
		        &&((pParseCtx->pCurrPic->SyntaxState >= JPG_PARSED_DQT)
	            &&(pParseCtx->pCurrPic->SyntaxState  <= JPG_PARSED_SOS))) 
	     	{
		    }
		    else
  	   	    {		
	         	JPGBUF_StepRdTail(pParseBuf);  	
	     	}
		 
            if(HI_TRUE == pstAPP1->bActive)
            {
                JPGPARSEUpdateApp1(pParseBuf, pstAPP1);
            }
            
            if (0 < pParseCtx->SkipLen)
            {
                JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
                return HI_ERR_JPG_WANT_STREAM;
            }
        }

        if (  (HI_TRUE == pParseCtx->bReqExif) 
             &&(HI_TRUE == pstAPP1->bActive)
             &&(HI_FALSE == pstExif->bActive))
        {
            Ret = JPGBUF_Read(pParseBuf, (HI_VOID*)&ExifRead, 4);
            if(HI_FAILURE == Ret)
            {
                return HI_ERR_JPG_WANT_STREAM;
            }
    
            if(ExifRead == JPG_EXIF)
            {
                VCOS_memcpy(pstExif, pstAPP1, sizeof(JPGPARSE_APP1_S));
                assert(pstAPP1->APP1MarkLen > 2);
                
                pExifAddr = JPGFMW_MemGet(&s_DecCtrlMem.s_ExifMem, (pstAPP1->APP1MarkLen + 2));
                if(NULL == pExifAddr)
                {
                    return HI_ERR_JPG_NO_MEM;
                }
                
                pstExif->OutAddr = pExifAddr;
            }
        }
        
        (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);
        if(stData.u32Len[0] == 0)
        {
            HaveBuf = HI_FALSE;
            JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
            return HI_ERR_JPG_WANT_STREAM;
        }
        

        Ret = JPGPARSEFindMarker(pParseBuf, &Marker);
        if(HI_TRUE == pstAPP1->bActive)
        {
            JPGPARSEUpdateApp1(pParseBuf, pstAPP1);
            
            if(HI_TRUE == pstExif->bActive)
            {
                JPGPARSEUpdateExif(pParseBuf, pstAPP1, pstExif, HI_FALSE);
            }
            
            if (pstAPP1->APP1Offset >= pstAPP1->APP1MarkLen - 2)
            {
                VCOS_memset(pstAPP1, 0, sizeof(JPGPARSE_APP1_S));
                
                if ((0 != pParseCtx->pCurrPic->Index) &&
                    (JPG_SYNTAX_ALL != (pParseCtx->pCurrPic->SyntaxState & JPG_SYNTAX_ALL)))
                {               
                    pParseCtx->pCurrPic->SyntaxState |=  JPG_PARSED_ERR;
           
                    pParseCtx->bMainState = HI_FALSE;                       
                    pParseCtx->pCurrPic = &pParseCtx->MainPic; 

                    JPGBUF_StepRdTail(pParseBuf);
                    continue;
                }
            }
        }

         if(HI_TRUE != pstExif->bActive)
         {
		    if(   (DQT == Marker)
	            ||(DHT == Marker)
	            ||((SOF0 <= Marker) && (SOF3 >= Marker))
	            ||(SOS == Marker)
	            ||(DRI == Marker)
	            ||((JPG0 <= Marker) && (Marker <= COM))
	            ||((0 == Marker) && (0 == pParseCtx->pCurrPic->Index) && (HI_TRUE == pParseCtx->bMainState)))
		    {
				;
			}
			else if(  ((pParseCtx->pCurrPic->SyntaxState >= JPG_PARSED_DQT)
		             &&(pParseCtx->pCurrPic->SyntaxState  <= JPG_PARSED_SOS))
		             &&(APP0 <= Marker && APP15 >= Marker)) 
	  	     {
			    ;
		     }  
	     	else
            {
                JPGBUF_StepRdTail(pParseBuf);
            }
			
         }
        
        if (HI_FAILURE == Ret)
        {
            JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
            return HI_ERR_JPG_WANT_STREAM;
        }

        Marker = (Marker > APP1 && Marker <= APP15) ? APP0 : Marker;

        if (pParseCtx->bMainState)  
        {
            Ret = JPGPARSEMainParse(pParseCtx, pParseBuf, Marker, Index);          
        }
        else                        
        {
            Ret = JPGPARSEAppParse(pParseCtx, pParseBuf, Marker, Index);
        }  

        if (HI_ERR_JPG_DEC_PARSING == Ret)
        {
            continue;
        }

        if (HI_ERR_JPG_PARSE_FAIL == Ret)
        {
            pParseCtx->ParseState.State = JPGPARSE_STATE_PARSEERR;
            JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
            return HI_ERR_JPG_PARSE_FAIL;
        }
            
        JPGPARSE_STATE_UPDATE(pParseCtx->ParseState, pParseState);
        return Ret;
		
    }
	
    return  HI_ERR_JPG_WANT_STREAM;
	
}


/******************************************************************************
* Function:      JPGPARSE_Reset

******************************************************************************/
HI_VOID JPGPARSE_Reset(JPG_HANDLE Handle)
{
    JPGPARSE_CTX_S* pParseCtx;
    JPG_PICPARSEINFO_S* pPicInfo;
    JPG_PICPARSEINFO_S* pPicTmp;
    
    pParseCtx = (JPGPARSE_CTX_S*)JPG_Handle_GetInstance(Handle);
    JPG_ASSERT_HANDLE(pParseCtx);
    pPicInfo = &pParseCtx->MainPic;

    while (NULL != pPicInfo)
    {
        JPGPARSEReleaseTable(pPicInfo);

        if(pPicInfo == (&pParseCtx->MainPic))   
        {
            pPicInfo = pPicInfo->pNext;
        }
        else    
        {
            pPicTmp = pPicInfo->pNext;
            pPicInfo = pPicTmp;
        }
    }
    
    JPGFMW_MemReset(&s_DecCtrlMem.s_ParseMem,sizeof(JPGPARSE_CTX_S) + JPG_JOINTSPACE_LEN);
    VCOS_memset(&pParseCtx->MainPic, 0, sizeof(JPG_PICPARSEINFO_S));

    pParseCtx->SkipLen = 0;
    pParseCtx->bMainState = HI_TRUE;
    pParseCtx->ParseState.State = JPGPARSE_STATE_STOP; 
    pParseCtx->ParseState.Index = 0;
    pParseCtx->ParseState.ThumbCnt = 0;
    
    pParseCtx->pCurrPic = &pParseCtx->MainPic;
    pParseCtx->pTailPic = &pParseCtx->MainPic;
    pParseCtx->MainPic.SyntaxState = 0;
    pParseCtx->MainPic.Index = 0;

    VCOS_memset(&pParseCtx->stAPP1, 0, sizeof(JPGPARSE_APP1_S));
    VCOS_memset(&pParseCtx->stExif, 0, sizeof(JPGPARSE_APP1_S));
    
    return;
}

/***************************************************************************************
* func          : JPGPARSE_EndCheck
* description   : CNcomment: 判断图片解析是否结束 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 JPGPARSE_EndCheck(JPG_HANDLE Handle,           \
                                       JPG_CYCLEBUF_S *pParseBuf,    \
                                       HI_U32 *pOffset,              \
                                       HI_BOOL* pLastIsFF)
{
    HI_U8 Mark = 0;
    HI_S32 Ret;
    JPGBUF_DATA_S stData;
    HI_U8*   pAddr1;
    HI_U8*   pAddr2;
    HI_U32   u32Offset;
    HI_S32   s32Offset;

    JPG_ASSERT_NULLPTR(pOffset);
    JPG_ASSERT_NULLPTR(pParseBuf);
    
    (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);
    pAddr1 = (HI_U8*)stData.pAddr[0];

    do
    {
        Ret = JPGPARSEFindMarker(pParseBuf, &Mark);
        if(HI_SUCCESS != Ret)
        {
            break;
        } 
        if((SOI == Mark)  || (DQT == Mark) || (SOF0 == Mark))
        {
            return HI_ERR_JPG_PARSE_FAIL;
        }

        if (EOI != Mark)
        {
            JPGBUF_SetRdHead(pParseBuf, 2);
        }
		
    } while(EOI != Mark);

    (HI_VOID)JPGBUF_GetDataBtwWhRh(pParseBuf, &stData);
    pAddr2 = (HI_U8*)stData.pAddr[0];
    
    if (pAddr2 >= pAddr1)
    {
        u32Offset = pAddr2 - pAddr1;
    }
    else
    {
        u32Offset = pParseBuf->u32BufLen - (pAddr1 - pAddr2);
    }
    s32Offset = u32Offset;
    JPGBUF_SetRdHead(pParseBuf, -s32Offset);
   
    *pLastIsFF = HI_FALSE; 
    if((JPGTAG == Mark) && (HI_SUCCESS != Ret))
    {
        *pLastIsFF = HI_TRUE; 
    }
    
    *pOffset = u32Offset;
	
    return Ret;
	
}

/******************************************************************************
* Function:      JPGPARSE_GetImgInfo
* Description:   
* Input:         Handle   
* Output:        pImgInfo 
* Return:        
* Others:        
*                
******************************************************************************/
HI_VOID JPGPARSE_GetImgInfo(JPG_HANDLE Handle, JPG_PICPARSEINFO_S **pImgInfoHead)
{
    JPGPARSE_CTX_S* pParseCtx;

    pParseCtx = (JPGPARSE_CTX_S*)JPG_Handle_GetInstance(Handle);

    JPG_ASSERT_HANDLE(pParseCtx);
    JPG_ASSERT_NULLPTR(pImgInfoHead);

   *pImgInfoHead = &pParseCtx->MainPic;
    return;
}

/******************************************************************************
* Function:      JPGPARSE_GetExifInfo
* Description:    
* Input:         Handle   
* Output:        pAddr 
*                pSize   
* Return:        
* Others:        JPGPARSE_Parse
*                
******************************************************************************/
HI_VOID JPGPARSE_GetExifInfo(JPG_HANDLE Handle, HI_VOID** pAddr, HI_U32* pSize)
{
    /*AI7D02581*/
    JPGPARSE_CTX_S* pParseCtx;

    pParseCtx = (JPGPARSE_CTX_S*)JPG_Handle_GetInstance(Handle);
    JPG_ASSERT_HANDLE(pParseCtx);
    
    *pAddr = pParseCtx->stExif.OutAddr;
    *pSize = pParseCtx->stExif.APP1Offset;

    VCOS_memset(&pParseCtx->stExif, 0, sizeof(JPGPARSE_APP1_S));
    
    return;
}

/******************************************************************************
* Function:      JPGPARSE_ReleaseExif
* Description:    
* Input:         Handle   
* Output:        pAddr 
* Return:        
* Others:        
******************************************************************************/
HI_VOID JPGPARSE_ReleaseExif(JPG_HANDLE Handle, HI_VOID* pAddr)
{
       JPGFMW_MemReset(&s_DecCtrlMem.s_ExifMem, 0);
}
