/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : boot_pdm.c
Version             : Initial Draft
Author              :
Created             : 2014/10/21
Description         :
Function List       :
History             :
Date                       Author                   Modification
2014/10/21                                          Created file
******************************************************************************/

#include <uboot.h>
#include "hi_boot_pdm.h"
#include "hi_boot_common.h"
#include "hi_flash.h"

#if !defined(HI_ADVCA_TYPE_NAGRA) && !defined(HI_ADVCA_TYPE_VERIMATRIX)
#ifdef HI_ADVCA_FUNCTION_RELEASE
 #include "ca_pub.h"
#endif
#endif

static HI_PDM_SRCTYPE_E      g_enSrcType = HI_PDM_SRCTYPE_FLASH;
static HI_PDM_MEMINFO_S      g_stMemInfo = {0};
static HI_CHAR g_HeadCheck[HI_HEAD_CHECK_LEN] = {0x5a,0x5a,0x5a,0x5a};

// TODO: Delete
static HI_MCE_MTD_INFO_S        g_stMtdInfo;


static PDM_BUFFER_S     g_stResBuf[PDM_MAX_RESBUF_NUM];
static HI_U32           g_u32ResBufNum = 0;

static HI_S32 PDM_GetMtdInfo(const HI_CHAR *pstrDataName, const HI_CHAR *pBootargs,
                               HI_MTD_INFO_S *pstDataInfo)
{
    HI_CHAR *pstr  = HI_NULL;
    HI_CHAR *pstr2 = HI_NULL;
    HI_CHAR buf[12];

    if ((HI_NULL == pstrDataName) || (HI_NULL == pBootargs) || (HI_NULL == pstDataInfo))
    {
        return HI_FAILURE;
    }

    pstr = strstr(pBootargs, pstrDataName);

    if ((HI_NULL == pstr) || (strlen(pstr) <= strlen(pstrDataName)))
    {
        return HI_FAILURE;
    }

    if (pstr[strlen(pstrDataName)] == '=')
    {
        /*get partition name*/
        pstr += strlen(pstrDataName) + 1; //point to the char after '='
        pstr2 = strstr(pstr, ",");

        if (HI_NULL == pstr2)
        {
            return HI_FAILURE;
        }

        if ((HI_U32)(pstr2 - pstr) >= sizeof(pstDataInfo->MtdName))
        {
            return HI_FAILURE;
        }

        memset(pstDataInfo->MtdName, 0, HI_MTD_NAME_LEN);
        memcpy(pstDataInfo->MtdName, pstr, pstr2 - pstr);

        /*get offset*/
        pstr  = pstr2 + 1;
        pstr2 = strstr(pstr, ",");

        if (HI_NULL == pstr2)
        {
            return HI_FAILURE;
        }

        if ((HI_U32)(pstr2 - pstr) >= sizeof(buf))
        {
            return HI_FAILURE;
        }

        memset(buf, 0, sizeof(buf));
        memcpy(buf, pstr, pstr2 - pstr);
        pstDataInfo->u32Offset = simple_strtoul_2(buf, HI_NULL, 16);

        /*get size*/
        pstr  = pstr2 + 1;
        pstr2 = strstr(pstr, " ");

        if (HI_NULL == pstr2)
        {
            return HI_FAILURE;
        }

        if ((HI_U32)(pstr2 - pstr) >= sizeof(buf))
        {
            return HI_FAILURE;
        }

        memset(buf, 0, sizeof(buf));
        memcpy(buf, pstr, pstr2 - pstr);
        pstDataInfo->u32Size = simple_strtoul_2(buf, HI_NULL, 16);
    }

    return HI_SUCCESS;
}

HI_S32 PDM_GetDefBaseParam(HI_PDM_BASE_INFO_S  *pstPdmBaseinfo)
{
	if(pstPdmBaseinfo == NULL)
	{
		HI_ERR_PDM("pstPdmBaseinfo err\n");
		return -1;
	}

	pstPdmBaseinfo->checkflag = DEF_CHECK_FLAG;
	pstPdmBaseinfo->hdIntf = HI_UNF_DISP_INTF_TYPE_TV;
	pstPdmBaseinfo->sdIntf = HI_UNF_DISP_INTF_TYPE_TV;
	pstPdmBaseinfo->hdFmt = HI_UNF_ENC_FMT_720P_60;
	pstPdmBaseinfo->sdFmt = HI_UNF_ENC_FMT_PAL ;
	pstPdmBaseinfo->scart = 0;
	pstPdmBaseinfo->Bt1120 = 0;
	pstPdmBaseinfo->Bt656 = 0;
	pstPdmBaseinfo->dac[0] = HI_UNF_DISP_DAC_MODE_HD_PR;
	pstPdmBaseinfo->dac[1] = HI_UNF_DISP_DAC_MODE_HD_PB;
	pstPdmBaseinfo->dac[2] = HI_UNF_DISP_DAC_MODE_HD_Y;
	pstPdmBaseinfo->dac[3] = HI_UNF_DISP_DAC_MODE_CVBS;
	pstPdmBaseinfo->dac[4] = HI_UNF_DISP_DAC_MODE_SVIDEO_C;
	pstPdmBaseinfo->dac[5] = HI_UNF_DISP_DAC_MODE_SVIDEO_Y;

#if defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3716mv330)
	pstPdmBaseinfo->layerformat = 9;
	pstPdmBaseinfo->inrectwidth = 1280;
	pstPdmBaseinfo->inrectheight = 720;
	pstPdmBaseinfo->outrectwidth = 1280;
	pstPdmBaseinfo->outrectheight = 720;
#else
	pstPdmBaseinfo->layerformat = 9;
	pstPdmBaseinfo->inrectwidth = 720;
	pstPdmBaseinfo->inrectheight = 576;
	pstPdmBaseinfo->outrectwidth = 720;
	pstPdmBaseinfo->outrectheight = 576;
#endif

    pstPdmBaseinfo->u32Left= 0;
	pstPdmBaseinfo->u32Top= 0;
	pstPdmBaseinfo->usewbc = 1;
	pstPdmBaseinfo->resv1 = 0;
	pstPdmBaseinfo->resv2 = 0;
	pstPdmBaseinfo->logoMtdSize = 0;
	pstPdmBaseinfo->playMtdSize = 0;

	pstPdmBaseinfo->u32Brightness = 50;
   	pstPdmBaseinfo->u32Contrast = 50;
    pstPdmBaseinfo->u32Saturation = 50;
    pstPdmBaseinfo->u32HuePlus = 50;
	return 0;
}

