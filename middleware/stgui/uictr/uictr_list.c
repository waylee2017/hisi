#include "uictr_list.h"
#include "appblast.h"
#include "bmp_src.h"
#include "uictr_slider.h"




static MBT_VOID UiCtrListFillRectWithBmp( MBT_S32 x, MBT_S32 y, MBT_S32 width, MBT_S32 height, BITMAPTRUECOLOR *pBmp)
{
    MBT_S32 iColNum, iRowNum;
    MBT_BOOL bColNeedRepair = MM_FALSE;
    MBT_BOOL bRowNeedRepair = MM_FALSE;
    MBT_S32 i, j;

    if(MM_NULL == pBmp||0 == width || width < pBmp->bWidth || height < pBmp->bHeight )
    {
        return;
    }

    iColNum = width/pBmp->bWidth;
    iRowNum = height / pBmp->bHeight;
    bColNeedRepair = (height%pBmp->bHeight==0?MM_FALSE:MM_TRUE );
    bRowNeedRepair = (width%pBmp->bWidth==0?MM_FALSE:MM_TRUE );
    for ( j=0; j<iRowNum; j++ )
    {
        for( i=0; i<iColNum; i++ )
        {
            WGUIF_DisplayReginTrueColorBmp(x+i*pBmp->bWidth, y+j*pBmp->bHeight,0,0,pBmp->bWidth,pBmp->bHeight, pBmp,MM_TRUE);
         }

        if(bRowNeedRepair)
        {
            WGUIF_DisplayReginTrueColorBmp(x+width - pBmp->bWidth, y+j*pBmp->bHeight,0,0,pBmp->bWidth,pBmp->bHeight, pBmp,MM_TRUE);
         }
    }

    if (bColNeedRepair)
    {
        for( i=0; i<iColNum; i++ )
        {
            WGUIF_DisplayReginTrueColorBmp(x+i*pBmp->bWidth, y+height-pBmp->bHeight,0,0,pBmp->bWidth,pBmp->bHeight, pBmp,MM_TRUE);
         }

        if(bRowNeedRepair)
        {
            WGUIF_DisplayReginTrueColorBmp(x+width - pBmp->bWidth, y+height-pBmp->bHeight,0,0,pBmp->bWidth,pBmp->bHeight, pBmp,MM_TRUE);
         }
    }    
}

static MBT_VOID UiCtrListDrawCombinVBar( MBT_S32 x, MBT_S32 y, MBT_S32 Height,BITMAPTRUECOLOR *pFirstBmp,BITMAPTRUECOLOR *pMidBmp,BITMAPTRUECOLOR *pLastBmp)
{
    MBT_S32 iMidHeight;
    if(MM_NULL == pFirstBmp||MM_NULL == pMidBmp||MM_NULL == pLastBmp)
    {
        return;
    }

    WGUIF_DisplayReginTrueColorBmp(x, y,0,0, pFirstBmp->bWidth, pFirstBmp->bHeight,pFirstBmp,MM_TRUE);
    iMidHeight = Height - pFirstBmp->bHeight-pLastBmp->bHeight;
    if(iMidHeight > pMidBmp->bHeight)
    {
        UiCtrListFillRectWithBmp(x,y+pFirstBmp->bHeight,pMidBmp->bWidth,iMidHeight,pMidBmp);
    }
    else if(iMidHeight > 0)
    {
        WGUIF_DisplayReginTrueColorBmp(x,y+pFirstBmp->bHeight,0,0,iMidHeight,pMidBmp->bHeight,pMidBmp,MM_TRUE);
    }
	WGUIF_DisplayReginTrueColorBmp(x, y+Height-pLastBmp->bHeight,0,0, pLastBmp->bWidth, pLastBmp->bHeight,pLastBmp,MM_TRUE);
}

