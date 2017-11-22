#include "uictr_edit.h"
#include "appblast.h"
#include "uictr_slider.h"

#define m_Marquee_OsdMovStep 2
#define m_PinFontWidth 20


static MBT_BOOL ListJustDateRight(MBT_U8 day, MBT_U8 month, MBT_U16 year){
	MBT_U8 leap = 0;
	MBT_U8 mon_day[]={31,28,31,30,31,30,31,31,30,31,30,31};
	if(year < 1970 || year > 2100){
		return MM_FALSE;
	}
	if(month < 1 || month > 12){
		return MM_FALSE;
	}
	if(year%400 == 0 || (year%4 == 0 && year%100 != 0)){
		leap = 1;
	}
	mon_day[1] += leap;
	if(day < 1 || day > mon_day[month-1]){
		return MM_FALSE;
	}

	return MM_TRUE;
}


static MBT_S32 EditDrawPwdInput( MBT_S32 iNumber,MBT_S32 me_StartX,MBT_S32 me_StartY,MBT_S32 numberOfInput,MBT_S32 iFontColor)
{
    MBT_S32 i;
    MBT_S32 iIndex;
    MBT_S32 x = me_StartX;
    MBT_S32 font_width;
    MBT_CHAR* pstring[2] =
    {
        "X",
        "-"
    };

    for(i = 0;i < iNumber;i++)
    {
        if(i < numberOfInput)
        {
            iIndex = 0;
        }
        else
        {
            iIndex = 1;
        }
        font_width = WGUIF_FNTGetTxtWidth(strlen(pstring[iIndex]), pstring[iIndex]);
        WGUIF_FNTDrawTxt(x+(m_PinFontWidth-font_width)/2,me_StartY ,strlen(pstring[iIndex]), pstring[iIndex], iFontColor);
        x += m_PinFontWidth;
    }
    return (x - me_StartX);
}





static MBT_VOID EditOnUpArrowKey(EDIT *pstEdit)
{
    DATAENTRY *pstDataEntry = &pstEdit->stDataEntry[ pstEdit->iSelect ];
    if(0 == pstEdit->iTotal)
    {
        return;
    }
    pstEdit->iPrevSelect = pstEdit->iSelect;

    if( --pstEdit->iSelect < 0)
    {       
        pstEdit->iSelect = pstEdit->iTotal-1;
    }

    while(pstDataEntry->bHidden == MM_TRUE )
    {
        if( --pstEdit->iSelect < 0)
        {
            pstEdit->iSelect = pstEdit->iTotal-1;
        }
    }
    pstEdit->bPaintPrev = MM_TRUE;
    pstEdit->bPaintCurr = MM_TRUE;
}

static MBT_VOID EditOnDownArrowKey(EDIT *pstEdit)
{
    DATAENTRY *pstDataEntry = &pstEdit->stDataEntry[ pstEdit->iSelect ];
    if(0 == pstEdit->iTotal)
    {
        return;
    }
    pstEdit->iPrevSelect = pstEdit->iSelect;

    if( ++pstEdit->iSelect >= pstEdit->iTotal)
    {
    pstEdit->iSelect = 0;
    }

    while( pstDataEntry->bHidden == MM_TRUE )
    {
        if( ++pstEdit->iSelect >= pstEdit->iTotal)
        {
            pstEdit->iSelect = 0;
        }
    }
    pstEdit->bPaintPrev = MM_TRUE;
    pstEdit->bPaintCurr = MM_TRUE;
}



