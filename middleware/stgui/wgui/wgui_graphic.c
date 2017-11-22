#include <string.h>
#include <stdlib.h>
#include "wgui_inner.h"
 
//#define WGUI_DEBUG(x)   MLMF_Print x
#define WGUI_DEBUG(x) 

static MBT_VOID DrawRectExt(MBT_S32 x,MBT_S32 y,MBT_S32 iW,MBT_S32 iH,MBT_U32 u32Color)
{
    MBT_S32 iPosX;
    MBT_S32 iPosY;
    MBT_S32 iWidth;
    MBT_S32 iHeight;
    MBT_U32 *pu32DesStart;
    MBT_S32 i;
    MBT_S32 k;
    MBT_U32 *pu32Des;

    iPosX = x;
    iPosY = y;
    iWidth = iW;
    if(iWidth + iPosX > OSD_REGINMAXWIDHT)
    {
        iWidth = OSD_REGINMAXWIDHT - iPosX;
    }
    iHeight = iH;
    if(iHeight + iPosY > OSD_REGINMAXHEIGHT)
    {
        iHeight = OSD_REGINMAXHEIGHT - iPosY;
    }
    pu32DesStart = (MBT_VOID*)(wguiv_u32ExtLayerLayerOsdLine[iPosY] + OSD_COLOR_DEPTH*iPosX);;
    pu32Des = pu32DesStart;
    for(i = 0;i < iHeight;i++)
    {
        for(k = 0;k< iWidth;k++)
        {
            pu32Des[k] = u32Color;
        }
        pu32Des += OSD_REGINMAXWIDHT;
    }

    wguif_DispRecExt(x,y,iWidth,iHeight);
}


static MBT_VOID DrawRect(MBT_S32 x,MBT_S32 y,MBT_S32 iW,MBT_S32 iH,MBT_U32 u32Color)
{
    MBT_S32 iPosX;
    MBT_S32 iPosY;
    MBT_S32 iWidth;
    MBT_S32 iHeight;
    MBT_U32 *pu32DesStart;
    MBT_S32 i;
    MBT_S32 k;
    MBT_U32 *pu32Des;

    iPosX = x;
    iPosY = y;
    iWidth = iW;
    if(iWidth + iPosX > OSD_REGINMAXWIDHT)
    {
        iWidth = OSD_REGINMAXWIDHT - iPosX;
    }
    iHeight = iH;
    if(iHeight + iPosY > OSD_REGINMAXHEIGHT)
    {
        iHeight = OSD_REGINMAXHEIGHT - iPosY;
    }
    pu32DesStart = (MBT_VOID*)(wguiv_u32OsdPalletteScanLine[iPosY] + OSD_COLOR_DEPTH*iPosX);;
    pu32Des = pu32DesStart;
    for(i = 0;i < iHeight;i++)
    {
        for(k = 0;k< iWidth;k++)
        {
            pu32Des[k] = u32Color;
        }
        pu32Des += OSD_REGINMAXWIDHT;
    }

    wguif_DispRect(x,y,iWidth,iHeight);
}


static inline MBT_U32 GetBlendingColor(MBT_U32 u32BackColor, MBT_U32 u32FrontColor)
{
    MBT_U8 A0,R0,G0,B0;   //back ground color
    MBT_U8 A1,R1,G1,B1;   //front ground color
    MBT_U8 A2,R2,G2,B2;  //result
    MBT_U16 temp;

    A0 = (u32BackColor >> 24);
    if(0 == A0)
    {
        return u32FrontColor;
    }
    
    R0 = (u32BackColor >> 16);
    G0 = (u32BackColor >> 8 );
    B0 = u32BackColor;

    
    A1 = (u32FrontColor >> 24);
    R1 = (u32FrontColor >> 16);
    G1 = (u32FrontColor >> 8 );
    B1 = u32FrontColor;
    
    temp = A0 + A1;

    A2 = A1;
    R2 = (R1 * A1 + R0 * A0)/temp;
    G2 = (G1 * A1 + G0 * A0)/temp;
    B2 = (B1 * A1 + B0 * A0)/temp;

    return ((A2 << 24) | (R2 << 16) | (G2 << 8) | B2);
}


/***************************************************************
	函数名:WGUIF_DrawBox
	功能描述: 绘制中空的矩形，上下边框的高度均为2个象素,
	                        左右边框的宽度均为2个象素
					                                      
	输入参数: x ,y 左上角坐标
				   xx,yy 右下脚坐标
				   col1 : 为上边框和左边框条的颜色
				   col2: 右边框和下边框条的颜色
      输出参数:无
      返回值:无

      调用函数:
                             

      被调用函数:

      修改历史:
	1.
	时间:             2005.11.24
	描述: 加注释
***************************************************************/	

MBT_VOID WGUIF_DrawBox(MBT_U32 col1, MBT_U32 col2, MBT_S32 x, MBT_S32 y, MBT_S32 xx, MBT_S32 yy)
{
    if(x >= OSD_REGINMAXWIDHT||y >= OSD_REGINMAXWIDHT)
    {
        return;
    }
    
    DrawRect( x,y,xx-x,2,col1);
    DrawRect( x,yy-2,xx-x,2,col2);
    DrawRect( x,y+2,2,yy-y-2,col1);
    DrawRect( xx-2,y+2,2,yy-y-2,col2);
}