static MBT_VOID ListDrawSliderBar(MBT_S32 iX, MBT_S32 iY, MBT_S32 iSliderHeight, MBT_S32 iCur, MBT_S32 iTotal,MBT_S32 iMaxPageItem)
{
    MBT_S32 iStartY;
    MBT_S32 iTemp;
    MBT_S32 iTopArrawHeight = BMPF_GetBMPHeight(m_ui_Scrollbar_line_up_include_arrowIfor);
    //MBT_S32 iBottomArrawHeight = BMPF_GetBMPHeight(m_ui_Scrollbar_line_down_include_arrowIfor);
    MBT_S32 iScrolBallHeight;
    BITMAPTRUECOLOR *pstFramBmp;

    UiCtrListDrawCombinVBar(iX,
                            iY,
                            iSliderHeight,
                            BMPF_GetBMP(m_ui_Scrollbar_line_up_include_arrowIfor),
                            BMPF_GetBMP(m_ui_Scrollbar_line_midIfor),
                            BMPF_GetBMP(m_ui_Scrollbar_line_down_include_arrowIfor));

	pstFramBmp = BMPF_GetBMP(m_ui_Scrollbar_ballIfor);
	iScrolBallHeight = pstFramBmp->bHeight;
	
    iStartY = iY+iTopArrawHeight;
    iTemp = iSliderHeight-iScrolBallHeight;//iBottomArrawHeight-iTopArrawHeight-iScrolBallHeight;
    if(iTemp <=0||0 == iTotal)
    {
        return;
    }

    if(1 == iTotal)
    {
        iStartY = iY ;//+ iTopArrawHeight;
    }
    else
    {
        iStartY = iY + iTemp * iCur / (iTotal-1);//+ iTopArrawHeight
    }
    WGUIF_DisplayReginTrueColorBmp(iX, iStartY, 0,0,pstFramBmp->bWidth, pstFramBmp->bHeight,pstFramBmp,MM_TRUE);
}




static MBT_VOID ListDecreaseSelect(LISTITEM *pListItem)  
{
    pListItem->iPrevSelect = pListItem->iSelect;
    
    if(pListItem->iNoOfItems < 0 )
    {
        pListItem->iNoOfItems = 0;
    }
    
    if( --pListItem->iSelect < 0 )
    {
        if(pListItem->iNoOfItems > 0)
        {
            pListItem->iSelect = pListItem->iNoOfItems-1;
        }
        else
        {
            pListItem->iSelect = 0;
        }
    }

    if ((pListItem->iSelect<pListItem->iTop || pListItem->iSelect > pListItem->iBottom)&&pListItem->bMultiplePage)
    {
        pListItem->bUpdatePage = MM_TRUE;
    }
    else
    {
        pListItem->bUpdateItem = MM_TRUE;
    }
}

static MBT_VOID ListIncreaseSelect(LISTITEM *pListItem)  /*RIGHT and DOWN key*/
{
    pListItem->iPrevSelect = pListItem->iSelect;

    if(pListItem->iNoOfItems < 0 )
    {
        pListItem->iNoOfItems = 0;
    }

    if(0 == pListItem->iNoOfItems)
    {
        pListItem->iSelect = 0;
    }
    else if( ++pListItem->iSelect > pListItem->iNoOfItems-1 )
    {
        pListItem->iSelect = 0;
    }

    if ((pListItem->iSelect<pListItem->iTop || pListItem->iSelect > pListItem->iBottom)&&pListItem->bMultiplePage )
    {
        pListItem->bUpdatePage = MM_TRUE;
    }
    else
    {
        pListItem->bUpdateItem = MM_TRUE;
    }
}

static MBT_VOID ListPageUpSelect(LISTITEM *pListItem)  /*PAGE UP key*/
{
    if( pListItem->bMultiplePage )  /*At least one page item*/
    {
        MBT_S32 iLast = (pListItem->iSelect)%pListItem->iPageMaxItem;
        if(pListItem->iNoOfItems < 0 )
        {
            pListItem->iNoOfItems = 0;
        }

        pListItem->iSelect = pListItem->iSelect - pListItem->iPageMaxItem;
        if ( pListItem->iSelect < 0 )
        {
            pListItem->iSelect = pListItem->iNoOfItems-1 - (pListItem->iNoOfItems-1)%pListItem->iPageMaxItem+iLast;
            if ( pListItem->iSelect >= pListItem->iNoOfItems )
            {
                pListItem->iSelect = pListItem->iNoOfItems-1;
            }
        }

        if(pListItem->iSelect < 0)
        {
            pListItem->iSelect = 0;
        }
        pListItem->bUpdatePage = MM_TRUE;
    }
}