HI_VOID PDM_GetDefLogoInfo(HI_PDM_LOGO_INFO_S *pstLogoInfo)
{
    pstLogoInfo->checkflag	= DEF_CHECK_FLAG;
    pstLogoInfo->contentLen	= 0;
    pstLogoInfo->logoflag	= 0;
    memset(pstLogoInfo->chVersion,0,8);
    pstLogoInfo->u32XPos	= 0;
    pstLogoInfo->u32YPos	= 0;
#if defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv320) || defined(CHIP_TYPE_hi3716mv330)
    pstLogoInfo->u32OutHeight	= 1280;
    pstLogoInfo->u32OutWidth	= 720;
#else
	pstLogoInfo->u32OutHeight	= 720;
    pstLogoInfo->u32OutWidth	= 576;
#endif

    pstLogoInfo->u32BgColor		= 0xFF0000FF;

    return;
}


HI_S32 PDM_ReadBase(HI_U32 *pAddr)
{
    HI_S32              Ret = HI_SUCCESS;
    HI_HANDLE           hFlash = HI_INVALID_HANDLE;
    HI_S32              ReadLen = 0;
    static HI_BOOL      bRead = HI_FALSE;
    HI_CHAR             *pTmp = HI_NULL;
    HI_CHAR             Bootarg[BOOT_ARGS_SIZE] = {0};
    HI_Flash_InterInfo_S    stFlashInfo;
	HI_U32 				u32ReadLenth = 0;
    HI_U32              u32StartPhyAddr;

    if(HI_TRUE == bRead)
    {
        *pAddr = g_stMemInfo.u32BaseAddr;
        return HI_SUCCESS;
    }

    if (HI_PDM_SRCTYPE_DDR == g_enSrcType)
    {
        Ret = HI_PDM_AllocReserveMem(PDM_BASEPARAM_BUFNAME, MCE_DEF_BASEPARAM_SIZE, &u32StartPhyAddr);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_PDM("Alloc Reserve Mem err!, Ret = %#x\n", Ret);
            return HI_FAILURE;
        }

        memcpy((HI_U32 *)u32StartPhyAddr, (HI_U32 *)g_stMemInfo.u32BaseAddr, MCE_DEF_BASEPARAM_SIZE);

        *pAddr = u32StartPhyAddr;
        bRead = HI_TRUE;

        return HI_SUCCESS;
    }

    memset(g_stMtdInfo.stBase.MtdName, 0, sizeof(g_stMtdInfo.stBase.MtdName));
    strncpy(g_stMtdInfo.stBase.MtdName, PDM_BASE_DEF_NAME, sizeof(g_stMtdInfo.stBase.MtdName) - 1);

    hFlash = HI_Flash_OpenByName(g_stMtdInfo.stBase.MtdName);
    if(HI_INVALID_HANDLE == hFlash)
    {
        pTmp = getenv("bootargs");
        if (HI_NULL == pTmp)
        {
            Ret = HI_FAILURE;
            goto RET;
        }

        memset(Bootarg, 0, BOOT_ARGS_SIZE);
        strncpy(Bootarg, pTmp, BOOT_ARGS_SIZE - 1);
        Ret = PDM_GetMtdInfo(PDM_BASE_DEF_NAME, Bootarg, &g_stMtdInfo.stBase);
        if (HI_SUCCESS == Ret)
        {
            hFlash = HI_Flash_OpenByName(g_stMtdInfo.stBase.MtdName);
            if (HI_INVALID_HANDLE == hFlash)
            {
                HI_INFO_PDM("ERR: Can not find baseparam flash data!");
                Ret = HI_FAILURE;
                goto RET;
            }

            (HI_VOID)HI_Flash_GetInfo(hFlash, &stFlashInfo);
        }
        else
        {
            HI_INFO_PDM("ERR: Can not find baseparam flash data!");
            Ret = HI_FAILURE;
            goto RET;
        }
    }
    else
    {
        g_stMtdInfo.stBase.u32Offset = 0;
        (HI_VOID)HI_Flash_GetInfo(hFlash, &stFlashInfo);
        g_stMtdInfo.stBase.u32Size = stFlashInfo.PartSize;
    }

	u32ReadLenth = stFlashInfo.PageSize > MCE_DEF_BASEPARAM_SIZE ? stFlashInfo.PageSize : MCE_DEF_BASEPARAM_SIZE;

	Ret = HI_PDM_AllocReserveMem(PDM_BASEPARAM_BUFNAME, u32ReadLenth, &u32StartPhyAddr);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("Alloc Reserve Mem err!, Ret = %#x\n", Ret);
        goto FLASH_CLOSE;
    }


	ReadLen = HI_Flash_Read(hFlash, (HI_U64)g_stMtdInfo.stBase.u32Offset, (HI_U8 *)u32StartPhyAddr, u32ReadLenth, HI_FLASH_RW_FLAG_RAW);
    if(ReadLen < 0)
    {
        HI_INFO_PDM("ERR: HI_Flash_Read!");
        Ret = HI_FAILURE;
        goto FLASH_CLOSE;
    }

#if !defined(HI_ADVCA_TYPE_NAGRA) && !defined(HI_ADVCA_TYPE_VERIMATRIX)
#ifdef  HI_ADVCA_FUNCTION_RELEASE
    CA_DataDecrypt((HI_U8 *)u32StartPhyAddr, u32ReadLenth, (HI_U8 *)u32StartPhyAddr);
#endif
#endif

    g_stMemInfo.u32BaseAddr = u32StartPhyAddr;

    *pAddr = g_stMemInfo.u32BaseAddr;
    bRead = HI_TRUE;

FLASH_CLOSE:
    HI_Flash_Close(hFlash);
RET:
    return Ret;
}