MBT_VOID WGUIF_ClsFullScreen(MBT_VOID)
{
    MBT_U32 *pu32Des = (MBT_U32 *)wguiv_u32OsdPalletteScanLine[0];
    MBT_U32 *pu32DesEnd = pu32Des + (OSD_REGINMAXWIDHT*OSD_REGINMAXHEIGHT);
    
    while(pu32Des < pu32DesEnd)
    {
        *pu32Des = 0;
        pu32Des++;
    }
    
    wguif_DispRect(0,0,OSD_REGINMAXWIDHT,OSD_REGINMAXHEIGHT);
}


MBT_VOID WGUIF_DrawFilledRectangle(MBT_S32 x, MBT_S32 y, MBT_S32 iWidth,MBT_S32  iHeight, MBT_U32 u32Color)
{
    if(x+iWidth > OSD_REGINMAXWIDHT||y+iHeight>OSD_REGINMAXHEIGHT||0 >= iWidth||0 >= iHeight)
    {
        return;
    }
    DrawRect( x, y,iWidth,iHeight,u32Color);
}

MBT_VOID WGUIF_DrawFilledRectExt(MBT_S32 x, MBT_S32 y, MBT_S32 iWidth,MBT_S32  iHeight, MBT_U32 u32Color)
{
    if(x+iWidth > OSD_REGINMAXWIDHT||y+iHeight>OSD_REGINMAXHEIGHT||0 >= iWidth||0 >= iHeight)
    {
        return;
    }
    DrawRectExt( x, y,iWidth,iHeight,u32Color);
}

MBT_VOID WGUIF_ClsScreen(MBT_S32 x, MBT_S32 y, MBT_S32 iWidth, MBT_S32 iHeight)
{
    if(x+iWidth > OSD_REGINMAXWIDHT||y+iHeight>OSD_REGINMAXHEIGHT||0 >= iWidth||0 >= iHeight)
    {
        return;
    }
    DrawRect( x, y,iWidth,iHeight,0);
}


MBT_VOID WGUIF_ClsExtScreen(MBT_S32 x, MBT_S32 y, MBT_S32 iWidth, MBT_S32 iHeight)
{
    if(x+iWidth > OSD_REGINMAXWIDHT||y+iHeight>OSD_REGINMAXHEIGHT||0 >= iWidth||0 >= iHeight)
    {
        return;
    }
    wguif_DispRect(x,y,iWidth,iHeight);
    DrawRectExt( x, y,iWidth,iHeight,0);    
}


MMT_STB_ErrorCode_E WGUIF_DrawFilledCircle(MBT_U32 xCenter, 
                                                     	MBT_U32 yCenter, 
                                                     	MBT_U32 radius, 
                                                     	MBT_U32 u32Color)
{
    MBT_U32 x = 0;
    MBT_S32 d ;
    MBT_U32 y ;
    MBT_S32 iTemp ;
    MBT_S32 i ;
    MBT_U32 *PDataBuff;            

    MMF_SYS_Assert(xCenter>=radius);
    MMF_SYS_Assert(yCenter>=radius);
    MMF_SYS_Assert(xCenter+radius<=OSD_REGINMAXWIDHT);
    MMF_SYS_Assert(yCenter+radius<=OSD_REGINMAXHEIGHT);

    y = radius;
    d = 1 - (MBT_S32)radius;

    PDataBuff = (MBT_VOID*)(wguiv_u32OsdPalletteScanLine[yCenter-radius] + OSD_COLOR_DEPTH*(xCenter-radius));

    PDataBuff[(2*radius-1)*OSD_REGINMAXWIDHT+radius] = u32Color;
    PDataBuff[radius*OSD_REGINMAXWIDHT] = u32Color;
    PDataBuff[(radius-1)*OSD_REGINMAXWIDHT] = u32Color;
    PDataBuff[radius] = u32Color;
    iTemp = y + y;
    for(i = 0; i < iTemp; i++)
    {
        PDataBuff[(y-1)*OSD_REGINMAXWIDHT+i] = u32Color;
    }

    while(y > x)
    {
        if(d < 0)
        {
            d += 2 * x + 3;
        }
        else
        {
            d += 2 * (x - y) + 5;
            y --;
        }
        x++;

        if(y != radius)
        {
            iTemp =(x + x);
            for(i = 0; i < iTemp; i++)
            {
                PDataBuff[(radius + y -1)*OSD_REGINMAXWIDHT+ radius -x +i] = u32Color;
            }

            for(i = 0; i < iTemp; i++)
            {
                PDataBuff[(radius - y -1)*OSD_REGINMAXWIDHT+ radius -x +i] = u32Color;
            }
        }
        iTemp = y + y;
        for(i = 0; i < iTemp; i++)
        {
            PDataBuff[(radius + x -1)*OSD_REGINMAXWIDHT+ radius -y +i] = u32Color;
        }

        for(i = 0; i < iTemp; i++)
        {
            PDataBuff[(radius - x -1)*OSD_REGINMAXWIDHT+ radius -y +i] = u32Color;
        }

        if (y == radius&&y<2)
        {
            PDataBuff[(radius + y-1)*OSD_REGINMAXWIDHT+radius + x] = u32Color;
            PDataBuff[(radius + x-1)*OSD_REGINMAXWIDHT+radius + y] = u32Color;
            PDataBuff[(radius - y-1)*OSD_REGINMAXWIDHT+radius - x ] = u32Color;
            PDataBuff[(radius - x -1)*OSD_REGINMAXWIDHT+radius - y] = u32Color;
            PDataBuff[(radius - y-1)*OSD_REGINMAXWIDHT+radius + x] = u32Color;
            PDataBuff[(radius + x-1)*OSD_REGINMAXWIDHT+radius - y] = u32Color;
            PDataBuff[(radius + y-1)*OSD_REGINMAXWIDHT+radius - x] = u32Color;
            PDataBuff[(radius - x-1)*OSD_REGINMAXWIDHT+radius + y] = u32Color;
        }
    }

    
    wguif_DispRect(xCenter - radius, yCenter - radius, radius*2, radius*2);
    return MM_NO_ERROR;
}

