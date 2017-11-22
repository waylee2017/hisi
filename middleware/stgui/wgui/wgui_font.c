#include "mm_common.h"
#include "ffs.h"
#include "ui_api.h"
#include "wgui_inner.h"
#include "nvm_api.h"
#include "ft2build.h"
#include "ospctr.h"
#include FT_FREETYPE_H

#define PAINT_GRAY_LEVEL 250

//#define FONT_DEBUG(x)   MLMF_Print x
#define FONT_DEBUG(x) 

static MBT_U8 uiv_u8FontLibVer = 0;
static MBT_U8 *uiv_pacFontBuffer = MM_NULL;
static MBT_U32 uiv_u32SrcSize = 0;


typedef struct _ft_fontbmp_info_
{
    MBT_S16  bitmap_left;
    MBT_S16  bitmap_top;
    MBT_U16  iftWidth;
    MBT_U16  u16BufferSize;
    FT_Bitmap   stFtBmpmap;
    struct _ft_fontbmp_info_ *pstNext;
}FT_FONTBMP_INFO;


static FT_FONTBMP_INFO *wguiv_pstftFontBmpBck = MM_NULL;
static FT_GlyphSlotRec wguiv_ftFontSlot;

static MBT_U32 wguiv_u32FontOldB = 0;
static MBT_U32 wguiv_u32FontOldRet = 0;
static MBT_U8 wguiv_u8FontOldGray = 0;

static FT_Library wfuiv_ftlibrary;
static FT_Face wfuiv_ftface;
static FT_Int wfuiv_ft_size = 21;
static FT_Int wfuiv_ft_baselineoffset = 16;
static FT_Int wfuiv_ft_rate = 0;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//	分隔线，以下为缅甸字库相关函数
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


static MBT_S32 FT_Init(MBT_S32 fontsize)
{
	FT_Error error = 0;
	if(MM_NULL == uiv_pacFontBuffer)
	{
        return error;
	}

	if(0 != (error = FT_Init_FreeType( &wfuiv_ftlibrary )))
	{
		FONT_DEBUG(("FT_Init_FreeType error = %d\n",error));
		return error;
	}

	if(0 != (error = FT_New_Memory_Face( wfuiv_ftlibrary, (FT_Byte*)(uiv_pacFontBuffer), fontsize, 0, &wfuiv_ftface)))/*ccst*/
	{
		FONT_DEBUG(("FT_New_Memory_Face error = %d\n",error));
		FT_Done_FreeType(wfuiv_ftlibrary);
		return error;
	}

	//FT_Select_Charmap(wfuiv_ftface,FT_ENCODING_GB2312);
	
	FONT_DEBUG(("FT_New_Memory_Face wfuiv_ftface = %x family_name = %s style_name = %s num_faces = %d num_glyphs = %d\n",wfuiv_ftface,wfuiv_ftface->family_name,wfuiv_ftface->style_name,wfuiv_ftface->num_faces,wfuiv_ftface->num_glyphs));

	if(0 != (error = FT_Set_Char_Size(wfuiv_ftface, wfuiv_ft_size<<6, (wfuiv_ft_size+1)<<6, wfuiv_ft_rate, 0)))
	{
		FONT_DEBUG(("FT_Set_Char_Size error = %d\n",error));
		FT_Done_Face(wfuiv_ftface);
		FT_Done_FreeType(wfuiv_ftlibrary);
		return error;
	}

	return error;
}

static MBT_S32 FT_DONE(MBT_VOID)
{

    if(wfuiv_ftface)
    {
    	FONT_DEBUG(("FT_Done_Face\n"));
    	FT_Done_Face(wfuiv_ftface);
    	wfuiv_ftface = MM_NULL;
    }
    if(wfuiv_ftlibrary)
    {
    	FONT_DEBUG(("FT_Done_FreeType\n"));
    	FT_Done_FreeType(wfuiv_ftlibrary);
    	wfuiv_ftlibrary = MM_NULL;
    }

    return 0;
}

static MBT_S32 FT_GetBaseLine(MBT_S32 s32FontSize)
{
    MBT_S32 s32Height = (s32FontSize*4/5);
    switch(s32FontSize)
    {
        case 8:
            s32Height = 7;
            break;
        case 9:
            s32Height = 7;
            break;
        case 10:
            s32Height = 8;
            break;
        case 11:
            s32Height = 9;
            break;
        case 12:
            s32Height = 10;
            break;
        case 13:
            s32Height = 10;
            break;
        case 14:
            s32Height = 11;
            break;
        case 15:
            s32Height = 12;
            break;
        case 16:
            s32Height = 13;
            break;
        case 17:
            s32Height = 15;
            break;
        case 18:
            s32Height = 15;
            break;
        case 19:
            s32Height = 15;
            break;
        case 20:
            s32Height = 17;
            break;
        case 21:
            s32Height = 17;
            break;
        case 22:
            s32Height = 18;
            break;
        case 23:
            s32Height = 18;
            break;
        case 24:
            s32Height = 20;
            break;
        case 25:
            s32Height = 20;
            break;
        case 26:
            s32Height = 22;/*OK*/
            break;
        case 27:
            s32Height = 22;/*OK*/
            break;
        case 28:
            s32Height = 24;
            break;
        case 29:
            s32Height = 24;
            break;
        case 30:
            s32Height = 26;
            break;
        case 31:
            s32Height = 26;
            break;
        case 32:
            s32Height = 27;
            break;
        case 33:
            s32Height = 28;
            break;
        case 34:
            s32Height = 29;
            break;
        case 35:
            s32Height = 30;
            break;
        case 36:
            s32Height = 31;
            break;
        case 37:
            s32Height = 32;
            break;
        case 38:
            s32Height = 33;
            break;
        case 39:
            s32Height = 33;
            break;
        case 40:
            s32Height = 34;
            break;
        case 41:
            s32Height = 35;
            break;
        case 42:
            s32Height = 36;
            break;
        case 43:
            s32Height = 37;
            break;
        case 44:
            s32Height = 38;
            break;
        case 45:
            s32Height = 39;
            break;
        case 46:
            s32Height = 40;
            break;
        case 47:
            s32Height = 41;
            break;
        case 48:
            s32Height = 41;
            break;
        case 49:
            s32Height = 42;
            break;
        case 50:
            s32Height = 43;
            break;
        case 51:
            s32Height = 44;
            break;
        case 52:
            s32Height = 45;
            break;
        case 53:
            s32Height = 46;
            break;
        case 54:
            s32Height = 47;
            break;
        case 55:
            s32Height = 48;
            break;
        case 56:
            s32Height = 48;
            break;
        case 57:
            s32Height = 48;
            break;
        case 58:
            s32Height = 49;
            break;
        case 59:
            s32Height = 50;
            break;
        case 60:
            s32Height = 51;
            break;
        case 61:
            s32Height = 52;
            break;
        case 62:
            s32Height = 53;
            break;
        case 63:
            s32Height = 54;
            break;
        case 64:
            s32Height = 55;
            break;
        case 65:
            s32Height = 55;
            break;
        case 66:
            s32Height = 56;
            break;
        case 67:
            s32Height = 57;
            break;
        case 68:
            s32Height = 58;
            break;
        case 69:
            s32Height = 58;
            break;
        case 70:
            s32Height = 59;
            break;
        case 71:
            s32Height = 60;
            break;
        case 72:
            s32Height = 61;
            break;
    }

    return s32Height;
}



static MBT_S32 FNTGetCharBitmap(MBT_U32 char_code)
{
    FT_Error error = 0;
    /*
    if((char_code & 0xFF00) == 0xA100)
    {
        char_code = wfuiv_u16UnicodeTable[0][(char_code&0x00FF)-0xA0];
    }
    else if((char_code & 0xFF00) == 0xA300)
    {
        char_code = 0xFF00|((char_code&0x00FF)-0xA0);            
    }
    else if(char_code > 0xB0A0)
    {
        char_code = wfuiv_u16UnicodeTable[((char_code&0xFF00)>>8) - 0xB0 + 1][(char_code&0x00FF)-0xA0];
    }
    */
    error = FT_Load_Glyph(wfuiv_ftface, FT_Get_Char_Index(wfuiv_ftface, char_code), (FT_LOAD_RENDER|FT_LOAD_LINEAR_DESIGN|FT_LOAD_IGNORE_TRANSFORM));
    if(0 != error)
    {
    FONT_DEBUG(("FT_Load_Glyph error = %d\n",error));
    return error;
    }
    /*
    if(0 != (error = FT_Render_Glyph(wfuiv_ftface->glyph, FT_RENDER_MODE_NORMAL)))
    {
        FONT_DEBUG(("FT_Render_Glyph error = %d\n",error));
        return error;
    }
    */
    return error;
}

static MBT_VOID FT_FreeBmpBuffer(FT_FONTBMP_INFO  *pstFtBmpInfo)
{
    FT_FONTBMP_INFO  *pstCurFtBmpInfo;

    while(pstFtBmpInfo)
    {
        pstCurFtBmpInfo = pstFtBmpInfo;
        pstFtBmpInfo = pstFtBmpInfo->pstNext;
        if(MM_NULL != pstCurFtBmpInfo->stFtBmpmap.buffer)
        {
            MLMF_Free(pstCurFtBmpInfo->stFtBmpmap.buffer);
        }
        MLMF_Free(pstCurFtBmpInfo);
    }
}



/*
    Added by FL 20160624
    根据前景色，背景色及灰度值，生成最终颜色 

    采用alpha blending

    本函数将u8GrayScale当作前景色的alpha来看待
*/
static inline MBT_U32 FT_GetBlendingColor(MBT_U32 u32BackColor, MBT_U32 u32FrontColor, MBT_U8 u8GrayScale)
{
    MBT_U8 A0,R0,G0,B0;   //back ground color
    MBT_U8 A1,R1,G1,B1;   //front ground color
    MBT_U8 A2,R2,G2,B2;  //result
    MBT_U8 temp;

    if(wguiv_u8FontOldGray == u8GrayScale&&wguiv_u32FontOldB == u32BackColor)
    {
        return wguiv_u32FontOldRet;
    }

    wguiv_u32FontOldB = u32BackColor;
    wguiv_u8FontOldGray = u8GrayScale;
    A0 = (u32BackColor >> 24);    
    if(0 == A0)
    {
        if(u8GrayScale < 100)
        {
            wguiv_u32FontOldRet = u32BackColor;
            return wguiv_u32FontOldRet;
        }
    }
    R0 = (u32BackColor >> 16);
    G0 = (u32BackColor >> 8 );
    B0 = u32BackColor;

    A1 = (u32FrontColor >> 24);
    R1 = (u32FrontColor >> 16);
    G1 = (u32FrontColor >> 8 );
    B1 = u32FrontColor;
    
    temp = (255 -u8GrayScale);
    R2 = (R1 * u8GrayScale + R0 * temp)/255;
    G2 = (G1 * u8GrayScale + G0 * temp)/255;
    B2 = (B1 * u8GrayScale + B0 * temp)/255;
    A2 = (A1 * u8GrayScale + A0 * temp)/255;
    wguiv_u32FontOldRet = ((A2 << 24) | (R2 << 16) | (G2 << 8) | B2);
    return wguiv_u32FontOldRet;
}



