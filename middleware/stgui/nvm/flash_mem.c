/*******************************************************************************
* File name : flash.c
* COPYRIGHT (C) Blossoms Digital Tech Co. Ltd.
* Description : This is a flash API from 5518 project & ST Flash Driver.
* History :
* Date(yymmdd)	Modification									Revision    author
* 05/08/17		Created 										1.0.0
* 05/08/23		Add some Erase Functions						1.0.1
* 06/06/17		Changed the Flash Rom. Now it is 4M				1.0.2
* 06/07/22           optimize the code and criterion the api function          1.0.3	  Peter Qu
* 06/08/01		fix bug in function FLASHF_ErasePartition()			1.0.4	  Peter Qu
*******************************************************************************/

#include <stdio.h>
#include <string.h>	
#include "stdlib.h"  
#include "flash_mem.h"
#include "nvm_api.h"
#include "ffs.h"
#include "ospctr.h"


//#define FLASH_DEBUG MLMF_Print
#define FLASH_DEBUG(fmt, arg...)

static MBT_BOOL flashf_FlashCanBeWrite(MBT_U8 *pu8FLashContent,MBT_U8 *pbyData,MBT_S32 dwLen);
static MBT_BOOL flashf_VerifyFlash(MBT_U32 FLASH_Address,MBT_U8 *Buffer,MBT_U32 Size);
static MMT_STB_ErrorCode_E flashf_BlockFastWrite(MBT_U32 u32BlockBaseAddr,MBT_U32 u32BlockSize,MBT_U32 u32Offset,MBT_U8 *ptrBuffer ,MBT_U32 u32BufferSize);


/****************************************************************************
 * Function : FLASHF_Read
 *            Function to program  a word to flash with contents.
 * Params   : pusDestAddr: a pointer of flash address
 * 			pusData2bWritten: a pointer of data buffer
 * Return   : 0: success  >0 false
 		    
*****************************************************************************/
MMT_STB_ErrorCode_E    FLASHF_Read (MBT_U32 u32FlashAddr,MBT_VOID *pusBuffer,MBT_U32 iSizeRead ) 
{
    MMT_STB_ErrorCode_E 	Error = MM_NO_ERROR;
    if((MM_NULL == pusBuffer)||(((MBT_U32)u32FlashAddr) != (((MBT_U32)u32FlashAddr)&MASK_ADDRESS)))
    {
        Error = MM_ERROR_BAD_PARAMETER;
    }
    else
    {
        FFSF_Lock();
        Error = MLMF_Flash_Read(u32FlashAddr,pusBuffer ,iSizeRead);
        FFSF_UnLock();
    }
    return Error;
}


/* ========================================================================
   Name:        FLASHF_ForceSaveData
   Description: Program routine for binary file
   ======================================================================== */

MMT_STB_ErrorCode_E FLASHF_ForceSaveFile(MBT_U32 u32PrgAddr,MBT_U8 *ptrBuffer,MBT_S32 iSize)
{
    MMT_STB_ErrorCode_E Error = MM_NO_ERROR;
    MBT_U32 u32BlockBaseAddr;
    MBT_U32 u32AddrOffset;
    MBT_U32 u32SizeToWrite;
    MBT_S32 FileSize = iSize;
    MBT_U8 *ptrCuePos = ptrBuffer;

    if((MM_NULL == ptrBuffer)||(((MBT_U32)u32PrgAddr) != (((MBT_U32)u32PrgAddr)&MASK_ADDRESS)))
    {
        return MM_ERROR_BAD_PARAMETER;
    }

    FFSF_Lock();
    u32AddrOffset = (u32PrgAddr&(FLASH_MAINBLOCK_SIZE-1));
    u32BlockBaseAddr = u32PrgAddr - u32AddrOffset;
    u32SizeToWrite = FLASH_MAINBLOCK_SIZE - u32AddrOffset;
    u32SizeToWrite=(FileSize>u32SizeToWrite)?u32SizeToWrite: FileSize;
    Error = flashf_BlockFastWrite(u32BlockBaseAddr,FLASH_MAINBLOCK_SIZE,u32AddrOffset,ptrCuePos,u32SizeToWrite);
    if(MM_NO_ERROR != Error)
    {
        FFSF_UnLock();
        return Error;
    }

    ptrCuePos += u32SizeToWrite;
    u32BlockBaseAddr=u32BlockBaseAddr+FLASH_MAINBLOCK_SIZE;
    FileSize=FileSize-u32SizeToWrite;

    while (FileSize > 0)
    {
        u32SizeToWrite=(FileSize>FLASH_MAINBLOCK_SIZE)?FLASH_MAINBLOCK_SIZE: FileSize;
        Error = flashf_BlockFastWrite(u32BlockBaseAddr,FLASH_MAINBLOCK_SIZE,0,ptrCuePos,u32SizeToWrite);
        if(MM_NO_ERROR != Error)
        {
            FFSF_UnLock();
            return Error;
        }

        ptrCuePos += u32SizeToWrite;
        u32BlockBaseAddr +=  FLASH_MAINBLOCK_SIZE;
        FileSize -= u32SizeToWrite;
    }
    FFSF_UnLock();
    return Error;
}

