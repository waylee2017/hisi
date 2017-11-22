//lint -wlib(0)
#include "hi_go_comm.h"
#include "hi_go_decoder.h"
#include "higo_adp_sys.h"
#include "higo_common.h"
#include "higo_io.h"
/***************************** Macro Definition ******************************/

/*************************** Structure Definition ****************************/

/** IO device info*/
typedef union hiIO_DEVINFO_U
{
    /**info in case : input source is memory */
    struct
    {
        HI_U32 Position; /**< IO position , offset from file start*/
        HI_CHAR *pAddr;   /**< pointer to memory */
        HI_U32 Length;   /**< length */
    } MemInfo;
} IO_DEVINFO_U;
typedef struct hiIO_INSTANCE_S IO_INSTANCE_S;

struct hiIO_INSTANCE_S
{
    IO_TYPE_E    Type;     /** fs type*/
    IO_DEVINFO_U IoInfo;   /**< IO info */
    HI_S32       (* IoCreate)(IO_INSTANCE_S *pIO, const IO_DESC_S *pDecInfo);
    HI_VOID      (* IoDestroy)(IO_INSTANCE_S *pIO);
    HI_S32       (* IoRead)(IO_INSTANCE_S *pIO, HI_VOID *pBuf, HI_U32 BufLen, HI_U32 *pCopyLen);
    HI_S32       (* IoSeek)(IO_INSTANCE_S *pIO, IO_POS_E Position, HI_S32 Offset);
    HI_S32       (* IoGetLength)(const IO_INSTANCE_S *pIO, HI_U32 *pLength);
    HI_S32       (* IoGetPos)(const IO_INSTANCE_S *pIO, HI_U32 *pPos);
};

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/

/**
 \brief create virtual file system in case of memory type
 \param[in] IO_INSTANCE_S *pIO
 \param[in] const IO_DESC_S *pDecInfo
 \param[out] none
 \retval none
 \return none
 */
static HI_S32 Mem_Create(IO_INSTANCE_S *pIO, const IO_DESC_S *pDecInfo)
{
#if 0
    HIGO_ADP_ASSERT(HI_NULL_PTR != pDecInfo->IoInfo.MemInfo.pAddr);
    HIGO_ADP_ASSERT(pDecInfo->IoInfo.MemInfo.Length > 0);
#endif
    if(HI_NULL_PTR == pDecInfo->IoInfo.MemInfo.pAddr || pDecInfo->IoInfo.MemInfo.Length <= 0)
        return HI_FAILURE;
    pIO->IoInfo.MemInfo.pAddr    = pDecInfo->IoInfo.MemInfo.pAddr;
    pIO->IoInfo.MemInfo.Length   = pDecInfo->IoInfo.MemInfo.Length;
    pIO->IoInfo.MemInfo.Position = 0;
    return HI_SUCCESS;
}

/**
 \brief read data in case of memory type file 
 \param[in] IO_INSTANCE_S *pIO file instance pointer 
 \param[in] HI_VOID *pBuf  input BUF address 
 \param[in] HI_U32 BufLen  input BUF lengteh 
 \param[in] HI_U32 *pCopyLen read data size 
 \param[out] none
 \retval none
 \return none
 */
static HI_S32 Mem_Read(IO_INSTANCE_S *pIO, HI_VOID *pBuf, HI_U32 BufLen, HI_U32 *pCopyLen)
{
    HI_U32 Length;
#if 0
    HIGO_ADP_ASSERT(pIO->IoInfo.MemInfo.Length >= pIO->IoInfo.MemInfo.Position);
#endif
    if(pIO->IoInfo.MemInfo.Length < pIO->IoInfo.MemInfo.Position)
        return HI_FAILURE;
    /** calculate remainder data size */
    Length = (HI_U32)(pIO->IoInfo.MemInfo.Length - pIO->IoInfo.MemInfo.Position);
    if (BufLen < Length)
    {
        *pCopyLen = BufLen;
    }
    else
    {
        *pCopyLen = Length;
    }
    memcpy(pBuf, \
           (const HI_VOID*)(pIO->IoInfo.MemInfo.pAddr + pIO->IoInfo.MemInfo.Position), *pCopyLen);

    pIO->IoInfo.MemInfo.Position += *pCopyLen;
    return HI_SUCCESS;
}