static MBT_VOID EditOnLeftArrowKey(EDIT *pstEdit)
{
    DATAENTRY *pstDataEntry = &pstEdit->stDataEntry[ pstEdit->iSelect];
    if(0 == pstDataEntry->iTotalItems)
    {
        return;
    }
    
    switch( pstDataEntry->field_type )
    {
        case PIN_FIELD:
            if(pstDataEntry->iSelect >=0&&pstDataEntry->iSelect < pstDataEntry->iTotalItems)
            {
                pstDataEntry->acDataRead[pstDataEntry->iSelect]=0;
            }

            if (--pstDataEntry->iSelect< 0 )  
            {
                pstDataEntry->iSelect = 0;
            }
            break;

        case TIME_FIELD:
            if (--pstDataEntry->iSelect < 0 )  
            {
                pstDataEntry->iSelect = 0;
            }
            if(pstDataEntry->acDataRead[pstDataEntry->iSelect]==':')
            {
                --pstDataEntry->iSelect;
            }

            if(pstDataEntry->acDataRead[pstDataEntry->iSelect]=='/')
            {
                --pstDataEntry->iSelect;
            }
            break;

        case IP_FIELD:
            if (--pstDataEntry->iSelect < 0 )  
            {
                pstDataEntry->iSelect = 0;
            }
            if(pstDataEntry->acDataRead[pstDataEntry->iSelect]=='.')
            {
                --pstDataEntry->iSelect;
            }
            break;

        case SELECT_BOTTON:
            if (--pstDataEntry->iSelect < 0)  
            {
                pstDataEntry->iSelect = pstDataEntry->iTotalItems-1;
            }
            break;
			
        case YEAR_FIELD:
            if (--pstDataEntry->iSelect < 0 )  
            {
                pstDataEntry->iSelect = 0;
            }
            
            if(pstDataEntry->acDataRead[pstDataEntry->iSelect]=='.')
            {
                --pstDataEntry->iSelect;
            }
            if(pstDataEntry->acDataRead[pstDataEntry->iSelect]=='/')
            {
                --pstDataEntry->iSelect;
            }
            //MLMF_Print("EditOnLeftArrowKey  %s\n",pstDataEntry->acDataRead);
            break;
			
        case DATE_FIELD:
            if (--pstDataEntry->iSelect < 0 )  
            {
                pstDataEntry->iSelect = 0;
            }
            if(pstDataEntry->acDataRead[pstDataEntry->iSelect]=='.')
            {
                --pstDataEntry->iSelect;
            }
            break;

        case STTRING_BOTTON:
        case NUMBER_BOTTON:
            if (--pstDataEntry->iSelect < 0)  
            {
                pstDataEntry->iSelect = pstDataEntry->iTotalItems-1;
            }
            //MLMF_Print("iSelect %d,iTotalItems %d\n",pstDataEntry->iSelect,pstDataEntry->iTotalItems);
            break;

        default:
            break;
    }
    pstEdit->bPaintCurr = MM_TRUE;
}

static MBT_VOID EditOnRightArrowKey(EDIT *pstEdit)
{
    DATAENTRY *pstDataEntry= &pstEdit->stDataEntry[ pstEdit->iSelect ];
    if(0 == pstDataEntry->iTotalItems)
    {
        return;
    }
    switch( pstDataEntry->field_type )
    {
        case TIME_FIELD:
            if ( ++pstDataEntry->iSelect >= pstDataEntry->iTotalItems )
            {
                --pstDataEntry->iSelect;
            }

            if(pstDataEntry->acDataRead[pstDataEntry->iSelect]==':') /*Skip*/
            {
                ++pstDataEntry->iSelect;
            }

            if(pstDataEntry->acDataRead[pstDataEntry->iSelect]=='/')
            {
                ++pstDataEntry->iSelect;
            }
            break;
            
        case IP_FIELD:
            if ( ++pstDataEntry->iSelect >= pstDataEntry->iTotalItems )
            {
                --pstDataEntry->iSelect;
            }

            if(pstDataEntry->acDataRead[pstDataEntry->iSelect]=='.') /*Skip*/
            {
                ++pstDataEntry->iSelect;
            }

            break;
            
        case SELECT_BOTTON:
            if (++pstDataEntry->iSelect >= pstDataEntry->iTotalItems)  
            {
                pstDataEntry->iSelect = 0;
            }
            break;

        case DATE_FIELD:
            if ( ++pstDataEntry->iSelect >= pstDataEntry->iTotalItems )
            {
                --pstDataEntry->iSelect;
            }

            if(pstDataEntry->acDataRead[pstDataEntry->iSelect]=='.') /*Skip*/
            {
                ++pstDataEntry->iSelect;
            }
            break;
			
        case YEAR_FIELD:
            if ( ++pstDataEntry->iSelect >= pstDataEntry->iTotalItems )
            {
                --pstDataEntry->iSelect;
            }

            if(pstDataEntry->acDataRead[pstDataEntry->iSelect]=='.') /*Skip*/
            {
                ++pstDataEntry->iSelect;
            }

            if(pstDataEntry->acDataRead[pstDataEntry->iSelect]=='/') /*Skip*/
            {
                ++pstDataEntry->iSelect;
            }
            break;    
        case STTRING_BOTTON:
        case NUMBER_BOTTON:
            //MLMF_Print("iSelect %d,iTotalItems %d\n",pstDataEntry->iSelect,pstDataEntry->iTotalItems);
            if (++pstDataEntry->iSelect >= pstDataEntry->iTotalItems)  
            {
                pstDataEntry->iSelect = 0;
            }
            break;
            
        default:
            break;
    }
    pstEdit->bPaintCurr = MM_TRUE;
}



