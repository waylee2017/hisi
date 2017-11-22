/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon. Co., Ltd.

******************************************************************************
File Name        : higofontprovider_freetype.c
Version            : HIGO_FREETYPE_USE_CACHE
Author            :
Created            : 2012/11/05
Function List     :


History           :
Date                Author                Modification
2012/11/05                          Created file
******************************************************************************/

#ifndef HIGO_FREETYPE_DISABLE

/*********************************add include here******************************/
#include <stdio.h>
#include <stdlib.h>

/**
 **有些头文件没有包含dlopen会失败，原因待分析
 **/
#include "adp_gfx.h"
#include "higo_io.h"
#include "higo_adp_sys.h"
#include "higo_font.h"

#if defined(USE_DLOPNE_MODULES) &&  !defined(USE_HIGO_STATICLIB)
#include "modules.h"
#else
#include "higofontprovider_freetype.h"
#endif

#include "ft2build.h"
#include FT_TRUETYPE_TABLES_H
#include FT_SYSTEM_H
#include FT_MODULE_H
#include FT_SIZES_H
#include "hiunicode.h"


#include FT_GLYPH_H
#include FT_TRUETYPE_IDS_H
#include FT_OUTLINE_H
#include FT_CACHE_H
#include FT_CACHE_MANAGER_H
#include FT_ERRORS_H
#include FT_SYSTEM_H
#include FT_ADVANCES_H
#include FT_TRUETYPE_TABLES_H

#if 0
#ifdef USE_DLOPEN_FREETYPE
#include "adp_library.h"
#endif
#endif

#if 0
#ifdef USE_DLOPEN_FREETYPE
#ifndef WIN32
#include <dlfcn.h>
#endif
#endif
#endif
#include "higo_ft_hb.h"


#define true  HI_TRUE
#define false HI_FALSE
/***************************** Macro Definition ******************************/

//lint -e1776 -e704 -e834 -e740 -e826 -e702 -e830 -e64 -e818
#define KERNING_CACHE_MIN    0
#define KERNING_CACHE_MAX  127
#define KERNING_CACHE_SIZE (KERNING_CACHE_MAX - KERNING_CACHE_MIN + 1)

//#define USE_DLOPEN_FREETYPE


#define KERNING_DO_CACHE(u32LeftCharIndex,u32RightCharIndex)      ((u32LeftCharIndex) >= KERNING_CACHE_MIN && \
                                    (u32LeftCharIndex) <= KERNING_CACHE_MAX && \
                                    (u32RightCharIndex) >= KERNING_CACHE_MIN && \
                                    (u32RightCharIndex) <= KERNING_CACHE_MAX)


/*************************** Structure Definition ****************************/
/*
    从名字到索引查询
*/
#define MAX_FILE_NAME_LEN 255
typedef struct{
    HI_CHAR name[MAX_FILE_NAME_LEN + 1]; /* 字库名字       */
}fontname_idx;
fontname_idx g_font_idx[HIGO_MAX_DEVFONT_INSTANCE];
int g_cur_font_idx = 0;

FTC_FaceID get_face_id(HI_CHAR *font_name)
{
    int i;
    for(i = 0; i < g_cur_font_idx; i++)
    {
        if(strncmp(g_font_idx[i].name, font_name, MAX_FILE_NAME_LEN) == 0)
        {
            return &(g_font_idx[i]);;
        }
    }
    if(g_cur_font_idx == HIGO_MAX_DEVFONT_INSTANCE)
    {
        return NULL;
    }
    strncpy(g_font_idx[g_cur_font_idx].name, font_name, 255);
    g_cur_font_idx++;
    return &(g_font_idx[i]);
}

char * get_fontname_from_faceid(FTC_FaceID face_id)
{
    return ((fontname_idx*)(face_id))->name;
}

typedef struct
{
    FT_Face face;
    FTC_ScalerRec  ftScaler;
    FT_Size ftSize;
    HI_CHAR* pFontFileName;
    FTC_FaceID face_id;
    HI_S32 load_flags;
    HI_BOOL unref;
} HIGO_FREETYPE_S;


typedef struct
{
     HI_S8 x;
     HI_S8 y;
} HIGO_KERNING_ITEM_S;

typedef struct
{
     HIGO_FREETYPE_S base;
     HIGO_KERNING_ITEM_S kerning[KERNING_CACHE_SIZE][KERNING_CACHE_SIZE];
} HIGO_FREETYPEEX_S;




/*======================================================
已经使用dlopen打开适配层了，所以这里不再需要使用
dlopen打开第三方的库
========================================================**/



#define KERNING_CACHE_ENTRY(pData, u32LeftCharIndex, u32RightCharIndex)   \
     ((pData)->kerning[(u32LeftCharIndex)-KERNING_CACHE_MIN][(u32RightCharIndex)-KERNING_CACHE_MIN])



/********************** Global Variable declaration **************************/


static FT_Library     s_FontFreetype2Library      = NULL;
static FTC_Manager    s_FontFreeTypeCacheManager  = NULL;   /* the cache manager             */
static FTC_SBitCache  s_FontFreeTypeSbitsCache    = NULL;  /* the glyph small bitmaps cache */
/******************************* API forward declarations *******************/

FT_Library get_ft_library()
{
    return s_FontFreetype2Library;
}

FTC_Manager get_ft_manager()
{
    return s_FontFreeTypeCacheManager;
}

FTC_SBitCache get_ft_sbitcache()
{
    return s_FontFreeTypeSbitsCache;
}

#if defined(USE_DLOPNE_MODULES) &&  !defined(USE_HIGO_STATICLIB)

#define HIGO_ADP_DetectFontType_FREETYPE            HIGO_ADP_DetectFontType
#define HIGO_ADP_FontInit_FREETYPE                  HIGO_ADP_FontInit
#define HIGO_ADP_FontDInit_FREETYPE                 HIGO_ADP_FontDInit
#define HIGO_ADP_CreateInstance_FREETYPE            HIGO_ADP_CreateInstance
#define HIGO_ADP_DestroyInstance_FREETYPE           HIGO_ADP_DestroyInstance
#define HIGO_ADP_GetGlyphInfo_FREETYPE              HIGO_ADP_GetGlyphInfo
#define HIGO_ADP_GetCharIndex_FREETYPE              HIGO_ADP_GetCharIndex
#define HIGO_ADP_GetKerning_FREETYPE                HIGO_ADP_GetKerning
#define HIGO_ADP_HarfbuzzFont_FREETYPE              HIGO_ADP_HarfbuzzFont
#define HIGO_ADP_HarfbuzzFace_FREETYPE              HIGO_ADP_HarfbuzzFace
#else

/**
 **使用静态库要编译到higoadp.a中去
 **/