/**
 \brief  file size 
 \param[in] IO_INSTANCE_S *pIO file instance pointer
 \param[in] IO_POS_E Position  
 \param[in] HI_S32 Offset     seek offset 
 \param[out] none
 \retval none
 \return none
 */
static HI_S32 Mem_Seek(IO_INSTANCE_S *pIO, IO_POS_E Position, HI_S32 Offset)
{
    HI_U32 StartPos;
    StartPos = pIO->IoInfo.MemInfo.Position;
    
    switch (Position)
    {
    case IO_POS_CUR:
    {
        pIO->IoInfo.MemInfo.Position = (HI_U32)((HI_S32)pIO->IoInfo.MemInfo.Position + Offset);
        break;
    }
    case IO_POS_END:
    {
        pIO->IoInfo.MemInfo.Position = pIO->IoInfo.MemInfo.Length;
        pIO->IoInfo.MemInfo.Position = (HI_U32)((HI_S32)pIO->IoInfo.MemInfo.Position + Offset);
        break;
    }
    case IO_POS_SET:
    {
        pIO->IoInfo.MemInfo.Position = 0;
        pIO->IoInfo.MemInfo.Position = (HI_U32)((HI_S32)pIO->IoInfo.MemInfo.Position + Offset);
        break;
    }
    default:
    {
        HIGO_ADP_SetError(HI_FAILURE);
        break;
    }
    }

    if ((HI_S32)pIO->IoInfo.MemInfo.Position > (HI_S32)pIO->IoInfo.MemInfo.Length)
    {
        HIGO_ADP_SetError(HI_FAILURE);
        pIO->IoInfo.MemInfo.Position = StartPos;
        return HI_FAILURE;
    }

    if ((HI_S32)pIO->IoInfo.MemInfo.Position < 0)
    {
        HIGO_ADP_SetError(HI_FAILURE);
        pIO->IoInfo.MemInfo.Position = StartPos;
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/**
 \brief get file lengthe
 \param[in] const IO_INSTANCE_S *pIO  file instance pointer 
 \param[in] HI_U32 *pLength   file length 
 \param[out] none
 \retval none
 \return none
 */
static HI_S32 Mem_GetLength(const IO_INSTANCE_S *pIO, HI_U32 *pLength)
{
    *pLength = pIO->IoInfo.MemInfo.Length;
    return HI_SUCCESS;
}

/**
 \brief get current position 
 \param[in] const IO_INSTANCE_S *pIO file instance pointer
 \param[in] HI_U32 *pPos    pointer for file current position
 \param[out] none
 \retval none
 \return none
 */
static HI_S32 Mem_GetPos(const IO_INSTANCE_S *pIO, HI_U32 *pPos)
{
    *pPos = pIO->IoInfo.MemInfo.Position;
    return HI_SUCCESS;
}

/**
 \brief  destroi file instance 
 \param[in] IO_INSTANCE_S *pIO file instance pointer
 \param[out] none
 \retval none
 \return none
 */
static HI_VOID Mem_destroy(IO_INSTANCE_S *pIO)
{
    pIO->IoInfo.MemInfo.pAddr    = HI_NULL_PTR;
    pIO->IoInfo.MemInfo.Length   = 0;
    pIO->IoInfo.MemInfo.Position = 0;
    return;
}

#if 0
//lint -e818
HI_S32 Stream_Create(IO_INSTANCE_S *pIO, const IO_DESC_S *pDecInfo)
{
    return HI_SUCCESS;
}

HI_VOID Stream_Destroy(IO_INSTANCE_S *pIO)
{
    return;
}

HI_S32 Stream_Read(IO_INSTANCE_S *pIO, HI_VOID *pBuf, HI_U32 BufLen, HI_U32 *pCopyLen)
{
    (HI_VOID)pIO->IoInfo.pCallBack((HIGO_DEC_POSITION_E)IO_POS_CUR, 0);
    return HI_SUCCESS;
}

HI_S32 Stream_Seek(IO_INSTANCE_S *pIO, IO_POS_E Position, HI_S32 Offset)
{
    (HI_VOID)pIO->IoInfo.pCallBack((HIGO_DEC_POSITION_E)Position, Offset);
    return HI_SUCCESS;
}

HI_S32 Stream_GetLength(const IO_INSTANCE_S *pIO, HI_U32 *pLength)
{
    *pLength = 0;
    return HI_SUCCESS;
}

HI_S32 Stream_GetPos(const IO_INSTANCE_S *pIO, HI_U32 *pPos)
{
    return HI_SUCCESS;
}

//lint +e818
#endif

/**
 \brief create virtual file system instance 
 \param[out] IO_HANDLE *pIO virtual file system instance 
 \param[in] const DEC_IOINFO_S * pDecInfo  pointer of input file information
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IOCreate(IO_HANDLE *pIO, const IO_DESC_S *pDecInfo)
{
    IO_INSTANCE_S *pIoInstance = HI_NULL_PTR;
    HI_S32 Ret;

    /**check input parameter */
    if (HI_NULL_PTR == pDecInfo)
    {
        HIGO_ADP_SetError(HIGO_ERR_NULLPTR);
        return HIGO_ERR_NULLPTR;
    }

    if (HI_NULL_PTR == pIO)
    {
        HIGO_ADP_SetError(HIGO_ERR_NULLPTR);
        return HIGO_ERR_NULLPTR;
    }

    /** create instance */
    pIoInstance = (IO_INSTANCE_S *)HIGO_Malloc(sizeof(IO_INSTANCE_S));
    if (HI_NULL_PTR == pIoInstance)
    {
        HIGO_ADP_SetError(HIGO_ERR_NOMEM);
        return HIGO_ERR_NOMEM;
    }

    /** hook the file instance*/  
    if (HI_NULL_PTR == pDecInfo->IoInfo.MemInfo.pAddr)
    {
        HIGO_ADP_SetError(HIGO_ERR_NULLPTR);
        Ret = HIGO_ERR_NULLPTR;
        goto freemem;
    }

    pIoInstance->Type        = IO_TYPE_MEM;
    pIoInstance->IoCreate    = Mem_Create;
    pIoInstance->IoDestroy   = Mem_destroy;
    pIoInstance->IoRead      = Mem_Read;
    pIoInstance->IoSeek      = Mem_Seek;
    pIoInstance->IoGetPos    = Mem_GetPos;
    pIoInstance->IoGetLength = Mem_GetLength;

    /** initial instance */
    Ret = pIoInstance->IoCreate(pIoInstance, pDecInfo);
    if (HI_SUCCESS != Ret)
    {
        HIGO_ADP_SetError(Ret);
        goto freemem;
    }

    /** get hanle */
    *pIO = (IO_HANDLE)pIoInstance;
    return HI_SUCCESS;

freemem:

    /** free memory */
    HIGO_Free(pIoInstance);
    return Ret;
}

/**
 \brief destroy virtual file system 
 \param[in] IO_HANDLE IO VFS instance 
 \param[out] none
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IODestroy(IO_HANDLE IO)
{
    IO_INSTANCE_S *pIoInstance;

    /** get instance */
    pIoInstance = (IO_INSTANCE_S *)IO;
    /** close instance*/
    pIoInstance->IoDestroy(pIoInstance);
    /** destroy instance*/
    HIGO_Free(pIoInstance);
    return HI_SUCCESS;
}