HI_S32 PDM_ReadLogoParam(HI_U32 *pAddr)
{
    HI_S32              Ret = HI_SUCCESS;
    HI_HANDLE           hFlash = HI_INVALID_HANDLE;
    HI_S32              ReadLen = 0;
    HI_CHAR             *pTmp = HI_NULL;
    HI_CHAR             Bootarg[BOOT_ARGS_SIZE] = {0};
    HI_Flash_InterInfo_S    stFlashInfo;
    HI_U32              u32DataAddr;
	HI_U32 				u32ReadLenth = 0;

    if(HI_PDM_SRCTYPE_DDR == g_enSrcType)
    {
        *pAddr = g_stMemInfo.u32LogoAddr;
        return HI_SUCCESS;
    }

    memset(g_stMtdInfo.stLogo.MtdName, 0, sizeof(g_stMtdInfo.stLogo.MtdName));
    strncpy(g_stMtdInfo.stLogo.MtdName, PDM_LOGO_DEF_NAME, sizeof(g_stMtdInfo.stLogo.MtdName));
    g_stMtdInfo.stLogo.MtdName[sizeof(g_stMtdInfo.stLogo.MtdName) - 1] = '\0';

    hFlash = HI_Flash_OpenByName(g_stMtdInfo.stLogo.MtdName);
    if(HI_INVALID_HANDLE == hFlash)
    {
        pTmp = getenv("bootargs");

      if (HI_NULL == pTmp)
        {
            Ret = HI_FAILURE;
            goto RET;
        }

        memset(Bootarg, 0, BOOT_ARGS_SIZE);
        strncpy(Bootarg, pTmp, BOOT_ARGS_SIZE - 1);

        Ret = PDM_GetMtdInfo(PDM_LOGO_DEF_NAME, Bootarg, &g_stMtdInfo.stLogo);
        if (HI_SUCCESS == Ret)
        {
            hFlash = HI_Flash_OpenByName(g_stMtdInfo.stLogo.MtdName);
            if (HI_INVALID_HANDLE == hFlash)
            {
                HI_ERR_PDM("ERR: Can not find logo flash data!");
                Ret = HI_FAILURE;
                goto RET;
            }

            (HI_VOID)HI_Flash_GetInfo(hFlash, &stFlashInfo);
        }
        else
        {
            HI_ERR_PDM("ERR: Can not find logo flash data!");
            Ret = HI_FAILURE;
            goto RET;
        }
    }
    else
    {
        g_stMtdInfo.stLogo.u32Offset = 0;
        (HI_VOID)HI_Flash_GetInfo(hFlash, &stFlashInfo);
        g_stMtdInfo.stLogo.u32Size = stFlashInfo.PartSize;
    }


	/*read logo param*/
    u32ReadLenth = stFlashInfo.PageSize > MCE_DEF_LOGOPARAM_SIZE ? stFlashInfo.PageSize : MCE_DEF_LOGOPARAM_SIZE;
    u32DataAddr = (HI_U32)malloc(u32ReadLenth);

    ReadLen = HI_Flash_Read(hFlash, (HI_U64)g_stMtdInfo.stLogo.u32Offset, (HI_U8 *)u32DataAddr, u32ReadLenth, HI_FLASH_RW_FLAG_RAW);
    if(ReadLen < 0)
    {
        HI_INFO_PDM("ERR: HI_Flash_Read!, ReadLen = %#x", ReadLen);

        Ret = HI_FAILURE;
        goto FLASH_CLOSE;
    }

#if !defined(HI_ADVCA_TYPE_NAGRA) && !defined(HI_ADVCA_TYPE_VERIMATRIX)
#ifdef  HI_ADVCA_FUNCTION_RELEASE
    CA_DataDecrypt((HI_U8 *)u32DataAddr, u32ReadLenth, (HI_U8 *)u32DataAddr);
#endif
#endif

    g_stMemInfo.u32LogoAddr = u32DataAddr;
    *pAddr = u32DataAddr;

FLASH_CLOSE:
    HI_Flash_Close(hFlash);
RET:
    return Ret;
}

