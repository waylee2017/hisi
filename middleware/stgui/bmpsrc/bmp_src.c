#include "bmp_src.h"
#include "ffs.h"
#include "ospctr.h"
#include "7types.h"
#include "lzmadec.h"
#include "nvm_api.h"

BITMAPTRUECOLOR bmpv_stBmpData[m_MaxBmp];

static void *SzAlloc(void *p, size_t size)
{
    p = p;
    return MLMF_Malloc(size);
}

static void SzFree(void *p, void *address)
{
    p = p;
    MLMF_Free(address);
}

MMT_STB_ErrorCode_E BMPF_CreateSrc(MBT_VOID)
{
    MBT_U32 iSrcSize;
    MBT_U8 *pu8Temp;
    MBT_U8 *pu8Pos;
    MBT_U16 *pu16Offset;
    BITMAPTRUECOLOR *pstBmp = bmpv_stBmpData;
    MMT_STB_ErrorCode_E stRet = MM_ERROR_NO_MEMORY;
    MBT_S32 i;
    MBT_U32 iCheck = 0;
    iSrcSize = MMF_GetSpecifyImageSize(MM_IMAGE_BMPDATA);
    if(iSrcSize > (8*1024*1024)||0 == iSrcSize)
    {
        memset(pstBmp,0,m_MaxBmp*sizeof(BITMAPTRUECOLOR));
        return stRet;
    }

    //MLMF_Print("BMPF_CreateSrc iSrcSize = %d\n",iSrcSize);

    pu8Temp = MLMF_Malloc(iSrcSize);
    if(MM_NULL == pu8Temp)
    {
        MLMF_Print("BMPF_CreateSrc Malloc iSrcSize = %d Faile\n",iSrcSize);
        memset(pstBmp,0,m_MaxBmp*sizeof(BITMAPTRUECOLOR));
        return stRet;
    }

    stRet = MMF_GetSpecifyImage(MM_IMAGE_BMPDATA,pu8Temp,&iSrcSize);
    if(MM_NO_ERROR != stRet)
    {
        MLMF_Print("BMPF_CreateSrc MLMF_IMG_GetSpecifyImage Faile\n");
        MLMF_Free(pu8Temp);
        memset(pstBmp,0,m_MaxBmp*sizeof(BITMAPTRUECOLOR));
        return stRet;
    }
    //MLMF_Print("BMPF_CreateSrc %x %x %x %x\n",pu8Temp[0],pu8Temp[1],pu8Temp[2],pu8Temp[3]);
    if(0x5d == pu8Temp[0]&&0x00 == pu8Temp[1]&&0x00 == pu8Temp[2]&&0x80 == pu8Temp[3])
    {
        MBT_U8 *pu8DecBuf;
        MBT_U32 unpack_size = 0;
        MBT_S32 res;
        ISzAlloc g_Alloc = { SzAlloc, SzFree };
        ELzmaStatus status;
        SizeT in_size_pure = iSrcSize - (LZMA_PROPS_SIZE + 8);
        SizeT out_size;
        
        for (i = 0; i < 8; i++)
        {
            unpack_size += (MBT_U32)pu8Temp[LZMA_PROPS_SIZE + i] << (i * 8);
        }
        //MLMF_Print("BMPF_CreateSrc unpack_size = %d\n",unpack_size);
        if(unpack_size > 0x500000)
        {
            MLMF_Free(pu8Temp);
            return stRet;
        }

        pu8DecBuf = MLMF_Malloc(unpack_size+0x100);
        if(MM_NULL == pu8DecBuf)
        {
            MLMF_Free(pu8Temp);
            return stRet;
        }
        out_size = unpack_size;
        //MLMF_Print("BMPF_CreateSrc out_size = %d\n",out_size);
        res = LzmaDecode(pu8DecBuf, &out_size, pu8Temp + (LZMA_PROPS_SIZE + 8), &in_size_pure, pu8Temp, LZMA_PROPS_SIZE, LZMA_FINISH_ANY, &status, &g_Alloc);
        //MLMF_Print("BMPF_CreateSrc LzmaDecode res = %d\n",res);
        MLMF_Free(pu8Temp);
        if (res != 0)
        {
            MLMF_Free(pu8DecBuf);
            return stRet;
        }
        pu8Temp = pu8DecBuf;
    }
    
    
    //MLMF_Print("BMPF_CreateSrc Start CreatBmp\n");
    pu16Offset = (MBT_VOID *)pu8Temp;
    for(i = 0;i < m_MaxBmp;i++)
    {
        pu8Pos = (MBT_U8 *)pu16Offset;
        //MLMF_Print("%08x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\n",((MBT_U32)pu16Offset) - (MBT_U32)pu8Temp,pu8Pos[0],pu8Pos[1],pu8Pos[2],pu8Pos[3],pu8Pos[4],pu8Pos[5],pu8Pos[6],pu8Pos[7],pu8Pos[8],pu8Pos[9]);
        pstBmp[i].bColorType = (pu8Pos[0]|((pu8Pos[1]<<8)&0xff00));
        pu16Offset++;
        pu8Pos = (MBT_U8 *)pu16Offset;
        pstBmp[i].bWidth = (pu8Pos[0]|((pu8Pos[1]<<8)&0xff00));
        pu16Offset++;
        pu8Pos = (MBT_U8 *)pu16Offset;
        pstBmp[i].bHeight= (pu8Pos[0]|((pu8Pos[1]<<8)&0xff00));
        pu16Offset++;
        pu8Pos = (MBT_U8 *)pu16Offset;
        iSrcSize = (MBT_U32)((pu8Pos[0]|((pu8Pos[1]<<8)&0x0000ff00)|((pu8Pos[2]<<16)&0x00ff0000)|((pu8Pos[3]<<24)&0x7f000000)));
        //MLMF_Print("[%d] bWidth = %d  bHeight = %d iSrcSize = %d\n",i,pstBmp[i].bWidth,pstBmp[i].bHeight,iSrcSize);
        pu16Offset +=2;
        pstBmp[i].pBData = OSPMalloc(iSrcSize);

        if(MM_NULL != pstBmp[i].pBData)
        {
            memcpy(pstBmp[i].pBData,pu16Offset,iSrcSize);
        }
        else
        {
            MLMF_Print("OSPMalloc faile i = %d iSrcSize = %d\n",i,iSrcSize);
        }
        iCheck += pstBmp[i].bWidth*pstBmp[i].bHeight*4;
        pu16Offset = (MBT_VOID *)((MBT_U32)pu16Offset + iSrcSize);
    }
    
    //MLMF_Print("Bmpmem = %d\n",iCheck);
    MLMF_Free(pu8Temp);
    return stRet;
}



MBT_VOID BMPF_TermSrc(MBT_VOID)
{
    MBT_S32 i;
    BITMAPTRUECOLOR *pstBmp = bmpv_stBmpData;
    for(i = 0;i < m_MaxBmp;i++)
    {
        if(MM_NULL != pstBmp[i].pBData)
        {
            OSPFree(pstBmp[i].pBData);
            pstBmp[i].pBData = MM_NULL;
        }
    }
}