/*
    注意，关于charcode的处理，后续需调整，目前针对的是中文及英文，而未处理缅甸文
*/



/*ascii字符串，一个字符占一个字节*/
static inline MBT_S32 FNTDrawExtTxt(MBT_S32 x, MBT_S32 y, MBT_S32  iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor)
{
    FT_Int pen_x,width_offset,height_offset,count;
    FT_Int maxHeight;
    FT_Int yStart;
    FT_UInt charcode;
    FT_Int i;
    FT_Int j;
    FT_Int width;
    FT_Int height;
    FT_UInt *pstStatAddr;
    FT_UInt *PTemp;
    MBT_U32  iUnitWidth;
    FT_FONTBMP_INFO  *pstFtBmpInfo = wguiv_pstftFontBmpBck;
    FT_GlyphSlot slot;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_Byte *ucSrcText;
    //FT_Byte ucAlpha;
    wguiv_u32FontOldB = 0;
    pen_x = x;
    maxHeight = 0;
    yStart = 0x0fffffff;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
	}
        charcode = ucText[count];

        slot = MM_NULL;

        if(MM_NULL != pstFtBmpInfo)
        {
            if(charcode == (MBT_U16)pstFtBmpInfo->stFtBmpmap.num_grays)
            {
                slot = &wguiv_ftFontSlot;
                slot->bitmap_left = pstFtBmpInfo->bitmap_left;
                slot->bitmap_top = pstFtBmpInfo->bitmap_top;
                slot->bitmap = pstFtBmpInfo->stFtBmpmap;
                iUnitWidth = pstFtBmpInfo->iftWidth;
                pstFtBmpInfo = pstFtBmpInfo->pstNext;
            }
        }

        if(MM_NULL == slot)
        {
            if(0 == FNTGetCharBitmap(charcode))
            {
                slot = wfuiv_ftface->glyph;
                if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
                {
                    slot->bitmap_left = 0;
                }
                if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
                {
                    slot->bitmap_top = 0;
                }
                if(slot->bitmap.width == 0)
                {
                    iUnitWidth = slot->advance.x >> 6; 
                }
                else
                {
                    iUnitWidth = (slot->bitmap.width +1) ;
                }
            }
        }

        if(MM_NULL != slot)
        {
            width = slot->bitmap.width;
            height = slot->bitmap.rows;
            if(maxHeight < height)
            {
                maxHeight = height;
            }
            width_offset = pen_x + slot->bitmap_left;

            height_offset =  y + wfuiv_ft_baselineoffset - slot->bitmap_top;
            if(yStart > height_offset)
            {
                yStart = height_offset;
            }
            pstStatAddr = (MBT_VOID *)(wguiv_u32ExtLayerLayerOsdLine[height_offset] + OSD_COLOR_DEPTH*width_offset);

            ucSrcText = slot->bitmap.buffer;

            for(j=0;j<height;j++)
            {   
                PTemp = pstStatAddr;
                for(i=0;i<width;i++)
                {
                    if(*ucSrcText > PAINT_GRAY_LEVEL)
                    {
                        *PTemp = iFrontColor;
                    }
                    else
                    {
                        *PTemp = FT_GetBlendingColor(*PTemp,iFrontColor,*ucSrcText);
                    }
                    ucSrcText++;
                    PTemp++;
                }
                pstStatAddr += OSD_REGINMAXWIDHT;
            }
            pen_x += iUnitWidth; 
        }
    }
    
    if(OSD_REGINMAXHEIGHT > yStart)
    {
        wguif_DispRecExt(x,yStart,pen_x - x,maxHeight);
    }
    return pen_x - x;
}

/*
    注意，关于charcode的处理，后续需调整，目前针对的是中文及英文，而未处理缅甸文
*/



/*ascii字符串，一个字符占一个字节*/
static inline MBT_S32 FT_DrawGB2312Text(MBT_S32 x, MBT_S32 y, MBT_S32  iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor)
{
    FT_Int pen_x,width_offset,height_offset,count;
    FT_Int maxHeight;
    FT_Int yStart;
    FT_UInt charcode;
    FT_Int i;
    FT_Int j;
    FT_Int width;
    FT_Int height;
    FT_UInt *pstStatAddr;
    FT_UInt *PTemp;
    MBT_U32  iUnitWidth;
    FT_FONTBMP_INFO  *pstFtBmpInfo = wguiv_pstftFontBmpBck;
    FT_GlyphSlot slot;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_Byte *ucSrcText;
    //FT_Byte ucAlpha;
    wguiv_u32FontOldB = 0;
    pen_x = x;
    maxHeight = 0;
    yStart = 0x0fffffff;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
        }
        charcode = ucText[count];

        slot = MM_NULL;

        if(MM_NULL != pstFtBmpInfo)
        {
            if(charcode == (MBT_U16)pstFtBmpInfo->stFtBmpmap.num_grays)
            {
                slot = &wguiv_ftFontSlot;
                slot->bitmap_left = pstFtBmpInfo->bitmap_left;
                slot->bitmap_top = pstFtBmpInfo->bitmap_top;
                slot->bitmap = pstFtBmpInfo->stFtBmpmap;
                iUnitWidth = pstFtBmpInfo->iftWidth;
                pstFtBmpInfo = pstFtBmpInfo->pstNext;
            }
        }

        if(MM_NULL == slot)
        {
            if(0 == FNTGetCharBitmap(charcode))
            {
                slot = wfuiv_ftface->glyph;
                if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
                {
                    slot->bitmap_left = 0;
                }
                if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
                {
                    slot->bitmap_top = 0;
                }
                if(slot->bitmap.width == 0)
                {
                    iUnitWidth = slot->advance.x >> 6; 
                }
                else
                {
                    iUnitWidth = (slot->bitmap.width +1) ;
                }
            }
        }

        if(MM_NULL != slot)
        {
            width = slot->bitmap.width;
            height = slot->bitmap.rows;
            if(maxHeight < height)
            {
                maxHeight = height;
            }
            width_offset = pen_x + slot->bitmap_left;

            height_offset =  y + wfuiv_ft_baselineoffset - slot->bitmap_top;
            if(yStart > height_offset)
            {
                yStart = height_offset;
            }
            pstStatAddr = (MBT_VOID *)(wguiv_u32OsdPalletteScanLine[height_offset] + OSD_COLOR_DEPTH*width_offset);

            ucSrcText = slot->bitmap.buffer;

            for(j=0;j<height;j++)
            {   
                PTemp = pstStatAddr;
                for(i=0;i<width;i++)
                {
                    if(*ucSrcText > PAINT_GRAY_LEVEL)
                    {
                        *PTemp = iFrontColor;
                    }
                    else
                    {
                        *PTemp = FT_GetBlendingColor(*PTemp,iFrontColor,*ucSrcText);
                    }
                    ucSrcText++;
                    PTemp++;
                }
                pstStatAddr += OSD_REGINMAXWIDHT;
            }
            pen_x += iUnitWidth; 
        }
    }
    
    if(OSD_REGINMAXHEIGHT > yStart)
    {
        wguif_DispRect(x,yStart,pen_x - x,maxHeight);
    }
    return pen_x - x;
}



static inline MBT_S32 FNTClearTxtWithAlpha(MBT_S32 x, MBT_S32 y, MBT_S32  iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor)
{
    FT_Int pen_x,width_offset,height_offset,count;
    FT_Int maxHeight;
    FT_Int yStart;
    FT_UInt charcode;
    FT_Int i;
    FT_Int j;
    FT_Int width;
    FT_Int height;
    FT_UInt *pstStatAddr;
    FT_UInt *PTemp;
    MBT_U32  iUnitWidth;
    FT_FONTBMP_INFO  *pstFtBmpInfo = wguiv_pstftFontBmpBck;
    FT_GlyphSlot slot;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_Byte *ucSrcText;
    //FT_Byte ucAlpha;
    wguiv_u32FontOldB = 0;
    pen_x = x;
    maxHeight = 0;
    yStart = 0x0fffffff;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
        }
        charcode = ucText[count];

        slot = MM_NULL;

        if(MM_NULL != pstFtBmpInfo)
        {
            if(charcode == (MBT_U16)pstFtBmpInfo->stFtBmpmap.num_grays)
            {
                slot = &wguiv_ftFontSlot;
                slot->bitmap_left = pstFtBmpInfo->bitmap_left;
                slot->bitmap_top = pstFtBmpInfo->bitmap_top;
                slot->bitmap = pstFtBmpInfo->stFtBmpmap;
                iUnitWidth = pstFtBmpInfo->iftWidth;
                pstFtBmpInfo = pstFtBmpInfo->pstNext;
            }
        }

        if(MM_NULL == slot)
        {
            if(0 == FNTGetCharBitmap(charcode))
            {
                slot = wfuiv_ftface->glyph;
                if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
                {
                    slot->bitmap_left = 0;
                }
                if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
                {
                    slot->bitmap_top = 0;
                }
                if(slot->bitmap.width == 0)
                {
                    iUnitWidth = slot->advance.x >> 6; 
                }
                else
                {
                    iUnitWidth = (slot->bitmap.width +1) ;
                }
            }
        }

        if(MM_NULL != slot)
        {
            width = slot->bitmap.width;
            height = slot->bitmap.rows;
            if(maxHeight < height)
            {
                maxHeight = height;
            }
            width_offset = pen_x + slot->bitmap_left;

            height_offset =  y + wfuiv_ft_baselineoffset - slot->bitmap_top;
            if(yStart > height_offset)
            {
                yStart = height_offset;
            }
            pstStatAddr = (MBT_VOID *)(wguiv_u32OsdPalletteScanLine[height_offset] + OSD_COLOR_DEPTH*width_offset);

            ucSrcText = slot->bitmap.buffer;

            for(j=0;j<height;j++)
            {   
                PTemp = pstStatAddr;
                for(i=0;i<width;i++)
                {
                    if(iFrontColor == *PTemp)
                    {
                        *PTemp = 0;
                    }
                    ucSrcText++;
                    PTemp++;
                }
                pstStatAddr += OSD_REGINMAXWIDHT;
            }
            pen_x += iUnitWidth; 
        }
    }

    if(OSD_REGINMAXHEIGHT > yStart)
    {
        wguif_DispRect(x,yStart,pen_x - x,maxHeight);
    }
    return pen_x - x;
}