HI_S32 PDM_ReadLogoData(HI_U32 u32Size, HI_U32 *pAddr)
{
    HI_S32              Ret = HI_SUCCESS;
    HI_HANDLE           hFlash = HI_INVALID_HANDLE;
    HI_S32              ReadLen = 0;
    HI_CHAR             *pTmp = HI_NULL;
    HI_CHAR             Bootarg[BOOT_ARGS_SIZE] = {0};
    HI_MTD_INFO_S       stLogoMtdInfo;
    HI_U32              u32DataAddr = 0;
    HI_U32              size = 0;
    HI_Flash_InterInfo_S stFlashInfo;
	
    if(HI_PDM_SRCTYPE_DDR == g_enSrcType)
    {
        *pAddr = g_stMemInfo.u32LogoAddr + MCE_DEF_LOGOPARAM_SIZE;
        return HI_SUCCESS;
    }

	memset(stLogoMtdInfo.MtdName, 0, sizeof(stLogoMtdInfo.MtdName));
    strncpy(stLogoMtdInfo.MtdName, PDM_LOGO_DEF_NAME,sizeof(stLogoMtdInfo.MtdName));
	stLogoMtdInfo.MtdName[sizeof(stLogoMtdInfo.MtdName) - 1] = '\0';

    stLogoMtdInfo.u32Offset = 0;
    stLogoMtdInfo.u32Size = u32Size + MCE_DEF_LOGOPARAM_SIZE;

#if !defined(HI_ADVCA_TYPE_NAGRA) && !defined(HI_ADVCA_TYPE_VERIMATRIX)
#ifdef  HI_ADVCA_FUNCTION_RELEASE
    if (0 != (stLogoMtdInfo.u32Size % 16))
    {
        stLogoMtdInfo.u32Size += 16 - (stLogoMtdInfo.u32Size % 16);
    }
#endif
#endif


    hFlash = HI_Flash_OpenByName(PDM_LOGO_DEF_NAME);
    if(HI_INVALID_HANDLE == hFlash)
    {
        pTmp = getenv("bootargs");

        if (HI_NULL == pTmp)
        {
            Ret = HI_FAILURE;
            goto RET;
        }

        memset(Bootarg, 0, BOOT_ARGS_SIZE);
        strncpy(Bootarg, pTmp, BOOT_ARGS_SIZE - 1);
        Ret = PDM_GetMtdInfo(PDM_LOGO_DEF_NAME, Bootarg, &stLogoMtdInfo);
        if (HI_SUCCESS == Ret)
        {
            hFlash = HI_Flash_OpenByName(stLogoMtdInfo.MtdName);
            if (HI_INVALID_HANDLE == hFlash)
            {
                HI_ERR_PDM("ERR: Can not find logo flash data!\n");
                Ret = HI_FAILURE;
                goto RET;
            }
        }
        else
        {
            HI_ERR_PDM("ERR: Can not find logo flash data!\n");
            Ret = HI_FAILURE;
            goto RET;
        }
    }
	
	memset(&stFlashInfo, 0 ,sizeof(HI_Flash_InterInfo_S));	
	(HI_VOID)HI_Flash_GetInfo(hFlash, &stFlashInfo);
    size = stFlashInfo.PageSize;
    if(0 == size)
    {
    	size = 1;
    }
    stLogoMtdInfo.u32Size = ((stLogoMtdInfo.u32Size + size - 1)/size)*size;

	u32DataAddr = (HI_U32)malloc(stLogoMtdInfo.u32Size);
	if(0 == u32DataAddr)
	{
		HI_ERR_PDM("ERR: malloc failed!!\n");
        Ret = HI_FAILURE;
        goto FLASH_CLOSE;
	}
	
    /*read logo data*/
    ReadLen = HI_Flash_Read(hFlash, (HI_U64)stLogoMtdInfo.u32Offset, (HI_U8 *)u32DataAddr, stLogoMtdInfo.u32Size, HI_FLASH_RW_FLAG_RAW);
    if(ReadLen < 0)
    {
        HI_INFO_PDM("ERR: HI_Flash_Read!\n");
        Ret = HI_FAILURE;
        goto FLASH_CLOSE;
    }

#if !defined(HI_ADVCA_TYPE_NAGRA) && !defined(HI_ADVCA_TYPE_VERIMATRIX)
#ifdef  HI_ADVCA_FUNCTION_RELEASE
    CA_DataDecrypt((HI_U8 *)u32DataAddr, stLogoMtdInfo.u32Size, (HI_U8 *)u32DataAddr);
#endif
#endif

    *pAddr = u32DataAddr + MCE_DEF_LOGOPARAM_SIZE;

FLASH_CLOSE:
    HI_Flash_Close(hFlash);
RET:
    return Ret;
}

HI_S32 PDM_ReadPlayParam(HI_U32 *pAddr)
{
    HI_S32              Ret = HI_SUCCESS;
    HI_HANDLE           hFlash = HI_INVALID_HANDLE;
    HI_S32              ReadLen = 0;
    HI_CHAR             *pTmp = HI_NULL;
    HI_CHAR             Bootarg[BOOT_ARGS_SIZE] = {0};
    HI_Flash_InterInfo_S    stFlashInfo;
    HI_U32              u32StartPhyAddr;

    Ret = HI_PDM_AllocReserveMem(PDM_PLAYPARAM_BUFNAME, MCE_DEF_PLAYPARAM_SIZE, &u32StartPhyAddr);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("Alloc Reserve Mem err!, Ret = %#x\n", Ret);
        return HI_FAILURE;
    }

    strncpy(g_stMtdInfo.stPlay.MtdName, PDM_FASTPLAY_DEF_NAME,sizeof(g_stMtdInfo.stPlay.MtdName));

    hFlash = HI_Flash_OpenByName(PDM_FASTPLAY_DEF_NAME);
    if(HI_INVALID_HANDLE == hFlash)
    {
        pTmp = getenv("bootargs");

       if (HI_NULL == pTmp)
        {
            Ret = HI_FAILURE;
            goto RET;
        }

        memset(Bootarg, 0, BOOT_ARGS_SIZE);
        strncpy(Bootarg, pTmp, BOOT_ARGS_SIZE - 1);
        Ret = PDM_GetMtdInfo(PDM_FASTPLAY_DEF_NAME, Bootarg, &g_stMtdInfo.stPlay);
        if (HI_SUCCESS == Ret)
        {
            hFlash = HI_Flash_OpenByName(g_stMtdInfo.stPlay.MtdName);
            if (HI_INVALID_HANDLE == hFlash)
            {
                HI_ERR_PDM("ERR: Can not find logo flash data!");
                Ret = HI_FAILURE;
                goto RET;
            }
        }
        else
        {
            HI_ERR_PDM("ERR: Can not find logo flash data!");
            Ret = HI_FAILURE;
            goto RET;
        }
    }
    else
    {
        g_stMtdInfo.stPlay.u32Offset = 0;
        (HI_VOID)HI_Flash_GetInfo(hFlash, &stFlashInfo);
        g_stMtdInfo.stPlay.u32Size = stFlashInfo.PartSize;
    }

    /*read play param*/
    ReadLen = HI_Flash_Read(hFlash, (HI_U64)g_stMtdInfo.stPlay.u32Offset, (HI_U8 *)u32StartPhyAddr, MCE_DEF_PLAYPARAM_SIZE, HI_FLASH_RW_FLAG_RAW);
    if(ReadLen < 0)
    {
        HI_INFO_PDM("ERR: HI_Flash_Read!\n");
        Ret = HI_FAILURE;
        goto FLASH_CLOSE;
    }

    g_stMemInfo.u32PlayAddr = u32StartPhyAddr;
    *pAddr = u32StartPhyAddr;

FLASH_CLOSE:
    HI_Flash_Close(hFlash);
RET:
    return Ret;
}