/**********************************************************************************
画位图，忽略X颜色，一般黑色的背景是0x00080808,用于把单一的背景颜色
除去。
屏幕pixel[s32ScrX,s32ScrY] = bmp pixel[s32BmpXOff,s32BmpYOff]
************************************************************************************/

MMT_STB_ErrorCode_E  WGUIF_CopyPartBmp2ExtRegin(MBT_S32 s32ScrX,MBT_S32 s32ScrY,MBT_S32 s32BmpXOff,MBT_S32 s32BmpYOff,MBT_S32 iDispWidth,MBT_S32 iDispHeight,BITMAPTRUECOLOR *pBmpInfo,MBT_BOOL bOpenTrans)
{
    MMT_STB_ErrorCode_E eRet;
    MBT_U32 *pDes;
    MBT_U32 *pSrc;
    MBT_U32 *pSrcStart;
    MBT_S32 iBmpHeight;
    MBT_S32 iBmpWidth;
    
    if(MM_NULL == pBmpInfo)     
    {
        return MM_ERROR_BAD_PARAMETER;
    }
    
    iBmpHeight = pBmpInfo->bHeight;
    iBmpWidth = pBmpInfo->bWidth;

    if(s32ScrX < 0||s32ScrY<0||s32ScrX > OSD_REGINMAXWIDHT||s32ScrY > OSD_REGINMAXHEIGHT||iDispWidth <= 0||iDispHeight <= 0)        
    {
        MLMF_Print("R s32ScrX %d s32ScrY %d s32BmpXOff,%d s32BmpYOff,%d iDispWidth,%d iDispHeight %d\n",s32ScrX,s32ScrY,s32BmpXOff,s32BmpYOff,iDispWidth,iDispHeight);
        return MM_ERROR_BAD_PARAMETER;
    }

    pSrcStart = pBmpInfo->pBData;
    if(MM_NULL == pSrcStart)        
    {
        WGUI_DEBUG(("WGUIF_CopyPartBmp2ExtRegin not data of bitmap\n"));
        return MM_ERROR_BAD_PARAMETER;
    }

    if(s32ScrX + iDispWidth > OSD_REGINMAXWIDHT)
    {
        iDispWidth = OSD_REGINMAXWIDHT - s32ScrX;
    }

    if(s32ScrY + iDispHeight > OSD_REGINMAXHEIGHT)
    {
        iDispHeight = OSD_REGINMAXHEIGHT - s32ScrY;
    }

    if(iDispWidth + s32BmpXOff> iBmpWidth)
    {
        iDispWidth = iBmpWidth - s32BmpXOff;
    }

    if(iDispHeight + s32BmpYOff > iBmpHeight)
    {
        iDispHeight = iBmpHeight - s32BmpYOff;
    }
    
    pSrc = pSrcStart + iBmpWidth*s32BmpYOff + s32BmpXOff;
    pDes = (MBT_VOID*)(wguiv_u32ExtLayerLayerOsdLine[s32ScrY] + OSD_COLOR_DEPTH*s32ScrX);
    eRet = wguif_DispEreaCopy(s32ScrX, s32BmpXOff, pDes,OSD_REGINMAXWIDHT,pSrc,iBmpWidth,iDispWidth,iDispHeight);
    if(MM_NO_ERROR != eRet)
    {
        return eRet ;
    }

    //MLMF_Print("WGUIF_CopyPartBmp2ExtRegin s32ScrX %d,s32ScrY %d,iDispWidth %d,iDispHeight %d\n",s32ScrX,s32ScrY,iDispWidth,iDispHeight);
    eRet = wguif_DispRecExt(s32ScrX,s32ScrY,iDispWidth,iDispHeight);

    return eRet ;
}