static inline MBT_S32 FNTDrawTxtWithAlpha(MBT_S32 x, MBT_S32 y, MBT_S32  iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor)
{
    FT_Int pen_x,width_offset,height_offset,count;
    FT_Int maxHeight;
    FT_Int yStart;
    FT_UInt charcode;
    FT_Int i;
    FT_Int j;
    FT_Int width;
    FT_Int height;
    FT_UInt *pstStatAddr;
    FT_UInt *PTemp;
    MBT_U32  iUnitWidth;
    FT_FONTBMP_INFO  *pstFtBmpInfo = wguiv_pstftFontBmpBck;
    FT_GlyphSlot slot;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_Byte *ucSrcText;
    //FT_Byte ucAlpha;
    wguiv_u32FontOldB = 0;
    pen_x = x;
    maxHeight = 0;
    yStart = 0x0fffffff;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
        }
        charcode = ucText[count];

        slot = MM_NULL;

        if(MM_NULL != pstFtBmpInfo)
        {
            if(charcode == (MBT_U16)pstFtBmpInfo->stFtBmpmap.num_grays)
            {
                slot = &wguiv_ftFontSlot;
                slot->bitmap_left = pstFtBmpInfo->bitmap_left;
                slot->bitmap_top = pstFtBmpInfo->bitmap_top;
                slot->bitmap = pstFtBmpInfo->stFtBmpmap;
                iUnitWidth = pstFtBmpInfo->iftWidth;
                pstFtBmpInfo = pstFtBmpInfo->pstNext;
            }
        }

        if(MM_NULL == slot)
        {
            if(0 == FNTGetCharBitmap(charcode))
            {
                slot = wfuiv_ftface->glyph;
                if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
                {
                    slot->bitmap_left = 0;
                }
                if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
                {
                    slot->bitmap_top = 0;
                }
                if(slot->bitmap.width == 0)
                {
                    iUnitWidth = slot->advance.x >> 6; 
                }
                else
                {
                    iUnitWidth = (slot->bitmap.width +1) ;
                }
            }
        }

        if(MM_NULL != slot)
        {
            width = slot->bitmap.width;
            height = slot->bitmap.rows;
            if(maxHeight < height)
            {
                maxHeight = height;
            }
            width_offset = pen_x + slot->bitmap_left;

            height_offset =  y + wfuiv_ft_baselineoffset - slot->bitmap_top;
            if(yStart > height_offset)
            {
                yStart = height_offset;
            }
            pstStatAddr = (MBT_VOID *)(wguiv_u32OsdPalletteScanLine[height_offset] + OSD_COLOR_DEPTH*width_offset);

            ucSrcText = slot->bitmap.buffer;

            for(j=0;j<height;j++)
            {   
                PTemp = pstStatAddr;
                for(i=0;i<width;i++)
                {
                    if(*ucSrcText > 130)
                    {
                        if(0 == *PTemp)
                        {
                            *PTemp = iFrontColor;
                        }
                    }                   
                    ucSrcText++;
                    PTemp++;
                }
                pstStatAddr += OSD_REGINMAXWIDHT;
            }
            pen_x += iUnitWidth; 
        }
    }

    if(OSD_REGINMAXHEIGHT > yStart)
    {
        wguif_DispRect(x,yStart,pen_x - x,maxHeight);
    }
    return pen_x - x;
}





static MBT_S32 FNTDrawReginTxt(MBT_S32 x, MBT_S32 y,MBT_CHAR *pcText,MBT_S32 iChNum,MBT_U32 iFrontColor, MBT_S32 *ps32ReginW)
{
    FT_Int pen_x,width_offset,height_offset,count;
    FT_Int maxHeight;
    FT_Int yStart;
    FT_UInt charcode;
    FT_Int i;
    FT_Int j;
    FT_Int width;
    FT_Int height;
    FT_UInt *pstStatAddr;
    FT_UInt *PTemp;
    MBT_U32  iUnitWidth;
    FT_FONTBMP_INFO  *pstFtBmpInfo = wguiv_pstftFontBmpBck;
    FT_GlyphSlot slot;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_Byte *ucSrcText;

    if(MM_NULL == ps32ReginW||MM_NULL == ucText||0 == iChNum)
    {
        *ps32ReginW = 0;
        return 0;
    }
    
    //FT_Byte ucAlpha;
    wguiv_u32FontOldB = 0;
    pen_x = x;
    maxHeight = 0;
    yStart = 0x0fffffff;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
    	}
        
        charcode = ucText[count];

        slot = MM_NULL;

        if(MM_NULL != pstFtBmpInfo)
        {
            if(charcode == (MBT_U16)pstFtBmpInfo->stFtBmpmap.num_grays)
            {
                slot = &wguiv_ftFontSlot;
                slot->bitmap_left = pstFtBmpInfo->bitmap_left;
                slot->bitmap_top = pstFtBmpInfo->bitmap_top;
                slot->bitmap = pstFtBmpInfo->stFtBmpmap;
                iUnitWidth = pstFtBmpInfo->iftWidth;
                pstFtBmpInfo = pstFtBmpInfo->pstNext;
            }
        }

        if(MM_NULL == slot)
        {
            if(0 == FNTGetCharBitmap(charcode))
            {
                slot = wfuiv_ftface->glyph;
                if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
                {
                    slot->bitmap_left = 0;
                }
                if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
                {
                    slot->bitmap_top = 0;
                }
                if(slot->bitmap.width == 0)
                {
                    iUnitWidth = slot->advance.x >> 6; 
                }
                else
                {
                    iUnitWidth = (slot->bitmap.width +1) ;
                }
            }
        }

        if(MM_NULL != slot)
        {
            if(pen_x + iUnitWidth - x > *ps32ReginW)
            {
                break;
            }

            width = slot->bitmap.width;
            height = slot->bitmap.rows;
            if(maxHeight < height)
            {
                maxHeight = height;
            }
            width_offset = pen_x + slot->bitmap_left;

            height_offset =  y + wfuiv_ft_baselineoffset - slot->bitmap_top;
            if(yStart > height_offset)
            {
                yStart = height_offset;
            }
            pstStatAddr = (MBT_VOID *)(wguiv_u32OsdPalletteScanLine[height_offset] + OSD_COLOR_DEPTH*width_offset);

            ucSrcText = slot->bitmap.buffer;

            for(j=0;j<height;j++)
            {   
                PTemp = pstStatAddr;
                for(i=0;i<width;i++)
                {
                    if(*ucSrcText > PAINT_GRAY_LEVEL)
                    {
                        *PTemp = iFrontColor;
                    }
                    else
                    {
                        *PTemp = FT_GetBlendingColor(*PTemp,iFrontColor,*ucSrcText);
                    }
                    ucSrcText++;
                    PTemp++;
                }
                pstStatAddr += OSD_REGINMAXWIDHT;
            }
            pen_x += iUnitWidth;
        }
    }

    if(OSD_REGINMAXHEIGHT > yStart)
    {
        wguif_DispRect(x,yStart,pen_x - x,maxHeight);
    }
    *ps32ReginW = pen_x - x;
    
    return count;
}




/************************************************************************************************************************************************
	函数名:FNTDrawLimitWidthTxtAdjust
	功能描述: 向s32DestX,s32DestY为起点，以iMaxWidth为最长行度的区域写字，如果字符过多，可多行显示此段文字，

		但实际上pen的位置由s32CurX,s32CurY决定，当s32CurX不为0的时候，应从s32CurX开始写字，而非s32DestX

	返回值:返回写完最后一个字后的pen坐标
*************************************************************************************************************************************************/
static PenPosition FNTDrawLimitWidthTxtAdjust(MBT_S32 s32DestX, MBT_S32 s32DestY, MBT_S32 s32CurX,MBT_S32 s32CurY, MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor, MBT_S32 iMaxWidth,MBT_S32 iRowHeight)
{
    FT_Int width,height,pen_x,pen_y,width_offset,height_offset,i,j,count;
    FT_UInt charcode;
    MBT_U32  iUnitWidth;
    FT_UInt *pstStatAddr,*PTemp;
    FT_Byte *ucSrcText;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_FONTBMP_INFO  *pstFtBmpInfo = wguiv_pstftFontBmpBck;
    FT_GlyphSlot slot;
    PenPosition penInfo;
    //FT_Byte ucAlpha;

    wguiv_u32FontOldB = 0;
    if(s32CurX < s32DestX)
    {
        s32CurX = s32DestX;
    }
    if(s32CurY < s32DestY)
    {
        s32CurY = s32DestY;
    }
    pen_x = s32CurX;
    pen_y = s32CurY ;
    penInfo.x = pen_x;
    penInfo.y = pen_y;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
        }

        charcode = ucText[count];
        if('\n' == charcode)
        {
            pen_x = s32DestX;
            pen_y += iRowHeight;
            continue;
        }

        slot = MM_NULL;

        if(MM_NULL != pstFtBmpInfo)
        {
            if(charcode == (MBT_U16)pstFtBmpInfo->stFtBmpmap.num_grays)
            {
                slot = &wguiv_ftFontSlot;
                slot->bitmap_left = pstFtBmpInfo->bitmap_left;
                slot->bitmap_top = pstFtBmpInfo->bitmap_top;
                slot->bitmap = pstFtBmpInfo->stFtBmpmap;
                iUnitWidth = pstFtBmpInfo->iftWidth;
                pstFtBmpInfo = pstFtBmpInfo->pstNext;
            }
        }

        if(MM_NULL == slot)
        {
            if(0 == FNTGetCharBitmap(charcode))
            {
                slot = wfuiv_ftface->glyph;
                if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
                {
                    slot->bitmap_left = 0;
                }
                if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
                {
                    slot->bitmap_top = 0;
                }
                if(slot->bitmap.width == 0)
                {
                    iUnitWidth = slot->advance.x >> 6; 
                }
                else
                {
                    iUnitWidth = (slot->bitmap.width +1) ;
                }
            }
        }

        if(MM_NULL != slot)
        {
            width = slot->bitmap.width;
            height = slot->bitmap.rows;
            if(pen_x+width-s32DestX>iMaxWidth)
            {
                pen_x = s32DestX;
                pen_y += iRowHeight;
            }

            width_offset = pen_x + slot->bitmap_left;
            height_offset =  pen_y + wfuiv_ft_baselineoffset - slot->bitmap_top;

            pstStatAddr = (MBT_VOID *)(wguiv_u32OsdPalletteScanLine[height_offset] + OSD_COLOR_DEPTH*width_offset);
            ucSrcText = slot->bitmap.buffer;

            for(j=0;j<height;j++)
            {   
                PTemp = pstStatAddr;
                for(i=0;i<width;i++)
                {
                    if(*ucSrcText > PAINT_GRAY_LEVEL)
                    {
                        *PTemp = iFrontColor;
                    }
                    else
                    {
                        *PTemp = FT_GetBlendingColor(*PTemp,iFrontColor,*ucSrcText);
                    }
                    ucSrcText++;
                    PTemp++;
                }
                pstStatAddr += OSD_REGINMAXWIDHT;
            }

            pen_x += iUnitWidth;

            if(penInfo.x < pen_x)
            {
                penInfo.x = pen_x;
            }

            width = height_offset+height;
            if(penInfo.y < width)
            {
                penInfo.y = width;
            }
        }
    }

    if(OSD_REGINMAXHEIGHT > s32DestY)
    {
        wguif_DispRect(s32DestX,s32DestY,penInfo.x - s32DestX,penInfo.y - s32DestY);
    }
    return penInfo;
}