HI_S32 PDM_ReadPlayData(HI_U32 u32Size, HI_U32 *pAddr)
{
    HI_S32              Ret = HI_SUCCESS;
    HI_HANDLE           hFlash = HI_INVALID_HANDLE;
    HI_S32              ReadLen = 0;
    HI_CHAR             *pTmp = HI_NULL;
    HI_CHAR             Bootarg[BOOT_ARGS_SIZE] = {0};
    HI_MTD_INFO_S       stPlayMtdInfo;
    HI_U32              u32StartPhyAddr;
	HI_U32              size = 0;
    HI_Flash_InterInfo_S stFlashInfo;   

    strncpy(stPlayMtdInfo.MtdName, PDM_FASTPLAY_DEF_NAME,sizeof(stPlayMtdInfo.MtdName));
    stPlayMtdInfo.u32Offset = MCE_DEF_PLAYPARAM_SIZE;
    stPlayMtdInfo.u32Size = u32Size;

    hFlash = HI_Flash_OpenByName(PDM_FASTPLAY_DEF_NAME);
    if(HI_INVALID_HANDLE == hFlash)
    {
        pTmp = getenv("bootargs");
        if (HI_NULL == pTmp)
        {
            Ret = HI_FAILURE;
            goto RET;
        }

        memset(Bootarg, 0, BOOT_ARGS_SIZE);
        strncpy(Bootarg, pTmp, BOOT_ARGS_SIZE - 1);
        Ret = PDM_GetMtdInfo(PDM_FASTPLAY_DEF_NAME, Bootarg, &stPlayMtdInfo);
        if (HI_SUCCESS == Ret)
        {
            hFlash = HI_Flash_OpenByName(stPlayMtdInfo.MtdName);
            if (HI_INVALID_HANDLE == hFlash)
            {
                HI_ERR_PDM("ERR: Can not find logo flash data!");
                Ret = HI_FAILURE;
                goto RET;
            }

            stPlayMtdInfo.u32Offset += MCE_DEF_PLAYPARAM_SIZE;
            stPlayMtdInfo.u32Size = u32Size;
        }
        else
        {
            HI_ERR_PDM("ERR: Can not find logo flash data!");
            Ret = HI_FAILURE;
            goto RET;
        }
    }
	
	memset(&stFlashInfo, 0 ,sizeof(HI_Flash_InterInfo_S));	
	(HI_VOID)HI_Flash_GetInfo(hFlash, &stFlashInfo);
    size = stFlashInfo.PageSize;
    if(0 == size)
    {
    	size = 1;
    }
    stPlayMtdInfo.u32Size = ((stPlayMtdInfo.u32Size + size - 1)/size)*size;  /**page align**/
	
	Ret = HI_PDM_AllocReserveMem(PDM_PLAYDATA_BUFNAME, stPlayMtdInfo.u32Size, &u32StartPhyAddr);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("Alloc Reserve Mem err!, Ret = %#x\n", Ret);
        goto FLASH_CLOSE;
    }
	
    /*read play data*/
    ReadLen = HI_Flash_Read(hFlash, (HI_U64)(stPlayMtdInfo.u32Offset), (HI_U8 *)u32StartPhyAddr, stPlayMtdInfo.u32Size, HI_FLASH_RW_FLAG_RAW);
    if(ReadLen < 0)
    {
        HI_ERR_PDM("ERR: HI_Flash_Read, ReadLen:%#x.", ReadLen);
        Ret = HI_FAILURE;
        goto FLASH_CLOSE;
    }

    *pAddr = u32StartPhyAddr;

FLASH_CLOSE:
    HI_Flash_Close(hFlash);
RET:
    return Ret;
}

HI_VOID PDM_TransFomat(HI_UNF_ENC_FMT_E enSrcFmt, HI_UNF_ENC_FMT_E *penHdFmt, HI_UNF_ENC_FMT_E *penSdFmt)
{
    switch(enSrcFmt)
    {
        /* bellow are tv display formats */
        case HI_UNF_ENC_FMT_1080P_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080P_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_1080P_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080P_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL;
            break;
        }
        case HI_UNF_ENC_FMT_1080i_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080i_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_1080i_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080i_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL;
            break;
        }
        case HI_UNF_ENC_FMT_720P_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_720P_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_720P_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_720P_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL;
            break;
        }
        case HI_UNF_ENC_FMT_576P_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_576P_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL;
            break;
        }
        case HI_UNF_ENC_FMT_480P_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_480P_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_PAL:
        {
            *penHdFmt = HI_UNF_ENC_FMT_PAL;
            *penSdFmt = HI_UNF_ENC_FMT_PAL;
            break;
        }
        case HI_UNF_ENC_FMT_NTSC:
        {
            *penHdFmt = HI_UNF_ENC_FMT_NTSC;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }

        /* bellow are vga display formats */
        case HI_UNF_ENC_FMT_861D_640X480_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_861D_640X480_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_800X600_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_800X600_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1024X768_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1024X768_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X720_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1280X720_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X800_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1280X800_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X1024_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1280X1024_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1360X768_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1360X768_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1366X768_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1366X768_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1400X1050_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1400X1050_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1440X900_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1440X900_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1440X900_60_RB:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1440X900_60_RB;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1600X900_60_RB:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1600X900_60_RB;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1600X1200_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1600X1200_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1680X1050_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1680X1050_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }

        case HI_UNF_ENC_FMT_VESA_1920X1080_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1920X1080_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1920X1200_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1920X1200_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_2048X1152_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_2048X1152_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        default:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080i_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL;
            break;
        }
    }

    return;
}

HI_S32 HI_PDM_SetSource(HI_PDM_SRCTYPE_E enSrcType, HI_PDM_MEMINFO_S *pstMemInfo)
{
    if(HI_NULL == pstMemInfo)
    {
        return HI_FAILURE;
    }

    if(HI_PDM_SRCTYPE_DDR != enSrcType)
    {
        HI_ERR_PDM("ERR: only support set source type ddr!\n");
        return HI_FAILURE;
    }

    g_enSrcType = enSrcType;
    g_stMemInfo = *pstMemInfo;

    return HI_SUCCESS;
}