static MBT_BOOL EditOnNumberKey(EDIT *pstEdit,MBT_S32 key)
{
    DATAENTRY*     pstDataEntry = &pstEdit->stDataEntry[ pstEdit->iSelect ];
    MBT_BOOL BRet = MM_TRUE;
    MBT_S32 iVal;
    MBT_U32 iTxtW;
    MBT_CHAR string[2];
    MBT_CHAR preString;
    MBT_U8 day; 
    MBT_U8 month; 
    MBT_U16 year;

    if(key < DUMMY_KEY_0||key > DUMMY_KEY_9)
    {
        return BRet;
    }
    
    switch( pstDataEntry->field_type )
    {
        case DATE_FIELD:
            string[0] = key - DUMMY_KEY_0+'0';
            string[1] = 0;
            iTxtW = WGUIF_FNTGetTxtWidth(strlen(pstDataEntry->acDataRead),pstDataEntry->acDataRead)+WGUIF_FNTGetTxtWidth(strlen(string),string);
            //MLMF_Print("iTxtW %d,pstDataEntry->iTxtWidth %d %s\n",iTxtW,pstDataEntry->iTxtWidth,pstDataEntry->acDataRead);
            if(iTxtW  >= pstDataEntry->iTxtWidth)
            {
                //MLMF_Print("iSelect %d,pstDataEntry->iTotalItems %d\n",pstDataEntry->iSelect,pstDataEntry->iTotalItems);
                if(pstDataEntry->iSelect >= pstDataEntry->iTotalItems)
                {
                    break;
                }
            }

            pstDataEntry->acDataRead[pstDataEntry->iSelect] = string[0];
            ++pstDataEntry->iSelect;

            if(pstDataEntry->iSelect >= pstDataEntry->iTotalItems)
            {
                pstDataEntry->iSelect = 0;
            }
            
            if(pstDataEntry->acDataRead[pstDataEntry->iSelect ]=='.') 
            {
                ++pstDataEntry->iSelect ;
            }
            break;
			
		case YEAR_FIELD:
			preString = pstDataEntry->acDataRead[pstDataEntry->iSelect];
            pstDataEntry->acDataRead[pstDataEntry->iSelect] = key - DUMMY_KEY_0+'0';

			day = (pstDataEntry->acDataRead[0]-'0')*10 + (pstDataEntry->acDataRead[1]-'0');
			month = (pstDataEntry->acDataRead[3]-'0')*10 + (pstDataEntry->acDataRead[4]-'0');
			year = (pstDataEntry->acDataRead[6]-'0')*1000 + (pstDataEntry->acDataRead[7]-'0')*100;
			year += (pstDataEntry->acDataRead[8]-'0')*10 + (pstDataEntry->acDataRead[9]-'0');
			if(ListJustDateRight(day, month, year) == MM_FALSE){
				pstDataEntry->acDataRead[pstDataEntry->iSelect] = preString;
				BRet = MM_FALSE;
				break;
			}

            if(MM_FALSE == BRet)
            {
                break;
            }
            if ( ++pstDataEntry->iSelect >= pstDataEntry->iTotalItems )
            {
                pstDataEntry->iSelect = 0;
            }

            if(pstDataEntry->acDataRead[pstDataEntry->iSelect ]==':') 
            {
                ++pstDataEntry->iSelect ;
            }
            if(pstDataEntry->acDataRead[pstDataEntry->iSelect ]=='/')
            {
                ++pstDataEntry->iSelect ;
            }
            if ( pstDataEntry->iSelect >= pstDataEntry->iTotalItems )
            {
                pstDataEntry->iSelect = 0;
            }

            break;
        case TIME_FIELD:
			preString = pstDataEntry->acDataRead[pstDataEntry->iSelect];
            pstDataEntry->acDataRead[pstDataEntry->iSelect] = key - DUMMY_KEY_0+'0';
            switch(pstDataEntry->iSelect)
            {
                case 0:
                case 1:
                    iVal = (pstDataEntry->acDataRead[0]-'0')*10 + (pstDataEntry->acDataRead[1]-'0');
                    if(iVal >= 24 ||iVal < 0)
                    {
                    	pstDataEntry->acDataRead[pstDataEntry->iSelect] = preString;
                        BRet = MM_FALSE;
                    }
                    break;
                case 3:
                case 4:
                    iVal = (pstDataEntry->acDataRead[3]-'0')*10 + (pstDataEntry->acDataRead[4]-'0');
                    if(iVal >= 60 ||iVal < 0)
                    {
                    	pstDataEntry->acDataRead[pstDataEntry->iSelect] = preString;
                        BRet = MM_FALSE;
                    }
                    break;

                case 6:
                case 7:
                    iVal = (pstDataEntry->acDataRead[6]-'0')*10 + (pstDataEntry->acDataRead[7]-'0');
                    if(iVal >= 60 ||iVal < 0)
                    {
                    	pstDataEntry->acDataRead[pstDataEntry->iSelect] = preString;
                        BRet = MM_FALSE;
                    }
                    break;
            }

            if(MM_FALSE == BRet)
            {
                break;
            }

            if ( ++pstDataEntry->iSelect >= pstDataEntry->iTotalItems )
            {
                pstDataEntry->iSelect = 0;
            }

            if(pstDataEntry->acDataRead[pstDataEntry->iSelect ]==':') 
            {
                ++pstDataEntry->iSelect ;
            }
            if(pstDataEntry->acDataRead[pstDataEntry->iSelect ]=='/')
            {
                ++pstDataEntry->iSelect ;
            }
            if ( pstDataEntry->iSelect >= pstDataEntry->iTotalItems )
            {
                pstDataEntry->iSelect = 0;
            }
            break;
            
        case IP_FIELD:
            pstDataEntry->acDataRead[pstDataEntry->iSelect] = key - DUMMY_KEY_0+'0';
            switch(pstDataEntry->iSelect)
            {
                case 0:
                case 1:
                case 2:
                    iVal = (pstDataEntry->acDataRead[0]-'0')*100 + (pstDataEntry->acDataRead[1]-'0')*10+pstDataEntry->acDataRead[2]-'0';
                    if(iVal >= 256 ||iVal < 0)
                    {
                        BRet = MM_FALSE;
                    }
                    break;
                    
                case 4:
                case 5:
                case 6:
                    iVal = (pstDataEntry->acDataRead[4]-'0')*100 + (pstDataEntry->acDataRead[5]-'0')*10+pstDataEntry->acDataRead[6]-'0';
                    if(iVal >= 256 ||iVal < 0)
                    {
                        BRet = MM_FALSE;
                    }
                    break;

                case 8:
                case 9:
                case 10:
                    iVal = (pstDataEntry->acDataRead[8]-'0')*100 + (pstDataEntry->acDataRead[9]-'0')*10+pstDataEntry->acDataRead[10]-'0';
                    if(iVal >= 256 ||iVal < 0)
                    {
                        BRet = MM_FALSE;
                    }
                    break;

                case 12:
                case 13:
                case 14:
                    iVal = (pstDataEntry->acDataRead[12]-'0')*100 + (pstDataEntry->acDataRead[13]-'0')*10+pstDataEntry->acDataRead[14]-'0';
                    if(iVal >= 256 ||iVal < 0)
                    {
                        BRet = MM_FALSE;
                    }
                    break;
            }

            if(MM_FALSE == BRet)
            {
                break;
            }

            if ( ++pstDataEntry->iSelect >= pstDataEntry->iTotalItems )
            {
                pstDataEntry->iSelect = 0;
            }

            if(pstDataEntry->acDataRead[pstDataEntry->iSelect ]=='.') 
            {
                ++pstDataEntry->iSelect ;
            }

            if ( pstDataEntry->iSelect >= pstDataEntry->iTotalItems )
            {
                pstDataEntry->iSelect = 0;
            }
            break;

        case PIN_FIELD:
            if(pstDataEntry->iSelect >=0&&pstDataEntry->iSelect < pstDataEntry->iTotalItems)
            {
                pstDataEntry->acDataRead[pstDataEntry->iSelect] = key - DUMMY_KEY_0+'0';
                pstDataEntry->iSelect++;
                pstDataEntry->acDataRead[pstDataEntry->iSelect] = 0;
            }
            
            if ( pstDataEntry->iSelect >= pstDataEntry->iTotalItems&&pstEdit->iSelect < pstEdit->iTotal-1)
            {
                EditOnDownArrowKey(pstEdit);
            }
            break;
            
        default:
            break;
    }
    
    pstEdit->bPaintCurr = MM_TRUE;
    return BRet;
}