#define HIGO_ADP_DetectFontType_FREETYPE            HIGO_ADP_FreetypeDetectFontType
#define HIGO_ADP_FontInit_FREETYPE                  HIGO_ADP_FreetypeFontInit
#define HIGO_ADP_FontDInit_FREETYPE                 HIGO_ADP_FreetypeFontDInit
#define HIGO_ADP_CreateInstance_FREETYPE            HIGO_ADP_FreetypeCreateInstance
#define HIGO_ADP_DestroyInstance_FREETYPE           HIGO_ADP_FreetypeDestroyInstance
#define HIGO_ADP_GetGlyphInfo_FREETYPE              HIGO_ADP_FreetypeGetGlyphInfo
#define HIGO_ADP_GetCharIndex_FREETYPE              HIGO_ADP_FreetypeGetCharIndex
#define HIGO_ADP_GetKerning_FREETYPE                HIGO_ADP_FreetypeGetKerning
#define HIGO_ADP_HarfbuzzFont_FREETYPE              HIGO_ADP_FreetypeHarfbuzzFont
#define HIGO_ADP_HarfbuzzFace_FREETYPE              HIGO_ADP_FreetypeHarfbuzzFace
#endif


/******************************* API realization *****************************/
HI_S32 HIGO_ADP_DetectFontType_FREETYPE_Internal(
                                        const HI_CHAR *pFileName,
                                        HI_U32 u32FileSize)
{
    HI_U32 u32Len = 0;
    const HI_CHAR* pExtend = NULL;

    UNUSED(u32FileSize);
    UNUSED(u32FileSize);

    u32Len = strlen(pFileName);
    if (u32Len < 4)
    {
        return HI_FAILURE;
    }

    pExtend = pFileName + u32Len - 4;

    /**
    ** 其它字体保留
    **/
    if (  (0==strcasecmp(pExtend, ".ttf"))
            ||(0==strcasecmp(pExtend, ".otf")))
    {
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

#if defined(USE_DLOPNE_MODULES) &&  !defined(USE_HIGO_STATICLIB)
/*****************************************************************************
* func       : HIGO_ADP_DetectFontType
* description: 探测字体类型
* param[in]  :
* param[in]  :
* param[in]  :
* retval     :
* retval     : 要不是对应的字体则返回失败
* others:     :
*****************************************************************************/
HI_S32 HIGO_ADP_DetectFontType_FREETYPE(const HI_CHAR *pFileName,  const HI_U32 u32FileSize)
{
    return HIGO_ADP_DetectFontType_FREETYPE_Internal(pFileName, u32FileSize);
}

HI_S32 HIGO_ADP_HarfbuzzFace_FREETYPE(struct hiHIGO_DFONT_S* pDFont, FT_Face* Face)
{
   UNUSED(pDFont);
   UNUSED(Face);
   return HI_SUCCESS;
}
#endif


/*****************************************************************************
* func       : FreeType2_SetBold
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static inline HI_VOID FreeType2_SetBold(FT_Face face, HI_BOOL bold)
{
    HI_S32 strength = 1 << 6;
    FT_Error err;

    if (bold)
    {
        err = FT_Outline_Embolden(&face->glyph->outline, strength);
        if (err)
        {
            HIGO_ERROR2("failed to call FT_Outline_Embolden! err:%d !\n", err);
        }
    }
}
/*****************************************************************************
* func       : Freetype2_SetItalic
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static inline HI_VOID Freetype2_SetItalic(FT_Face face, HI_BOOL italic)
{
    //HI_FLOAT fLean = 0.5f; // 倾斜度，越大就越斜
    FT_Matrix matrix;

    if (italic)
    {
        matrix.xx = 0x10000L;
        matrix.xy = 0x10000L >> 1 ;
        matrix.yx = 0;
        matrix.yy = 0x10000L;
        //FT_Set_Transform( face, &matrix, 0 );
        (HI_VOID)FT_Outline_Transform(&face->glyph->outline, &matrix);
    }
    else
    {
        //FT_Set_Transform( face, NULL, 0 );
    }
}


/*****************************************************************************
* func       : Freetype2_GetGlyphInfo_Internal
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_S32 Freetype2_GetGlyphInfo_Internal(const HIGO_DFONT_S* pDFont,    HI_U32 u32CharIndex,
                                                                    HIGO_CHAR_BITMAP_E eBitmapMode,  HIGO_GLYPH_INFO_S* pGlyph)
{
    HI_S32 s32Ret = HI_SUCCESS;
    FT_Error err;
    FT_Face  face;
    HIGO_FREETYPEEX_S * pData = (HIGO_FREETYPEEX_S *)pDFont->data.pPrivate;

#ifdef HIGO_FREETYPE_USE_CACHE
    err = FTC_Manager_LookupFace(s_FontFreeTypeCacheManager, pData->base.face_id, &face);
    if(err)
    {
        HIGO_ERROR2("failed to get typeface\n!");
        return HI_FAILURE;
    }

#else
    face = pData->base.face;
#endif
    if(face == NULL)
    {
        HIGO_ERROR2("failed to get typeface\n!");
        return HI_FAILURE;
    }

    /*注意不要使用 FT_LOAD_DEFLAULT标志，该标志引起性能严重下降，导致时间增加约10倍*/
    err = FT_Load_Glyph( face, u32CharIndex, FT_LOAD_NO_HINTING);
    if (err)
    {
        HIGO_ERROR2( "failed to load glyph for character index #%d! errno:%d\n", u32CharIndex, err);
        return HI_FAILURE;
    }

    if ((HI_U32)eBitmapMode & (HI_U32)HIGO_CHAR_BITMAP_RENDER)
    {
        Freetype2_SetItalic(face, (HI_BOOL)((HI_U32)eBitmapMode & (HI_U32)HIGO_CHAR_BITMAP_ITALIC));
        FreeType2_SetBold(face, (HI_U32)eBitmapMode & (HI_U32)HIGO_CHAR_BITMAP_BOLD);

        err = FT_Render_Glyph(face->glyph, FT_RENDER_MODE_NORMAL);
        if (err)
        {
            HIGO_ERROR2( "failed to render glyph for character index #%d! errno:%d\n", u32CharIndex, err);
            return HI_FAILURE;
        }

#if 1
        pGlyph->Metric.width = (HI_U16)face->glyph->bitmap.width;
        pGlyph->Metric.height = (HI_U16)face->glyph->bitmap.rows;
        //face->glyph->bitmap_left 有可能为负数，对于字母"p"，misrsoft  simhei.ttf 字体为-1
        pGlyph->Metric.x = (HI_S16)face->glyph->bitmap_left;
        pGlyph->Metric.y = (HI_S16)face->glyph->bitmap_top;

        pGlyph->Metric.xOffset = 0;
        pGlyph->Metric.yOffset = 0;
        pGlyph->pBits = face->glyph->bitmap.buffer;
        pGlyph->u16Pitch = (HI_U16)face->glyph->bitmap.pitch;


        //HIGO_Printf("%s, %d====metric:(%d, %d),wh:(%d,%d)\n", __FUNCTION__, __LINE__, face->glyph->bitmap_left, face->glyph->bitmap_top, face->glyph->bitmap.width, face->glyph->bitmap.rows);
#else
        const FT_Glyph_Metrics *ftmetrics = &face->glyph->metrics;
        pGlyph->Metric.width = ftmetrics->width;
        pGlyph->Metric.height = ftmetrics->height;
        pGlyph->Metric.x = ftmetrics->horiBearingX >> 6;
        pGlyph->Metric.y = ftmetrics->horiBearingY >> 6;
        pGlyph->Metric.xOffset = 0;
        pGlyph->Metric.yOffset =0;
        pGlyph->pBits = face->glyph->bitmap.buffer;
        pGlyph->u16Pitch = (HI_U16)face->glyph->bitmap.pitch;

#endif

        if (face->glyph->bitmap.pixel_mode == FT_PIXEL_MODE_MONO)
        {
            pGlyph->bIsClut1 = HI_TRUE;
        }
        else if (face->glyph->bitmap.pixel_mode == FT_PIXEL_MODE_GRAY)
        {
            pGlyph->bIsClut1 = HI_FALSE;
        }
        else
        {
            HIGO_ERROR2( "The glyph pixel format is not supported!\n");
            s32Ret = HI_FAILURE;
        }
    }

    pGlyph->u32Advance = face->glyph->advance.x >> 6;

    return s32Ret;
}


#ifndef HIGO_FREETYPE_USE_CACHE

static HI_S32 Freetype2_GetGlyphInfo(const HIGO_DFONT_S* pDFont,    HI_U32 u32CharIndex,
                                                                    HIGO_CHAR_BITMAP_E eBitmapMode,  HIGO_GLYPH_INFO_S* pGlyph)
{
    return Freetype2_GetGlyphInfo_Internal(pDFont,   u32CharIndex, eBitmapMode, pGlyph);
}

#endif

/*****************************************************************************
* func       : HIGO_ADP_GetCharIndex
* description: (6)
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 HIGO_ADP_GetCharIndex_FREETYPE(const HIGO_DFONT_S* pDFont,
                                      const HI_CHAR * pChar,      HIGO_CHARSET_E eCharset,
                                      HI_U32* pIndex,     HI_U32 * pBytesCosted)
{
    FT_Face  face;
    FT_UInt  Unicode = 0;
    FT_UInt  u32Index;
    HI_S32 s32Ret = 0;

    HIGO_FREETYPEEX_S * pData = (HIGO_FREETYPEEX_S *)pDFont->data.pPrivate;

    HIGO_ASSERT(pIndex);
    HIGO_ASSERT(pBytesCosted);
    HIGO_ASSERT(pChar);

#ifdef HIGO_FREETYPE_USE_CACHE
    s32Ret = FTC_Manager_LookupFace(s_FontFreeTypeCacheManager, pData->base.face_id, &face);
    if(s32Ret)
    {
        HIGO_ERROR2("failed to get typeface\n!");
        return HI_FAILURE;
    }
#else
    face = pData->base.face;
#endif

    s32Ret = HIGO_Charset_ToUnicode(pChar, eCharset, &Unicode, pBytesCosted);
    if (HI_SUCCESS != s32Ret)
    {
        return HI_FAILURE;
    }

    u32Index = (HI_U32)FT_Get_Char_Index (face, Unicode);
    if (u32Index)
    {
        *pIndex = u32Index;
        return HI_SUCCESS;
    }
    HIGO_ERROR2( "%s:%d FT_Get_Char_Index face=%p, unicode=%x, u32Index=%x\n", __FILE__, __LINE__,  face, Unicode, u32Index);

    *pBytesCosted = 0;

    return HI_FAILURE;
}


/*****************************************************************************
* func       : HIGO_ADP_GetCharIndex
* description: (7)
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_S32 ADP_FreetypeGetKerning(const HIGO_DFONT_S* pDFont,
                                     HI_U32 PrevCharIndex,   HI_U32 CurCharIndex,
                                     HI_S32* pXKerning,   HI_S32* pYKerning)
{
    FT_Vector vector = {0};
    HIGO_FREETYPEEX_S * pData = (HIGO_FREETYPEEX_S *)pDFont->data.pPrivate;
    HIGO_KERNING_ITEM_S* pCache = NULL;
    FT_Error Err;
    FT_Face face;

    HIGO_ASSERT((pXKerning != NULL) || (pYKerning != NULL) );

    if (KERNING_DO_CACHE ((HI_S32)PrevCharIndex, (HI_S32)CurCharIndex))
    {
         pCache = &KERNING_CACHE_ENTRY (pData, PrevCharIndex, CurCharIndex);

         if (pXKerning)
         {
             *pXKerning = (HI_S32) pCache->x;
         }

         if (*pYKerning)
         {
             *pYKerning = (HI_S32) pCache->y;
         }

         return HI_SUCCESS;
    }
#ifdef HIGO_FREETYPE_USE_CACHE
    Err = FTC_Manager_LookupFace(s_FontFreeTypeCacheManager, pData->base.face_id, &face);
    if(Err)
    {
        HIGO_ERROR2("failed to get typeface\n!");
        return HI_FAILURE;
    }
#else
    face = pData->base.face;
#endif
     /* Lookup kerning values for the character pair. */
    Err = FT_Get_Kerning(face,
                    PrevCharIndex, CurCharIndex, FT_KERNING_DEFAULT, &vector );

    if (! Err)
    {
        if (pXKerning)
        {
            *pXKerning = vector.x >> 6;
        }

        if (pYKerning)
        {
            *pYKerning = vector.y >> 6;
        }
    }

    return HI_SUCCESS;
}