HI_S32 PDM_GetHEADFromMem(HI_U8 *pDBMem, HI_PDM_Data_S *pstDB)
{
    HI_CHAR HeadCheck[HI_HEAD_CHECK_LEN] = {0};

    if(HI_NULL == pDBMem || HI_NULL == pstDB)
    {
        HI_ERR_PDM("ERR: para is null\n");
        return HI_FAILURE;
    }

    memcpy(HeadCheck, (HI_CHAR *)pDBMem, HI_HEAD_CHECK_LEN);

    if(0 != memcmp(HeadCheck, g_HeadCheck, HI_HEAD_CHECK_LEN))
    {
        HI_ERR_PDM("ERR: this is not a db\n");
        return HI_FAILURE;
    }

    pstDB->u32DataLen = MCE_DEF_BASEPARAM_SIZE;

    pstDB->pData = pDBMem;

    return HI_SUCCESS;
}

HI_S32 PDM_GetLogoFromMem(HI_U8 *pDBMem, HI_PDM_Data_S *pstDB)
{
    HI_CHAR HeadCheck[HI_HEAD_CHECK_LEN] = {0};

    if(HI_NULL == pDBMem || HI_NULL == pstDB)
    {
        HI_ERR_PDM("ERR: para is null\n");
        return HI_FAILURE;
    }

    memcpy(HeadCheck, (HI_CHAR *)pDBMem, HI_HEAD_CHECK_LEN);

    if(0 != memcmp(HeadCheck, g_HeadCheck, HI_HEAD_CHECK_LEN))
    {
        HI_ERR_PDM("ERR: this is not a db\n");
        return HI_FAILURE;
    }
	pstDB->u32DataLen = MCE_DEF_LOGOPARAM_SIZE;

    pstDB->pData = pDBMem;

    return HI_SUCCESS;
}


HI_S32 PDM_GetMceParamFromMem(HI_U8 *pDBMem, HI_PDM_Data_S *pstDB)
{
    HI_CHAR HeadCheck[HI_HEAD_CHECK_LEN] = {0};

    if(HI_NULL == pDBMem || HI_NULL == pstDB)
    {
        HI_ERR_PDM("ERR: para is null\n");
        return HI_FAILURE;
    }

    memcpy(HeadCheck, (HI_CHAR *)pDBMem, HI_HEAD_CHECK_LEN);

    if(0 != memcmp(HeadCheck, g_HeadCheck, HI_HEAD_CHECK_LEN))
    {
        HI_ERR_PDM("ERR: this is not a db\n");
        return HI_FAILURE;
    }
	pstDB->u32DataLen = MCE_DEF_LOGOPARAM_SIZE;

    pstDB->pData = pDBMem;

    return HI_SUCCESS;
}



HI_S32 HI_PDM_GetDispParam( HI_PDM_BASE_INFO_S *pstDispParam)
{
    HI_S32                      Ret;
    HI_U32                      BaseDBAddr;
    HI_PDM_BASE_INFO_S          stDefDispParam = {0};
    HI_PDM_Data_S                     stBaseDB;

    PDM_GetDefBaseParam(&stDefDispParam);

    Ret = PDM_ReadBase(&BaseDBAddr);
    if(HI_SUCCESS != Ret)
    {
        HI_INFO_PDM("ERR: PDM_ReadBase, use default baseparam!\n");
        *pstDispParam = stDefDispParam;
        return HI_SUCCESS;
    }

	*pstDispParam = stDefDispParam;

    Ret = PDM_GetHEADFromMem((HI_U8 *)BaseDBAddr, &stBaseDB);
    if(HI_SUCCESS != Ret)
    {
        HI_INFO_PDM("ERR: HI_DB_GetDBFromMem, use default baseparam!\n");
        *pstDispParam = stDefDispParam;
        return HI_SUCCESS;
    }

	memcpy(pstDispParam,stBaseDB.pData,sizeof(HI_PDM_BASE_INFO_S));

    return HI_SUCCESS;
}


HI_S32 HI_PDM_GetLogoParam(HI_PDM_LOGO_INFO_S *pstLogoParam)
{
    HI_S32                      Ret;
    HI_U32                      LogoDBAddr;
    HI_PDM_Data_S                     stLogoDB;
	HI_PDM_LOGO_INFO_S stLogoInfo;


	memset(&stLogoInfo,0,sizeof(HI_PDM_LOGO_INFO_S));

	PDM_GetDefLogoInfo(&stLogoInfo);

    Ret = PDM_ReadLogoParam(&LogoDBAddr);
    if(HI_SUCCESS != Ret)
    {
        HI_INFO_PDM("there is no logo param!\n");
        pstLogoParam->checkflag = 0;
        return HI_SUCCESS;
    }
	*pstLogoParam = stLogoInfo;

    Ret = PDM_GetLogoFromMem((HI_U8 *)LogoDBAddr, &stLogoDB);
    if(HI_SUCCESS != Ret)
    {
        HI_INFO_PDM("ERR: HI_DB_GetDBFromMem!\n");
        return HI_FAILURE;
    }

	memcpy(pstLogoParam,stLogoDB.pData,sizeof(HI_PDM_LOGO_INFO_S));

    return HI_SUCCESS;
}

HI_S32 HI_PDM_GetLogoData(HI_U32 Len, HI_U32 *pLogoDataAddr)
{
    if(HI_NULL == pLogoDataAddr)
    {
        return HI_FAILURE;
    }

    if(0 == Len)
    {
        return HI_FAILURE;
    }

    return PDM_ReadLogoData(Len, pLogoDataAddr);
}

HI_S32 HI_PDM_GetMceParam(HI_PDM_MCE_PARAM_S *pstMceParam)
{
    HI_S32                      Ret;
    HI_U32                      PlayDBAddr;
    HI_PDM_Data_S				stPlayData;
	HI_U32 						u32PicCnt;
	HI_PMD_PIC_PICTURE			*pPicInfo = NULL;

    Ret = PDM_ReadPlayParam(&(PlayDBAddr));
    if(HI_SUCCESS != Ret)
    {
        HI_INFO_PDM("ERR: PDM_ReadPlayParam\n");
        return Ret;
    }

    Ret = PDM_GetMceParamFromMem((HI_U8 *)PlayDBAddr, &stPlayData);
    if(HI_SUCCESS != Ret)
    {
        HI_INFO_PDM("ERR: HI_DB_GetDBFromMem!\n");
        return HI_FAILURE;
    }

	memcpy(pstMceParam,stPlayData.pData,sizeof(HI_PDM_MCE_PARAM_S));

	if(pstMceParam->playType == MCE_PLAY_TYPE_GPHFILE)
	{
		u32PicCnt = pstMceParam->contentLen;
		pPicInfo = (HI_PMD_PIC_PICTURE*)(stPlayData.pData+0x800);
		pstMceParam->contentLen = (pPicInfo[u32PicCnt-1].u32FileAddr) +   pPicInfo[u32PicCnt-1].u32FileLen;
	}

    return HI_SUCCESS;
}