static MBT_BOOL EditDrawItem(EDIT *pstEdit,MBT_S32 iItem,MBT_BOOL bFocus,MBT_BOOL bDispOnly)
{
    DATAENTRY *pstDataEntry = &pstEdit->stDataEntry[iItem];
    MBT_S32 iStartX;
    MBT_S32 iStartY;
    MBT_S32 iChNum;
    MBT_S32 iYOffset;
    MBT_S32 iTxtW;
    MBT_S32 iReginW;
    MBT_S32 iHighlightByte;
    MBT_CHAR *pstrDataRead;	
    MBT_U32 u32FColor;
    MBT_U32 u32FontSize;
    MBT_U32 u32ActruFontHeight;
    MBT_BOOL bRefresh = MM_FALSE;
    MBT_BOOL bCeateExt = MM_FALSE;

    if(pstDataEntry->bHidden)
    {
        if(MM_NULL != pstEdit->EditDrawItemBar)
        {
            pstEdit->EditDrawItemBar(MM_TRUE,bFocus,iItem,pstDataEntry->iCol, pstDataEntry->iRow, pstDataEntry->iWidth, pstDataEntry->iHeight);
            uictrf_SliderStop(pstDataEntry->iTxtCol,pstDataEntry->iRow,pstDataEntry->iTxtWidth,pstDataEntry->iHeight);
        }
        return MM_TRUE;
    }

    if(MM_TRUE == bFocus)
    {
        u32FColor = pstDataEntry->iFucusFrontColor;
    }
    else
    {
        u32FColor = pstDataEntry->iUnfucusFrontColor;
    }

    if(MM_NULL != pstEdit->EditDrawItemBar)
    {
        pstEdit->EditDrawItemBar(MM_FALSE,bFocus,iItem,pstDataEntry->iCol, pstDataEntry->iRow, pstDataEntry->iWidth, pstDataEntry->iHeight);
        uictrf_SliderStop(pstDataEntry->iTxtCol,pstDataEntry->iRow,pstDataEntry->iTxtWidth,pstDataEntry->iHeight);
    }

    u32FontSize = WGUIF_GetFontHeight();
    if(TOPLEFTMAINTITLE_FONT_HEIGHT >= pstDataEntry->u32FontSize)
    {
        WGUIF_SetFontHeight(pstDataEntry->u32FontSize);
    }
    u32ActruFontHeight = WGUIF_GetFontHeight();
    iYOffset = (pstDataEntry->iHeight - u32ActruFontHeight)/2;
    
    switch(pstDataEntry->field_type)
    {
        case DATE_FIELD:
		case YEAR_FIELD:
        case TIME_FIELD:
        case IP_FIELD:
            iHighlightByte = pstDataEntry->iSelect;
            //MLMF_Print("pstDataEntry->iSelect = %d\n",pstDataEntry->iSelect);
            pstrDataRead = pstDataEntry->acDataRead;
            iChNum = strlen(pstrDataRead);
            if(iHighlightByte == iChNum)
            {
                bCeateExt = MM_TRUE;
            }
            pstDataEntry->iTotalItems = iChNum;
            iStartX = pstDataEntry->iTxtCol; 
            iStartY = pstDataEntry->iRow + iYOffset;
            iReginW = pstDataEntry->iTxtWidth;
            iTxtW = WGUIF_FNTGetTxtWidth(iChNum,pstrDataRead);
            if(iTxtW <= iReginW)
            {
                iStartX += (iReginW-iTxtW)/2; 
            }
            
            
            //MLMF_Print("iHighlightByte %d iChNum %d pstrDataRead %s\n",iHighlightByte,iChNum,pstrDataRead);
            if(bFocus&&iHighlightByte <= iChNum)
            {
                iTxtW = WGUIF_FNTDrawTxt2RgnUse2Color(iStartX,iStartY,pstrDataRead,iChNum,iHighlightByte,u32FColor,pstDataEntry->iSelectByteFront,iReginW);
            }
            else
            {
                iTxtW= WGUIF_FNTDrawTxt(iStartX,iStartY, iChNum, pstrDataRead, u32FColor);             
            }

            if(MM_TRUE == bCeateExt&&MM_TRUE == bFocus)
            {
                WGUIF_DrawFilledRectangle(iStartX+iTxtW+2,iStartY+u32ActruFontHeight-2, u32ActruFontHeight/2, 2, pstDataEntry->iSelectByteFront);             
            }
            bRefresh = MM_TRUE;
            break;

        case SELECT_BOTTON:    
            pstrDataRead = pstDataEntry->acDataRead;
            if(MM_NULL != pstDataEntry->pReadData)
            {
                pstDataEntry->pReadData(iItem,pstDataEntry->iSelect,pstrDataRead);
            }

            iChNum = strlen(pstrDataRead);
            if(0 == iChNum)
            {
                break;
            }
            iStartX = pstDataEntry->iTxtCol; 
            iStartY = pstDataEntry->iRow + iYOffset;
            iReginW = pstDataEntry->iTxtWidth;
            uictrf_SliderStop(iStartX,pstDataEntry->iRow,iReginW,pstDataEntry->iHeight);
            iTxtW=WGUIF_FNTGetTxtWidth(iChNum,pstrDataRead);
            if(iTxtW <= iReginW)
            {
                iStartX += (iReginW-iTxtW)/2; 
                WGUIF_FNTDrawTxt(iStartX,iStartY, iChNum, pstrDataRead, u32FColor);             
            }
            else
            {
                if(MM_TRUE == bFocus)
                {
                    uictrf_SliderStart(pstrDataRead,iStartX,pstDataEntry->iRow,iReginW,pstDataEntry->iHeight,u32FColor,pstDataEntry->u32FontSize);
                }
                WGUIF_FNTDrawTxt2Rgn(iStartX,iStartY,pstrDataRead,iChNum,u32FColor,iReginW);
            }
            bRefresh = MM_TRUE;
            break;
            
        case STTRING_BOTTON:
        case NUMBER_BOTTON:	
            pstrDataRead = pstDataEntry->acDataRead;
            if(MM_NULL != pstDataEntry->pReadData)
            {
                pstDataEntry->pReadData(iItem,pstDataEntry->iSelect,pstrDataRead);
                iChNum = strlen(pstrDataRead);
            }
            else
            {
                iChNum = sprintf(pstrDataRead,"%d",pstDataEntry->iSelect);
            }
            if(0 == iChNum)
            {
                break;
            }
            iStartX = pstDataEntry->iTxtCol; 
            iStartY = pstDataEntry->iRow + iYOffset;
            iReginW = pstDataEntry->iTxtWidth;
            uictrf_SliderStop(iStartX,pstDataEntry->iRow,iReginW,pstDataEntry->iHeight);
            iTxtW=WGUIF_FNTGetTxtWidth(iChNum,pstrDataRead);
            if(iTxtW <= iReginW)
            {
                iStartX += (iReginW-iTxtW)/2; 
                WGUIF_FNTDrawTxt(iStartX,iStartY, iChNum, pstrDataRead, u32FColor);             
            }
            else
            {
                if(MM_TRUE == bFocus)
                {
                    uictrf_SliderStart(pstrDataRead,iStartX,pstDataEntry->iRow,iReginW,pstDataEntry->iHeight,u32FColor,pstDataEntry->u32FontSize);
                }
                WGUIF_FNTDrawTxt2Rgn(iStartX,iStartY,pstrDataRead,iChNum,u32FColor,iReginW);
            }
            bRefresh = MM_TRUE;
            break;

        case PIN_FIELD:
            bRefresh = MM_TRUE;
            iStartX = pstDataEntry->iTxtCol; 
            iStartY = pstDataEntry->iRow + iYOffset;
            iReginW = pstDataEntry->iTxtWidth;
            iTxtW = m_PinFontWidth*pstDataEntry->iTotalItems;
            if(iTxtW < iReginW)
            {
                iStartX += (iReginW-iTxtW)/2; 
            }
            EditDrawPwdInput(pstDataEntry->iTotalItems,iStartX,iStartY,pstDataEntry->iSelect,u32FColor);           		
            break;

        default:			
            break;
    }	
    WGUIF_SetFontHeight(u32FontSize);
    return bRefresh;
}