static PenPosition FNTDrawLimitWidthTxtAdjustExt(MBT_S32 s32DestX, MBT_S32 s32DestY, MBT_S32 s32CurX,MBT_S32 s32CurY, MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor, MBT_S32 iMaxWidth,MBT_S32 iRowHeight)
{
    FT_Int width,height,pen_x,pen_y,width_offset,height_offset,i,j,count;
    FT_UInt charcode;
    MBT_U32  iUnitWidth;
    FT_UInt *pstStatAddr,*PTemp;
    FT_Byte *ucSrcText;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_FONTBMP_INFO  *pstFtBmpInfo = wguiv_pstftFontBmpBck;
    FT_GlyphSlot slot;
    PenPosition penInfo;
    //FT_Byte ucAlpha;

    wguiv_u32FontOldB = 0;
    if(s32CurX < s32DestX)
    {
        s32CurX = s32DestX;
    }
    if(s32CurY < s32DestY)
    {
        s32CurY = s32DestY;
    }
    pen_x = s32CurX;
    pen_y = s32CurY ;
    penInfo.x = pen_x;
    penInfo.y = pen_y;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
        }

        charcode = ucText[count];
        if('\n' == charcode)
        {
            pen_x = s32DestX;
            pen_y += iRowHeight;
            continue;
        }

        slot = MM_NULL;

        if(MM_NULL != pstFtBmpInfo)
        {
            if(charcode == (MBT_U16)pstFtBmpInfo->stFtBmpmap.num_grays)
            {
                slot = &wguiv_ftFontSlot;
                slot->bitmap_left = pstFtBmpInfo->bitmap_left;
                slot->bitmap_top = pstFtBmpInfo->bitmap_top;
                slot->bitmap = pstFtBmpInfo->stFtBmpmap;
                iUnitWidth = pstFtBmpInfo->iftWidth;
                pstFtBmpInfo = pstFtBmpInfo->pstNext;
            }
        }

        if(MM_NULL == slot)
        {
            if(0 == FNTGetCharBitmap(charcode))
            {
                slot = wfuiv_ftface->glyph;
                if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
                {
                    slot->bitmap_left = 0;
                }
                if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
                {
                    slot->bitmap_top = 0;
                }
                if(slot->bitmap.width == 0)
                {
                    iUnitWidth = slot->advance.x >> 6; 
                }
                else
                {
                    iUnitWidth = (slot->bitmap.width +1) ;
                }
            }
        }

        if(MM_NULL != slot)
        {
            width = slot->bitmap.width;
            height = slot->bitmap.rows;
            if(pen_x+width-s32DestX>iMaxWidth)
            {
                pen_x = s32DestX;
                pen_y += iRowHeight;
            }

            width_offset = pen_x + slot->bitmap_left;
            height_offset =  pen_y + wfuiv_ft_baselineoffset - slot->bitmap_top;

            pstStatAddr = (MBT_VOID *)(wguiv_u32ExtLayerLayerOsdLine[height_offset] + OSD_COLOR_DEPTH*width_offset);
            ucSrcText = slot->bitmap.buffer;

            for(j=0;j<height;j++)
            {   
                PTemp = pstStatAddr;
                for(i=0;i<width;i++)
                {
                    if(*ucSrcText > PAINT_GRAY_LEVEL)
                    {
                        *PTemp = iFrontColor;
                    }
                    else
                    {
                        *PTemp = FT_GetBlendingColor(*PTemp,iFrontColor,*ucSrcText);
                    }
                    ucSrcText++;
                    PTemp++;
                }
                pstStatAddr += OSD_REGINMAXWIDHT;
            }

            pen_x += iUnitWidth;

            if(penInfo.x < pen_x)
            {
                penInfo.x = pen_x;
            }

            width = height_offset+height;
            if(penInfo.y < width)
            {
                penInfo.y = width;
            }
        }
    }

    if(OSD_REGINMAXHEIGHT > s32DestY)
    {
        wguif_DispRecExt(s32DestX,s32DestY,penInfo.x - s32DestX,penInfo.y - s32DestY);
    }
    return penInfo;
}

static inline MBT_S32 FNTClearTxtWithAlphaExt(MBT_S32 x, MBT_S32 y, MBT_S32  iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor)
{
    FT_Int pen_x,width_offset,height_offset,count;
    FT_Int maxHeight;
    FT_Int yStart;
    FT_UInt charcode;
    FT_Int i;
    FT_Int j;
    FT_Int width;
    FT_Int height;
    FT_UInt *pstStatAddr;
    FT_UInt *PTemp;
    MBT_U32  iUnitWidth;
    FT_FONTBMP_INFO  *pstFtBmpInfo = wguiv_pstftFontBmpBck;
    FT_GlyphSlot slot;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_Byte *ucSrcText;
    //FT_Byte ucAlpha;
    wguiv_u32FontOldB = 0;
    pen_x = x;
    maxHeight = 0;
    yStart = 0x0fffffff;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
        }
        charcode = ucText[count];

        slot = MM_NULL;

        if(MM_NULL != pstFtBmpInfo)
        {
            if(charcode == (MBT_U16)pstFtBmpInfo->stFtBmpmap.num_grays)
            {
                slot = &wguiv_ftFontSlot;
                slot->bitmap_left = pstFtBmpInfo->bitmap_left;
                slot->bitmap_top = pstFtBmpInfo->bitmap_top;
                slot->bitmap = pstFtBmpInfo->stFtBmpmap;
                iUnitWidth = pstFtBmpInfo->iftWidth;
                pstFtBmpInfo = pstFtBmpInfo->pstNext;
            }
        }

        if(MM_NULL == slot)
        {
            if(0 == FNTGetCharBitmap(charcode))
            {
                slot = wfuiv_ftface->glyph;
                if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
                {
                    slot->bitmap_left = 0;
                }
                if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
                {
                    slot->bitmap_top = 0;
                }
                if(slot->bitmap.width == 0)
                {
                    iUnitWidth = slot->advance.x >> 6; 
                }
                else
                {
                    iUnitWidth = (slot->bitmap.width +1) ;
                }
            }
        }

        if(MM_NULL != slot)
        {
            width = slot->bitmap.width;
            height = slot->bitmap.rows;
            if(maxHeight < height)
            {
                maxHeight = height;
            }
            width_offset = pen_x + slot->bitmap_left;

            height_offset =  y + wfuiv_ft_baselineoffset - slot->bitmap_top;
            if(yStart > height_offset)
            {
                yStart = height_offset;
            }
            pstStatAddr = (MBT_VOID *)(wguiv_u32ExtLayerLayerOsdLine[height_offset] + OSD_COLOR_DEPTH*width_offset);

            ucSrcText = slot->bitmap.buffer;

            for(j=0;j<height;j++)
            {   
                PTemp = pstStatAddr;
                for(i=0;i<width;i++)
                {
                    if(iFrontColor == *PTemp)
                    {
                        *PTemp = 0;
                    }
                    ucSrcText++;
                    PTemp++;
                }
                pstStatAddr += OSD_REGINMAXWIDHT;
            }
            pen_x += iUnitWidth; 
        }
    }

    if(OSD_REGINMAXHEIGHT > yStart)
    {
        wguif_DispRecExt(x,yStart,pen_x - x,maxHeight);
    }
    return pen_x - x;
}


static inline MBT_S32 FNTDrawTxtWithAlphaExt(MBT_S32 x, MBT_S32 y, MBT_S32  iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor)
{
    FT_Int pen_x,width_offset,height_offset,count;
    FT_Int maxHeight;
    FT_Int yStart;
    FT_UInt charcode;
    FT_Int i;
    FT_Int j;
    FT_Int width;
    FT_Int height;
    FT_UInt *pstStatAddr;
    FT_UInt *PTemp;
    MBT_U32  iUnitWidth;
    FT_FONTBMP_INFO  *pstFtBmpInfo = wguiv_pstftFontBmpBck;
    FT_GlyphSlot slot;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_Byte *ucSrcText;
    //FT_Byte ucAlpha;
    wguiv_u32FontOldB = 0;
    pen_x = x;
    maxHeight = 0;
    yStart = 0x0fffffff;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
        }
        charcode = ucText[count];

        slot = MM_NULL;

        if(MM_NULL != pstFtBmpInfo)
        {
            if(charcode == (MBT_U16)pstFtBmpInfo->stFtBmpmap.num_grays)
            {
                slot = &wguiv_ftFontSlot;
                slot->bitmap_left = pstFtBmpInfo->bitmap_left;
                slot->bitmap_top = pstFtBmpInfo->bitmap_top;
                slot->bitmap = pstFtBmpInfo->stFtBmpmap;
                iUnitWidth = pstFtBmpInfo->iftWidth;
                pstFtBmpInfo = pstFtBmpInfo->pstNext;
            }
        }

        if(MM_NULL == slot)
        {
            if(0 == FNTGetCharBitmap(charcode))
            {
                slot = wfuiv_ftface->glyph;
                if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
                {
                    slot->bitmap_left = 0;
                }
                if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
                {
                    slot->bitmap_top = 0;
                }
                if(slot->bitmap.width == 0)
                {
                    iUnitWidth = slot->advance.x >> 6; 
                }
                else
                {
                    iUnitWidth = (slot->bitmap.width +1) ;
                }
            }
        }

        if(MM_NULL != slot)
        {
            width = slot->bitmap.width;
            height = slot->bitmap.rows;
            if(maxHeight < height)
            {
                maxHeight = height;
            }
            width_offset = pen_x + slot->bitmap_left;

            height_offset =  y + wfuiv_ft_baselineoffset - slot->bitmap_top;
            if(yStart > height_offset)
            {
                yStart = height_offset;
            }
            pstStatAddr = (MBT_VOID *)(wguiv_u32ExtLayerLayerOsdLine[height_offset] + OSD_COLOR_DEPTH*width_offset);

            ucSrcText = slot->bitmap.buffer;

            for(j=0;j<height;j++)
            {   
                PTemp = pstStatAddr;
                for(i=0;i<width;i++)
                {
                    if(*ucSrcText > 130)
                    {
                        if(0 == *PTemp)
                        {
                            *PTemp = iFrontColor;
                        }
                    }                   
                    ucSrcText++;
                    PTemp++;
                }
                pstStatAddr += OSD_REGINMAXWIDHT;
            }
            pen_x += iUnitWidth; 
        }
    }

    if(OSD_REGINMAXHEIGHT > yStart)
    {
        wguif_DispRecExt(x,yStart,pen_x - x,maxHeight);
    }
    return pen_x - x;
}


