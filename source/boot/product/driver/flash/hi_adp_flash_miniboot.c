#include <flash.h>
#include <hi_flash.h>

#ifndef CONFIG_SUPPORT_CA_RELEASE
#  define ERR_FALSH_TRACE(fmt, arg...)   printf
#  define INFO_FLASH_TRACE(fmt, arg...)  printf
#else
#  define ERR_FALSH_TRACE(fmt, arg...)
#  define INFO_FLASH_TRACE(fmt, arg...)
#endif

#define HI_FLASH_HANDLE_TO_STRUCT(handle)       ((struct flash_intf_t * )(handle))
#define HI_FLASH_STRUCT_TO_HANDLE(handle)       ((HI_HANDLE)(handle))

HI_HANDLE HI_Flash_OpenByName(HI_CHAR *pPartitionName)
{
	HI_S32 index = 0;
	HI_HANDLE hFlashHandle = HI_INVALID_HANDLE;

	for(index = 0; index < HI_FLASH_TYPE_BUTT; index++)
	{
		hFlashHandle = HI_Flash_OpenByTypeAndName((HI_FLASH_TYPE_E)index, pPartitionName);
		if(HI_INVALID_HANDLE != hFlashHandle)
		{
			return hFlashHandle;
		}
	}
	return HI_INVALID_HANDLE;
}

HI_HANDLE HI_Flash_OpenByTypeAndName(HI_FLASH_TYPE_E enFlashType, HI_CHAR *pPartitionName)
{
	struct flash_intf_t *flash_handle;

	flash_handle = (struct flash_intf_t * )flash_open_part(enFlashType, pPartitionName);
	if (!flash_handle) {
		return HI_INVALID_HANDLE;
	}

	return HI_FLASH_STRUCT_TO_HANDLE(flash_handle);
}

HI_HANDLE HI_Flash_OpenByTypeAndAddr(HI_FLASH_TYPE_E enFlashType, HI_U64 u64Address, HI_U64 u64Len)
{
    struct flash_intf_t *flash_handle;

    if((enFlashType == HI_FLASH_TYPE_BUTT) || (u64Len == 0))
    {
        return HI_INVALID_HANDLE;
    }

    flash_handle = (struct flash_intf_t * )flash_open_range(enFlashType, u64Address, u64Len);
    if (!flash_handle) {
		return HI_INVALID_HANDLE;
    }

    return HI_FLASH_STRUCT_TO_HANDLE(flash_handle);
}

HI_HANDLE HI_Flash_Open(HI_FLASH_TYPE_E enFlashType, HI_CHAR *pPartitionName, HI_U64 u64Address, HI_U64 u64Len)
{
	if(HI_NULL != pPartitionName) {
		if( enFlashType == HI_FLASH_TYPE_BUTT)
			return HI_Flash_OpenByName(pPartitionName);
		else
			return HI_Flash_OpenByTypeAndName(enFlashType, pPartitionName);
	} else
		return HI_Flash_OpenByTypeAndAddr(enFlashType, u64Address, u64Len);
}

HI_S32 HI_Flash_Close(HI_HANDLE hFlash)
{
    struct flash_intf_t *flash_handle = HI_FLASH_HANDLE_TO_STRUCT(hFlash);

    flash_close(flash_handle);
   
    return HI_SUCCESS;
}

HI_S32 HI_Flash_Erase(HI_HANDLE hFlash, HI_U64 u64Offset, HI_U64 u64Len)
{
    struct flash_intf_t *flash_handle = HI_FLASH_HANDLE_TO_STRUCT(hFlash);

    return flash_erase(flash_handle, u64Offset, u64Len);
}

HI_S32 HI_Flash_Read(HI_HANDLE hFlash, HI_U64 u64Offset, HI_U8 *pBuf,
                     HI_U32 u32Len, HI_U32 u32Flags)
{
	struct flash_intf_t *flash_handle = HI_FLASH_HANDLE_TO_STRUCT(hFlash);

	return flash_read(flash_handle, u64Offset, (uint64)u32Len, (char *)pBuf, u32Flags);
}

HI_S32 HI_Flash_Write(HI_HANDLE hFlash, HI_U64 u64Offset,
                      HI_U8 *pBuf, HI_U32 u32Len, HI_U32 u32Flags)
{
	struct flash_intf_t *flash_handle = HI_FLASH_HANDLE_TO_STRUCT(hFlash);

	return flash_write(flash_handle, u64Offset, (uint64)u32Len, (char *)pBuf, u32Flags);
}

HI_S32 HI_Flash_GetInfo(HI_HANDLE hFlash, HI_Flash_InterInfo_S *pFlashInfo )
{

	struct flash_intf_t *flash_handle = HI_FLASH_HANDLE_TO_STRUCT(hFlash);

	pFlashInfo->TotalSize = flash_handle->info->chipsize;
	pFlashInfo->OpenAddr = flash_handle->from;
	pFlashInfo->OpenLeng = flash_handle->length;
	pFlashInfo->PartSize = flash_handle->length;
	pFlashInfo->BlockSize = flash_handle->info->blocksize;
	pFlashInfo->PageSize = flash_handle->info->pagesize;
	pFlashInfo->fd = 0;
    pFlashInfo->FlashType = (HI_FLASH_TYPE_E)flash_handle->info->type;
	return HI_SUCCESS;
}