HI_S32 HIGO_ADP_GetKerning_FREETYPE(const HIGO_DFONT_S* pDFont,
                                                                                    HI_U32 PrevCharIndex,   HI_U32 CurCharIndex,
                                                                                    HI_S32* pXKerning,  HI_S32* pYKerning)
{
     return ADP_FreetypeGetKerning(pDFont,PrevCharIndex,CurCharIndex,pXKerning,pYKerning);
}


/*****************************************************************************
* func       : Freetype2_InitKerningCache
* description: use cache and not use cache also used it
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_VOID Freetype2_InitKerningCache( HIGO_FREETYPEEX_S * pData )
{

    HI_U32 u32LeftCharIndex, u32RightCharIndex;
    FT_Error err;
    FT_Face face;

    for (u32LeftCharIndex=KERNING_CACHE_MIN; u32LeftCharIndex<=KERNING_CACHE_MAX; u32LeftCharIndex++)
    {
        for (u32RightCharIndex=KERNING_CACHE_MIN; u32RightCharIndex<=KERNING_CACHE_MAX; u32RightCharIndex++)
        {
            FT_Vector vector;
            HIGO_KERNING_ITEM_S * pCache = &KERNING_CACHE_ENTRY(pData, u32LeftCharIndex, u32RightCharIndex );
#ifdef HIGO_FREETYPE_USE_CACHE
            err = FTC_Manager_LookupFace(s_FontFreeTypeCacheManager, pData->base.face_id, &face);
            if(err)
            {
                HIGO_ERROR2("failed to get typeface\n!");
                return;
            }
#else
            face = pData->base.face;
#endif
            err = FT_Get_Kerning(face,
                           u32LeftCharIndex, u32RightCharIndex, FT_KERNING_DEFAULT, &vector );
            if (!err)
            {
                pCache->x = (HI_S8) (vector.x >> 6);
                pCache->y = (HI_S8) (vector.y >> 6);
            }
            else
            {
                //HIGO_ERROR2("failed to get kerning, left char index:%d, right char index%d !\n", u32LeftCharIndex, u32RightCharIndex);
            }
        }
    }

}


//lint -e40  -e63 -e30
const HI_S32 RequiredUnicodeBits[HIGO_WSYS_BUTT][2] = {

    { 127, 127 },   // Any,
    { 0, 127 },     // Latin,
    { 7, 127 },     // Greek,
    { 9, 127 },     // Cyrillic,
    { 10, 127 },    // Armenian,
    { 11, 127 },    // Hebrew,
    { 13, 127 },    // Arabic,
    { 71, 127 },    // Syriac,
    { 72, 127 },    //Thaana,
    { 15, 127 },    //Devanagari,9
    { 16, 127 },    //Bengali,
    { 17, 127 },    //Gurmukhi,
    { 18, 127 },    //Gujarati,
    { 19, 127 },    //Oriya,
    { 20, 127 },    //Tamil,
    { 21, 127 },    //Telugu,
    { 22, 127 },    //Kannada,
    { 23, 127 },    //Malayalam,
    { 73, 127 },    //Sinhala,
    { 24, 127 },    //Thai,19
    { 25, 127 },    //Lao,
    { 70, 127 },    //Tibetan,
    { 74, 127 },    //Myanmar,
    { 26, 127 },    // Georgian,
    { 80, 127 },    // Khmer,
    { 126, 127 },   // SimplifiedChinese,
    { 126, 127 },   // TraditionalChinese,
    { 126, 127 },   // Japanese,
    { 56, 127 },    // Korean,
    { 0, 127 },     // Vietnamese,   same as latin1
    { 126, 127 }    // Other,30
};

#define SCHINESE_CSB_BIT     18
#define TCHINESE_CSB_BIT     20
#define JAPAN_CSB_BIT          17
#define KOREAN_CSB_BIT        21


HI_S32 GetWSysFromTTBits(HIGO_DFONT_S* pDFont, HI_U32 UnicodeRange[4], HI_U32 codePageRange[2])
{
    HI_BOOL bHasScript = HI_FALSE;
    HI_BOOL* pTmpWSys = pDFont->data.SupportScript;
    HI_S32 i;

    HIGO_MemSet(pTmpWSys, 0x0, HIGO_WSYS_BUTT*sizeof(pDFont->data.SupportScript[0]));

    for(i = 0; i < HIGO_WSYS_BUTT; i++)
    {
        HI_S32 bit = RequiredUnicodeBits[i][0];
        HI_S32 index = bit/32;
        HI_S32 flag =  1 << (bit&31);

        if (bit != 126 && UnicodeRange[index] & flag)
        {
            bit = RequiredUnicodeBits[i][1];
            index = bit/32;

            flag =  1 << (bit&31);
            if (bit == 127 || UnicodeRange[index] & flag)
            {
                pTmpWSys[i] = HI_TRUE;
                bHasScript = HI_TRUE;
            }
        }
    }

    if (codePageRange[0] & (1 << SCHINESE_CSB_BIT))
    {
        pTmpWSys[HIGO_WSYS_HANS] = HI_TRUE; //lint -e40  -e63
        bHasScript = HI_TRUE;
        //HIGO_Printf("font   supports Simplified Chinese\n");
    }

    if (codePageRange[0] & (1 << TCHINESE_CSB_BIT))
    {
        pTmpWSys[HIGO_WSYS_HANT] = HI_TRUE;//lint -e40  -e63
        bHasScript = HI_TRUE;
        //HIGO_Printf("font   supports Traditional Chinese\n");
    }

    if (codePageRange[0] & (1 << JAPAN_CSB_BIT))
    {
        pTmpWSys[HIGO_WSYS_JPAN] = HI_TRUE;//lint -e40  -e63
        bHasScript = HI_TRUE;
        //HIGO_Printf("font   supports Japanese\n");
    }

    if (codePageRange[0] & (1 << KOREAN_CSB_BIT))
    {
        pTmpWSys[HIGO_WSYS_KORE] = HI_TRUE;//lint -e40  -e63
        bHasScript = HI_TRUE;
        //HIGO_Printf("font   supports Korean\n");
    }

    if (!bHasScript)
    {
        pTmpWSys[HIGO_WSYS_ZSYM] = HI_TRUE;//lint -e40  -e63
    }

    //for (i = 0; i < HIGO_WSYS_BUTT; i++)
    //    HIGO_ERROR2("%d===%d\n",i, pTmpWSys[i]);

    return HI_SUCCESS;
}

HI_S32 GetWritingSystem(HIGO_DFONT_S* pDFont)
{
    HIGO_FREETYPE_S * pData = (HIGO_FREETYPE_S *)pDFont->data.pPrivate;
    FT_Face face;

#ifdef HIGO_FREETYPE_USE_CACHE
    HI_S32 err;
    err = FTC_Manager_LookupFace(s_FontFreeTypeCacheManager, pData->face_id, &face);
    if(err)
    {
        HIGO_ERROR2("failed to get typeface\n!");
        return HI_FAILURE;
    }
#else
    face = pData->face;
#endif

    TT_OS2 *os2 = (TT_OS2 *)FT_Get_Sfnt_Table(face, ft_sfnt_os2);
    if (os2)
    {
        HI_U32 unicodeRange[4] = {
            os2->ulUnicodeRange1, os2->ulUnicodeRange2, os2->ulUnicodeRange3, os2->ulUnicodeRange4
        };

        HI_U32 codePageRange[2] = {
            os2->ulCodePageRange1, os2->ulCodePageRange2
        };
        //HIGO_ERROR2("unicodeRange[0]=%08x, unicodeRange[1]=%08x,unicodeRange[2]=%08x,unicodeRange[0]=%08x\n",
        //    unicodeRange[0], unicodeRange[1], unicodeRange[2], unicodeRange[3]);

        /*通过ulCodePageRange1，ulCodePageRange2判断该字库支持的script*/
        GetWSysFromTTBits(pDFont, unicodeRange, codePageRange);
    }

    return HI_SUCCESS;
}