static MBT_S32 FNTDrawTxt2Rgn(MBT_S32 x, MBT_S32 y,MBT_U8 *pu8ReginBuf,MBT_S32 s32ReginW, MBT_S32 s32ReginH,MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor)  
{
    FT_Int pen_x,width_offset,height_offset,count;
    FT_Int maxHeight;
    FT_Int yStart;
    FT_UInt charcode;
    FT_Int i;
    FT_Int j;
    FT_Int width;
    FT_Int height;
    FT_UInt *pstStatAddr;
    FT_UInt *PTemp;
    MBT_U32  iUnitWidth;
    MBT_U32 *pu32ReginBuf = (MBT_U32 *)pu8ReginBuf;
    FT_FONTBMP_INFO  *pstFtBmpInfo = wguiv_pstftFontBmpBck;
    FT_GlyphSlot slot;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_Byte *ucSrcText;
    
    if(MM_NULL == uiv_pacFontBuffer)
    {
        return 0;
    }

    //FT_Byte ucAlpha;
    wguiv_u32FontOldB = 0;
    pen_x = x;
    maxHeight = 0;
    yStart = 0x0fffffff;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
        }
        charcode = ucText[count];

        slot = MM_NULL;

        if(MM_NULL != pstFtBmpInfo)
        {
            if(charcode == (MBT_U16)pstFtBmpInfo->stFtBmpmap.num_grays)
            {
                slot = &wguiv_ftFontSlot;
                slot->bitmap_left = pstFtBmpInfo->bitmap_left;
                slot->bitmap_top = pstFtBmpInfo->bitmap_top;
                slot->bitmap = pstFtBmpInfo->stFtBmpmap;
                iUnitWidth = pstFtBmpInfo->iftWidth;
                pstFtBmpInfo = pstFtBmpInfo->pstNext;
            }
        }

        if(MM_NULL == slot)
        {
            if(0 == FNTGetCharBitmap(charcode))
            {
                slot = wfuiv_ftface->glyph;
                if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
                {
                    slot->bitmap_left = 0;
                }
                if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
                {
                    slot->bitmap_top = 0;
                }
                if(slot->bitmap.width == 0)
                {
                    iUnitWidth = slot->advance.x >> 6; 
                }
                else
                {
                    iUnitWidth = (slot->bitmap.width +1) ;
                }
            }
        }

        if(MM_NULL != slot)
        {
            width = slot->bitmap.width;
            height = slot->bitmap.rows;
            if(maxHeight < height)
            {
                maxHeight = height;
            }
            width_offset = pen_x + slot->bitmap_left;

            height_offset =  y + wfuiv_ft_baselineoffset - slot->bitmap_top;
            if(yStart > height_offset)
            {
                yStart = height_offset;
            }

            pstStatAddr = (MBT_VOID *)(pu32ReginBuf + (height_offset*s32ReginW) + width_offset);

            ucSrcText = slot->bitmap.buffer;

            for(j=0;j<height;j++)
            {   
                PTemp = pstStatAddr;
                for(i=0;i<width;i++)
                {
                    if(*ucSrcText > PAINT_GRAY_LEVEL)
                    {
                        *PTemp = iFrontColor;
                    }
                    else
                    {
                        *PTemp = FT_GetBlendingColor(*PTemp,iFrontColor,*ucSrcText);
                    }
                    ucSrcText++;
                    PTemp++;
                }
                pstStatAddr += s32ReginW;
            }
            pen_x += iUnitWidth; 
        }
    }
    return pen_x - x;
}




/***************************************************************
	功能描述: 输出中文
	输入参数: x, y 坐标
	                        iChNum 字符串长度(以字节为单位)
	                        pcText 字符串指针
	                        iFrontColor 前景色
	                        iBackColor 背景色
      输出参数:无
      返回值:无

      调用函数:
                             
  
      被调用函数:

      修改历史:
	1.
	时间:             2005.11.15  
	描述: 移植
***************************************************************/

static MBT_S32 FNTDrawSliderTxt(MBT_S32 x, MBT_S32 y,MBT_S32 iLimitLeftX,MBT_S32 iLimitRightX,MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor)  
{
    MBT_S32 iBackStartY = y+(wfuiv_ft_size>>1)-15;
    MBT_S32 iBackHeight = 30;
    MBT_S32 iMoveStep = 6;
    FT_Bitmap *pstBitmap;
    MBT_U32  iUnitWidth = 0;
    FT_UInt *PTemp;
    FT_FONTBMP_INFO  *pstFtBmpInfo = wguiv_pstftFontBmpBck;
    FT_GlyphSlot slot;
    FT_Int width,height,pen_x,width_offset,height_offset,i,j,count,xadvance;
    FT_Int drawx = 0;
    FT_UInt charcode;
    FT_Byte temp;
    FT_Byte *ucText = (FT_Byte*)pcText;

    if(MM_NULL == uiv_pacFontBuffer)
    {
        return 0;
    }
    wguiv_u32FontOldB = 0;
    pen_x = x;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
        }
        charcode = ucText[count];

        slot = MM_NULL;

        if(MM_NULL != pstFtBmpInfo)
        {
            if(charcode == (MBT_U16)pstFtBmpInfo->stFtBmpmap.num_grays)
            {
                slot = &wguiv_ftFontSlot;
                slot->bitmap_left = pstFtBmpInfo->bitmap_left;
                slot->bitmap_top = pstFtBmpInfo->bitmap_top;
                slot->bitmap = pstFtBmpInfo->stFtBmpmap;
                iUnitWidth = pstFtBmpInfo->iftWidth;
                pstFtBmpInfo = pstFtBmpInfo->pstNext;
            }
        }

        if(MM_NULL == slot)
        {
            if(0 == FNTGetCharBitmap(charcode))
            {
                slot = wfuiv_ftface->glyph;
                if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
                {
                    slot->bitmap_left = 0;
                }
                if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
                {
                    slot->bitmap_top = 0;
                }
                if(slot->bitmap.width == 0)
                {
                    iUnitWidth = slot->advance.x >> 6; 
                }
                else
                {
                    iUnitWidth = (slot->bitmap.width +1) ;
                }
            }
        }

        if(MM_NULL != slot)
        {
            pstBitmap = (&slot->bitmap);

            width = pstBitmap->width;
            height = pstBitmap->rows;

            width_offset = pen_x + slot->bitmap_left;
            height_offset =  y + wfuiv_ft_baselineoffset - slot->bitmap_top;

            xadvance = iUnitWidth;
            for(j=0;j<iBackHeight;j++)
            {   
                if(((iBackStartY+j)>=height_offset)&&((iBackStartY+j)<(height_offset+height)))
                {
                    for(i=0;i<xadvance+iMoveStep;i++)
                    {                       
                        if((pen_x+i)>iLimitLeftX && (pen_x+i)<iLimitRightX)
                        {
                            if((pen_x+i)>=width_offset&&(pen_x+i)<(width_offset+width))
                            {
                                temp = *(pstBitmap->buffer+(iBackStartY+j-height_offset)*pstBitmap->pitch+(pen_x+i-width_offset));
                                PTemp = ((MBT_U32 *)(wguiv_u32OsdPalletteScanLine[iBackStartY+j] + OSD_COLOR_DEPTH*(pen_x+i)));
                                if(temp > PAINT_GRAY_LEVEL)
                                {
                                    *PTemp = iFrontColor;
                                }
                                else
                                {
                                    *PTemp = FT_GetBlendingColor(*PTemp,iFrontColor,temp);
                                }
                            }
                        }
                    }
                }
            }
            pen_x += xadvance;
        }
    }

    if(x < iLimitRightX)
    {
        if(x < iLimitLeftX)
        {
            drawx = iLimitLeftX;
        }
        else
        {
            drawx = x;
        }
        wguif_DispRect(drawx,iBackStartY,pen_x - drawx,iBackHeight);
    }
    return pen_x;
}



 
/***************************************************************
	函数名:FNTGetTxtWidthLinesAdjust
	功能描述: 获取中文字串的长度(以象素点为单位)
	输入参数: x, y 坐标
	                        iChNum 字符串长度(以字节为单位)
	                        pcText 字符串指针
      输出参数:无
      返回值:无

      调用函数:
                             

      被调用函数:

      修改历史:
	1.
	时间:             2005.11.15
	描述: 移植

	本函数意义同WGUIF_GetTxtWidthLines，主要是在英缅混合的情况下，为了方面实现WGUIF_GetTxtWidthLines的功能，
	增加此函数进行辅助
	返回值不同于WGUIF_GetTxtWidthLines，本函数返回最后一行的
***************************************************************/
static LineWidthInfo  FNTGetTxtWidthLinesAdjust( MBT_S32 iChNum, MBT_CHAR *pcText,MBT_U32 *pu32Lines,MBT_U32 u32CurWidth,MBT_U32 u32MaxWidth)
{
    FT_GlyphSlot slot;
    FT_Int count,iTextWidth,iWidthline,iLines;
    FT_UInt charcode;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_FONTBMP_INFO  *pstFtBmpInfo;
    FT_Int iSize,iUnitWidth;
    MBT_VOID **ppPoint;
    MBT_U8  *pu8Buffer;
    LineWidthInfo stWidthInfo={.s32LastLineWidth=0,.s32MaxLineWidth=0};
    if(MM_NULL != pu32Lines)
    {
        *pu32Lines = 1;
    }

    if(MM_NULL == uiv_pacFontBuffer)
    {
        return stWidthInfo;
    }

    if(0 == iChNum||MM_NULL == pcText)
    {
        return stWidthInfo;
    }

    ppPoint = (MBT_VOID **)(&wguiv_pstftFontBmpBck);
    pstFtBmpInfo = wguiv_pstftFontBmpBck ;
    iTextWidth = 0;
    iWidthline = u32CurWidth;
    iLines = 0;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
        }

        charcode = ucText[count];
        if('\n' == charcode)
        {
            if(iTextWidth < iWidthline)
            {
                iTextWidth = iWidthline;
            }
            iWidthline = 0;
            iLines++;
            continue;
        }


        if(0 == FNTGetCharBitmap(charcode))
        {
            slot = wfuiv_ftface->glyph;
            if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
            {
                slot->bitmap_left = 0;
            }
            if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
            {
                slot->bitmap_top = 0;
            }

            if(slot->bitmap.width == 0)
            {
                iUnitWidth = slot->advance.x >> 6;
            }
            else
            {
                iUnitWidth = (slot->bitmap.width +1) ;
            }


            if(iWidthline + iUnitWidth >= u32MaxWidth)
            {
                if(iTextWidth < iWidthline)
                {
                    iTextWidth = iWidthline;
                }
                iWidthline = 0;
                iLines++;
            }
            iWidthline += iUnitWidth;

            if(MM_NULL == pstFtBmpInfo)
            {
                pstFtBmpInfo = MLMF_Malloc(sizeof(FT_FONTBMP_INFO));
                if(MM_NULL != pstFtBmpInfo)
                {
                    memset(pstFtBmpInfo,0,sizeof(FT_FONTBMP_INFO));
                }
            }

            if(MM_NULL != pstFtBmpInfo)
            {
                *ppPoint = pstFtBmpInfo;
                iSize = slot->bitmap.width*slot->bitmap.rows;

                if(iSize > 0)
                {
                    pu8Buffer = pstFtBmpInfo->stFtBmpmap.buffer;
                    if(MM_NULL != pu8Buffer)
                    {
                        if(iSize > pstFtBmpInfo->u16BufferSize)
                        {
                            MLMF_Free(pu8Buffer);
                            pu8Buffer = MLMF_Malloc(iSize);
                        }
                    }
                    else
                    {
                        pu8Buffer = MLMF_Malloc(iSize);
                    }

                    if(MM_NULL != pu8Buffer)
                    {
                        pstFtBmpInfo->u16BufferSize = iSize;
                        pstFtBmpInfo->bitmap_left = slot->bitmap_left;
                        pstFtBmpInfo->bitmap_top = slot->bitmap_top;
                        memcpy(pu8Buffer,slot->bitmap.buffer,iSize);
                        pstFtBmpInfo->stFtBmpmap = slot->bitmap;
                        pstFtBmpInfo->stFtBmpmap.buffer = pu8Buffer;
                        pstFtBmpInfo->iftWidth = iUnitWidth;
                        pstFtBmpInfo->stFtBmpmap.num_grays = charcode;/*借来用一下*/
                        ppPoint = (MBT_VOID**)(&pstFtBmpInfo->pstNext);
                        pstFtBmpInfo = pstFtBmpInfo->pstNext;
                    }
                }
            }
        }
    }   

    if(iTextWidth < iWidthline)
    {
        iTextWidth = iWidthline;
    }

    if(0 == iLines)
    {
        iLines = 1;
    }

    if(MM_NULL != pu32Lines)
    {
    *pu32Lines = iLines;
    }

    stWidthInfo.s32MaxLineWidth = iTextWidth;
    stWidthInfo.s32LastLineWidth = iWidthline;

    return stWidthInfo;
}