/**
 \brief read data 
 \param[in] IO_HANDLE IO VFS instance 
 \param[in] HI_VOID *pBuf   input data BUFFER
 \param[in] HI_U32 BufLen   input BUFFER length 
 \param[out] HI_U32 *pCopyLen lenth has read 
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IORead(IO_HANDLE IO, HI_VOID *pBuf, HI_U32 BufLen, HI_U32 *pCopyLen, HI_BOOL *pEndFlag)
{
    IO_INSTANCE_S *pIoInstance;
    HI_S32 Ret;

    pIoInstance = (IO_INSTANCE_S *)IO;

    if ((HI_NULL_PTR == pCopyLen) || (HI_NULL_PTR == pBuf) || (HI_NULL_PTR == pEndFlag))
    {
        HIGO_ADP_SetError(HIGO_ERR_NULLPTR);
        return HIGO_ERR_NULLPTR;
    }

    /** use function pointer */
    Ret = pIoInstance->IoRead(pIoInstance, pBuf, BufLen, pCopyLen);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    /** check is  file end */
    if ((0 == *pCopyLen) || (*pCopyLen < BufLen))
    {
        *pEndFlag = HI_TRUE;
    }
    else
    {
        *pEndFlag = HI_FALSE;
    }

    return HI_SUCCESS;
}