HI_S32 HI_PDM_GetMceData(HI_U32 u32Size, HI_U32 *pAddr)
{
    if(HI_NULL == pAddr)
    {
        return HI_FAILURE;
    }

    return PDM_ReadPlayData(u32Size, pAddr);
}
#ifndef HI_MINIBOOT_SUPPORT
extern void *reserve_mem_alloc(unsigned int size, unsigned int *allocsize);
#endif
/* Alloc reserve memory in boot */
HI_S32 HI_PDM_AllocReserveMem(const HI_CHAR *BufName, HI_U32 u32Len, HI_U32 *pu32PhyAddr)
{
    HI_U32      AlignSize;

    //*pu32PhyAddr = (HI_U32)malloc(u32Len);
    *pu32PhyAddr = (HI_U32)reserve_mem_alloc(u32Len, &AlignSize);
    if(HI_NULL == *pu32PhyAddr)
    {
        HI_ERR_PDM("malloc err\n");
        return HI_FAILURE;
    }

    if(g_u32ResBufNum >= PDM_MAX_RESBUF_NUM)
    {
        HI_ERR_PDM("ERR: you have alloc the max num reserve mem!\n");
        return HI_FAILURE;
    }

    strncpy(g_stResBuf[g_u32ResBufNum].Name, BufName, strlen(BufName));
    g_stResBuf[g_u32ResBufNum].PhyAddr = *pu32PhyAddr;
    g_stResBuf[g_u32ResBufNum].Len = AlignSize;

    g_u32ResBufNum++;

    return HI_SUCCESS;
}

/*
set the reserve addresss to tag.

the pdm tag format is:
version=1.0.0.0  fb=0x85000000,0x10000  baseparam=0x86000000,0x2000 бнбн
*/
HI_VOID HI_PDM_SetTagData(HI_VOID)
{
    HI_S32  i;
    HI_CHAR PdmTag[PDM_TAG_MAXLEN];
    HI_CHAR *p = PdmTag;

    memset(PdmTag, 0x0, PDM_TAG_MAXLEN);

    snprintf(p, PDM_TAG_MAXLEN,"version=%s ", PDM_TAG_VERSION);

    p += strlen(p);

    for(i=0; i<g_u32ResBufNum; i++)
    {
        snprintf(p, PDM_TAG_MAXLEN,"%s=0x%x,0x%x ", g_stResBuf[i].Name, g_stResBuf[i].PhyAddr, g_stResBuf[i].Len);

        p += strlen(p);
    }

    *p = '\0';

    set_param_data("pdm_tag", PdmTag, strlen(PdmTag));

    HI_INFO_PDM("tag is: %s\n", PdmTag);

    return;
}

static HI_S32 PDM_VerifyDeviceInfo(HI_CHAR * pDevInfoBuf, HI_U32 u32DevInfoBufLen, HI_U32 *pu32ValidDevInfoLen)
{
    HI_U32 u32PosIndex = 0;
    HI_S32 s32Ret = HI_FAILURE;

    /* locate magic num */
    while(u32PosIndex < u32DevInfoBufLen)
    {
        HI_CHAR *pCurPos = strstr(&pDevInfoBuf[u32PosIndex], "MAGICNUM");

        if (pCurPos && '=' == *(pCurPos + strlen("MAGICNUM")))
        {
            if (!strncmp(pCurPos + strlen("MAGICNUM") + 1, PDM_DEVICE_INFO_DEF_NAME, sizeof(PDM_DEVICE_INFO_DEF_NAME))) /* +1 for skip '=' */
            {
                /* magic num is ok ,get device info valid length */
                u32PosIndex += strlen(&pDevInfoBuf[u32PosIndex]) + 1;   /* +1 for skip \0 */
                pCurPos = strstr(&pDevInfoBuf[u32PosIndex], "LENGTH");
                if (pCurPos && '=' == *(pCurPos + strlen("LENGTH")))
                {
#ifndef HI_MINIBOOT_SUPPORT
                    *pu32ValidDevInfoLen = simple_strtoul(pCurPos + strlen("LENGTH") + 1, HI_NULL, 16); /* +1 for skip '=' */
#else
                    *pu32ValidDevInfoLen = simple_strtoul_2(pCurPos + strlen("LENGTH") + 1, HI_NULL, 16); /*  +1 for skip '=' */
#endif
                    s32Ret = HI_SUCCESS;
                    goto out;
                }
                else
                {
                    HI_ERR_PDM("invalid device info part, no found valid length.\n");
                    goto out;
                }
            }
            else
            {
                HI_ERR_PDM("invalid device info part, magicnum dismatched.\n");
                goto out;
            }
        }
        else
        {
            u32PosIndex += strlen(&pDevInfoBuf[u32PosIndex]) + 1;   /* +1 for skip \0 */
        }
    }

out:
    return s32Ret;
}

/*
 * raw data example(MAC+\0+SN+\0+MAGICNUM+\0+LENGTH+\0+OUI+\0+HW+\0):
 * fc48efc93536\0ab56fe98\0MAGICNUM=deviceinfo\0LENGTH=12345678\0OUI=12345678\0HW=98765432\0
 */