/***************************************************************
	函数名:FNTGetTxtWidth
	功能描述: 获取中文字串的长度(以象素点为单位)
	输入参数: x, y 坐标
	                        iChNum 字符串长度(以字节为单位)
	                        pcText 字符串指针
      输出参数:无
      返回值:无

      调用函数:
                             

      被调用函数:

      修改历史:
	1.
	时间:             2005.11.15
	描述: 移植
***************************************************************/
static MBT_S32 FNTGetTxtWidth( MBT_S32 iChNum, MBT_CHAR *pcText )
{
    FT_GlyphSlot slot;
    FT_Int count,iTextWidth,iWidthline;
    FT_UInt charcode;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_FONTBMP_INFO  *pstFtBmpInfo;
    FT_Int iSize,iUnitWidth;
    MBT_VOID **ppPoint;
    MBT_U8  *pu8Buffer;
    
    if(MM_NULL == uiv_pacFontBuffer)
    {
        return 0;
    }
    
    if(0 == iChNum||MM_NULL == pcText)
    {
        return 0;
    }
    
    ppPoint = (MBT_VOID **)(&wguiv_pstftFontBmpBck);
    pstFtBmpInfo = wguiv_pstftFontBmpBck ;
    iTextWidth = 0;
    iWidthline = 0;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
	}
        
        charcode = ucText[count];
        if('\n' == charcode)
        {
            if(iTextWidth < iWidthline)
            {
                iTextWidth = iWidthline;
            }
            iWidthline = 0;
            continue;
        }
        
        if(0 == FNTGetCharBitmap(charcode))
        {
            slot = wfuiv_ftface->glyph;
            if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
            {
                slot->bitmap_left = 0;
            }
            if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
            {
                slot->bitmap_top = 0;
            }

            if(slot->bitmap.width == 0)
            {
                iUnitWidth = slot->advance.x >> 6;
            }
            else
            {
                iUnitWidth = (slot->bitmap.width +1) ;
            }
            
            iWidthline += iUnitWidth;
            
            if(MM_NULL == pstFtBmpInfo)
            {
                pstFtBmpInfo = MLMF_Malloc(sizeof(FT_FONTBMP_INFO));
                if(MM_NULL != pstFtBmpInfo)
                {
                    memset(pstFtBmpInfo,0,sizeof(FT_FONTBMP_INFO));
                }
            }

            if(MM_NULL != pstFtBmpInfo)
            {
                *ppPoint = pstFtBmpInfo;
                iSize = slot->bitmap.width*slot->bitmap.rows;

                if(iSize > 0)
                {
                    pu8Buffer = pstFtBmpInfo->stFtBmpmap.buffer;
                    if(MM_NULL != pu8Buffer)
                    {
                        if(iSize > pstFtBmpInfo->u16BufferSize)
                        {
                            MLMF_Free(pu8Buffer);
                            pu8Buffer = MLMF_Malloc(iSize);
                        }
                    }
                    else
                    {
                        pu8Buffer = MLMF_Malloc(iSize);
                    }
                    
                    if(MM_NULL != pu8Buffer)
                    {
                        pstFtBmpInfo->u16BufferSize = iSize;
                        pstFtBmpInfo->bitmap_left = slot->bitmap_left;
                        pstFtBmpInfo->bitmap_top = slot->bitmap_top;
                        memcpy(pu8Buffer,slot->bitmap.buffer,iSize);
                        pstFtBmpInfo->stFtBmpmap = slot->bitmap;
                        pstFtBmpInfo->stFtBmpmap.buffer = pu8Buffer;
                        pstFtBmpInfo->iftWidth = iUnitWidth;
                        pstFtBmpInfo->stFtBmpmap.num_grays = charcode;/*借来用一下*/
                        ppPoint = (MBT_VOID**)(&pstFtBmpInfo->pstNext);
                        pstFtBmpInfo = pstFtBmpInfo->pstNext;
                    }
                }
            }
        }
    }   

    if(iTextWidth < iWidthline)
    {
        iTextWidth = iWidthline;
    }

    return iTextWidth;
}

  
 
MBT_VOID WGUIF_FreeFontLib(MBT_VOID)
{
    FT_DONE();
    if(wguiv_pstftFontBmpBck)
    {
        FT_FreeBmpBuffer(wguiv_pstftFontBmpBck);
        wguiv_pstftFontBmpBck = MM_NULL;
    }
    if(uiv_pacFontBuffer)
    {
        MLMF_Free(uiv_pacFontBuffer);
        uiv_pacFontBuffer = MM_NULL;
    }
}

MBT_U8 WGUIF_GetFontLibVer(MBT_VOID)
{
    return uiv_u8FontLibVer;
}


MMT_STB_ErrorCode_E WGUIF_InitFontLib(MBT_BOOL bReadFromRom)
{
    /*矢量2543360 
    点库1455888*/
    MMT_STB_ErrorCode_E stRet = MM_ERROR_NO_MEMORY;

    if(bReadFromRom)
    {
        uiv_u32SrcSize = MMF_GetSpecifyImageSize(MM_IMAGE_FONTLIB);
        if(uiv_u32SrcSize > 4*1024*1024||0 == uiv_u32SrcSize)
        {
            return stRet;
        }
    }
    
    if(MM_NULL == uiv_pacFontBuffer)
    {
        uiv_pacFontBuffer = MLMF_Malloc(uiv_u32SrcSize);
    }
    
    if(MM_NULL == uiv_pacFontBuffer)
    {
        return stRet;
    }

    if(bReadFromRom)
    {
        stRet = MMF_GetSpecifyImage(MM_IMAGE_FONTLIB,uiv_pacFontBuffer, &uiv_u32SrcSize);
        if(stRet != MM_NO_ERROR)
        {
            MLMF_Free(uiv_pacFontBuffer);
            uiv_pacFontBuffer = MM_NULL;
            return stRet;
        }
    }


    FT_Init(uiv_u32SrcSize);
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    return stRet;
}

 
 
MBT_VOID WGUIF_SetFontHeight(MBT_S32 s32FontHeight )
{
    if(MM_NULL == uiv_pacFontBuffer)
    {
        return;
    }
    
    if(wfuiv_ft_size != s32FontHeight)
    {
        if(0 != FT_Set_Char_Size(wfuiv_ftface, s32FontHeight<<6, (s32FontHeight+1)<<6, wfuiv_ft_rate, 0))
        {
            FT_Done_Face(wfuiv_ftface);
            FT_Done_FreeType(wfuiv_ftlibrary);
            return;
        }
        wfuiv_ft_size = s32FontHeight;
        wfuiv_ft_baselineoffset = FT_GetBaseLine(wfuiv_ft_size);
        if(wguiv_pstftFontBmpBck)
        {
            FT_FreeBmpBuffer(wguiv_pstftFontBmpBck);
            wguiv_pstftFontBmpBck = MM_NULL;
        }
    }
}


MBT_S32 WGUIF_GetFontHeight(MBT_VOID)
{
    return wfuiv_ft_size;
}