MMT_STB_ErrorCode_E  WGUIF_CopyPartBmp2Regin(MBT_S32 s32ScrX,MBT_S32 s32ScrY,MBT_S32 s32BmpXOff,MBT_S32 s32BmpYOff,MBT_S32 iDispWidth,MBT_S32 iDispHeight,BITMAPTRUECOLOR *pBmpInfo,MBT_BOOL bOpenTrans)
{
    MMT_STB_ErrorCode_E eRet;
    MBT_U32 *pDes;
    MBT_U32 *pSrc;
    MBT_U32 *pSrcStart;
    MBT_S32 iBmpHeight;
    MBT_S32 iBmpWidth;
    
    if(MM_NULL == pBmpInfo)     
    {
        return MM_ERROR_BAD_PARAMETER;
    }
    
    iBmpHeight = pBmpInfo->bHeight;
    iBmpWidth = pBmpInfo->bWidth;

    if(s32ScrX < 0||s32ScrY<0||s32ScrX > OSD_REGINMAXWIDHT||s32ScrY > OSD_REGINMAXHEIGHT||iDispWidth <= 0||iDispHeight <= 0)        
    {
        MLMF_Print("R s32ScrX %d s32ScrY %d s32BmpXOff,%d s32BmpYOff,%d iDispWidth,%d iDispHeight %d\n",s32ScrX,s32ScrY,s32BmpXOff,s32BmpYOff,iDispWidth,iDispHeight);
        return MM_ERROR_BAD_PARAMETER;
    }

    pSrcStart = pBmpInfo->pBData;
    if(MM_NULL == pSrcStart)        
    {
        WGUI_DEBUG(("WGUIF_CopyPartBmp2Regin not data of bitmap\n"));
        return MM_ERROR_BAD_PARAMETER;
    }

    if(s32ScrX + iDispWidth > OSD_REGINMAXWIDHT)
    {
        iDispWidth = OSD_REGINMAXWIDHT - s32ScrX;
    }

    if(s32ScrY + iDispHeight > OSD_REGINMAXHEIGHT)
    {
        iDispHeight = OSD_REGINMAXHEIGHT - s32ScrY;
    }

    if(iDispWidth + s32BmpXOff > iBmpWidth)
    {
        iDispWidth = iBmpWidth - s32BmpXOff;
    }

    if(iDispHeight + s32BmpYOff > iBmpHeight)
    {
        iDispHeight = iBmpHeight - s32BmpYOff;
    }
    
    pSrc = pSrcStart + iBmpWidth*s32BmpYOff + s32BmpXOff;
    pDes = (MBT_VOID*)(wguiv_u32OsdPalletteScanLine[s32ScrY]+ OSD_COLOR_DEPTH*s32ScrX);
    eRet = wguif_DispEreaCopy(s32ScrX, s32BmpXOff, pDes,OSD_REGINMAXWIDHT,pSrc,iBmpWidth,iDispWidth,iDispHeight);
    if(MM_NO_ERROR != eRet)
    {
        return eRet ;
    }

    //MLMF_Print("WGUIF_CopyPartBmp2Regin s32ScrX %d,s32ScrY %d,iDispWidth %d,iDispHeight %d\n",s32ScrX,s32ScrY,iDispWidth,iDispHeight);
    eRet = wguif_DispRect(s32ScrX,s32ScrY,iDispWidth,iDispHeight);

    return eRet ;
}


/**********************************************************************************
画位图，忽略X颜色，一般黑色的背景是0x00080808,用于把单一的背景颜色
除去。
屏幕pixel[s32ScrX + s32BmpXOff,s32ScrY + s32BmpYOff] = bmp pixel[s32BmpXOff,s32BmpYOff]

************************************************************************************/