static MBT_VOID ListPageDownSelect(LISTITEM *pListItem)  /*PAGE DOWN key*/
{
    if( pListItem->bMultiplePage )  /*At least one page item*/
    {
        MBT_S32 iLast = (pListItem->iSelect)%pListItem->iPageMaxItem;
        if(pListItem->iNoOfItems < 0 )
        {
            pListItem->iNoOfItems = 0;
        }
        if ( pListItem->iSelect/pListItem->iPageMaxItem == (pListItem->iNoOfItems-1)/pListItem->iPageMaxItem)
        {
            pListItem->iSelect = iLast;
        }
        else
        {
            pListItem->iSelect = pListItem->iSelect + pListItem->iPageMaxItem;
            if ( pListItem->iSelect >= pListItem->iNoOfItems )
            {
                pListItem->iSelect = pListItem->iNoOfItems-1;
            }
        }
        
        if(pListItem->iSelect < 0)
        {
            pListItem->iSelect = 0;
        }
        pListItem->bUpdatePage = MM_TRUE;
    }
}

/*
	针对缅文，此函数暂时只调整一处，另两处后续调整

*/
static inline MBT_S32 ListDrawDirectTxt(MBT_S32 x,MBT_S32 y,MBT_S32 iReginW,MMT_TxtDrawDirect_E stTxtDirect,MBT_CHAR *pucPtr,MBT_S32 iChNum,MBT_U32 u32FColor, MBT_S32 itemHeight)
{
    MBT_S32 iRet = 0;
    MBT_S32 iTxtW;
    MBT_S32 s32font_height = 0;
    MBT_S32 s32Yoffset = 0;

    s32font_height = WGUIF_GetFontHeight();
    s32Yoffset = (itemHeight - s32font_height)/2;
    y = y + s32Yoffset;
    
    switch(stTxtDirect)
    {
        case MM_Txt_Left:
            iRet = WGUIF_FNTDrawTxt2Rgn(x,y,pucPtr,iChNum,u32FColor,iReginW);
            break;
        case MM_Txt_Mid:			
            iTxtW = WGUIF_FNTGetTxtWidth(iChNum,pucPtr);
            if(iTxtW < iReginW)
            {
                x += (iReginW-iTxtW)/2;
                iRet = WGUIF_FNTDrawTxt2Rgn(x,y,pucPtr,iChNum,u32FColor,iTxtW);
            }
            else
            {
                iRet = WGUIF_FNTDrawTxt2Rgn(x,y,pucPtr,iChNum,u32FColor,iReginW);
            }
            break;
			
        case MM_Txt_Right:
            break;
			
        default:
            iRet = WGUIF_FNTDrawTxt2Rgn(x,y,pucPtr,iChNum,u32FColor,iReginW);
            break;
    }
    
    return iRet;
}


MBT_VOID UCTRF_ListGetKey(LISTITEM *pListItem,MBT_S32 iKey)
{
    switch ( iKey )
    {
        case DUMMY_KEY_UPARROW:
            ListDecreaseSelect(pListItem);  
            break;

        case DUMMY_KEY_DNARROW:
            ListIncreaseSelect(pListItem);
            break;

        case DUMMY_KEY_PGUP:
            ListPageUpSelect(pListItem);
            break;

        case DUMMY_KEY_PGDN:
            ListPageDownSelect(pListItem);
            break;
    }		
}


static  MBT_VOID ListPageUpdateCheck(LISTITEM *pListItem)
{
    MBT_S32 iCurPage;

    if(pListItem->iSelect< 0 || pListItem->iSelect>pListItem->iNoOfItems-1)
    {
        pListItem->iSelect = 0;
    }

    if( pListItem->iNoOfItems > pListItem->iPageMaxItem )
    {
        iCurPage = pListItem->iSelect/pListItem->iPageMaxItem;
        pListItem->iTop = iCurPage*pListItem->iPageMaxItem;
        pListItem->iBottom = pListItem->iTop+pListItem->iPageMaxItem-1;		
        if ( pListItem->iBottom >= pListItem->iNoOfItems )
        {
            pListItem->iBottom = pListItem->iNoOfItems-1;
        }
        pListItem->bMultiplePage = MM_TRUE;
    }
    else
    {
        pListItem->bMultiplePage = MM_FALSE;
    }
    pListItem->iPrevSelect= pListItem->iSelect;  
}