MMT_STB_ErrorCode_E FLASHF_ErasePartition(MBT_U32 uiPartitionBaseAddr, MBT_U32 uiSize)    
{
    MMT_STB_ErrorCode_E 	Error = MM_NO_ERROR ;
    if(((MBT_U32)uiPartitionBaseAddr) != (((MBT_U32)uiPartitionBaseAddr)&MASK_ADDRESS))
    {
        Error = MM_ERROR_BAD_PARAMETER;
    }
    else
    {
        MBT_U32 u32Addr = ((uiPartitionBaseAddr&0xffff0000)&MASK_ADDRESS);
        MBT_U32 u32EreaseSize= 0;
        FFSF_Lock();
        while(u32EreaseSize < uiSize)
        {
            Error = MLMF_Flash_EraseBlock(u32Addr);
            u32EreaseSize += FLASH_MAINBLOCK_SIZE;
            u32Addr += FLASH_MAINBLOCK_SIZE;
        }
        FFSF_UnLock();
    }
    return Error;
}

MMT_STB_ErrorCode_E MMF_GetHightAppVer(MBT_U16 *pu16Version)
{
    MMT_STB_ErrorCode_E stRet;
    FFSF_Lock();
    stRet = MLMF_IMG_GetHightAppVer(pu16Version);
    FFSF_UnLock();
    return stRet;
}

MMT_STB_ErrorCode_E MMF_GetStbSerial(OUTSERIAL *ptrSerail)
{
    MMT_STB_ErrorCode_E stRet;
    FFSF_Lock();
    stRet = MLMF_IMG_GetStbSerial(ptrSerail);
    FFSF_UnLock();
    return stRet;
}

MMT_STB_ErrorCode_E MMF_GetStbMac(MBT_U8 *ptru8Mac)
{
    MMT_STB_ErrorCode_E stRet;
    FFSF_Lock();
    stRet = MLMF_IMG_GetStbMac(ptru8Mac);
    FFSF_UnLock();
    return stRet;
}

MMT_STB_ErrorCode_E MMF_GetStbHwInfo(DVB_HWINFO *ptrHwInfo)
{
    MMT_STB_ErrorCode_E stRet;
    FFSF_Lock();
    stRet = MLMF_IMG_GetStbHwInfo(ptrHwInfo);
    FFSF_UnLock();
    return stRet;
}

MMT_STB_ErrorCode_E MMF_GetStbLoaderVersion(MBT_U8 *pu8Version)
{
    MMT_STB_ErrorCode_E stRet;
    FFSF_Lock();
    stRet = MLMF_IMG_GetStbLoaderVersion(pu8Version);
    FFSF_UnLock();
    return stRet;
}

MMT_STB_ErrorCode_E MMF_GetSpecifyImage(MMT_ImageType_E stImageType,MBT_U8 *pu8DestBuffer,MBT_U32 *pu32DestBufSize)
{
    MMT_STB_ErrorCode_E stRet;
    FFSF_Lock();
    stRet = MLMF_IMG_GetSpecifyImage(stImageType,pu8DestBuffer,pu32DestBufSize);
    FFSF_UnLock();
    return stRet;
}

MMT_STB_ErrorCode_E MMF_SetSpecifyImage(MMT_ImageType_E stImageType,MBT_U8 *pu8SrcBuffer,MBT_U32 u32SrcBufSize)
{
    MMT_STB_ErrorCode_E stRet;
    FFSF_Lock();
    stRet = MLMF_IMG_SetSpecifyImage(stImageType,pu8SrcBuffer,u32SrcBufSize);
    FFSF_UnLock();
    return stRet;
}