MMT_STB_ErrorCode_E  WGUIF_DisplayReginTrueColorBmp(MBT_S32 s32ScrX,MBT_S32 s32ScrY,MBT_S32 s32BmpXOff,MBT_S32 s32BmpYOff,MBT_S32 iDispWidth,MBT_S32 iDispHeight,BITMAPTRUECOLOR * pBmpInfo,MBT_BOOL bOpenTrans)
{
    MBT_S32 x;
    MBT_S32 y;
    MBT_S32 k;
    MBT_U32 *pDes;
    MBT_U32 *pSrc;
    MBT_S32 s32RelLen;
    MBT_S32 u32PintLen;
    MBT_U32 u32Color = 0;
    MBT_U32 u32BackColor;
    MBT_U32 u32MixColor;
    MBT_U32 *pDesStart;
    MBT_S32 iBmpHeight;
    MBT_S32 iBmpWidth;
    MBT_S32 iDispWidthNoOff;    
    MBT_U8 u8Alph;  
    
    if(MM_NULL == pBmpInfo)		
    {
        return MM_ERROR_BAD_PARAMETER;
    }
    
    iBmpHeight = pBmpInfo->bHeight;
    iBmpWidth = pBmpInfo->bWidth;

    if(s32ScrX < 0||s32ScrY<0||s32ScrX > OSD_REGINMAXWIDHT||s32ScrY > OSD_REGINMAXHEIGHT||s32BmpXOff < 0||s32BmpYOff < 0||s32BmpXOff > iBmpWidth||s32BmpYOff > iBmpHeight)		
    {
        return MM_ERROR_BAD_PARAMETER;
    }

    pSrc = pBmpInfo->pBData;
    if(MM_NULL == pSrc)		
    {
        WGUI_DEBUG(("WGUIF_DisplayReginTrueColorBmp not data of bitmap\n"));
        return MM_ERROR_BAD_PARAMETER;
    }

    if(s32ScrX + iDispWidth > OSD_REGINMAXWIDHT)
    {
        iDispWidth = OSD_REGINMAXWIDHT - s32ScrX;
    }

    if(s32ScrY + iDispHeight > OSD_REGINMAXHEIGHT)
    {
        iDispHeight = OSD_REGINMAXHEIGHT - s32ScrY;
    }

    if(iDispWidth + s32BmpXOff> iBmpWidth)
    {
        iDispWidth = iBmpWidth - s32BmpXOff;
    }

    if(iDispHeight + s32BmpYOff > iBmpHeight)
    {
        iDispHeight = iBmpHeight - s32BmpYOff;
    }

    s32RelLen = 0;
    for( y = 0 ; y < s32BmpYOff; y++ )
    {
        x = 0;
        while( x < iBmpWidth)
        {
            if(0 >= s32RelLen)
            {
                if(MM_WGUI_RUNMASK == ((*pSrc)&MM_WGUI_RUN))
                {
                    s32RelLen = (MBT_S32)((*pSrc)&MM_WGUI_RELLENMASK);                    
                    pSrc++;
                    u32Color = *pSrc;                
                    pSrc++;
                    u32PintLen = iBmpWidth - x;
                    u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                    x += u32PintLen;
                    s32RelLen -= u32PintLen;
                }
                else
                {
                    u32Color = *pSrc;
                    u32PintLen = 1;
                    pSrc++;
                    x++;
                }
            }
            else
            {
                u32PintLen = iBmpWidth - x;
                u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                x += u32PintLen;
                s32RelLen -= u32PintLen;
            }
        }
    }
    //MLMF_Print("start s32RelLen = %d\n",s32RelLen);                    
    pDesStart = (MBT_VOID*)(wguiv_u32OsdPalletteScanLine[s32ScrY+s32BmpYOff] + OSD_COLOR_DEPTH*(s32ScrX));
    pDes = pDesStart;
    for( y = 0 ; y < iDispHeight; y++ )
    {
        x = 0;
        while( x < s32BmpXOff)
        {
            if(0 == s32RelLen)
            {
                if(MM_WGUI_RUNMASK == ((*pSrc)&MM_WGUI_RUN))
                {
                    s32RelLen = (MBT_S32)((*pSrc)&MM_WGUI_RELLENMASK);                    
                    pSrc++;
                    u32Color = *pSrc;                
                    pSrc++;
                    u32PintLen = s32BmpXOff - x;
                    u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                    s32RelLen -= u32PintLen;
                }
                else
                {
                    u32Color = *pSrc;
                    pSrc++;
                    u32PintLen = 1;
                }
            }
            else
            {
                u32PintLen = s32BmpXOff - x;
                u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                s32RelLen -= u32PintLen;
            }
            x += u32PintLen;
        }


        iDispWidthNoOff = iDispWidth + s32BmpXOff;
        while( x < iDispWidthNoOff)
        {
            if(0 == s32RelLen)
            {
                if(MM_WGUI_RUNMASK == ((*pSrc)&MM_WGUI_RUN))
                {
                    s32RelLen = (MBT_S32)((*pSrc)&MM_WGUI_RELLENMASK);                    
                    pSrc++;
                    u32Color = *pSrc;                
                    pSrc++;
                    u32PintLen = iDispWidthNoOff - x;
                    u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                    s32RelLen -= u32PintLen;
                }
                else
                {   
                    u32Color = *pSrc;
                    u32PintLen = 1;
                    pSrc++;
                }
            }
            else
            {
                u32PintLen = iDispWidthNoOff - x;
                u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                s32RelLen -= u32PintLen;
            }


            if(MM_TRUE == bOpenTrans)
            {
                if(HIDE_COLOR != u32Color)
                {
                    u8Alph = (u32Color>>24);
                    if(0 == u8Alph)
                    {
                        x += u32PintLen;
                    }
                    else if(0xff == u8Alph)
                    {
                        for(k = 0;k < u32PintLen;k++)
                        {
                            pDes[x] = u32Color;
                            x++;
                        }
                    }
                    else
                    {
                        u32BackColor = pDes[x];
                        u32MixColor = GetBlendingColor(u32BackColor,u32Color);
                        pDes[x] = u32MixColor;
                        x++;
                        for(k = 1;k < u32PintLen;k++)
                        {
                            if(u32BackColor == pDes[x])
                            {
                                pDes[x] = u32MixColor;
                            }
                            else
                            {
                                u32BackColor = pDes[x];
                                u32MixColor = GetBlendingColor(u32BackColor,u32Color);
                                pDes[x] = u32MixColor;
                            }
                            x++;
                        }
                        
                    }
                }
                else
                {
                    x += u32PintLen;
                }
            }
            else
            {
                for(k = 0;k < u32PintLen;k++)
                {
                    pDes[x] = u32Color;
                    x++;
                }
            }
        }

        while( x < iBmpWidth)
        {
            if(0 == s32RelLen)
            {
                if(MM_WGUI_RUNMASK == ((*pSrc)&MM_WGUI_RUN))
                {
                    s32RelLen = (MBT_S32)((*pSrc)&MM_WGUI_RELLENMASK);                    
                    pSrc++;
                    u32Color = *pSrc;                
                    pSrc++;
                    u32PintLen = iBmpWidth - x;
                    u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                    x += u32PintLen;
                    s32RelLen -= u32PintLen;
                }
                else
                {
                    u32Color = *pSrc;
                    u32PintLen = 1;
                    pSrc++;
                    x++;
                }
            }
            else
            {
                u32PintLen = iBmpWidth - x;
                u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                x += u32PintLen;
                s32RelLen -= u32PintLen;
            }
        }
        pDes += OSD_REGINMAXWIDHT;
    }

    wguif_DispRect(s32ScrX+s32BmpXOff,s32ScrY+s32BmpYOff,iDispWidth,iDispHeight);
    return MM_NO_ERROR ;
}
 