MBT_BOOL UCTRF_EditGetKey(EDIT *pstEdit,MBT_S32 iKey)
{
    MBT_BOOL bRet = MM_TRUE;
    switch ( iKey ) 		
    {		
        case DUMMY_KEY_UPARROW:
            EditOnUpArrowKey(pstEdit);
            break;

        case DUMMY_KEY_DNARROW:
            EditOnDownArrowKey(pstEdit);
            break;

        case DUMMY_KEY_LEFTARROW:
            EditOnLeftArrowKey(pstEdit);
            break;

        case DUMMY_KEY_RIGHTARROW:
            EditOnRightArrowKey(pstEdit);
            break;

        case DUMMY_KEY_0:
        case DUMMY_KEY_1:
        case DUMMY_KEY_2:
        case DUMMY_KEY_3:
        case DUMMY_KEY_4:
        case DUMMY_KEY_5:
        case DUMMY_KEY_6:
        case DUMMY_KEY_7:
        case DUMMY_KEY_8:
        case DUMMY_KEY_9:
            bRet = EditOnNumberKey(pstEdit,iKey);
            break;

        default:
            break;
    }	
    return bRet;
}

MBT_BOOL UCTRF_EditOnDraw(EDIT *pstEdit)
{
	MBT_S32 iMenuOff;
	MBT_BOOL bRefresh = MM_FALSE;
	if( pstEdit->bModified)
	{
		for(iMenuOff=0; iMenuOff < pstEdit->iTotal;iMenuOff++) 
		{
		    if(iMenuOff == pstEdit->iSelect)
		    {
                bRefresh |= EditDrawItem(pstEdit,iMenuOff,MM_TRUE,MM_FALSE);
		    }
		    else
		    {
                bRefresh |= EditDrawItem(pstEdit,iMenuOff,MM_FALSE,MM_FALSE);
		    }
		}
		pstEdit->bModified = MM_FALSE;
	}
	
	if(pstEdit->bPaintPrev)
	{		
		bRefresh |= EditDrawItem(pstEdit, pstEdit->iPrevSelect, MM_FALSE, MM_FALSE);
		pstEdit->bPaintPrev = MM_FALSE;
	}
	
	if( pstEdit->bPaintCurr )
	{
		bRefresh |= EditDrawItem(pstEdit, pstEdit->iSelect, MM_TRUE, MM_FALSE);
		pstEdit->bPaintCurr = MM_FALSE;
	}
	return bRefresh;
}