#ifndef HIGO_FREETYPE_USE_CACHE
/*****************************************************************************
* func       : HIGO_ADP_CreateInstance
* description: (3)
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 HIGO_ADP_CreateInstance_FREETYPE(
                                             HIGO_DFONT_S** ppDFont,    const HI_CHAR* pFontFile,
                                             HI_U32 u32Size)
{
    HIGO_DFONT_S* pDFont = NULL;
    HIGO_FREETYPE_S *pFreetypeInfo = NULL;
    HI_S32 s32Ret = HI_FAILURE;
    HI_S32 i;
    FT_Error err = 0;
    FT_Face  face = NULL;

    HIGO_ASSERT(pFontFile);
    HIGO_ASSERT(u32Size != 0);

    pDFont = (HIGO_DFONT_S*)HIGO_Malloc( sizeof(HIGO_DFONT_S));
    if (!pDFont)
    {
        s32Ret = HIGO_ERR_NOMEM;
        HIGO_ERROR("failed to malloc memory!\n", s32Ret);
        goto ERR;
    }

    err = FT_New_Face( s_FontFreetype2Library, pFontFile, 0, &face );
    if (err)
    {
        s32Ret = HIGO_ERR_INITFAILED;
        HIGO_TRACE("It is not a freetype!\n");
        goto ERR;
    }

    /* Look for a Unicode charmap: Windows flavor of Apple flavor only */
    for (i = 0; i < face->num_charmaps; i++)
    {
        FT_CharMap charmap = face->charmaps [i];

        charmap = face->charmaps[i];
        if (((charmap->platform_id == TT_PLATFORM_MICROSOFT) &&
                (charmap->encoding == FT_ENCODING_UNICODE)) ||
            ((charmap->platform_id == TT_PLATFORM_APPLE_UNICODE) &&
                (charmap->encoding == FT_ENCODING_NONE)))
        {
            err = FT_Select_Charmap (face, charmap->encoding);
            if (!err)
            {
                break;
            }
        }
    }

    if (i == face->num_charmaps)
    {
        HIGO_ERROR2 ("When Create TTF Font: No UNICODE CharMap\n");
        goto ERR;
    }

    err = FT_Set_Char_Size(face, u32Size<<6, u32Size<<6, 0, 0 );
    if (err)
    {
        HIGO_ERROR2("failed to set char size! ret:%d !\n ", err);
        goto ERR;
    }

    if (FT_HAS_KERNING(face))
    {
        pDFont->GetKerning = ADP_FreetypeGetKerning;
        pFreetypeInfo = (HIGO_FREETYPE_S*)HIGO_Malloc(sizeof(HIGO_FREETYPEEX_S));
        if (pFreetypeInfo)
        {
            HIGO_MemSet(pFreetypeInfo, 0, sizeof(HIGO_FREETYPEEX_S));
            Freetype2_InitKerningCache((HIGO_FREETYPEEX_S*)pFreetypeInfo);
        }
    }
    else
    {
        pDFont->GetKerning =  NULL;
        pFreetypeInfo = (HIGO_FREETYPE_S*)HIGO_Malloc(sizeof(HIGO_FREETYPE_S));
        if (pFreetypeInfo)
        {
            HIGO_MemSet(pFreetypeInfo, 0, sizeof(HIGO_FREETYPE_S));
        }
    }

    if (NULL == pFreetypeInfo)
    {
        s32Ret = HIGO_ERR_NOMEM;
        HIGO_ERROR("failed to malloc memory!\n", s32Ret);
        goto ERR;
    }


    pFreetypeInfo->face = face;
    pDFont->data.u32Ascent = face->size->metrics.ascender >> 6;
    pDFont->data.u32Descent = abs(face->size->metrics.descender) >> 6;
    pDFont->data.u32Size = pDFont->data.u32Ascent + (HI_U32)abs((HI_S32)pDFont->data.u32Descent) -1;
    pDFont->data.u32PixelSize =  pDFont->data.u32Size;
    pDFont->data.logic_size = u32Size;

    pDFont->data.pPrivate = pFreetypeInfo;
    pDFont->data.bIsTTF = HI_TRUE;
    s32Ret = HIGO_Charset_GetOpt(HIGO_CHARSET_UTF8, &pDFont->data.pCharsetOpt);
    if (HI_SUCCESS != s32Ret)
    {
        pDFont->data.pCharsetOpt = NULL;
        HIGO_TRACE("failed to get charset opt for ucs2!\n");
    }


    pDFont->data.HarfbuzzFont= NULL;
    /*获取支持的script*/
    GetWritingSystem(pDFont);

    GET_FONT_FAMILY_NAME(pDFont, (char*)pFontFile);

    *ppDFont = pDFont;

    return HI_SUCCESS;