/**********************************************************************************
画位图，忽略X颜色，一般黑色的背景是0x00080808,用于把单一的背景颜色
除去。
屏幕pixel[s32ScrX + s32BmpXOff,s32ScrY + s32BmpYOff] = bmp pixel[s32BmpXOff,s32BmpYOff]

************************************************************************************/

MMT_STB_ErrorCode_E WGUIF_DisplayReginTrueColorBmpExt(MBT_S32 s32ScrX,MBT_S32 s32ScrY,MBT_S32 s32BmpXOff,MBT_S32 s32BmpYOff,MBT_S32 iDispWidth,MBT_S32 iDispHeight,BITMAPTRUECOLOR * pBmpInfo,MBT_BOOL bOpenTrans)
{
    MBT_S32 x;
    MBT_S32 y;
    MBT_S32 k;
    MBT_U32 *pDes;
    MBT_U32 *pSrc;
    MBT_S32 s32RelLen;
    MBT_S32 u32PintLen;
    MBT_U32 u32Color = 0;
    MBT_U32 u32BackColor;
    MBT_U32 u32MixColor;
    MBT_U32 *pDesStart;
    MBT_S32 iBmpHeight;
    MBT_S32 iBmpWidth;
    MBT_S32 iDispWidthNoOff;    
    MBT_U8 u8Alph;  
    
    if(MM_NULL == pBmpInfo)		
    {
        return MM_ERROR_BAD_PARAMETER;
    }
    
    iBmpHeight = pBmpInfo->bHeight;
    iBmpWidth = pBmpInfo->bWidth;

    if(s32ScrX < 0||s32ScrY<0||s32ScrX > OSD_REGINMAXWIDHT||s32ScrY > OSD_REGINMAXHEIGHT||s32BmpXOff < 0||s32BmpYOff < 0||s32BmpXOff > iBmpWidth||s32BmpYOff > iBmpHeight)		
    {
        return MM_ERROR_BAD_PARAMETER;
    }

    pSrc = pBmpInfo->pBData;
    if(MM_NULL == pSrc)		
    {
        WGUI_DEBUG(("WGUIF_DisplayReginTrueColorBmp not data of bitmap\n"));
        return MM_ERROR_BAD_PARAMETER;
    }

    if(s32ScrX + iDispWidth > OSD_REGINMAXWIDHT)
    {
        iDispWidth = OSD_REGINMAXWIDHT - s32ScrX;
    }

    if(s32ScrY + iDispHeight > OSD_REGINMAXHEIGHT)
    {
        iDispHeight = OSD_REGINMAXHEIGHT - s32ScrY;
    }

    if(iDispWidth + s32BmpXOff> iBmpWidth)
    {
        iDispWidth = iBmpWidth - s32BmpXOff;
    }

    if(iDispHeight + s32BmpYOff > iBmpHeight)
    {
        iDispHeight = iBmpHeight - s32BmpYOff;
    }

    s32RelLen = 0;
    for( y = 0 ; y < s32BmpYOff; y++ )
    {
        x = 0;
        while( x < iBmpWidth)
        {
            if(0 >= s32RelLen)
            {
                if(MM_WGUI_RUNMASK == ((*pSrc)&MM_WGUI_RUN))
                {
                    s32RelLen = (MBT_S32)((*pSrc)&MM_WGUI_RELLENMASK);                    
                    pSrc++;
                    u32Color = *pSrc;                
                    pSrc++;
                    u32PintLen = iBmpWidth - x;
                    u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                    x += u32PintLen;
                    s32RelLen -= u32PintLen;
                }
                else
                {
                    u32Color = *pSrc;
                    u32PintLen = 1;
                    pSrc++;
                    x++;
                }
            }
            else
            {
                u32PintLen = iBmpWidth - x;
                u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                x += u32PintLen;
                s32RelLen -= u32PintLen;
            }
        }
    }
    //MLMF_Print("start s32RelLen = %d\n",s32RelLen);                    
    pDesStart = (MBT_VOID*)(wguiv_u32ExtLayerLayerOsdLine[s32ScrY+s32BmpYOff] + OSD_COLOR_DEPTH*(s32ScrX));
    pDes = pDesStart;
    for( y = 0 ; y < iDispHeight; y++ )
    {
        x = 0;
        while( x < s32BmpXOff)
        {
            if(0 == s32RelLen)
            {
                if(MM_WGUI_RUNMASK == ((*pSrc)&MM_WGUI_RUN))
                {
                    s32RelLen = (MBT_S32)((*pSrc)&MM_WGUI_RELLENMASK);                    
                    pSrc++;
                    u32Color = *pSrc;                
                    pSrc++;
                    u32PintLen = s32BmpXOff - x;
                    u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                    s32RelLen -= u32PintLen;
                }
                else
                {
                    u32Color = *pSrc;
                    pSrc++;
                    u32PintLen = 1;
                }
            }
            else
            {
                u32PintLen = s32BmpXOff - x;
                u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                s32RelLen -= u32PintLen;
            }
            x += u32PintLen;
        }


        iDispWidthNoOff = iDispWidth + s32BmpXOff;
        while( x < iDispWidthNoOff)
        {
            if(0 == s32RelLen)
            {
                if(MM_WGUI_RUNMASK == ((*pSrc)&MM_WGUI_RUN))
                {
                    s32RelLen = (MBT_S32)((*pSrc)&MM_WGUI_RELLENMASK);                    
                    pSrc++;
                    u32Color = *pSrc;                
                    pSrc++;
                    u32PintLen = iDispWidthNoOff - x;
                    u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                    s32RelLen -= u32PintLen;
                }
                else
                {   
                    u32Color = *pSrc;
                    u32PintLen = 1;
                    pSrc++;
                }
            }
            else
            {
                u32PintLen = iDispWidthNoOff - x;
                u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                s32RelLen -= u32PintLen;
            }


            if(MM_TRUE == bOpenTrans)
            {
                if(HIDE_COLOR != u32Color)
                {
                    u8Alph = (u32Color>>24);
                    if(0 == u8Alph)
                    {
                        x += u32PintLen;
                    }
                    else if(0xff == u8Alph)
                    {
                        for(k = 0;k < u32PintLen;k++)
                        {
                            pDes[x] = u32Color;
                            x++;
                        }
                    }
                    else
                    {
                        u32BackColor = pDes[x];
                        u32MixColor = GetBlendingColor(u32BackColor,u32Color);
                        pDes[x] = u32MixColor;
                        x++;
                        for(k = 1;k < u32PintLen;k++)
                        {
                            if(u32BackColor == pDes[x])
                            {
                                pDes[x] = u32MixColor;
                            }
                            else
                            {
                                u32BackColor = pDes[x];
                                u32MixColor = GetBlendingColor(u32BackColor,u32Color);
                                pDes[x] = u32MixColor;
                            }
                            x++;
                        }
                        
                    }
                }
                else
                {
                    x += u32PintLen;
                }
            }
            else
            {
                for(k = 0;k < u32PintLen;k++)
                {
                    pDes[x] = u32Color;
                    x++;
                }
            }
        }

        while( x < iBmpWidth)
        {
            if(0 == s32RelLen)
            {
                if(MM_WGUI_RUNMASK == ((*pSrc)&MM_WGUI_RUN))
                {
                    s32RelLen = (MBT_S32)((*pSrc)&MM_WGUI_RELLENMASK);                    
                    pSrc++;
                    u32Color = *pSrc;                
                    pSrc++;
                    u32PintLen = iBmpWidth - x;
                    u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                    x += u32PintLen;
                    s32RelLen -= u32PintLen;
                }
                else
                {
                    u32Color = *pSrc;
                    u32PintLen = 1;
                    pSrc++;
                    x++;
                }
            }
            else
            {
                u32PintLen = iBmpWidth - x;
                u32PintLen = s32RelLen > u32PintLen?u32PintLen : s32RelLen;
                x += u32PintLen;
                s32RelLen -= u32PintLen;
            }
        }
        pDes += OSD_REGINMAXWIDHT;
    }

    wguif_DispRecExt(s32ScrX+s32BmpXOff,s32ScrY+s32BmpYOff,iDispWidth,iDispHeight);
    return MM_NO_ERROR ;
}