MBT_S32 MMF_GetSpecifyImageSize(MMT_ImageType_E stImageType)
{
    MBT_S32 s32Ret;
    FFSF_Lock();
    s32Ret = MLMF_IMG_GetSpecifyImageSize(stImageType);
    FFSF_UnLock();
    return s32Ret;
}

MBT_S32 FLASHF_FfsRead ( SULM_IN MBT_U32 u32Address , SULM_IN MBT_U8 *pu8Buffer , SULM_IN MBT_U32 u32Length)
{
    MBT_S32  Error = FFSM_ErrorNoError;
    if((MM_NULL == pu8Buffer)||(((MBT_U32)u32Address) != (((MBT_U32)u32Address)&MASK_ADDRESS)))
    {
        //MLMF_Print("FLASHF_FfsRead Invalid u32Address = %x\n",u32Address);
        Error = FFSM_ErrorBadParams;
    }
    else
    {
        //MLMF_Print("FLASHF_FfsRead u32Address = %x\n",u32Address);
        Error = MLMF_Flash_Read(u32Address,pu8Buffer ,u32Length);
        //MLMF_Print("FLASHF_FfsRead Error = %x\n",Error);
        if(MM_NO_ERROR == Error)
        {
            Error = FFSM_ErrorNoError;
        }
        else
        {
            Error = FFSM_ErrorBadParams;
        }
    }
    return Error;
}



MBT_S32 FLASHF_FfsErase ( MBT_U32 u32Address )
{
    MBT_S32  Error = FFSM_ErrorNoError;
    if(((MBT_U32)u32Address) != (((MBT_U32)u32Address)&MASK_ADDRESS))
    {
        //MLMF_Print("FLASHF_FfsErase Invalid u32Address = %x\n",u32Address);
        Error = FFSM_ErrorBadParams;
    }
    else
    {
        //MLMF_Print("FLASHF_FfsErase u32Address = %x\n",u32Address);
        Error = MLMF_Flash_EraseBlock((u32Address&MASK_ADDRESS));
        //MLMF_Print("FLASHF_FfsErase Error = %x\n",Error);
        if(MM_NO_ERROR == Error)
        {
            Error = FFSM_ErrorNoError;
        }
        else
        {
            Error = FFSM_ErrorFlashWriteError;
        }
    }
    return 0;
}

MBT_S32 FLASHF_FfsWrite (MBT_U32 u32Address , MBT_U8 *pu8Buffer , MBT_U32 u32Length,
				MBT_U32 *pu32LengthActual )
{
    MBT_S32 Error;
    MBT_U8 *pau8Buf = MLMF_Malloc(u32Length+12);
    MBT_U8 *pBuf=pau8Buf;
    MBT_U32 u32Temp;
    //MLMF_Print("FLASHF_FfsWrite Iu32Address = %x\n",u32Address);

    if(MM_NULL == pau8Buf)
    {
        return FFSM_ErrorBadParams;
    }

    *pu32LengthActual=u32Length;

    if((((MBT_U32)pBuf)&1)!=0)
    {
        pBuf++;
    }

    u32Temp = (u32Address&1);

    if(u32Temp!=0)
    {
        MLMF_Flash_Read(u32Address-u32Temp,pBuf,u32Temp);
        u32Address -= u32Temp;
        u32Length += u32Temp;
    }

    memcpy(pBuf + u32Temp,pu8Buffer,u32Length);

    u32Temp = (u32Length&1);
    if(u32Temp!=0)
    {
        MLMF_Flash_Read(u32Address+u32Length,pBuf+u32Length,1);
        u32Length ++;
    }

    Error = MLMF_Flash_Write(u32Address,(MBT_U8*)pBuf,u32Length);


    MLMF_Free(pau8Buf);
    if(MM_NO_ERROR == Error)
    {
        Error =  FFSM_ErrorNoError;
        //MLMF_Print("FLASHF_FfsWrite OK\n");
    }
    else 
    {
        FLASH_DEBUG("Flash write Error : 0x%08X Addr %x\n",Error,u32Address);
        *pu32LengthActual=0;
        Error =  FFSM_ErrorFlashWriteError;
    }

    return Error;
}