ERR:
    if (face)
    {
        (HI_VOID)FT_Done_Face(face);
    }

    if (pFreetypeInfo)
    {
        HIGO_Free(pFreetypeInfo);
    }

    if (pDFont)
    {
        HIGO_Free(pDFont);
    }

    return s32Ret;
}

/*****************************************************************************
* func       : HIGO_ADP_DestroyInstance
* description: (4)
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 HIGO_ADP_DestroyInstance_FREETYPE(HIGO_DFONT_S* pDFont)
{
    HI_S32 s32Ret = HI_SUCCESS;
    FT_Face face = NULL;
    HIGO_FREETYPE_S *pFreetypeInfo = NULL;

    HIGO_ASSERT(pDFont);
    pFreetypeInfo = (HIGO_FREETYPE_S *) pDFont->data.pPrivate;

    if (pFreetypeInfo)
    {
        face = pFreetypeInfo->face;
        (HI_VOID)HIGO_Free(pFreetypeInfo);
    }

    if (face)
    {
        (HI_VOID)FT_Done_Face(face);
    }

    if (pDFont)
    {
        HIGO_Free(pDFont);
    }

    return s32Ret;

}

/*****************************************************************************
* func       : HIGO_ADP_GetGlyphInfo
* description: (5)
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 HIGO_ADP_GetGlyphInfo_FREETYPE(
                                           const HIGO_DFONT_S* pDFont,    HI_U32 u32CharIndex,
                                           HIGO_CHAR_BITMAP_E eBitmapMode, HIGO_GLYPH_INFO_S* pGlyph)
{
    HI_S32 s32Ret = HI_SUCCESS;

    s32Ret = Freetype2_GetGlyphInfo(pDFont,u32CharIndex,eBitmapMode,pGlyph);
    if(HI_SUCCESS!=s32Ret)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;

}
#endif


/*========================================================================================

                       use  HIGO_FREETYPE_USE_CACHE

=========================================================================================*/
#ifdef HIGO_FREETYPE_USE_CACHE
/*****************************************************************************
* func       : HIGO_ADP_CreateInstance
* description: (3)
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 HIGO_ADP_CreateInstance_FREETYPE(
                                             HIGO_DFONT_S** ppDFont,   const HI_CHAR* pFontFile,
                                             HI_U32 u32Size)
{
    HIGO_DFONT_S* pDFont = NULL;
    HIGO_FREETYPE_S *pFreetypeInfo = NULL;
    HI_S32 s32Ret = HI_FAILURE;
    FT_Error err = 0;
    FT_Face  face = NULL;
    HI_CHAR* pTmpFontFile = NULL;
    FTC_FaceID face_id;

    HIGO_ASSERT(pFontFile);
    HIGO_ASSERT(u32Size != 0);


    pTmpFontFile = (HI_CHAR*)HIGO_Malloc(strlen(pFontFile) + 1);
    if (!pTmpFontFile)
    {
        s32Ret = HIGO_ERR_NOMEM;
        HIGO_ERROR("failed to malloc memory!\n", s32Ret);
        goto ERR;
    }
    memset(pTmpFontFile, 0x0, strlen(pFontFile) + 1);
    strncpy(pTmpFontFile, pFontFile, strlen(pFontFile));

    /*我们根据字库的名字决定是否是矢量字库，如果使用探测的方式，FTC_MANAGER_LOOKUPFACE_PTR
      函数将导致内存出错，freetype2 版本2.3.12*/
    s32Ret = HIGO_ADP_DetectFontType_FREETYPE_Internal(pTmpFontFile, 0);
    if (s32Ret != HI_SUCCESS)
    {
        return HI_FAILURE;
    }


    pDFont = (HIGO_DFONT_S*)HIGO_Malloc( sizeof(HIGO_DFONT_S));
    if (!pDFont)
    {
        s32Ret = HIGO_ERR_NOMEM;
        HIGO_ERROR("failed to malloc memory!\n", s32Ret);
        goto ERR;
    }
    face_id = get_face_id(pTmpFontFile);
    if(face_id == NULL)
    {
        s32Ret = HIGO_ERR_INITFAILED;
        goto ERR;
    }

    err = FTC_Manager_LookupFace(s_FontFreeTypeCacheManager, face_id, &face);
    if (err)
    {
        s32Ret = HIGO_ERR_INITFAILED;
        //HIGO_ERROR2("failed to look up the face! file:%s!\n", pFontFile);
        goto ERR;
    }

    if (FT_HAS_KERNING(face))
    {

          pDFont->GetKerning = ADP_FreetypeGetKerning;
          pFreetypeInfo = (HIGO_FREETYPE_S*)HIGO_Malloc(sizeof(HIGO_FREETYPEEX_S));
          if (pFreetypeInfo)
          {
              HIGO_MemSet(pFreetypeInfo, 0, sizeof(HIGO_FREETYPEEX_S));
              Freetype2_InitKerningCache((HIGO_FREETYPEEX_S*)pFreetypeInfo);
          }
    }
    else
    {
           pDFont->GetKerning = NULL;
           pFreetypeInfo = (HIGO_FREETYPE_S*)HIGO_Malloc(sizeof(HIGO_FREETYPE_S));
           if (pFreetypeInfo)
           {
               HIGO_MemSet(pFreetypeInfo, 0, sizeof(HIGO_FREETYPE_S));
           }

    }

    if (NULL == pFreetypeInfo)
    {
        s32Ret = HIGO_ERR_NOMEM;
        HIGO_ERROR("failed to malloc memory!\n", s32Ret);
        goto ERR;
    }


    pFreetypeInfo->ftScaler.width  = (FT_UInt) u32Size;
    pFreetypeInfo->ftScaler.height = (FT_UInt) u32Size;
    pFreetypeInfo->ftScaler.pixel  = 1;
    pFreetypeInfo->ftScaler.x_res  = 0;
    pFreetypeInfo->ftScaler.y_res  = 0;
    pFreetypeInfo->ftScaler.face_id = face_id;
    pFreetypeInfo->pFontFileName = pTmpFontFile;

    err = FTC_Manager_LookupSize(s_FontFreeTypeCacheManager,
                                     &pFreetypeInfo->ftScaler,  &pFreetypeInfo->ftSize );
    if (err)
    {
        s32Ret = HIGO_ERR_INTERNAL;
        HIGO_ERROR2("failed to look up size!\n");
        goto ERR;
    }

    pFreetypeInfo->face     = face;
    pFreetypeInfo->face_id  = face_id;
    pDFont->data.u32Ascent  = pFreetypeInfo->ftSize->metrics.ascender >> 6;
    pDFont->data.u32Descent = abs(pFreetypeInfo->ftSize->metrics.descender) >> 6;
    pDFont->data.u32Size    = pDFont->data.u32Ascent + (HI_U32)abs((HI_S32)pDFont->data.u32Descent) - 1;
    pDFont->data.logic_size = u32Size;
    pDFont->data.u32PixelSize    =  pDFont->data.u32Size;

    //HIGO_Printf("%s#%d====usize:%d, ascent:%d, descent:%d, size:%d\n", __FUNCTION__, __LINE__, u32Size, pDFont->data.u32Ascent,pDFont->data.u32Descent, pDFont->data.u32Size );
    pDFont->data.pPrivate   = pFreetypeInfo;
    pDFont->data.bIsTTF = HI_TRUE;
    s32Ret = HIGO_Charset_GetOpt(HIGO_CHARSET_UTF8, &pDFont->data.pCharsetOpt);
    if (HI_SUCCESS != s32Ret)
    {
        pDFont->data.pCharsetOpt = NULL;
        HIGO_TRACE("failed to get charset opt for ucs2!\n");
    }

    pDFont->data.HarfbuzzFont = NULL;
    /*获取支持的script*/
    GetWritingSystem(pDFont);

    GET_FONT_FAMILY_NAME(pDFont, pTmpFontFile);

    *ppDFont = pDFont;

    return HI_SUCCESS;