//MBT_VOID MLF_ShowMemInfo(MBT_VOID);


MBT_BOOL WGUIF_GetRectangleImage( MBT_S32 xstart, MBT_S32 ystart,BITMAPTRUECOLOR  *pCopybitmap)
{
    MBT_U32 *pu32Des;
    MBT_S32 i;
    
    if(MM_NULL == pCopybitmap)
    {
        return MM_FALSE;
    }
    
    //WGUI_DEBUG(("[WGUIF_GetRectangleImage]pCopybitmap->bWidth+ xstart = %d pCopybitmap->bHeight + ystart = %d\n",pCopybitmap->bWidth+ xstart,pCopybitmap->bHeight + ystart));
    //MLF_ShowMemInfo();
    if((pCopybitmap->bWidth+ xstart > OSD_REGINMAXWIDHT)||(pCopybitmap->bHeight + ystart > OSD_REGINMAXHEIGHT))
    {
        return MM_FALSE;
    }
    pCopybitmap->pBData = MLMF_Malloc(pCopybitmap->bWidth*pCopybitmap->bHeight*OSD_COLOR_DEPTH);
    if (pCopybitmap->pBData == MM_NULL)
    {
        WGUI_DEBUG(("[WGUIF_GetRectangleImage]MLMF_Malloc failed. size = %d\n",pCopybitmap->bWidth*pCopybitmap->bHeight*OSD_COLOR_DEPTH));
        return MM_FALSE;
    }
    //WGUI_DEBUG(("[WGUIF_GetRectangleImage]pCopybitmap->pBData = %x\n",pCopybitmap->pBData));
    pu32Des = pCopybitmap->pBData;
    for(i = 0;i < pCopybitmap->bHeight;i++)
    {
        memcpy(pu32Des,(MBT_VOID *)(wguiv_u32OsdPalletteScanLine[ystart+i] + OSD_COLOR_DEPTH*xstart),pCopybitmap->bWidth*OSD_COLOR_DEPTH);
        pu32Des += pCopybitmap->bWidth;
    }
    return MM_TRUE;
}