/**
 \brief VFS file seek 
 \param[in] IO_HANDLE IO VFS instance 
 \param[in] IO_POS_E Position  
 \param[in] HI_S32 Offset   offset 
 \param[out] none
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IOSeek(IO_HANDLE IO, IO_POS_E Position, HI_S32 Offset)
{
    IO_INSTANCE_S *pIoInstance;

    pIoInstance = (IO_INSTANCE_S *)IO;

    if ((Position >= IO_POS_BUTT) || (Position < IO_POS_SET))
    {
        return HIGO_ERR_INVPARAM;
    }
    /**use function pointer*/
    return pIoInstance->IoSeek(pIoInstance, Position, Offset);
}

/**
 \brief get the type of file system 
 \param[in] IO_HANDLE IO
 \param[out] IO_TYPE_E *pIOType pointer for file type
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IOGetType(IO_HANDLE IO, IO_TYPE_E *pIOType)
{
    IO_INSTANCE_S *pIoInstance;

    pIoInstance = (IO_INSTANCE_S *)IO;

    if (HI_NULL_PTR == pIOType)
    {
        HIGO_ADP_SetError(HIGO_ERR_NULLPTR);
        return HIGO_ERR_NULLPTR;
    }

    *pIOType = pIoInstance->Type;
    return HI_SUCCESS;
}

/**
 \brief get file length 
 \param[in] IO_HANDLE IO
 \param[out]  HI_U32 *pLength pointer of file length 
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IOGetLength(IO_HANDLE IO, HI_U32 *pLength)
{
    IO_INSTANCE_S *pIoInstance;

    pIoInstance = (IO_INSTANCE_S *)IO;

    if (HI_NULL_PTR == pLength)
    {
        HIGO_ADP_SetError(HIGO_ERR_NULLPTR);
        return HIGO_ERR_NULLPTR;
    }

    return pIoInstance->IoGetLength(pIoInstance, pLength);
}

/**
 \brief  get file postion 
 \param[in] IO_HANDLE IO
 \param[out]  HI_U32 *pPos pointer for file postion 
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IOGetPos(IO_HANDLE IO, HI_U32 *pPos)
{
    IO_INSTANCE_S *pIoInstance;

    pIoInstance = (IO_INSTANCE_S *)IO;

    if (HI_NULL_PTR == pPos)
    {
        HIGO_ADP_SetError(HIGO_ERR_NULLPTR);
        return HIGO_ERR_NULLPTR;
    }

    return pIoInstance->IoGetPos(pIoInstance, pPos);
}