ERR:
    if (pFreetypeInfo)
    {
        if (pFreetypeInfo->pFontFileName)
        {
            HIGO_Free(pFreetypeInfo->pFontFileName);
        }

        HIGO_Free(pFreetypeInfo);
    }

    if (pDFont)
    {
        HIGO_Free(pDFont);
    }

    return s32Ret;
}


/*****************************************************************************
* func       : HIGO_ADP_DestroyInstance
* description: (4)
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 HIGO_ADP_DestroyInstance_FREETYPE(HIGO_DFONT_S* pDFont)
{
    HIGO_FREETYPE_S *pFreetypeInfo = NULL;
    HIGO_ASSERT(pDFont);
    pFreetypeInfo = (HIGO_FREETYPE_S *) pDFont->data.pPrivate;
    //FT_Face face = NULL;

    if (pFreetypeInfo)
    {
        if (pFreetypeInfo->pFontFileName)
        {
            HIGO_Free(pFreetypeInfo->pFontFileName);
        }


        (HI_VOID)HIGO_Free(pFreetypeInfo);
    }

    if (pDFont)
    {
        HIGO_Free(pDFont);
    }

    return HI_SUCCESS;

}

/*****************************************************************************
* func       : HIGO_ADP_GetGlyphInfo
* description: (5)
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 HIGO_ADP_GetGlyphInfo_FREETYPE(
                                           const HIGO_DFONT_S* pDFont,
                                           HI_U32 u32CharIndex,
                                           HIGO_CHAR_BITMAP_E eBitmapMode,
                                           HIGO_GLYPH_INFO_S* pGlyph)
{
    HI_S32 s32Ret = HI_SUCCESS;
    FT_Error err;
    HI_U32 LoadFlag = 0;
    FTC_SBit   sbit;

    HIGO_FREETYPE_S * pData = (HIGO_FREETYPE_S *)pDFont->data.pPrivate;

    err = FTC_Manager_LookupSize(s_FontFreeTypeCacheManager, &pData->ftScaler,
                                   &pData->ftSize );
    if (err)
    {
        s32Ret = HIGO_ERR_INTERNAL;
        HIGO_ERROR2("failed to look up size!\n");
        return HI_FAILURE;
    }

    /*对于大字体，粗体或斜体情况，我们不使用cache,因为，这种场景比较少*/
    if ((pDFont->data.u32Size >= 48) ||
        ((HI_U32)eBitmapMode & (HI_U32)HIGO_CHAR_BITMAP_ITALIC) ||
        ((HI_U32)eBitmapMode & (HI_U32)HIGO_CHAR_BITMAP_BOLD) )
    {
       return Freetype2_GetGlyphInfo_Internal(pDFont, u32CharIndex, eBitmapMode, pGlyph);
    }

    LoadFlag = FT_LOAD_NO_HINTING;
    if ((HI_U32)eBitmapMode & (HI_U32)HIGO_CHAR_BITMAP_RENDER)
    {
        LoadFlag |= FT_LOAD_RENDER | FT_LOAD_TARGET_NORMAL ;
    }

    err = FTC_SBitCache_LookupScaler( s_FontFreeTypeSbitsCache,
                                      &pData->ftScaler,
                                      LoadFlag,
                                      u32CharIndex,
                                      &sbit,
                                      NULL );
    if ( err )
    {
      HIGO_ERROR2("failed to look up the glph index:%d from cache!\n",
                   u32CharIndex);
      return HI_FAILURE;
    }

    if (sbit->format == FT_PIXEL_MODE_MONO)
    {
        pGlyph->bIsClut1 = HI_TRUE;
    }
    else if (sbit->format == FT_PIXEL_MODE_GRAY)
    {
        pGlyph->bIsClut1 = HI_FALSE;
    }
    else
    {
        HIGO_ERROR2("The glyph format:0x%x is not support!\n", sbit->format);
        return HI_FAILURE;
    }

    pGlyph->Metric.width = (HI_U16)sbit->width;
    pGlyph->Metric.height = (HI_U16)sbit->height;
    pGlyph->Metric.x = (HI_S16)sbit->left;
    pGlyph->Metric.y = (HI_S16)sbit->top;
    pGlyph->Metric.xOffset = 0;
    pGlyph->Metric.yOffset = 0;
    pGlyph->pBits = sbit->buffer;
    pGlyph->u16Pitch   = (HI_U16)sbit->pitch;
    pGlyph->u32Advance = sbit->xadvance;

    return s32Ret;
}