MBT_BOOL WGUIF_PutRectangleImage( MBT_S32 xstart, MBT_S32 ystart ,BITMAPTRUECOLOR  *pCopybitmap)
{
    MBT_U32 *pu32Src;
    MBT_S32 i;
    
    if(MM_NULL == pCopybitmap)
    {
        return MM_FALSE;
    }
    
   // WGUI_DEBUG(("[WGUIF_PutRectangleImage]pCopybitmap->pBData = %x\n",pCopybitmap->pBData));
    if(MM_NULL == pCopybitmap->pBData)
    {
        return MM_FALSE;
    }
    
    
    pu32Src = pCopybitmap->pBData;
    for(i = 0;i < pCopybitmap->bHeight;i++)
    {
        memcpy((MBT_VOID *)(wguiv_u32OsdPalletteScanLine[ystart+i] + OSD_COLOR_DEPTH*xstart),pu32Src,pCopybitmap->bWidth*OSD_COLOR_DEPTH);
        pu32Src += pCopybitmap->bWidth;
    }
    wguif_DispRect(xstart,ystart,pCopybitmap->bWidth,pCopybitmap->bHeight);
    MLMF_Free(pCopybitmap->pBData);
    pCopybitmap->pBData = MM_NULL;
    WGUI_DEBUG(("[WGUIF_PutRectangleImage]OK\n"));
    return MM_TRUE;
}

MBT_BOOL WGUIF_GetRectangleImageExt( MBT_S32 xstart, MBT_S32 ystart,BITMAPTRUECOLOR  *pCopybitmap)
{
    MBT_U32 *pu32Des;
    MBT_S32 i;
    
    if(MM_NULL == pCopybitmap)
    {
        return MM_FALSE;
    }
    
    WGUI_DEBUG(("[%s]pCopybitmap->bWidth+ xstart = %d pCopybitmap->bHeight + ystart = %d\n",__FUNCTION__,pCopybitmap->bWidth+ xstart,pCopybitmap->bHeight + ystart));
    //MLF_ShowMemInfo();
    if((pCopybitmap->bWidth+ xstart > OSD_REGINMAXWIDHT)||(pCopybitmap->bHeight + ystart > OSD_REGINMAXHEIGHT))
    {
        return MM_FALSE;
    }
    pCopybitmap->pBData = MLMF_Malloc(pCopybitmap->bWidth*pCopybitmap->bHeight*OSD_COLOR_DEPTH);
    if (pCopybitmap->pBData == MM_NULL)
    {
        WGUI_DEBUG(("[%s]MLMF_Malloc failed. size = %d\n",__FUNCTION__,pCopybitmap->bWidth*pCopybitmap->bHeight*OSD_COLOR_DEPTH));
        return MM_FALSE;
    }
    WGUI_DEBUG(("[%s]pCopybitmap->pBData = 0x%x\n",__FUNCTION__,pCopybitmap->pBData));
    pu32Des = pCopybitmap->pBData;
    for(i = 0;i < pCopybitmap->bHeight;i++)
    {
        memcpy(pu32Des,(MBT_VOID *)(wguiv_u32ExtLayerLayerOsdLine[ystart+i] + OSD_COLOR_DEPTH*xstart),pCopybitmap->bWidth*OSD_COLOR_DEPTH);
        pu32Des += pCopybitmap->bWidth;
    }
    return MM_TRUE;
}

MBT_BOOL WGUIF_PutRectangleImageExt( MBT_S32 xstart, MBT_S32 ystart ,BITMAPTRUECOLOR  *pCopybitmap)
{
    MBT_U32 *pu32Src;
    MBT_S32 i;
    
    if(MM_NULL == pCopybitmap)
    {
        return MM_FALSE;
    }
    
    WGUI_DEBUG(("[%s]pCopybitmap->pBData = %x\n",__FUNCTION__,pCopybitmap->pBData));
    if(MM_NULL == pCopybitmap->pBData)
    {
        return MM_FALSE;
    }
    
    
    pu32Src = pCopybitmap->pBData;
    for(i = 0;i < pCopybitmap->bHeight;i++)
    {
        memcpy((MBT_VOID *)(wguiv_u32ExtLayerLayerOsdLine[ystart+i] + OSD_COLOR_DEPTH*xstart),pu32Src,pCopybitmap->bWidth*OSD_COLOR_DEPTH);
        pu32Src += pCopybitmap->bWidth;
    }
    wguif_DispRecExt(xstart,ystart,pCopybitmap->bWidth,pCopybitmap->bHeight);
    WGUI_DEBUG(("[%s]OK\n",__FUNCTION__));
    return MM_TRUE;
}

MBT_BOOL WGUIF_ReleaseRectangleImageExt(BITMAPTRUECOLOR  *pCopybitmap)
{
    WGUI_DEBUG(("[%s]Enter\n",__FUNCTION__));
    if(MM_NULL == pCopybitmap)
    {
        return MM_FALSE;
    }

    if(MM_NULL == pCopybitmap->pBData)
    {
        return MM_FALSE;
    }
    MLMF_Free(pCopybitmap->pBData);
    pCopybitmap->bHeight = 0;
    pCopybitmap->bWidth = 0;
    pCopybitmap->pBData = MM_NULL;
    return MM_TRUE;
}