static MBT_BOOL flashf_FlashCanBeWrite(MBT_U8 *pu8FLashContent,MBT_U8 *pbyData,MBT_S32 dwLen)
{
    MBT_BOOL bFlashCanBEWrite = MM_TRUE;
    MBT_U32 u32Temp;
    MBT_S32 i;

    if(MM_NULL == pu8FLashContent||MM_NULL == pbyData||dwLen > 0x1000000)
    {
        return MM_FALSE;
    }

    if(0 == (((MBT_U32)pbyData)&0x00000003)&&0 == (((MBT_U32)pu8FLashContent)&0x00000003))
    {
        MBT_U32 *pu32WrtieData = (MBT_U32 *)pbyData;
        MBT_U32 *pu32FlashData = (MBT_U32*)pu8FLashContent;
        u32Temp = (dwLen>>2);
        for(i = 0;i < u32Temp;i++)
        {
            if(((~pu32FlashData[i])&pu32WrtieData[i]) != 0)
            {
                bFlashCanBEWrite = MM_FALSE;
                break;
            }
        }

        if(MM_TRUE == bFlashCanBEWrite)
        {
            for(i = (u32Temp<<2);i < dwLen;i++)
            {
                if(((~pu8FLashContent[i])&pbyData[i]) != 0)
                {
                    bFlashCanBEWrite = MM_FALSE;
                    break;
                }
            }
        }
    }
    else if(0 == (((MBT_U32)pu8FLashContent)&0x00000001)&&0 == (((MBT_U32)pbyData)&0x00000001))
    {
        MBT_U16 *fp = (MBT_U16 *)pu8FLashContent;
        MBT_U16 *sp = (MBT_U16 *)pbyData;
        u32Temp = (dwLen>>1);

        for (i=0;i<u32Temp;i++)
        {
            if(((~fp[i])&sp[i]) != 0)
            {
                bFlashCanBEWrite = MM_FALSE;
                break;
            }
        }
        
        if(MM_TRUE == bFlashCanBEWrite)
        {
            for(i = (u32Temp<<1);i < dwLen;i++)
            {
                if(((~pu8FLashContent[i])&pbyData[i]) != 0)
                {
                    bFlashCanBEWrite = MM_FALSE;
                    break;
                }
            }
        }
    }
    else
    {
        for(i = 0;i < dwLen;i++)
        {
            if(((~pu8FLashContent[i])&pbyData[i]) != 0)
            {
                bFlashCanBEWrite = MM_FALSE;
                break;
            }
        }
    }

    return bFlashCanBEWrite;
}



/* ========================================================================
   Name:        FLASH_FLASH_VerifyFlash
   Description: Verify flash word per word
   ======================================================================== */

static MBT_BOOL flashf_VerifyFlash(MBT_U32 FLASH_Address,MBT_U8 *Buffer,MBT_U32 Size)
{
    MBT_BOOL bRet = MM_TRUE;
    MBT_U32    i;
    MBT_U8  *ReadBuffer;

    /* Allocate a tmp buffer to receive flash read datas */
    /* ------------------------------------------------- */
    ReadBuffer=(MBT_U8 *)MLMF_Malloc(Size);
    if (ReadBuffer==MM_NULL)
    {
        return MM_FALSE;
    }

    /* Read the flash now */
    /* ------------------ */
    if (MM_NO_ERROR !=MLMF_Flash_Read(FLASH_Address,ReadBuffer,Size))
    {
        MLMF_Free(ReadBuffer);
        return MM_FALSE;
    }
    
    if(0 == (((MBT_U32)ReadBuffer)&0x00000003)&&0 == (((MBT_U32)Buffer)&0x00000003))
    {
        MBT_U32 *pu32WrtieData = (MBT_U32 *)ReadBuffer;
        MBT_U32 *pu32FlashData = (MBT_U32*)Buffer;
        MBT_U32 u32Temp = (Size>>2);
        for(i = 0;i < u32Temp;i++)
        {
            if(pu32WrtieData[i] != pu32FlashData[i])
            {
                bRet = MM_FALSE;
                break;
            }
        }

        if(MM_TRUE == bRet)
        {
            for(i = (u32Temp<<2);i < Size;i++)
            {
                if(ReadBuffer[i] != Buffer[i])
                {
                    bRet = MM_FALSE;
                    break;
                }
            }
        }
    }
    else if(0 == (((MBT_U32)ReadBuffer)&0x00000001)&&0 == (((MBT_U32)Buffer)&0x00000001))
    {
        MBT_U16 *fp = (MBT_U16 *)ReadBuffer;
        MBT_U16 *sp = (MBT_U16 *)Buffer;
        MBT_U32 u32Temp = (Size>>1);

        for (i=0;i<u32Temp;i++)
        {
            if (sp[i] != fp[i])
            {
                bRet = MM_FALSE;
                break;
            }
        }
        
        if(MM_TRUE == bRet)
        {
            for(i = (u32Temp<<1);i < Size;i++)
            {
                if(ReadBuffer[i] != Buffer[i])
                {
                    bRet = MM_FALSE;
                    break;
                }
            }
        }
    }
    else
    {
        for(i = 0;i < Size;i++)
        {
            if(ReadBuffer[i] != Buffer[i])
            {
                bRet = MM_FALSE;
                break;
            }
        }
    }

    /* Return no errors */
    /* ---------------- */
    MLMF_Free(ReadBuffer);
    return bRet;
}