/*****************************************************************************
* func       : Freetype2_FaceRequester
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static FT_Error Freetype2_FaceRequester( FTC_FaceID  face_id, FT_Library  lib,
                                         FT_Pointer  request_data,   FT_Face*    aface )
{
    FT_Error err;
    FT_Face face;
    HI_S32 i;
    HI_CHAR* pFileName;
    UNUSED(lib);
    UNUSED(request_data);

    pFileName = get_fontname_from_faceid(face_id);

    if(!pFileName)
    {
        *aface = NULL;
        return FT_Err_Invalid_Face_Handle;
    }
    err = FT_New_Face( s_FontFreetype2Library, pFileName, 0, &face );
    if (err)
    {
      HIGO_TRACE("It is not a freetype!\n");
      return err;
    }

    /* Look for a Unicode charmap: Windows flavor of Apple flavor only */
    for (i = 0; i < face->num_charmaps; i++)
    {
      FT_CharMap charmap = face->charmaps [i];

      charmap = face->charmaps[i];
      if (((charmap->platform_id == TT_PLATFORM_MICROSOFT) &&
              (charmap->encoding == FT_ENCODING_UNICODE)) ||
          ((charmap->platform_id == TT_PLATFORM_APPLE_UNICODE) &&
              (charmap->encoding == FT_ENCODING_NONE)))
      {
          err = FT_Select_Charmap (face, charmap->encoding);
          if (!err)
          {
              break;
          }
      }
    }

    if (i == face->num_charmaps)
    {
      HIGO_ERROR2 ("When Create TTF Font: No UNICODE CharMap\n");
      err = HI_FAILURE;
      goto ERR;
    }

    *aface = face;
    HIGO_ERROR2("%s:%d face_requester:face=%p!\n", __FILE__, __LINE__, face);
    return 0;

ERR:
    FT_Done_Face(face);

    return err;
}


#endif