MBT_S32 WGUIF_FNTDrawTxtWithAlpha(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor)  
{
    MBT_S32 rtn_width;
    
    if(MM_NULL == uiv_pacFontBuffer)
    {
        return 0;
    }
    
    if(x >= OSD_REGINMAXWIDHT||y >= OSD_REGINMAXHEIGHT)
    {
        return 0;
    }

    rtn_width = FNTDrawTxtWithAlpha(x, y, iChNum, pcText, iFrontColor);
    return rtn_width;
}

MBT_S32 WGUIF_FNTClearTxtWithAlpha(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor)
{
    MBT_S32 rtn_width;
    
    if(MM_NULL == uiv_pacFontBuffer)
    {
        return 0;
    }
    if(x >= OSD_REGINMAXWIDHT||y >= OSD_REGINMAXHEIGHT)
    {
        return 0;
    }

    rtn_width = FNTClearTxtWithAlpha(x, y, iChNum, pcText, iFrontColor);
    return rtn_width;
}

MBT_S32 WGUIF_DrawLimitWidthTxt(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor, MBT_S32 iMaxWidth,MBT_S32 iRowHeight)
{
    FT_Int width,height,pen_x,pen_y,width_offset,height_offset,i,j,count;
    FT_Int xRight;
    FT_UInt charcode;
    MBT_U32  iUnitWidth;
    FT_UInt *pstStatAddr,*PTemp;
    FT_Byte *ucSrcText;
    FT_Byte *ucText = (FT_Byte*)pcText;
    FT_FONTBMP_INFO  *pstFtBmpInfo = wguiv_pstftFontBmpBck;
    FT_GlyphSlot slot;
    //FT_Byte ucAlpha;
    
    if(MM_NULL == uiv_pacFontBuffer)
    {
        return 0;
    }

    
    if(x >= OSD_REGINMAXWIDHT||y >= OSD_REGINMAXHEIGHT||x + iMaxWidth > OSD_REGINMAXWIDHT  )
    {
        return 0  ;
    }
    wguiv_u32FontOldB = 0;
    pen_x = x;
    pen_y = y ;
    xRight = pen_x;

    for(count=0;count<iChNum;count++)
    {
        if(ucText[count] >= 0xA0)
        {
            count++;
            continue;
        }
        else if(ucText[count]>=0x7F)/*去掉不可显示字符*/
        {
            count++;
            continue;
	}

        charcode = ucText[count];
        if('\n' == charcode)
        {
            pen_x = x;
            pen_y += iRowHeight;
            continue;
        }

        slot = MM_NULL;

        if(MM_NULL != pstFtBmpInfo)
        {
            if(charcode == (MBT_U16)pstFtBmpInfo->stFtBmpmap.num_grays)
            {
                slot = &wguiv_ftFontSlot;
                slot->bitmap_left = pstFtBmpInfo->bitmap_left;
                slot->bitmap_top = pstFtBmpInfo->bitmap_top;
                slot->bitmap = pstFtBmpInfo->stFtBmpmap;
                iUnitWidth = pstFtBmpInfo->iftWidth;
                pstFtBmpInfo = pstFtBmpInfo->pstNext;
            }
        }

        if(MM_NULL == slot)
        {
            if(0 == FNTGetCharBitmap(charcode))
            {
                slot = wfuiv_ftface->glyph;
                if(slot->bitmap_left < 0||slot->bitmap_left > wfuiv_ft_size)
                {
                    slot->bitmap_left = 0;
                }
                if(slot->bitmap_top < 0||slot->bitmap_top > wfuiv_ft_size)
                {
                    slot->bitmap_top = 0;
                }
                if(slot->bitmap.width == 0)
                {
                    iUnitWidth = slot->advance.x >> 6; 
                }
                else
                {
                    iUnitWidth = (slot->bitmap.width +1) ;
                }
            }
        }

        if(MM_NULL != slot)
        {
            width = slot->bitmap.width;
            height = slot->bitmap.rows;
            if(pen_x+width-x>iMaxWidth)
            {
                pen_x = x;
                pen_y += iRowHeight;
            }

            width_offset = pen_x + slot->bitmap_left;
            height_offset =  pen_y + wfuiv_ft_baselineoffset - slot->bitmap_top;

            pstStatAddr = (MBT_VOID *)(wguiv_u32OsdPalletteScanLine[height_offset] + OSD_COLOR_DEPTH*width_offset);
            ucSrcText = slot->bitmap.buffer;

            for(j=0;j<height;j++)
            {   
                PTemp = pstStatAddr;
                for(i=0;i<width;i++)
                {
                    if(*ucSrcText > PAINT_GRAY_LEVEL)
                    {
                        *PTemp = iFrontColor;
                    }
                    else
                    {
                        *PTemp = FT_GetBlendingColor(*PTemp,iFrontColor,*ucSrcText);
                    }
                    ucSrcText++;
                    PTemp++;
                }
                pstStatAddr += OSD_REGINMAXWIDHT;
            }

            pen_x += iUnitWidth;

            if(xRight < pen_x)
            {
                xRight = pen_x;
            }
        }
    }
    pen_y += iRowHeight;

    if(OSD_REGINMAXHEIGHT > y)
    {
        wguif_DispRect(x,y,xRight - x,pen_y-y);
    }
    return pen_y;
}



MBT_S32  WGUIF_FNTSetTxtMiddle(MBT_S32 s32RectX, MBT_S32 s32RectY, MBT_S32 s32RectWidth, MBT_S32 s32RectHeight, MBT_S32 s32FontWidth, MBT_S32 s32FontHeight, MBT_CHAR *pcText, MBT_U32 u32FrontColor)  
{
    MBT_S32 s32FontX = 0;
    MBT_S32 s32FontY = 0;
    MBT_S32 s32FontStrlen = 0;
    MBT_S32 rtn_width;
    
    if(MM_NULL == uiv_pacFontBuffer)
    {
        return 0;
    }
    
    if(s32RectX+s32RectWidth > OSD_REGINMAXWIDHT||s32RectY+s32RectHeight>OSD_REGINMAXHEIGHT||0 >= s32RectWidth||0 >= s32RectHeight)
    {
        return 0;
    }
    s32FontStrlen = strlen(pcText);
    s32FontX = s32RectX + (s32RectWidth - s32FontWidth)/2;
    s32FontY = s32RectY + (s32RectHeight - s32FontHeight)/2;
    rtn_width = FT_DrawGB2312Text(s32FontX, s32FontY, s32FontStrlen, pcText, u32FrontColor);
    return rtn_width;
}




/***********************************************************************************************
*	部分EPG字符串会出现一部分英文,然后跟着缅文,本函数用于处理这种情况
*
*	SKEY NET 的码流里EPG里的缅文由(( ))包括起来，中间部分就是缅文的非标准的unicode编码
*	注意,这只是SKYNET的规定,若出现英文以(( ))括起来,则会错误的将其当作缅文处理
*	
*	返回值:
*		成功返回0,否则-1
***********************************************************************************************/
MBT_S32 WGUIF_FNTDrawRgnTxt(MBT_S32 x, MBT_S32 y, MBT_U8 *pu8ReginBuf,MBT_S32 s32ReginW, MBT_S32 s32ReginH,MBT_S32 iChNum, MBT_CHAR *pText, MBT_U32 u32TextColor)  
{
 	MBT_S32 s32PenX = x;
 	if(MM_NULL==pText||iChNum<=0 )
	{
		return 0;
	}
    s32PenX += FNTDrawTxt2Rgn(s32PenX,y,pu8ReginBuf,s32ReginW,s32ReginH,iChNum,pText,u32TextColor);
 	return s32PenX - x;
}

/***********************************************************************************************
*	部分EPG字符串会出现一部分英文,然后跟着缅文,本函数用于处理这种情况
*
*	SKEY NET 的码流里EPG里的缅文由(( ))包括起来，中间部分就是缅文的非标准的unicode编码
*	注意,这只是SKYNET的规定,若出现英文以(( ))括起来,则会错误的将其当作缅文处理
*	
*	返回值:
*		成功返回0,否则-1
***********************************************************************************************/
MBT_S32 WGUIF_FNTDrawSliderTxt(MBT_S32 x, MBT_S32 y,  MBT_S32 iLimitLeftX,MBT_S32 iLimitRightX,MBT_S32 iChNum, MBT_CHAR *pText, MBT_U32 u32TextColor)  
{
 	MBT_S32 s32PenX = 0;
 
	if(MM_NULL==pText|| iChNum<=0 || iLimitLeftX<0 || iLimitLeftX>=iLimitRightX)
	{
		return 0;
	}
	
    s32PenX = FNTDrawSliderTxt(x,y,iLimitLeftX,iLimitRightX,iChNum,pText,u32TextColor);
    x = s32PenX;
 	return s32PenX;
}

MBT_S32 WGUIF_FNTDrawTxtWithAlphaExt(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor)  
{
    MBT_S32 rtn_width;
    
    if(MM_NULL == uiv_pacFontBuffer)
    {
        return 0;
    }

    
    if(x >= OSD_REGINMAXWIDHT||y >= OSD_REGINMAXHEIGHT)
    {
        return 0  ;
    }

    rtn_width = FNTDrawTxtWithAlphaExt(x, y, iChNum, pcText, iFrontColor);
    return rtn_width;
}

MBT_S32 WGUIF_FNTClearTxtWithAlphaExt(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pcText, MBT_U32 iFrontColor)  
{
    MBT_S32 rtn_width;
    
    if(MM_NULL == uiv_pacFontBuffer)
    {
        return 0;
    }
    
    if(x >= OSD_REGINMAXWIDHT||y >= OSD_REGINMAXHEIGHT)
    {
        return 0  ;
    }

    rtn_width = FNTClearTxtWithAlphaExt(x, y, iChNum, pcText, iFrontColor);
    return rtn_width;
}

MBT_S32 WGUIF_FNTDrawLimitWidthTxt(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pText, MBT_U32 iFrontColor, MBT_S32 iMaxWidth,MBT_S32 iRowHeight)
{
 	MBT_S32 s32CurX;
	MBT_S32 s32CurY;
	PenPosition pos = {.x=0,.y=0};

	if(MM_NULL==pText	|| iChNum<=0 || iMaxWidth<0 || iRowHeight<0)
	{
		return iRowHeight + y;
	}
    s32CurX = pos.x;
    s32CurY = pos.y;
    
    pos =FNTDrawLimitWidthTxtAdjust(x,y,s32CurX,s32CurY,iChNum,pText,iFrontColor,iMaxWidth,iRowHeight);
 	return pos.y;
}