static MMT_STB_ErrorCode_E  flashf_BlockFastWrite(MBT_U32 u32BlockBaseAddr,MBT_U32 u32BlockSize,MBT_U32 u32Offset,MBT_U8 *ptrBuffer ,MBT_U32 u32BufferSize)
{
    MMT_STB_ErrorCode_E Error = MM_NO_ERROR;
    MBT_U8 *pu8FileBuffer;
    MBT_U8 *pu8WriteBuffer = MM_NULL;
    MBT_U32 u32WriteDataSize;
    MBT_U32 u32WriteOffset;
    MBT_S32 i;

    pu8FileBuffer=MLMF_Malloc(u32BlockSize);
    if(MM_NULL == pu8FileBuffer)
    {
        return MM_ERROR_NO_MEMORY;
    }

    Error = MLMF_Flash_Read(u32BlockBaseAddr,pu8FileBuffer,u32BlockSize);
    if (MM_NO_ERROR != Error)
    {
        MLMF_Free(pu8FileBuffer);
        return MM_ERROR_TIMEOUT;
    }
    
    /* Read the sector */
    if(MM_FALSE == flashf_FlashCanBeWrite(pu8FileBuffer+u32Offset,ptrBuffer,u32BufferSize))
    {
        /* Erase the sector */
        pu8WriteBuffer = pu8FileBuffer;
        u32WriteDataSize = u32BlockSize;
        u32WriteOffset = 0;

        Error=MLMF_Flash_EraseBlock(u32BlockBaseAddr);
        if (MM_NO_ERROR != Error)
        {
            MLMF_Free(pu8FileBuffer);
            return MM_ERROR_TIMEOUT;
        }
    }
    else
    {
        pu8WriteBuffer = ptrBuffer;
        u32WriteDataSize = u32BufferSize;
        u32WriteOffset = u32Offset;
        //FLASHi_TraceERR(("flash can be write\n"));
    }
    memcpy(pu8FileBuffer+u32Offset,ptrBuffer,u32BufferSize);
    
    /*³¢ÊÔÈý´Î*/
    for(i = 0;i < 2;i++)
    {      
        //printf("flashf_ForceSaveFile u32Address = %x size = %di = %d\n",u32BlockBaseAddr + u32WriteOffset,u32WriteDataSize,i );
        Error = MLMF_Flash_Write(u32BlockBaseAddr + u32WriteOffset,pu8WriteBuffer,u32WriteDataSize);
        if (MM_NO_ERROR != Error)
        {
            break;
        }

        if (MM_TRUE == flashf_VerifyFlash(u32BlockBaseAddr + u32WriteOffset,pu8WriteBuffer,u32WriteDataSize))
        {
            Error = MM_NO_ERROR;
            break;
        }
        
        FLASH_DEBUG("flashf_VerifyFlash = faile FLASH_EraseBlocks i =%d\n",i);
        pu8WriteBuffer = pu8FileBuffer;
        u32WriteDataSize = u32BlockSize;
        u32WriteOffset = 0;
        Error=MLMF_Flash_EraseBlock(u32BlockBaseAddr);
        if (MM_NO_ERROR != Error)
        {
            break;
        }
    }
    
    MLMF_Free(pu8FileBuffer);
    return Error;
}

/*end of code*/