/*****************************************************************************
* func       : ADP_FreetypeFontDInit
* description:
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
static HI_S32 ADP_FreetypeFontDInit()
{
#ifdef HIGO_FREETYPE_USE_CACHE
    if (s_FontFreeTypeCacheManager)
    {
        FTC_Manager_Done(s_FontFreeTypeCacheManager);
    }
#endif

    if (s_FontFreetype2Library)
    {
        (HI_VOID)FT_Done_FreeType(s_FontFreetype2Library);
    }

    s_FontFreeTypeSbitsCache   = NULL;
    s_FontFreeTypeCacheManager = NULL;
    s_FontFreetype2Library     = NULL;

return HI_SUCCESS;

}
#ifdef HIGO_FT_MEM_DEBUG
static int freetype_mem = 0;
static int freetype_mem_max = 0;
static int malloc_time = 0;
static int free_time =0;
static int realloc_time= 0;
void * freetype_malloc(FT_Memory  memory,
                    long       size )
{
    char * p;
    malloc_time ++;
    freetype_mem += size;
    if(freetype_mem > freetype_mem_max)
    {
        freetype_mem_max = freetype_mem;
    }
    p = malloc(size+4);
    if(p == NULL)
    {
        return NULL;
    }
    *(unsigned long*)p = size;
    return p+4;
}

void freetype_free(FT_Memory  memory,
                   void*      block)
{
    char * p;
    free_time ++;
    p = block;
    p = p - 4;
    freetype_mem -= *(unsigned long*)p;
    free(p);
}

void * freetype_realloc( FT_Memory  memory,
                      long       cur_size,
                      long       new_size,
                      void*      block)
{
    char * p;
    realloc_time ++;
    p = block;
    p = p - 4;
    freetype_mem -= *(unsigned long*)p;

    p =  realloc(p, new_size + 4);
    if(p == NULL)
    {
        return NULL;
    }
    freetype_mem += new_size;
    if(freetype_mem > freetype_mem_max)
    {
        freetype_mem_max = freetype_mem;
    }

    *(unsigned long*)p = new_size;
    return p + 4;
}
void print_ft_mem()
{
#if 0
    printf("\n******");
    printf("\nfreetype_mem\t=%d", freetype_mem);
    printf("\nfreetype_mem_max\t=%d", freetype_mem_max);
    printf("\nmalloc_time\t =%d", malloc_time);
    printf("\nfree_time\t = %d", free_time);
    printf("\nrealloc_time\t = %d", realloc_time);
    printf("\n******\n");
#endif

}

static struct FT_MemoryRec_ ft_mem = {
    NULL,
    freetype_malloc,
    freetype_free,
    freetype_realloc
};


struct{
    HI_S32 face_num;
    HI_S32 size_num;
    HI_S32 cache_size;
}ft_mem_conf ={8, 8, 100*1024};

void higo_set_ft_mem_conf(int face_num, int size_num, int cache_size)
{
    ft_mem_conf.face_num = face_num;
    ft_mem_conf.size_num = size_num;
    ft_mem_conf.cache_size = cache_size;
}

void higo_check_ft_mem_conf()
{
    if(ft_mem_conf.face_num > 32)
    {
        ft_mem_conf.face_num = 32;
    }
    if(ft_mem_conf.size_num > 32)
    {
        ft_mem_conf.size_num = 32;
    }
    if(ft_mem_conf.cache_size > 1024 * 100)
    {
        ft_mem_conf.cache_size = 1024 * 100;
    }
}
#endif

/*****************************************************************************
* func       : HIGO_ADP_FontInit
* description: 矢量字体库初始化 (1)
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 HIGO_ADP_FontInit_FREETYPE()
{
    HI_S32 s32Ret = HI_SUCCESS;
    FT_Error err;
#ifdef HIGO_FT_MEM_DEBUG
    print_ft_mem();
#endif
    /**
    **执行该函数
    **/
    if(NULL == s_FontFreetype2Library)
    {
#ifndef HIGO_FT_MEM_DEBUG
        err = FT_Init_FreeType( &s_FontFreetype2Library );
        if (err)
        {
            HIGO_ERROR("Initialization of the FreeType2 library failed! freetype2 err:%d\n",err);
            s_FontFreetype2Library = NULL;
            s32Ret = HI_FAILURE;
            goto ERR;
        }
#else
        err = FT_New_Library(&ft_mem, &s_FontFreetype2Library);
        HIGO_ERROR2(stderr, "Initialization of the FreeType2 library s_FontFreetype2Library=%p\n",s_FontFreetype2Library);
        if (err)
        {
            HIGO_ERROR("Initialization of the FreeType2 library failed! freetype2 err:%d\n",err);
            s_FontFreetype2Library = NULL;
            s32Ret = HI_FAILURE;
            goto ERR;
        }
        FT_Add_Default_Modules(s_FontFreetype2Library);
#endif

    }
    /**
    ** use freetype cache
    **/
#ifdef HIGO_FREETYPE_USE_CACHE
    if(NULL == s_FontFreeTypeCacheManager)
    {
     #ifdef HIGO_FT_MEM_DEBUG
           higo_check_ft_mem_conf();
     #endif

        err = FTC_Manager_New(s_FontFreetype2Library,     \
                              8,      \
                              8,      \
                              1024*100,                    \
                              Freetype2_FaceRequester,    \
                              0,                          \
                             &s_FontFreeTypeCacheManager);
        if (err)
        {
            HIGO_ERROR2( "could not initialize cache manager!\n" );
            goto ERR;
        }
    }

    if(NULL == s_FontFreeTypeSbitsCache)
    {
        err = FTC_SBitCache_New(s_FontFreeTypeCacheManager, &s_FontFreeTypeSbitsCache );
        if (err)
        {
            HIGO_ERROR2( "could not initialize small bitmaps cache!\n" );
            goto ERR;
        }
    }

#endif


    return HI_SUCCESS;

ERR:
    (HI_VOID)ADP_FreetypeFontDInit();

    return s32Ret;
}



/*****************************************************************************
* func       : HIGO_ADP_FontDInit
* description: 矢量字体库去初始化(2)
* param[in]  :
* param[in]  :
* retval     :
* retval     :
* others:     :
*****************************************************************************/
HI_S32 HIGO_ADP_FontDInit_FREETYPE()
{
        return ADP_FreetypeFontDInit();
}
//lint +e1776 +e704 +e834 +e740 +e826 +e702 +e830 +e64 +e818







//real name after macro expansion:HIGO_ADP_FreetypeHarfbuzzFont
HI_S32 HIGO_ADP_HarfbuzzFont_FREETYPE(struct hiHIGO_DFONT_S* dfont, void ** font)
{
 #ifndef HIGO_TEXTENG_HARFBUZZ_DISABLE
       *font  = get_hb_font_from_dfont(dfont);
       dfont->data.HarfbuzzFont =  *font;
 #endif
       return HI_SUCCESS;
}

//lint +e1776 +e704 +e834 +e740 +e826 +e702 +e830 +e64 +e818
#endif