static  MBT_VOID ListItemUpdateCheck(LISTITEM *pListItem)
{
    MBT_S32 iCurPage;

    if(pListItem->iSelect< 0 || pListItem->iSelect>pListItem->iNoOfItems-1)
    {
        pListItem->iSelect = 0;
    }

    if( pListItem->iNoOfItems > pListItem->iPageMaxItem )
    {
        iCurPage = pListItem->iSelect/pListItem->iPageMaxItem;
        pListItem->iTop = iCurPage*pListItem->iPageMaxItem;
        pListItem->bMultiplePage = MM_TRUE;
    }
    else
    {
        pListItem->iTop =0;
        pListItem->bMultiplePage = MM_FALSE;
    }

    pListItem->iBottom = pListItem->iTop+pListItem->iPageMaxItem-1;     
    if ( pListItem->iBottom >= pListItem->iNoOfItems )
    {
        pListItem->iBottom = pListItem->iNoOfItems-1;
    }
    
    if(pListItem->iPrevSelect< 0 || pListItem->iPrevSelect>pListItem->iNoOfItems-1)
    {
        pListItem->iPrevSelect = pListItem->iSelect;
    }
}


MBT_BOOL UCTRF_ListOnDraw(LISTITEM* pstList )
{
    MBT_CHAR *acItem = MM_NULL;
    MBT_CHAR *pucPtr;
    MBT_S32 iItemOffset;
    MBT_S32 x, y, i,j;
    MBT_S32 iLen;
    MBT_S32 iDrawNum;
    MBT_S32 iBufferSize;
    MBT_S32 iPrevOffset;
    MBT_S32 iOffset;
    MBT_U32 u32Font;
    MBT_U32 u32UnfocusF;
    MBT_U32 u32FocusF; 
    BITMAPTRUECOLOR *pstBmp;
    MBT_S32 *ps32ColPos;
    MBT_S32 *ps32ColW;
    MBT_S32 s32font_height;
    MMT_TxtDrawDirect_E stTxtDirect;
    MBT_BOOL bRefresh = MM_FALSE;

    if ( pstList->bUpdateItem == MM_FALSE && pstList->bUpdatePage== MM_FALSE )
    {
        return bRefresh;
    }

    if(MM_TRUE == pstList->bUpdatePage)
    {
        ListPageUpdateCheck(pstList);
    }
    else
    {
        ListItemUpdateCheck(pstList);
    }

    if ( pstList->cHavesScrollBar)
    {
        bRefresh = MM_TRUE;
        ListDrawSliderBar(pstList->iColStart  + pstList->iWidth+4, pstList->iRowStart +2, pstList->iPageMaxItem*(pstList->iHeight+pstList->iSpace) - pstList->iSpace - 4, pstList->iSelect, pstList->iNoOfItems, pstList->iPageMaxItem);
    }

    ps32ColPos = pstList->iColPosition;
    ps32ColW = pstList->iColWidth;

    u32UnfocusF = pstList->u32UnFocusFontColor;
    u32FocusF = pstList->u32FocusFontClolor;

    stTxtDirect = pstList->stTxtDirect;
    x = pstList->iColStart;
    for(i=0;i<pstList->iPageMaxItem; i++ )
    {
        y = pstList->iRowStart+ i*(pstList->iHeight+pstList->iSpace);
        for( j=0;j<pstList->iColumns; j++ )
        {
            uictrf_SliderStop(ps32ColPos[j],y,ps32ColW[j],pstList->iHeight);
        }
        bRefresh = MM_TRUE;
    }

    s32font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(pstList->iFontHeight);
    if( pstList->iNoOfItems <= 0)  
    {
        x = pstList->iColStart;

        if(MM_NULL != pstList->ListDrawBar)
        {
            for(i=0;i<pstList->iPageMaxItem; i++ )
            {
                y = pstList->iRowStart+ i*(pstList->iHeight+pstList->iSpace);
                pstList->ListDrawBar(MM_FALSE,i,x,y,pstList->iWidth, pstList->iHeight);
                bRefresh = MM_TRUE;
            }
        }


        pucPtr = pstList->pNoItemInfo;
        if(MM_NULL != pucPtr)
        {
            iLen = strlen(pucPtr);
            iDrawNum = ListDrawDirectTxt(x,pstList->iRowStart,pstList->iWidth,stTxtDirect,pucPtr,iLen,u32UnfocusF, pstList->iHeight);
            /*if(iDrawNum < iLen)
            {
            //start osd showing
            }*/
            bRefresh = MM_TRUE;
        }
        pstList->bUpdateItem = MM_FALSE;
        pstList->bUpdatePage = MM_FALSE;
        WGUIF_SetFontHeight(s32font_height);
        return bRefresh;
    }

    iBufferSize = pstList->iColumns*pstList->u16ItemMaxChar;
    if(0 != iBufferSize)
    {
        acItem = MLMF_Malloc(iBufferSize);
    }
    
    if(MM_NULL == acItem)
    {
        pstList->bUpdateItem = MM_FALSE;
        pstList->bUpdatePage = MM_FALSE;
        WGUIF_SetFontHeight(s32font_height);
        return bRefresh;            
    }


    iOffset = pstList->iSelect - pstList->iTop;
    iPrevOffset = pstList->iPrevSelect - pstList->iTop;
    if ( pstList->bUpdatePage )
    {
        for(iItemOffset = 0; (iItemOffset < pstList->iPageMaxItem)&&((pstList->iTop + iItemOffset) < pstList->iNoOfItems);iItemOffset++)
        {
            if(!pstList->bMultiplePage && iItemOffset > pstList->iNoOfItems-1)
            {
                continue;
            }

            if(pstList->ListReadFunction((pstList->iTop + iItemOffset)%pstList->iNoOfItems,acItem) == MM_FALSE )
            {
                pstList->bUpdateItem = MM_FALSE;
                pstList->bUpdatePage = MM_FALSE;
                MLMF_Free(acItem);
                WGUIF_SetFontHeight(s32font_height);
                return bRefresh;
            }

            x = pstList->iColStart;
            y = pstList->iRowStart + iItemOffset*(pstList->iHeight + pstList->iSpace);
            if(iItemOffset == iOffset )
            {
                u32Font = u32FocusF;
            }
            else
            {
                u32Font = u32UnfocusF;
            }

            if(iItemOffset == iOffset )
            {
                pstList->ListDrawBar(MM_TRUE,iItemOffset,x,y,pstList->iWidth, pstList->iHeight);
            }
            else
            {
                pstList->ListDrawBar(MM_FALSE,iItemOffset,x,y,pstList->iWidth, pstList->iHeight);
            }
			
            bRefresh = MM_TRUE;
            for( i=0;i<pstList->iColumns; i++ )
            {
                pucPtr = acItem + i*pstList->u16ItemMaxChar;
                switch(pucPtr[0])
                {            
                    case CO_NULL:
                        break;

                    case CO_SKIP:
                        pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_del_logoIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                        break;

                    case CO_FAV:
                        pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_fav_logoIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight, pstBmp, MM_TRUE);
                        break;

                    case CO_LOCK:
                        pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_lock_logoIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight, pstBmp, MM_TRUE);
                        break;

                    case CO_SUBSCRIBE:
                        pstBmp = BMPF_GetBMP(m_ui_BookManage_logoIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+(pstList->iColWidth[i] - pstBmp->bWidth)/2, y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight, pstBmp, MM_TRUE);
                        break;
                        
                    case CO_RECORD:
                        pstBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_RedIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+(pstList->iColWidth[i] - pstBmp->bWidth)/2, y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight, pstBmp, MM_TRUE);
                        break;
                        
                    case CO_MENUHEAD:
                        WGUIF_DrawFilledCircle(ps32ColPos[i]+4, y+(pstList->iHeight)/2, 8, u32Font);
                        break;

                    case CO_FAVLOCK:
                        pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_fav_logoIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                        break;

                    case CO_MOVE:
                        pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_move_logoIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                        break;

                    case CO_DEL:
                        pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_del_logoIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                        break;

                    case CO_ENCRYPTION:
                        pstBmp = BMPF_GetBMP(m_ui_ChannelInfo_caIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                        break;

                    case CO_MAIL_NOT_READ:
                        pstBmp = BMPF_GetBMP(m_ui_Email_not_readIfor);
						//change :使图片居中显示
						WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i] + (ps32ColW[i]-pstBmp->bWidth)/2, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp, MM_TRUE);
                      	//WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                        break;

                    case CO_MAIL_ALREADY_READ:
                        pstBmp = BMPF_GetBMP(m_ui_Email_already_readIfor);
						//change :使图片居中显示
						WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i] + (ps32ColW[i]-pstBmp->bWidth)/2, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp, MM_TRUE);
                        //WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                        break;

                    case CO_VFS_FILE:
                        pstBmp = BMPF_GetBMP(m_ui_USB_file_logoIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                        break;

                    case CO_VFS_DIR:
                        pstBmp = BMPF_GetBMP(m_ui_USB_folder_logoIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                        break;
					case CO_AUDIO_TYPE_MPEG:
						pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_MP_SelectIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
						break;
                    case CO_AUDIO_TYPE_DLOBY:
                        pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_DB_SelectIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
						break;
					case CO_AUDIO_LL:
						pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Left_SelectIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+pstBmp->bWidth+5, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
						break;
					case CO_AUDIO_LR:
						pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Left_SelectIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
						pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Right_SelectIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+pstBmp->bWidth+5, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
						break;
					case CO_AUDIO_RR:
						pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Right_SelectIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+pstBmp->bWidth+5, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
						break;
					case CO_AUDIO_RL:
						pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Right_SelectIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
						pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Left_SelectIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+pstBmp->bWidth+5, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
						break;
                    case CO_LEFT:
                        pstBmp = BMPF_GetBMP(m_ui_selectbar_arrow_leftIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                        break;

                    case CO_RIGHT:
                        pstBmp = BMPF_GetBMP(m_ui_selectbar_arrow_rightIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                        break;
                        
                    case CO_PLAYING:
                        pstBmp = BMPF_GetBMP(m_ui_play_iconIfor);
                        WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                        break;
            
                    default:
                        iLen = strlen(pucPtr);
                        if(iItemOffset == iOffset )
                        {
                            iDrawNum = WGUIF_FNTGetTxtWidth(iLen,pucPtr);
                            //MLMF_Print("iDrawNum %d ps32ColW[i] %d %s\n",iDrawNum,ps32ColW[i],pucPtr);
                            if(iDrawNum > ps32ColW[i])
                            {
                                /*start osd showing*/
                                uictrf_SliderStart(pucPtr,ps32ColPos[i],y,ps32ColW[i],pstList->iHeight,u32Font,pstList->iFontHeight);
                            }
                        }
                        iDrawNum = ListDrawDirectTxt(ps32ColPos[i],y,ps32ColW[i],stTxtDirect,pucPtr,iLen,u32Font, pstList->iHeight);
                        break;
                }
            }
        }
		
        x = pstList->iColStart;
        if(MM_NULL != pstList->ListDrawBar)
        {
            for(; iItemOffset < pstList->iPageMaxItem;iItemOffset++)
            {
                y = pstList->iRowStart+ iItemOffset*(pstList->iHeight+pstList->iSpace);
                pstList->ListDrawBar(MM_FALSE,iItemOffset,x,y,pstList->iWidth, pstList->iHeight);
                bRefresh = MM_TRUE;
            }
        }
			
    }
    else if( pstList->bUpdateItem )
    {
        //make previous item not focus
        if(pstList->ListReadFunction(pstList->iPrevSelect,acItem) == MM_FALSE )
        {
            pstList->bUpdateItem = MM_FALSE;
            pstList->bUpdatePage = MM_FALSE;
            MLMF_Free(acItem);
            WGUIF_SetFontHeight(s32font_height);
            return bRefresh;
        }

        u32Font = u32UnfocusF;
        x = pstList->iColStart;
        y = pstList->iRowStart + iPrevOffset*(pstList->iHeight + pstList->iSpace);

        if(MM_NULL != pstList->ListDrawBar)
        {
            pstList->ListDrawBar(MM_FALSE,pstList->iPrevSelect,x,y,pstList->iWidth, pstList->iHeight);
        }


        bRefresh = MM_TRUE;

        for( i=0;i<pstList->iColumns; i++ )
        {
            pucPtr = acItem + i*pstList->u16ItemMaxChar;
            switch(pucPtr[0])
            {            
                case CO_NULL:
                    break;

                case CO_SKIP:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_del_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_FAV:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_fav_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_LOCK:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_lock_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_SUBSCRIBE:
                    pstBmp = BMPF_GetBMP(m_ui_BookManage_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+(pstList->iColWidth[i] - pstBmp->bWidth)/2, y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight, pstBmp, MM_TRUE);
                    break;
                    
                case CO_RECORD:
                    pstBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_RedIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+(pstList->iColWidth[i] - pstBmp->bWidth)/2, y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight, pstBmp, MM_TRUE);
                    break;
                    

                case CO_MENUHEAD:
                    WGUIF_DrawFilledCircle(ps32ColPos[i]+4, y+(pstList->iHeight)/2, 8, u32Font);
                    break;

                case CO_FAVLOCK:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_fav_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2 ,0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_MOVE:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_move_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_DEL:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_del_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;    

                case CO_ENCRYPTION:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelInfo_caIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_MAIL_NOT_READ:
                    pstBmp = BMPF_GetBMP(m_ui_Email_not_readIfor);
					WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i] + (ps32ColW[i]-pstBmp->bWidth)/2, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp, MM_TRUE);
                    //WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_MAIL_ALREADY_READ:
                    pstBmp = BMPF_GetBMP(m_ui_Email_already_readIfor);
					WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i] + (ps32ColW[i]-pstBmp->bWidth)/2, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp, MM_TRUE);
                    //WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_VFS_FILE:
                    pstBmp = BMPF_GetBMP(m_ui_USB_file_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_VFS_DIR:
                    pstBmp = BMPF_GetBMP(m_ui_USB_folder_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;
				case CO_AUDIO_TYPE_MPEG:
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_MP_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					break;
                case CO_AUDIO_TYPE_DLOBY:
                    pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_DB_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					break;
				case CO_AUDIO_LL:
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Left_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+pstBmp->bWidth+5, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					break;
				case CO_AUDIO_LR:
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Left_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Right_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+pstBmp->bWidth+5, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					break;
				case CO_AUDIO_RR:
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Right_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+pstBmp->bWidth+5, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					break;
				case CO_AUDIO_RL:
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Right_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Left_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+pstBmp->bWidth+5, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					break;
                case CO_LEFT:
                    pstBmp = BMPF_GetBMP(m_ui_selectbar_arrow_leftIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_RIGHT:
                    pstBmp = BMPF_GetBMP(m_ui_selectbar_arrow_rightIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;
                    
                case CO_PLAYING:
                    pstBmp = BMPF_GetBMP(m_ui_play_iconIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;
                    
                default:
                    iLen = strlen(pucPtr);
                    iDrawNum = ListDrawDirectTxt(ps32ColPos[i],y,ps32ColW[i],stTxtDirect,pucPtr,iLen,u32Font, pstList->iHeight);
                    break;
            }
        }

        //high light cur item
        if(pstList->ListReadFunction(pstList->iSelect,acItem) == MM_FALSE )
        {
            pstList->bUpdateItem = MM_FALSE;
            pstList->bUpdatePage = MM_FALSE;
            MLMF_Free(acItem);
            WGUIF_SetFontHeight(s32font_height);
            return bRefresh;
        }

        u32Font = u32FocusF;
        y = pstList->iRowStart + iOffset*(pstList->iHeight + pstList->iSpace);
        if(MM_NULL != pstList->ListDrawBar)
        {
            pstList->ListDrawBar(MM_TRUE,pstList->iSelect,x,y,pstList->iWidth, pstList->iHeight);
        }


        for( i=0;i<pstList->iColumns; i++ )
        {
            pucPtr = acItem + i*pstList->u16ItemMaxChar;
            switch(pucPtr[0])
            {            
                case CO_NULL:
                    break;

                case CO_SKIP:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_del_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_FAV:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_fav_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight, pstBmp, MM_TRUE);
                    break;

                case CO_LOCK:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_lock_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight, pstBmp,MM_TRUE);
                    break;

                case CO_SUBSCRIBE:
                    pstBmp = BMPF_GetBMP(m_ui_BookManage_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+(pstList->iColWidth[i] - pstBmp->bWidth)/2, y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight, pstBmp, MM_TRUE);
                    break;
                    
                case CO_RECORD:
                    pstBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_RedIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+(pstList->iColWidth[i] - pstBmp->bWidth)/2, y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight, pstBmp, MM_TRUE);
                    break;

                case CO_MENUHEAD:
                    WGUIF_DrawFilledCircle(ps32ColPos[i]+4, y+(pstList->iHeight)/2, 8, u32Font);
                    break;

                case CO_FAVLOCK:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_fav_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2,0,0,ps32ColW[i],pstBmp->bHeight, pstBmp, MM_TRUE);
                    break;

                case CO_MOVE:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_move_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_DEL:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelEdit_del_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_ENCRYPTION:
                    pstBmp = BMPF_GetBMP(m_ui_ChannelInfo_caIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_MAIL_NOT_READ:
                    pstBmp = BMPF_GetBMP(m_ui_Email_not_readIfor);
					WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i] + (ps32ColW[i]-pstBmp->bWidth)/2, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp, MM_TRUE);
                    //WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_MAIL_ALREADY_READ:
                    pstBmp = BMPF_GetBMP(m_ui_Email_already_readIfor);
					WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i] + (ps32ColW[i]-pstBmp->bWidth)/2, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp, MM_TRUE);
                    //WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_VFS_FILE:
                    pstBmp = BMPF_GetBMP(m_ui_USB_file_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_VFS_DIR:
                    pstBmp = BMPF_GetBMP(m_ui_USB_folder_logoIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;
				case CO_AUDIO_TYPE_MPEG:
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_MP_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					break;
                case CO_AUDIO_TYPE_DLOBY:
                    pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_DB_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					break;
				case CO_AUDIO_LL:
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Left_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+pstBmp->bWidth+5, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					break;
				case CO_AUDIO_LR:
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Left_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Right_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+pstBmp->bWidth+5, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					break;
				case CO_AUDIO_RR:
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Right_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+pstBmp->bWidth+5, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					break;
				case CO_AUDIO_RL:
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Right_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					pstBmp = BMPF_GetBMP(m_ui_Audio_Lang_Left_SelectIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i]+pstBmp->bWidth+5, y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);                        
					break;
                case CO_LEFT:
                    pstBmp = BMPF_GetBMP(m_ui_selectbar_arrow_leftIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;

                case CO_RIGHT:
                    pstBmp = BMPF_GetBMP(m_ui_selectbar_arrow_rightIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;
                    
                case CO_PLAYING:
                    pstBmp = BMPF_GetBMP(m_ui_play_iconIfor);
                    WGUIF_DisplayReginTrueColorBmp(ps32ColPos[i], y+( pstList->iHeight - pstBmp->bHeight) / 2, 0,0,ps32ColW[i],pstBmp->bHeight,pstBmp, MM_TRUE);
                    break;
                default:
                    iLen = strlen(pucPtr);
                    iDrawNum = WGUIF_FNTGetTxtWidth(iLen,pucPtr);
                    //MLMF_Print("iDrawNum %d ps32ColW[i] %d %s\n",iDrawNum,ps32ColW[i],pucPtr);
                    if(iDrawNum > ps32ColW[i])
                    {
                        /*start osd showing*/
                        uictrf_SliderStart(pucPtr,ps32ColPos[i],y,ps32ColW[i],pstList->iHeight,u32Font,pstList->iFontHeight);
                    }
                    iDrawNum = ListDrawDirectTxt(ps32ColPos[i],y,ps32ColW[i],stTxtDirect,pucPtr,iLen,u32Font, pstList->iHeight);
                    break;
            }
        }
    }

    if(MM_NULL != acItem)
    {
        MLMF_Free(acItem);
    }
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_FALSE;
    WGUIF_SetFontHeight(s32font_height);
    return bRefresh;
}



