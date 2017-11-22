#ifndef __UICTRAPI_H__
#define __UICTRAPI_H__

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mm_common.h"
#include "wgui.h"

/*****************************************
**
**List Start
**
******************************************/
#define MAXCOLUMNS  10 
#define MAXBYTESPERCOLUMN    				50

/*小于0x21的码为不可打印码，可以用来作为识别码*/
typedef enum
{
    CO_NULL = 0,
    CO_SKIP,
    CO_FAV,
    CO_LOCK,
    CO_SUBSCRIBE, // book program
    CO_RECORD,
    CO_MENUHEAD,
    CO_FAVLOCK,
    CO_MOVE,
    CO_ENCRYPTION,
    CO_MAIL_ALREADY_READ,
    CO_MAIL_NOT_READ,
    CO_VFS_FILE,
    CO_VFS_DIR,
    CO_DEL,
    CO_LEFT,
    CO_RIGHT,
    CO_AUDIO_TYPE_MPEG,
    CO_AUDIO_TYPE_DLOBY,
    CO_AUDIO_LL,
    CO_AUDIO_LR,
    CO_AUDIO_RR,
    CO_AUDIO_RL,
    CO_PLAYING
}LIST_COLUMTYPE; 



typedef enum _m_txtdarwdirect_e
{
    MM_Txt_Left = 0,
    MM_Txt_Mid = 1,
    MM_Txt_Right = 2,
    MM_Txt_NULL = 3
} MMT_TxtDrawDirect_E;



typedef struct _list_item_
{
	MBT_BOOL (*ListReadFunction)(MBT_S32 iIndex,MBT_CHAR* pItem);
	MBT_BOOL (*ListDrawBar)(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight);
	/*modified flag*/
	MBT_BOOL  bUpdateItem;  /*MM_TRUE--normal the prev select and hilight the current select*/
	MBT_BOOL  bUpdatePage;  /*MM_TRUE--redraw all the page item*/
	MBT_BOOL  bMultiplePage;/*MM_TRUE--more than one page
						  MM_FALSE---less than one page*/
						  
	
	/* statues*/
	MBT_S8  cHavesScrollBar;
	MBT_U16  u16ItemMaxChar;

	MMT_TxtDrawDirect_E stTxtDirect;

    /* font height*/
    MBT_S32   iFontHeight;
	
	/* position*/
	MBT_S32   iColStart;
	MBT_S32   iRowStart;
	MBT_S32   iWidth;    /*item width*/
	MBT_S32   iHeight;   /*for vertical list*/
	MBT_S32   iSpace;    /*For horizontal and vertical list*/
	MBT_S32   iColumns;
	MBT_S32   iColPosition[MAXCOLUMNS];
	MBT_S32   iColWidth[MAXCOLUMNS];
	
	/* no */
	MBT_S32   iNoOfItems;
	MBT_S32   iPageMaxItem;
	
	/* select */
	MBT_S32   iPrevSelect;
	MBT_S32   iSelect;
	MBT_S32   iTop;
	MBT_S32   iBottom;
	
	/* Color */
	MBT_U32   u32UnFocusFontColor;    /*the normal front color index*/
	MBT_U32   u32FocusFontClolor;
	MBT_CHAR* pNoItemInfo;
}LISTITEM;



extern MBT_VOID UCTRF_ListGetKey(LISTITEM *pListItem,MBT_S32 iKey);
extern MBT_BOOL UCTRF_ListOnDraw(LISTITEM* pstList );

/*****************************************
**
**List stop
**
******************************************/

/*****************************************
**
**edit start
**
******************************************/

#define m_UiEditMaxInputNum  50
#define MAX_DATAENTRY   					12

typedef enum
{
    TIME_FIELD,
    DATE_FIELD,
    STTRING_BOTTON,
    NUMBER_BOTTON,
    SELECT_BOTTON,
    IP_FIELD,
    PIN_FIELD,
	YEAR_FIELD
}data_entry_field_t;

typedef MBT_VOID (*DataEntryRead)(MBT_S32 iDataEntryIndex,MBT_S32 iItemIndex,MBT_CHAR* pItem);
typedef struct input_struct
{
    DataEntryRead pReadData;
    MBT_S32 iTxtCol;
    MBT_S32 iTxtWidth;
    MBT_S32 iCol;         			/* Field COL position */
    MBT_S32 iWidth;
    MBT_S32 iHeight;
    MBT_S32 iRow;        			 /* Field Row position */
    MBT_S16 iTotalItems;  
    MBT_S16 iSelect;     
    MBT_S8 field_type;	  	/*data_entry_field_t type of the field */
    MBT_S8 bHidden;		/* entry of this field is hidden */
    MBT_U32   iUnfucusFrontColor;    /*the normal front color index*/
    MBT_U32   iFucusFrontColor;
    MBT_U32   iSelectByteFront;
    MBT_U32   u32FontSize;
    MBT_CHAR  acDataRead[m_UiEditMaxInputNum+4];	/*
                                            * buffer into which the entered data
                                            * will be kept
                                            */
}DATAENTRY;

typedef MBT_VOID (*EditDrawCall)(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight);

typedef struct _edit_
{
    DATAENTRY stDataEntry[MAX_DATAENTRY];
    EditDrawCall EditDrawItemBar;
    MBT_BOOL bModified;
    MBT_BOOL bPaintPrev;
    MBT_BOOL bPaintCurr;

    /*color   i delete the color field instead of the global color index*/
    MBT_S32 iSelect;
    MBT_S32 iPrevSelect;
    MBT_S32 iTotal;
}EDIT;

extern MBT_BOOL UCTRF_EditGetKey(EDIT *pstEdit,MBT_S32 iKey);
extern MBT_BOOL UCTRF_EditOnDraw(EDIT *pstEdit);

/*****************************************
**
**edit stop
**
******************************************/

/*****************************************
**
**slider start
**
******************************************/

extern MBT_BOOL UCTRF_SliderOnDraw(MBT_VOID);
extern MBT_VOID UCTRF_SliderFree(MBT_VOID);
/*****************************************
**
**slider stop
**
******************************************/

#endif