static HI_S32 PDM_GetDeviceCfgItem(HI_CHAR *pstrCfgName,  HI_CHAR * pOutBuf, HI_U32 u32OutBuflen, HI_CHAR * pInBuf, HI_U32 u32InBuflen)
{
    HI_U32 u32PosIndex = 0, u32DevInfoLen = 0;
    HI_S32 s32Ret = HI_FAILURE;

    /* verify device info data */
    s32Ret = PDM_VerifyDeviceInfo(pInBuf, u32InBuflen, &u32DevInfoLen);
    if (HI_SUCCESS != s32Ret)
    {
        goto out;
    }

    /* because of compatibility reasons mac and sn do a special deal */
     if (!strncmp(pstrCfgName, "MAC", sizeof("MAC")))
    {
        strncpy(pOutBuf, &pInBuf[u32PosIndex], u32OutBuflen );
        pOutBuf[u32OutBuflen - 1] = '\0';
        s32Ret = HI_SUCCESS;
        goto out;
    }
    else  /* locate next cfg item */
    {
        u32PosIndex += strlen(&pInBuf[u32PosIndex]) + 1; /* +1 for skip \0 */
        if (u32PosIndex > u32DevInfoLen)         /* pos index overflow */
        {
            HI_ERR_PDM("pos index(%u) overflowed.\n", u32PosIndex);
            s32Ret = HI_FAILURE;
            goto out;
        }
    }

     if (!strncmp(pstrCfgName, "SN", sizeof("SN")))
     {
        strncpy(pOutBuf, &pInBuf[u32PosIndex], u32OutBuflen);
        pOutBuf[u32OutBuflen - 1] = '\0';
        s32Ret = HI_SUCCESS;
        goto out;
     }
     else /* locate next cfg item */
     {
        u32PosIndex += strlen(&pInBuf[u32PosIndex]) + 1; /* +1 for skip \0 */
        if (u32PosIndex > u32DevInfoLen) /* pos index overflow */
        {
            HI_ERR_PDM("pos index(%u) overflowed.\n", u32PosIndex);
            s32Ret = HI_FAILURE;
            goto out;
        }
     }

    /* search XXX=YYY style cfg item */
    while(u32PosIndex < u32DevInfoLen)
    {
        HI_CHAR *pCurPos = strstr(&pInBuf[u32PosIndex], pstrCfgName);

        if (pCurPos && '=' == *(pCurPos + strlen(pstrCfgName)))
        {
            strncpy(pOutBuf, pCurPos + strlen(pstrCfgName) + 1, u32OutBuflen); /* + 1 for skip '=' */
            pOutBuf[u32OutBuflen - 1] = '\0';
            s32Ret = HI_SUCCESS;
            break;
        }
        else /* locate next cfg item */
        {
            u32PosIndex += strlen(&pInBuf[u32PosIndex]) + 1;   /* +1 for skip \0 */
        }
    }

out:
    return s32Ret;

}

HI_S32 HI_PDM_GetDeviceInfo(HI_CHAR * pstrCfgName, HI_CHAR * pstrCfgValue, HI_U32 u32Size)
{
    HI_HANDLE hFlash = HI_INVALID_HANDLE;
    HI_CHAR  *pDevInfoBuf = HI_NULL;
    HI_CHAR  *pstrBootargs = HI_NULL;
    HI_U32 u32DevInfoBufLen = 0;
    HI_Flash_InterInfo_S stFlashInfo;
    HI_MTD_INFO_S stMtdInfo;
    HI_CHAR Bootarg[BOOT_ARGS_SIZE] ;
    HI_S32 s32Ret = HI_FAILURE;

    if(HI_NULL == pstrCfgName || HI_NULL == pstrCfgValue || 0 == u32Size)
    {
        HI_ERR_PDM("ERR: param is invalid!");
        goto out0;
    }

    hFlash = HI_Flash_OpenByName(PDM_DEVICE_INFO_DEF_NAME);
    if(HI_INVALID_HANDLE == hFlash)
    {
        pstrBootargs = getenv("bootargs");
       if (HI_NULL == pstrBootargs)
        {
            s32Ret = HI_FAILURE;
            goto out0;
        }

        memset(Bootarg, 0, BOOT_ARGS_SIZE);
        strncpy(Bootarg, pstrBootargs, BOOT_ARGS_SIZE - 1);

        s32Ret = PDM_GetMtdInfo(PDM_DEVICE_INFO_DEF_NAME, Bootarg, &stMtdInfo);
        if (HI_SUCCESS == s32Ret)
        {
            hFlash = HI_Flash_OpenByName(stMtdInfo.MtdName);
            if (HI_INVALID_HANDLE == hFlash)
            {
                HI_INFO_PDM("ERR: Can not find '%s' flash data!", PDM_DEVICE_INFO_DEF_NAME);
                s32Ret = HI_FAILURE;
                goto out0;
            }
        }
        else
        {
            HI_INFO_PDM("ERR: no found '%s' partition.\n", PDM_DEVICE_INFO_DEF_NAME);
            s32Ret = HI_FAILURE;
            goto out0;
        }
    }
    else
    {
        stMtdInfo.u32Offset = 0;
        strncpy(stMtdInfo.MtdName, PDM_DEVICE_INFO_DEF_NAME,  strlen(PDM_DEVICE_INFO_DEF_NAME)+1);
        stMtdInfo.MtdName[strlen(PDM_DEVICE_INFO_DEF_NAME)] = '\0';
        (HI_VOID)HI_Flash_GetInfo(hFlash, &stFlashInfo);
        stMtdInfo.u32Size = stFlashInfo.PartSize;
    }

    u32DevInfoBufLen = stMtdInfo.u32Offset + stMtdInfo.u32Size;

    s32Ret = HI_PDM_AllocReserveMem(stMtdInfo.MtdName, u32DevInfoBufLen, (HI_U32*)&pDevInfoBuf);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_PDM("Failed to malloc space(%u bytes).", u32DevInfoBufLen);
        goto out;
    }

    if (0 >= HI_Flash_Read(hFlash, (HI_U64)0, (HI_U8 *)pDevInfoBuf, u32DevInfoBufLen, HI_FLASH_RW_FLAG_RAW))
    {
        HI_ERR_PDM("Failed to read block.");
        goto out;
    }

    s32Ret = PDM_GetDeviceCfgItem(pstrCfgName, pstrCfgValue, u32Size, pDevInfoBuf + stMtdInfo.u32Offset, stMtdInfo.u32Size);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_PDM("parse device cfg item failed.\n");
        goto out;
    }

out:
    HI_Flash_Close(hFlash);
out0:
    return s32Ret;
}