/*返回高度*/
MBT_S32 WGUIF_FNTAdjustTxtLine(MBT_CHAR *pText,MBT_S32 strLen,MBT_S32 iWidthLimit,MBT_S32 iHeightLimit)
{
    MBT_S32 iHeight = 1;
    MBT_S32 iWidth = 0;
    MBT_CHAR* pu8TextIndex = MM_NULL;
    MBT_CHAR* pu8TextEnd = pText + strLen;

    if(MM_NULL==pText  || strLen<=0)
    {
        return 0;
    }
    pu8TextIndex = pText;
    while( pu8TextIndex < pu8TextEnd)   
    {
        if(*pu8TextIndex == '\r')
        {          
            iHeight ++;                
            if(iHeight > iHeightLimit)
            {
                iHeight --;
                *pu8TextIndex = 0;
                return iHeight;
            }
            iWidth = 0;
            pu8TextIndex += 2 ;
            continue;
        }
        
        if(*pu8TextIndex == '\n')
        {          
            iHeight ++;                
            if(iHeight > iHeightLimit)
            {
                iHeight --;
                *pu8TextIndex = 0;
                return iHeight;
            }
            iWidth = 0;
            pu8TextIndex += 1 ;
            continue;
        }
        
        if(*pu8TextIndex == '\t')
        {
            *pu8TextIndex = ' ';
        }
        iWidth +=  FNTGetTxtWidth(1,pu8TextIndex);
        if(iWidth >= iWidthLimit)
        {
            iHeight ++;
            if(iHeight > iHeightLimit)
            {
                iHeight --;
                *pu8TextIndex = 0;
                return iHeight;
            }
            iWidth = 0;
        }
        else
        {
            pu8TextIndex += 1 ;
        }
    }

    return iHeight;
}


MBT_S32  WGUIF_FNTGetTxtWidthLinesAdjust( MBT_S32 iChNum, MBT_CHAR *pText,MBT_U32 *pu32Lines,MBT_U32 u32MaxWidth)
{
 	MBT_U32 u32Lines = 0;
	MBT_U32 u32TotalLines = 0;
	MBT_S32 s32TextWidth = 0;
	MBT_S32 s32CurWidth = 0;
	LineWidthInfo stWidthInfo={.s32MaxLineWidth=0,.s32LastLineWidth=0};
	if(MM_NULL==pText	|| iChNum<=0 || u32MaxWidth<0)
	{
		return 0;
	}

    u32Lines = 0;
    stWidthInfo = FNTGetTxtWidthLinesAdjust(iChNum,pText,&u32Lines,s32CurWidth,u32MaxWidth);
    s32CurWidth =stWidthInfo.s32LastLineWidth;
    if(s32TextWidth < stWidthInfo.s32MaxLineWidth)
    {
        s32TextWidth = stWidthInfo.s32MaxLineWidth;
    }
    
    /*若最后一行宽度小于u32MaxWidth，则将行数少算一个，因为后面会接着最后一行计算*/
    if(s32CurWidth < u32MaxWidth)
    {
        u32TotalLines += (u32Lines-1);
    }
  
	if(MM_NULL != pu32Lines)
	{
		*pu32Lines = u32TotalLines + 1;
	}

	return s32TextWidth;
}



/***********************************************************************************************
*	部分EPG字符串会出现一部分英文,然后跟着缅文,本函数用于处理这种情况
*
*	SKEY NET 的码流里EPG里的缅文由(( ))包括起来，中间部分就是缅文的非标准的unicode编码
*	注意,这只是SKYNET的规定,若出现英文以(( ))括起来,则会错误的将其当作缅文处理
*	
*	返回值:
*		成功返回写本字符串所占的宽度,否则0
***********************************************************************************************/
MBT_S32 WGUIF_FNTGetTxtWidth(MBT_S32  iChNum, MBT_CHAR *pText)
{
	return FNTGetTxtWidth(iChNum,pText);
}


/***********************************************************************************************
*	部分EPG字符串会出现一部分英文,然后跟着缅文,本函数用于处理这种情况
*
*	SKEY NET 的码流里EPG里的缅文由(( ))包括起来，中间部分就是缅文的非标准的unicode编码
*	注意,这只是SKYNET的规定,若出现英文以(( ))括起来,则会错误的将其当作缅文处理
*	
*	返回值:
*		成功返回返回pen的x坐标距起始参数x的距离，否则返回0
***********************************************************************************************/
MBT_S32 WGUIF_FNTDrawTxt(MBT_S32 x,MBT_S32 y,MBT_S32 iChNum,MBT_CHAR *pText,MBT_U32 u32TextColor)
{
 	MBT_S32 s32Width;
	//MLMF_Print("[%s:%d]\n",__FUNCTION__,__LINE__);
	if(MM_NULL==pText	|| iChNum<=0)
	{
		return 0;
	}
	
    if(x >= OSD_REGINMAXWIDHT||y >= OSD_REGINMAXHEIGHT)
    {
        return 0  ;
    }
    s32Width = FT_DrawGB2312Text(x,y,iChNum,pText,u32TextColor);
 	return s32Width;
}


MBT_S32 WGUIF_FNTDrawExtTxt(MBT_S32 x,MBT_S32 y,MBT_S32 iChNum,MBT_CHAR *pText,MBT_U32 u32TextColor)
{
 	MBT_S32 s32Width;
	//MLMF_Print("[%s:%d]\n",__FUNCTION__,__LINE__);
	if(MM_NULL==pText	|| iChNum<=0)
	{
		return 0;
	}

	
    if(x >= OSD_REGINMAXWIDHT||y >= OSD_REGINMAXHEIGHT)
    {
        return 0  ;
    }
    s32Width = FNTDrawExtTxt(x,y,iChNum,pText,u32TextColor);
 	return s32Width;
}

MBT_S32 WGUIF_FNTDrawLimitWidthTxtExt(MBT_S32 x, MBT_S32 y, MBT_S32 iChNum, MBT_CHAR *pText, MBT_U32 iFrontColor, MBT_S32 iMaxWidth,MBT_S32 iRowHeight)
{
 	MBT_S32 s32CurX;
	MBT_S32 s32CurY;
	PenPosition pos = {.x=0,.y=0};

	if(MM_NULL==pText	|| iChNum<=0 || iMaxWidth<0 || iRowHeight<0)
	{
		return iRowHeight + y;
	}
    s32CurX = pos.x;
    s32CurY = pos.y;
    
    pos =FNTDrawLimitWidthTxtAdjustExt(x,y,s32CurX,s32CurY,iChNum,pText,iFrontColor,iMaxWidth,iRowHeight);
 	return pos.y;
}


/***********************************************************************************************
*	部分EPG字符串会出现一部分英文,然后跟着缅文,本函数用于处理这种情况
*
*	SKEY NET 的码流里EPG里的缅文由(( ))包括起来，中间部分就是缅文的非标准的unicode编码
*	注意,这只是SKYNET的规定,若出现英文以(( ))括起来,则会错误的将其当作缅文处理
*	
*	返回值:
*		成功返回写出的字符个数,否则0
***********************************************************************************************/
MBT_S32 WGUIF_FNTDrawTxt2Rgn(MBT_S32 x, MBT_S32 y,MBT_CHAR *pText,MBT_S32  iChNum, MBT_U32 u32TextColor,MBT_S32 iReginW)
{
 	MBT_S32 s32Width;
	MBT_S32 s32CharDrew;
	MBT_S32 s32Total = 0;
 
	if(MM_NULL==pText|| iChNum<=0 || iReginW<=0)
	{
		return 0;
	}

    if(x >= OSD_REGINMAXWIDHT||y >= OSD_REGINMAXHEIGHT||x + iReginW > OSD_REGINMAXWIDHT)
    {
        return 0  ;
    }

    s32Width = iReginW;
    s32CharDrew = FNTDrawReginTxt(x,y,pText,iChNum,u32TextColor,&s32Width);
    x += s32Width;
    iReginW -= s32Width;
    s32Total += s32CharDrew;
 
	return s32Total;
}



/***********************************************************************************************
*	部分EPG字符串会出现一部分英文,然后跟着缅文,本函数用于处理这种情况
*
*	SKEY NET 的码流里EPG里的缅文由(( ))包括起来，中间部分就是缅文的非标准的unicode编码
*	注意,这只是SKYNET的规定,若出现英文以(( ))括起来,则会错误的将其当作缅文处理
*   iHighlightByte 为数组下标,从0开始
*	
*	返回值:
*		成功返回写出的字符个数,否则0
***********************************************************************************************/
MBT_S32 WGUIF_FNTDrawTxt2RgnUse2Color(MBT_S32 x, MBT_S32 y,MBT_CHAR *pText,MBT_S32  iChNum,MBT_S32  iHighlightByte, MBT_U32 u32TextColor,MBT_U32 u32HighlightColor,MBT_S32 iReginW)
{
 	MBT_CHAR* pu8Pos;
	MBT_S32 s32StarX = x;
	MBT_S32 s32Len = 0;
	MBT_S32 s32Width = 0;
	MBT_S32 s32CharDrew = 0;
	MBT_S32 s32Total = 0;
 
	if(MM_NULL==pText|| iChNum<=0 || iReginW<=0)
	{
		return 0;
	}

    if(x >= OSD_REGINMAXWIDHT||y >= OSD_REGINMAXHEIGHT||x + iReginW > OSD_REGINMAXWIDHT)
    {
        return 0  ;
    }

    s32Len = iChNum;
    pu8Pos = pText;
    if(iHighlightByte >= s32Total&&iHighlightByte < s32Total + s32Len)
    {
        s32Width = iReginW;
        s32CharDrew = FNTDrawReginTxt(s32StarX,y,pu8Pos,iHighlightByte-s32Total,u32TextColor,&s32Width);
        s32StarX += s32Width;
        iReginW -= s32Width;
        s32Total += s32CharDrew;
        if(iReginW > 0)
        {
            s32Width = iReginW;
            FNTDrawReginTxt(s32StarX,y,pu8Pos+s32CharDrew,1,u32HighlightColor,&s32Width);
            s32StarX += s32Width;
            iReginW -= s32Width;
            s32Total += 1;
        }
        
        if(iReginW > 0)
        {
            s32Width = iReginW;
            s32CharDrew = FNTDrawReginTxt(s32StarX,y,pu8Pos+s32CharDrew+1,s32Len-s32CharDrew-1,u32TextColor,&s32Width);
            s32StarX += s32Width;
            iReginW -= s32Width;
            s32Total += s32CharDrew;
        }
    }
    else
    {
        s32Width = iReginW;
        s32CharDrew = FNTDrawReginTxt(s32StarX,y,pu8Pos,s32Len,u32TextColor,&s32Width);
        s32StarX += s32Width;
        iReginW -= s32Width;
        s32Total += s32CharDrew;
    }

 	return s32StarX - x;
}


