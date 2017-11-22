#include "ui_share.h"

static MBT_CHAR* uiv_GameGobangString[2][16] = 
{
    {
        "Gobang",
        "Select Color" ,
        "Select/Go",
        "White",
        "Black",
        "Press OK to Continue",
        "Game Over",/*16*/
        "Selece Game Type",
        "One Player",
        "Two Player",
        "Gameing",/*10*/
        "Black",
        "White",
        "Black Win",
        "White Win",
        "Dogfall"
    },

    {
        "Gobang",
        "Select Color" ,
        "Select/Go",
        "White",
        "Black",
        "Press OK to Continue",
        "Game Over",/*16*/
        "Selece Game Type",
        "One Player",
        "Two Player",
        "Gameing",/*10*/
        "Black",
        "White",
        "Black Win",
        "White Win",
        "Dogfall"
    }
};

#define HELP_HINT_COLOR 0xFF848484


#ifdef min
#undef min
#endif
#define min(x,y) (x<y?x:y)

/* Macro for computing max of two numbers */
#ifdef max
#undef max
#endif
#define max(x,y) (x>y?x:y)
#define COLUMNNUM 15    //最大行数和列数
#define ROWNUM 15
//#define EMPTY 0
//#define WHITE 1
//#define BLACK 2
typedef struct 
{
	MBT_U32 g_nStoneNum;//the total number of chess
	MBT_U32 g_nCurx,g_nCury;//recent position
	MBT_U32 m_nColor;//indicate who play 0- white 1-black last time
	MBT_U32   m_bGameOver;//indicate whether it is over now
	MBT_S32   m_nType;
	MBT_U32 m_Board[ROWNUM][COLUMNNUM];//chessboard
	MBT_U32 m_Color[ROWNUM][COLUMNNUM];
}Gamepara;

//static MBT_U32   whati=1;
static Gamepara uiv_u8GoBangMyVar;
static MBT_U8 uiv_u8GoBangMyFlag=MM_TRUE;
//myflag控制画提示的全局变量
static MBT_U8 uiv_u8GoBangGameRet;
//游戏胜负确定的情况下改变它的值，外层函数做处理。gameret


typedef struct{
    MBT_U32  iCol;
    MBT_U32  iRow;
}ColumnRowType;	//定义一个表示行列坐标的结构体

typedef struct 
{
	MBT_S32 x;
	MBT_S32 y;
	MBT_S32 height;
	MBT_S32 width;
}T_OSGRect;  //定义一个结构体
   
//定义枚举类型变量来表示消息发送给的窗口
typedef enum {bStartFlag,bMToCFlag,bMToMFlag,bOverFlag,bResumeFlag}ProgramFlagType;
//static MBT_VOID uif_GameGobangHelpInfo(MBT_VOID );
static MBT_U16 Judge(MBT_U16 nX, MBT_U16 nY, Gamepara *globalvar);//return the  grade of the position
//static MBT_VOID Ring(Gamepara *globalvar);//deal the result of this according the value of m_nType got from judge()
static MBT_VOID UrgentPoint(Gamepara *globalvar);//get the most good position for computer
static MBT_VOID keyup(Gamepara *globalvar);//deal with the act of keyup
static MBT_VOID keydown(Gamepara *globalvar);//deal with the act of keydown
static MBT_VOID keyleft(Gamepara *globalvar);//deal with the act of keyleft
static MBT_VOID keyright(Gamepara *globalvar);//deal with the act of keyright
static MBT_VOID drawCurrentChess(const MBT_U32 iFlag,ColumnRowType  iColRowNum);
static MBT_VOID destroyCurrentGrid(ColumnRowType  iColRowNum);
static MBT_VOID drawCurrentCursor(ColumnRowType  iColRowNum);
static MBT_VOID Game_DrawWinner(MBT_CHAR * string);
static MBT_VOID drawChessHint(MBT_CHAR *isetstring );
static MBT_VOID draGobangHint(MBT_VOID);
static MBT_U8 SwitchGame(MBT_VOID);
static MBT_VOID  ComputerOK(Gamepara *globalvar);
static  MBT_VOID ManOK(Gamepara *globalvar);
static MBT_VOID Ring(Gamepara *globalvar);

static MBT_U8 SwitchColor(MBT_VOID);
static MBT_VOID DrawSwitchColor(MBT_U8 thisPtr);
//static MBT_VOID DrawGameConfirmOrCancel2(MBT_U8 ithisPtr);


#define BOARD_LINE_NUMBER 15
#define LPALETTE_MENU_BACKGROUND 0x4a
#define LPALETTE_CAPTION_BACKGROUND 0x35//13
#define LPALETTE_MENUFOCUS_BACKGROUND 0x9c//yellow
#define LPALETTE_GREY_50       0xf5
#define LPALETTE_GREY_180        0xe9
#define LPALETTE_LIGHT_BORDER        0xba
#define LPALETTE_GREY_BORDERTOP        0xc8
#define LPALETTE_GREY_BORDERRIGHT        0xc4
#define LLINE_WIDTH 6
#define INNER_EDGE 0xb2
#define MENU_EDGE 0xc0
#define GOBANG_START_LEFT   (P_MENU_LEFT + 320)//55
#define GOBANG_START_TOP  (P_MENU_TOP+150)//75


//myflag控制画提示的全局变量

#define GROUND_GRID_WIDTH 26

static MBT_VOID drawBackGround(MBT_VOID )
{ 
    MBT_S32 x = GOBANG_START_LEFT;
    MBT_S32 y = GOBANG_START_TOP ;
    MBT_S32 i=0,j=0;
    T_OSGRect	dRect;
    uif_ShareDrawFilledBoxWith4CircleCorner(x, y, 392, 392, 8, LISTITEM_NOFOCUS_COLOR);
    x += 15;
    y += 15;

    for(i=0;i<COLUMNNUM-1;i++)
    for(j=0;j<=COLUMNNUM-2;j++)
    {	
        dRect.x = x+i*GROUND_GRID_WIDTH;
        dRect.y = y+j*GROUND_GRID_WIDTH;
        dRect.width =  GROUND_GRID_WIDTH - 2;
        dRect.height = GROUND_GRID_WIDTH - 2;
        WGUIF_DrawFilledRectangle(dRect.x, dRect.y,dRect.width,dRect.height, SCROLLBAR_BACK_COLOR);
    }
}
/***************************************************************************************
     function:drawCurrentCursor();
     函数功能:在给定的行列处画出光标
     参数:
                  ColumnRowType  iColRowNum
                  结构体参数给定行和列号
***************************************************************************************/
static MBT_VOID drawCurrentCursor(ColumnRowType  iColRowNum)
{  
    MBT_U32 xCenter = 0; 
    MBT_U32 yCenter = 0; 

    if (iColRowNum.iCol == 0)
    {
        xCenter = GOBANG_START_LEFT+15+iColRowNum.iCol*GROUND_GRID_WIDTH;
    }
    else
    {
        xCenter = GOBANG_START_LEFT+15+iColRowNum.iCol*GROUND_GRID_WIDTH - 1;//修正下位置
    }

    if (iColRowNum.iRow == 0)
    {
        yCenter = GOBANG_START_TOP+15+iColRowNum.iRow*GROUND_GRID_WIDTH;
    }
    else
    {
        yCenter = GOBANG_START_TOP+15+iColRowNum.iRow*GROUND_GRID_WIDTH - 1;//修正下位置
    }
    
    
    WGUIF_DrawFilledCircle(xCenter, yCenter, 6, FONT_FRONT_COLOR_RED);
}


/**function:		drawCurrentChess();
     函数功能:在给定的行列处画出棋子
     参数:
		    const MBT_U32 iFlag
		    iFlag==0 画黑棋
		               1 画白棋
                  ColumnRowType  iColRowNum
                  结构体参数给定行和列号
**/
//用画图函数画的，可以把棋子作成位图会更美观。
static MBT_VOID drawCurrentChess(const MBT_U32 iFlag,ColumnRowType  iColRowNum)
{
   	ColumnRowType  mColRowNum;
    BITMAPTRUECOLOR *pstFramBmpBlack = NULL;
    BITMAPTRUECOLOR *pstFramBmpWhite = NULL;
    MBT_U32 xCenter = 0;
    MBT_U32 yCenter = 0;
    MBT_U32 xCenterOffSet = 0;
    MBT_U32 yCenterOffSet = 0;

    pstFramBmpBlack = BMPF_GetBMP(m_ui_game_blackIfor);
    pstFramBmpWhite = BMPF_GetBMP(m_ui_game_whiteIfor);
   	mColRowNum.iCol=iColRowNum.iCol;
   	mColRowNum.iRow=iColRowNum.iRow;

    if (iColRowNum.iCol == 0)
    {
        xCenter = GOBANG_START_LEFT+15+iColRowNum.iCol*GROUND_GRID_WIDTH;
    }
    else
    {
        xCenter = GOBANG_START_LEFT+15+iColRowNum.iCol*GROUND_GRID_WIDTH - 1;//修正下位置
    }

    if (iColRowNum.iRow == 0)
    {
        yCenter = GOBANG_START_TOP+15+iColRowNum.iRow*GROUND_GRID_WIDTH;
    }
    else
    {
        yCenter = GOBANG_START_TOP+15+iColRowNum.iRow*GROUND_GRID_WIDTH - 1;//修正下位置
    }

    xCenterOffSet = pstFramBmpBlack->bWidth/2;
    yCenterOffSet = pstFramBmpBlack->bHeight/2;
	
   	if(iFlag==1)
   	{
          WGUIF_DisplayReginTrueColorBmp(xCenter-xCenterOffSet,yCenter-yCenterOffSet,0,0,pstFramBmpBlack->bWidth,pstFramBmpBlack->bHeight, pstFramBmpBlack,MM_TRUE);
   	}
   	else
   	{
		  WGUIF_DisplayReginTrueColorBmp(xCenter-xCenterOffSet,yCenter-yCenterOffSet, 0,0,pstFramBmpWhite->bWidth,pstFramBmpWhite->bHeight,pstFramBmpWhite,MM_TRUE);
   	}
}
/*************************************************************************************
function:		destroyCurrentGrid()
            函数功能:恢复给定行和列位置的
                                   交叉点的原始图像,覆盖棋子或光标
                       参数:ColumnRowType  iColRowNum
                                    给定行号和列号
***************************************************************************************/

static MBT_VOID destroyCurrentGrid(ColumnRowType globalvar)
{   
    MBT_S32 x=GOBANG_START_LEFT+15;
    MBT_S32 y=GOBANG_START_TOP+15;
    if(globalvar.iCol==0&&globalvar.iRow==0)
    {
        WGUIF_DrawFilledRectangle(x-10, y-10,20,20, LISTITEM_NOFOCUS_COLOR);
        WGUIF_DrawFilledRectangle(x, y,10,10, SCROLLBAR_BACK_COLOR);
    }
    
    if(globalvar.iCol==0&&globalvar.iRow==14)
  	{
        WGUIF_DrawFilledRectangle(x-10, y-10+26*(globalvar.iRow),20,20, LISTITEM_NOFOCUS_COLOR);
        WGUIF_DrawFilledRectangle(x, y-10+26*(globalvar.iRow),10,8, SCROLLBAR_BACK_COLOR);
  	}
    
    if(globalvar.iCol==14&&globalvar.iRow==0)
  	{
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y-10,20,20, LISTITEM_NOFOCUS_COLOR);
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y,8,10, SCROLLBAR_BACK_COLOR);
  	}
    
    if(globalvar.iCol==14&&globalvar.iRow==14)
  	{
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y-10+26*(globalvar.iRow),20,20, LISTITEM_NOFOCUS_COLOR);
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y-10+26*(globalvar.iRow),8,8, SCROLLBAR_BACK_COLOR);
  	}
    
    if(globalvar.iCol==0&&(globalvar.iRow!=0&&globalvar.iRow!=14))
    {
        WGUIF_DrawFilledRectangle(x-10, y-10+26*(globalvar.iRow),20,20, LISTITEM_NOFOCUS_COLOR);
        WGUIF_DrawFilledRectangle(x, y-10+26*(globalvar.iRow),10,8, SCROLLBAR_BACK_COLOR);
        WGUIF_DrawFilledRectangle(x, y+26*(globalvar.iRow),10,10, SCROLLBAR_BACK_COLOR);
    }
    
    if((globalvar.iCol!=0&&globalvar.iCol!=14)&&globalvar.iRow==0)
    {
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y-10,20,20, LISTITEM_NOFOCUS_COLOR);
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y,8,10, SCROLLBAR_BACK_COLOR);
        WGUIF_DrawFilledRectangle(x+(globalvar.iCol)*26, y,10,10, SCROLLBAR_BACK_COLOR);
    }
    
    if((globalvar.iCol!=0&&globalvar.iCol!=14)&&globalvar.iRow==14)
    {
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y-10+26*(globalvar.iRow),20,20, LISTITEM_NOFOCUS_COLOR);
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y-10+26*(globalvar.iRow),8,8, SCROLLBAR_BACK_COLOR);
        WGUIF_DrawFilledRectangle(x+(globalvar.iCol)*26, y-10+26*(globalvar.iRow),10,8, SCROLLBAR_BACK_COLOR);
    }
    
    if(globalvar.iCol==14&&(globalvar.iRow!=0&&globalvar.iRow!=14))
    {
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y-10+26*(globalvar.iRow),20,20, LISTITEM_NOFOCUS_COLOR);
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y-10+26*(globalvar.iRow),8,8, SCROLLBAR_BACK_COLOR);
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y+26*(globalvar.iRow),8,10, SCROLLBAR_BACK_COLOR);
    }


    if((globalvar.iCol!=14&&globalvar.iCol!=0)&&(globalvar.iRow!=0&&globalvar.iRow!=14))
    {
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y-10+26*(globalvar.iRow),20,20, LISTITEM_NOFOCUS_COLOR);
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y-10+26*(globalvar.iRow),8,8, SCROLLBAR_BACK_COLOR);
        WGUIF_DrawFilledRectangle(x-10+(globalvar.iCol)*26, y+26*(globalvar.iRow),8,10, SCROLLBAR_BACK_COLOR);
        WGUIF_DrawFilledRectangle(x+(globalvar.iCol)*26, y-10+26*(globalvar.iRow),10,8, SCROLLBAR_BACK_COLOR);
        WGUIF_DrawFilledRectangle(x+(globalvar.iCol)*26, y+26*(globalvar.iRow),10,10, SCROLLBAR_BACK_COLOR);
    }      
}

/*************************************************************************************
function:		Game_Gobang()
            函数功能:五子棋的主函数，完成所有的游戏逻辑控制控制
                       参数:无
                 返回值:无
***************************************************************************************/
extern MBT_U8 GameBeforeExitConfirmOrCancel(MBT_VOID);
MBT_S32 Game_Gobang(MBT_S32 iPara)
{
    MBT_S32 key;
    MBT_U8 mysetnum;
    MBT_U8 mycolor;
    MBT_S32 i,j,k =1;
    MBT_CHAR *string=MM_NULL;
    MBT_CHAR *isetstring=MM_NULL;
    MBT_BOOL bRefresh = MM_TRUE;
    ColumnRowType pointBegin;
    UIF_StopAV();

    //画大面版，不出市化游戏界面。
    //NM_GameGobang_DrawPanel();
    uif_ShareDrawGameCommonPanel();
    bRefresh = MM_TRUE;

GameSwitchControl:
    mysetnum=0;	
    drawBackGround();
    bRefresh = MM_TRUE;
    mysetnum=1;//SwitchGame();
    if (0)//调用下，不调用编译报错，不想注释代码
    {
        SwitchGame();
    }
    
    switch(mysetnum)
    {
        case 1:
            goto SinglePlayer;
            break;
        case 2:
            goto TwoPlayer;
            break;
        case 3:
            goto ExitGame;
            break;
        default:
            break;
    }

SinglePlayer:
    drawBackGround();
    draGobangHint();
    //画第一个光标，初始化myvar;
    uiv_u8GoBangMyVar.m_nColor=0;
    for(i=0;i<COLUMNNUM;i++)
    {
        for(j=0;j<ROWNUM;j++)
        {
            uiv_u8GoBangMyVar.m_Board[i][j]=0;
            uiv_u8GoBangMyVar.m_Color[i][j]=0;
        }
    }
    uiv_u8GoBangMyVar.g_nStoneNum=0;
    uiv_u8GoBangMyVar.m_bGameOver=MM_FALSE;
    uiv_u8GoBangMyVar.g_nCurx=7;
    uiv_u8GoBangMyVar.g_nCury=7;
    uiv_u8GoBangMyVar.m_nType = -1;
    //if (uiv_u8GoBangMyVar.m_nType!=-1)
    //	 ColumnRowType pointBegin;
    pointBegin.iCol=uiv_u8GoBangMyVar.g_nCurx;
    pointBegin.iRow=uiv_u8GoBangMyVar.g_nCurx;
    drawCurrentCursor(pointBegin);
    uiv_u8GoBangMyFlag=MM_TRUE;
    uiv_u8GoBangGameRet=0;
    mycolor = 1;//SwitchColor();//1 表示 选黑棋，先下
    if (0)//调用下，不调用编译报错，不想注释代码
    {
        SwitchColor();
    }
    
    switch(mycolor)
    {
        case 1:
            break;
        case 2:
            uiv_u8GoBangMyFlag=MM_FALSE;
            uiv_u8GoBangMyVar.m_nColor=1;
            uiv_u8GoBangMyVar.m_Color[7][7]=1;
            uiv_u8GoBangMyVar.m_Board[7][7]=2;
            break;
        case 3:goto ExitGame;
            break;
        default:
            break;
    }
    //isetstring=uiv_GameGobangString[uiv_u8Language][8];
    //drawChessHint(isetstring);
    bRefresh = MM_TRUE;
    while(MM_TRUE)   
    {   

        if(mycolor == 2)
        {
            drawCurrentChess(1,pointBegin);
            if(k == 1)
            {
                drawCurrentCursor(pointBegin);
                k++;
            }
            bRefresh = MM_TRUE;
        }
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        key = uif_ReadKey ( 125);
        switch(key)
        {
            case DUMMY_KEY_LEFTARROW:
                keyleft(&uiv_u8GoBangMyVar);
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_RIGHTARROW:
                keyright(&uiv_u8GoBangMyVar);
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_UPARROW:
                keyup(&uiv_u8GoBangMyVar);
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_DNARROW:
                keydown(&uiv_u8GoBangMyVar);
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_SELECT:
                ComputerOK(&uiv_u8GoBangMyVar);
                bRefresh = MM_TRUE;
                if(1==uiv_u8GoBangGameRet)
                {
                    goto GameSwitchControl;
                }
                //drawChessHint(isetstring);
                bRefresh = MM_TRUE;
                for(i=0;i<=15;i++)
                {
                    j=rand();
                }
                break;

            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_BACK:
            case DUMMY_KEY_MENU:
                if( GameBeforeExitConfirmOrCancel())
                {
                    return DUMMY_KEY_EXIT;	
                }
                break;
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            default:
                if( uif_QuickKey(key))
                {
                    return DUMMY_KEY_EXIT;
                }
                break;
        }
    }
    
TwoPlayer:
    drawBackGround();
    uiv_u8GoBangMyVar.m_nColor=0;
    for(i=0;i<COLUMNNUM;i++)
    {
        for(j=0;j<ROWNUM;j++)
        {
            uiv_u8GoBangMyVar.m_Board[i][j]=0;
            uiv_u8GoBangMyVar.m_Color[i][j]=0;
        }
    }
    uiv_u8GoBangMyVar.g_nStoneNum=0;
    uiv_u8GoBangMyVar.m_bGameOver=MM_FALSE;
    uiv_u8GoBangMyVar.g_nCurx=7;
    uiv_u8GoBangMyVar.g_nCury=7;
    pointBegin.iCol=uiv_u8GoBangMyVar.g_nCurx;
    pointBegin.iRow=uiv_u8GoBangMyVar.g_nCurx;
    uiv_u8GoBangMyFlag=MM_TRUE;
    uiv_u8GoBangGameRet=0;

    isetstring=uiv_GameGobangString[uiv_u8Language][9];
    drawChessHint(isetstring);

    drawCurrentCursor(pointBegin);
    bRefresh = MM_TRUE;
    while(1)   
    {
        bRefresh |= uif_DisplayTimeOnCaptionStr(MM_FALSE, UICOMMON_TITLE_AREA_Y);
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        
        key = uif_ReadKey ( 125);
        switch(key)
        {
            case DUMMY_KEY_LEFTARROW:
                keyleft(&uiv_u8GoBangMyVar);
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_RIGHTARROW:
                keyright(&uiv_u8GoBangMyVar);
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_UPARROW:
                keyup(&uiv_u8GoBangMyVar);
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_DNARROW:
                keydown(&uiv_u8GoBangMyVar);
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_SELECT:
                ManOK(&uiv_u8GoBangMyVar);
                bRefresh = MM_TRUE;
                if(1==uiv_u8GoBangGameRet)
                {
                    goto GameSwitchControl;
                }
                drawChessHint(isetstring);//画提示。
                break;
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_BACK:
            case DUMMY_KEY_MENU:
                if( GameBeforeExitConfirmOrCancel())
                {
                    return DUMMY_KEY_EXIT;	
                }
                break;
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            default:
                if( uif_QuickKey(key))
                {
                    return DUMMY_KEY_EXIT;
                }
                break;
        }
    }
    
ExitGame:
    string=MM_NULL;	 	
    if( GameBeforeExitConfirmOrCancel())//退出之前的对话框
    {
        return DUMMY_KEY_EXIT;
    }
    else 
    {
        goto GameSwitchControl;
    }
}


static MBT_U8 SwitchColor(MBT_VOID)
{
    T_OSGRect	textRect;
    MBT_S32 key;
    MBT_BOOL thisPtr=MM_TRUE;
    MBT_BOOL bRedraw=MM_TRUE;
    MBT_BOOL bRefresh=MM_TRUE;
        
    textRect.x = GOBANG_START_LEFT + 415;
    textRect.y = GOBANG_START_TOP + 205;
    textRect.width = 210;
    textRect.height = 164;


    uif_ShareDrawFilledBoxWith4CircleCorner( textRect.x, textRect.y,textRect.width,textRect.height, 8,LISTITEM_NOFOCUS_COLOR );  
    //uif_ShareDrawFilledBoxWith4CircleCorner(textRect.x+20, textRect.y+15,160,30, 8,CHANNEL_BAR_PANNEL_BACK);
    WGUIF_FNTDrawTxt(textRect.x+82,textRect.y+20,strlen(uiv_GameGobangString[uiv_u8Language][1]), uiv_GameGobangString[uiv_u8Language][1], FONT_FRONT_COLOR_YELLOW);

    //uif_ShareDrawFilledBoxWith4CircleCorner(thisStartX,thisStartY+90,thisWidth,90, 8,SCROLLBAR_BACK_COLOR );
    while(1)
    {   
        if(bRedraw)
        {
            bRedraw=MM_FALSE;
            DrawSwitchColor(thisPtr);
            bRefresh = MM_TRUE;
        }

        if(bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        key = uif_ReadKey (125);

        switch(key)
        {
            case DUMMY_KEY_LEFTARROW:
                thisPtr=!thisPtr;
                bRedraw=MM_TRUE;
                break;
            case DUMMY_KEY_RIGHTARROW:
                thisPtr=!thisPtr;
                bRedraw=MM_TRUE;
                break;
            case DUMMY_KEY_UPARROW:
                thisPtr=!thisPtr;
                bRedraw=MM_TRUE;
                break;
            case DUMMY_KEY_DNARROW:
                thisPtr=!thisPtr;
                bRedraw=MM_TRUE;
                break;
            case DUMMY_KEY_SELECT:
                {
                    if(thisPtr)
                    {
                        return 1;
                    }
                    else
                    {
                        return 2;
                    }
                }
                break;
            case DUMMY_KEY_BACK:
            case DUMMY_KEY_MENU:
            case DUMMY_KEY_EXIT:
                return 3;
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            default:
                if( uif_QuickKey(key))
                {
                    return 3;
                }
                break;
        }
    }
    return 0;

}


static MBT_VOID DrawSwitchColor(MBT_U8 thisPtr)
{
    T_OSGRect  textRect;
    BITMAPTRUECOLOR *pstFramBmpBlack = NULL;
    BITMAPTRUECOLOR *pstFramBmpWhite = NULL;

    pstFramBmpBlack = BMPF_GetBMP(m_ui_game_blackIfor);
    pstFramBmpWhite = BMPF_GetBMP(m_ui_game_whiteIfor);

    textRect.x = GOBANG_START_LEFT + 412;
    textRect.y = GOBANG_START_TOP + 175;
    textRect.width = 210;
    textRect.height = 164;

    WGUIF_DrawFilledRectangle(textRect.x+30, textRect.y+100,160,80, SCROLLBAR_BACK_COLOR);

    if(!thisPtr)
    {
        WGUIF_DisplayReginTrueColorBmp(textRect.x+48,textRect.y+108, 0,0,pstFramBmpBlack->bWidth,pstFramBmpBlack->bHeight,pstFramBmpBlack,MM_TRUE);
        WGUIF_DisplayReginTrueColorBmp(textRect.x+48,textRect.y+148,0,0,pstFramBmpWhite->bWidth,pstFramBmpWhite->bHeight, pstFramBmpWhite,MM_TRUE);
        WGUIF_DrawFilledRectangle(textRect.x+30, textRect.y+100, 160, 37, SCROLLBAR_BACK_COLOR);
        WGUIF_FNTDrawTxt(textRect.x+80, textRect.y+108, strlen(uiv_GameGobangString[uiv_u8Language][4]), uiv_GameGobangString[uiv_u8Language][4],FONT_FRONT_COLOR_BLACK);
        WGUIF_FNTDrawTxt(textRect.x+80,textRect.y+148, strlen(uiv_GameGobangString[uiv_u8Language][3]), uiv_GameGobangString[uiv_u8Language][3], FONT_FRONT_COLOR_WHITE);
    }
    else
    {
        WGUIF_DisplayReginTrueColorBmp(textRect.x+48,textRect.y+108, 0,0,pstFramBmpBlack->bWidth,pstFramBmpBlack->bHeight,pstFramBmpBlack,MM_TRUE);
        WGUIF_DisplayReginTrueColorBmp(textRect.x+48,textRect.y+148,0,0,pstFramBmpWhite->bWidth,pstFramBmpWhite->bHeight, pstFramBmpWhite,MM_TRUE);
        WGUIF_DrawFilledRectangle(textRect.x+30, textRect.y+140, 160, 37, SCROLLBAR_BACK_COLOR);
        WGUIF_FNTDrawTxt(textRect.x+80, textRect.y+108,strlen(uiv_GameGobangString[uiv_u8Language][4]), uiv_GameGobangString[uiv_u8Language][4],FONT_FRONT_COLOR_WHITE);
        WGUIF_FNTDrawTxt(textRect.x+80, textRect.y+148, strlen(uiv_GameGobangString[uiv_u8Language][3]), uiv_GameGobangString[uiv_u8Language][3], FONT_FRONT_COLOR_BLACK);
    }
}
/*************************************************************************************
                       function:drawChessHint(MBT_CHAR *isetstring )
            函数功能:画游戏右侧的帮助信息，提示是黑棋
                                   下还是白棋下， 定义一个全局静态变量
                                   myflag，每调用一次函数，myflag真假值变化一次
                                   为真， 画黑棋
                                   为假，画白旗
                       参数:控制提示人工智能还是双人游戏
                 返回值:无
***************************************************************************************/
static MBT_VOID drawChessHint(MBT_CHAR *isetstring )
{
	T_OSGRect	textRect;
    //   MBT_S32 i=0,j=0;
    BITMAPTRUECOLOR *pstFramBmpBlack = NULL;
    BITMAPTRUECOLOR *pstFramBmpWhite = NULL;

    pstFramBmpBlack = BMPF_GetBMP(m_ui_game_blackIfor);
    pstFramBmpWhite = BMPF_GetBMP(m_ui_game_whiteIfor);
	//初始化变量
    textRect.x = GOBANG_START_LEFT + 415;
	textRect.y = GOBANG_START_TOP + 205;
	textRect.width = 210;
	textRect.height = 164;



	
    uif_ShareDrawFilledBoxWith4CircleCorner( textRect.x, textRect.y,textRect.width,textRect.height, 8,LISTITEM_NOFOCUS_COLOR );  
    WGUIF_FNTDrawTxt(textRect.x+60,textRect.y+20,strlen(uiv_GameGobangString[uiv_u8Language][10]), uiv_GameGobangString[uiv_u8Language][10], FONT_FRONT_COLOR_WHITE);

	if(uiv_u8GoBangMyFlag)
    //黑棋
    {  
        WGUIF_DisplayReginTrueColorBmp(textRect.x+85,textRect.y+75, 0,0,pstFramBmpBlack->bWidth,pstFramBmpBlack->bHeight,pstFramBmpBlack,MM_TRUE);
        WGUIF_DrawFilledRectangle(textRect.x+60,textRect.y+110,75,21, LISTITEM_NOFOCUS_COLOR);
        WGUIF_FNTDrawTxt(textRect.x+60,textRect.y+110,strlen(uiv_GameGobangString[uiv_u8Language][11]), uiv_GameGobangString[uiv_u8Language][11], FONT_FRONT_COLOR_BLACK);
	}
	else
	//白棋
    {  
        WGUIF_DisplayReginTrueColorBmp(textRect.x+85,textRect.y+75, 0,0,pstFramBmpWhite->bWidth,pstFramBmpWhite->bHeight,pstFramBmpWhite,MM_TRUE);
        WGUIF_DrawFilledRectangle(textRect.x+60,textRect.y+110,75,21, LISTITEM_NOFOCUS_COLOR);
        WGUIF_FNTDrawTxt(textRect.x+60,textRect.y+110,strlen(uiv_GameGobangString[uiv_u8Language][12]), uiv_GameGobangString[uiv_u8Language][12], FONT_FRONT_COLOR_WHITE);
	}	
}

static MBT_VOID draGobangHint(MBT_VOID)
{
    MBT_CHAR* infostr[2][4] =
    {
        {
            "Com",
            "User",
			"Select",
			"Exit"
        },
        {
			"Com",
            "User",
			"Select",
			"Exit"
        }
    };
    
	T_OSGRect	textRectup;
    T_OSGRect	textRectdown;
    T_OSGRect	textRectCom;
    T_OSGRect	textRectUser;
    T_OSGRect	textRectBlack;
    T_OSGRect	textRectWhite;

    MBT_S32 s32yOffSet = 0;
    MBT_S32 s32yOffSetBmp = 0;
    MBT_S32 font_height = 0;
    //   MBT_S32 i=0,j=0;
    BITMAPTRUECOLOR *pstFramBmpBlack = NULL;
    BITMAPTRUECOLOR *pstFramBmpWhite = NULL;

    BITMAPTRUECOLOR *pstFramBmp = NULL;

    pstFramBmpBlack = BMPF_GetBMP(m_ui_game_blackIfor);
    pstFramBmpWhite = BMPF_GetBMP(m_ui_game_whiteIfor);
	//初始化变量
    textRectup.x = GOBANG_START_LEFT + 445;
	textRectup.y = GOBANG_START_TOP + 54;
	textRectup.width = 180;
	textRectup.height = 115;

    textRectdown.x = GOBANG_START_LEFT + 445;
	textRectdown.y = GOBANG_START_TOP + 54*2 + textRectup.height;
	textRectdown.width = 180;
	textRectdown.height = 115;

    textRectCom.x = textRectup.x + 25;
	textRectCom.y = textRectup.y + 10;
	textRectCom.width = 130;
	textRectCom.height = 40;

    textRectUser.x = textRectCom.x;
	textRectUser.y = textRectCom.y + textRectCom.height + 15;
	textRectUser.width = 130;
	textRectUser.height = 40;

    textRectBlack.x = textRectUser.x;
	textRectBlack.y = textRectUser.y + textRectUser.height + 10*2 + 54;
	textRectBlack.width = 130;
	textRectBlack.height = 40;

    textRectWhite.x = textRectBlack.x;
	textRectWhite.y = textRectBlack.y + textRectBlack.height + 15;
	textRectWhite.width = 130;
	textRectWhite.height = 40;

    font_height =  WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    s32yOffSet = (40 - SMALL_GWFONT_HEIGHT)/2;

    uif_ShareDrawFilledBoxWith4CircleCorner( textRectup.x, textRectup.y,textRectup.width,textRectup.height, 8,LISTITEM_NOFOCUS_COLOR );  

    uif_ShareDrawFilledBoxWith4CircleCorner( textRectCom.x, textRectCom.y,textRectCom.width,textRectCom.height, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_whiteIfor);
    s32yOffSetBmp = (40 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(textRectCom.x + 10, textRectCom.y + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(textRectCom.x + 10+ pstFramBmp->bWidth + 15, textRectCom.y + s32yOffSet, strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner( textRectUser.x, textRectUser.y,textRectUser.width,textRectUser.height, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_blackIfor);
    s32yOffSetBmp = (40 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(textRectUser.x + 10, textRectUser.y + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(textRectUser.x + 10+ pstFramBmp->bWidth + 15, textRectUser.y + s32yOffSet, strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner( textRectdown.x, textRectdown.y,textRectdown.width,textRectdown.height, 8,LISTITEM_NOFOCUS_COLOR );  

    uif_ShareDrawFilledBoxWith4CircleCorner( textRectBlack.x, textRectBlack.y,textRectBlack.width,textRectBlack.height, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_okIfor);
    s32yOffSetBmp = (40 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(textRectBlack.x + 10, textRectBlack.y + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(textRectBlack.x + 10+ pstFramBmp->bWidth + 15, textRectBlack.y + s32yOffSet, strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner( textRectWhite.x, textRectWhite.y,textRectWhite.width,textRectWhite.height, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_exitIfor);
    s32yOffSetBmp = (40 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(textRectWhite.x + 10, textRectWhite.y + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(textRectWhite.x + 10+ pstFramBmp->bWidth + 15, textRectWhite.y + s32yOffSet, strlen(infostr[uiv_u8Language][3]), infostr[uiv_u8Language][3], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}

static  MBT_VOID ManOK(Gamepara *globalvar)
{   
	ColumnRowType point;
	if (globalvar->m_Board[globalvar->g_nCurx][globalvar->g_nCury]==0&&!globalvar->m_bGameOver)  
	{					// Users
		globalvar->m_nColor = 1-globalvar->m_nColor;			// 1-Black  0-White
		globalvar->m_Board[globalvar->g_nCurx][globalvar->g_nCury]=globalvar->m_nColor+1;
		globalvar->m_Color[globalvar->g_nCurx][globalvar->g_nCury]=globalvar->m_nColor;
		point.iCol=globalvar->g_nCurx;
		point.iRow=globalvar->g_nCury;
		drawCurrentChess(globalvar->m_nColor,point);
        uiv_u8GoBangMyFlag=!uiv_u8GoBangMyFlag;
		Judge(globalvar->g_nCurx, globalvar->g_nCury, globalvar);
		Ring(globalvar);
		drawCurrentCursor(point);			 
	}
}	            

static  MBT_VOID ComputerOK(Gamepara *globalvar)
{      
	ColumnRowType point;
	if (globalvar->m_Board[globalvar->g_nCurx][globalvar->g_nCury]==0&&!globalvar->m_bGameOver)  
	{					// Users
		globalvar->m_nColor = 1-globalvar->m_nColor;			// 1-Black  0-White
		globalvar->m_Board[globalvar->g_nCurx][globalvar->g_nCury]=globalvar->m_nColor+1;
		globalvar->m_Color[globalvar->g_nCurx][globalvar->g_nCury]=globalvar->m_nColor;
		point.iCol=globalvar->g_nCurx;
		point.iRow=globalvar->g_nCury;
		
		drawCurrentChess(globalvar->m_nColor,point);
              
			
		Judge(globalvar->g_nCurx, globalvar->g_nCury, globalvar);
		//uif_ShareDrawFilledBoxWith4CircleCorner(600,400,100,100, 8,SUBMENU_MIDDLE_BACK_DEEP_COLOR );

			
		Ring(globalvar);

			  
		//computer;
		if(!globalvar->m_bGameOver)
		{    // uif_ShareDrawFilledBoxWith4CircleCorner(600,100,50,50, 8,SUBMENU_MIDDLE_BACK_DEEP_COLOR );
			UrgentPoint(globalvar);
			//uif_ShareDrawFilledBoxWith4CircleCorner(600,400,100,50, 8,SUBMENU_MIDDLE_BACK_DEEP_COLOR );
	       	globalvar->m_nColor=1-globalvar->m_nColor;
			globalvar->m_Board[globalvar->g_nCurx][globalvar->g_nCury]=globalvar->m_nColor+1;
			globalvar->m_Color[globalvar->g_nCurx][globalvar->g_nCury]=globalvar->m_nColor;
			point.iCol=globalvar->g_nCurx;
			point.iRow=globalvar->g_nCury;
			drawCurrentChess(globalvar->m_nColor,point);
			Judge(globalvar->g_nCurx, globalvar->g_nCury, globalvar);
			Ring(globalvar);
			drawCurrentCursor(point); 			
		}
	}
}
	
	
static MBT_U16 Judge(MBT_U16 nX, MBT_U16 nY, Gamepara *globalvar)
{
      // MBT_CHAR pBuff[32];
	MBT_U32  nXStart, nXEnd;
	MBT_U32  nYStart, nYEnd;
	MBT_U32  nXYStart, nXYEnd,nXEndAdd, nYEndAdd, nXYEndAdd, nYXEndAdd;
	MBT_U32  nYXStart, nYXEnd,nXStartAdd, nYStartAdd, nXYStartAdd, nYXStartAdd; 
	MBT_U16 nXAdd, nYAdd, nXYAdd, nYXAdd;	            
   
	MBT_U32 bXStartEmpty, bXEndEmpty, bXStartEmpty1, bXEndEmpty1;
	MBT_U32 bYStartEmpty, bYEndEmpty, bYStartEmpty1, bYEndEmpty1;
	MBT_U32 bXYStartEmpty, bXYEndEmpty, bXYStartEmpty1, bXYEndEmpty1;
	MBT_U32 bYXStartEmpty, bYXEndEmpty, bYXStartEmpty1, bYXEndEmpty1;
	MBT_U32  nGrade;
	//MBT_U32  i, j, k, l;
	MBT_S32  i, j, k, l;
	MBT_U16  nXStep,nYStep,nXYStep,nYXStep,bX_4,bY_4,bXY_4,bYX_4,bX4,bY4,bXY4,bYX4;
	MBT_U16  bX_3,bY_3,bXY_3,bYX_3,bX3,bY3,bXY3,bYX3,bX_2,bY_2,bXY_2,bYX_2,bX2,bY2,bXY2,bYX2;
	MBT_U16  bX_1,bY_1,bXY_1,bYX_1;
	MBT_U16  b1X_4,b1Y_4,b1XY_4,b1YX_4,b1X4,b1Y4,b1XY4,b1YX4,b1X_3,b1Y_3,b1XY_3,b1YX_3;
	nXStart  = nXEnd  = nX;
	nYStart  = nYEnd  = nY;
	nXYStart = nXYEnd = nX;
	nYXStart = nYXEnd = nX;                                           
	nXStartAdd = nYStartAdd = nXYStartAdd = nYXStartAdd = 0;            	
	nXEndAdd = nYEndAdd = nXYEndAdd = nYXEndAdd = 0;            	
	bXStartEmpty = bYStartEmpty = bXYStartEmpty = bYXStartEmpty = MM_FALSE;
	bXEndEmpty = bYEndEmpty = bXYEndEmpty = bYXEndEmpty = MM_FALSE;
	bXStartEmpty1 = bYStartEmpty1 = bXYStartEmpty1 = bYXStartEmpty1 = MM_FALSE;
	bXEndEmpty1 = bYEndEmpty1 = bXYEndEmpty1 = bYXEndEmpty1 = MM_FALSE;
	
	for (i=nX-1; i>=0; i--)            // <-
	{
	    if (globalvar->m_Board[i][nY]==globalvar->m_nColor+1)
	    	nXStart = i;
	    else if (globalvar->m_Board[i][nY]==0) 
	    {
			bXStartEmpty = MM_TRUE;
			for (j=i-1; j>=0; j--)            // <-
			{
			    if (globalvar->m_Board[j][nY]==globalvar->m_nColor+1)
	    			nXStartAdd = i-j;
			    else if (globalvar->m_Board[j][nY]==0) 
			    {
					bXStartEmpty1 = MM_TRUE;
					break;
				}
				else
					break;
			}
            break;
        }                         
        else
        	break;
	}
	for (i=nX+1; i<COLUMNNUM; i++)           // ->
	{
	    if (globalvar->m_Board[i][nY]==globalvar->m_nColor+1)
	    	nXEnd = i;
		else if (globalvar->m_Board[i][nY]==0)
		{
			bXEndEmpty = MM_TRUE;     
			for (j=i+1; j<COLUMNNUM; j++)            // ->
			{
			    if (globalvar->m_Board[j][nY]==globalvar->m_nColor+1)
	    			nXEndAdd = j-i;
			    else if (globalvar->m_Board[j][nY]==0) 
			    {
					bXEndEmpty1 = MM_TRUE;
					break;
				}
				else
					break;
			}
            break;
	    }
	    else
	    	break;
	}
	    	
	for (i=nY-1; i>=0; i--)            // ^|^
	{
	    if (globalvar->m_Board[nX][i]==globalvar->m_nColor+1)
	    	nYStart = i;
		else if (globalvar->m_Board[nX][i]==0)
		{
			bYStartEmpty = MM_TRUE;   
			for (j=i-1; j>=0; j--)            // <-
			{
			    if (globalvar->m_Board[nX][j]==globalvar->m_nColor+1)
	    			nYStartAdd = i-j;
			    else if (globalvar->m_Board[nX][j]==0) 
			    {
					bYStartEmpty1 = MM_TRUE;
					break;
				}
				else
					break;
			}
            break;
		}
	    else
	    	break;
	}
	for (i=nY+1; i<ROWNUM; i++)           // v|v
	{
	    if (globalvar->m_Board[nX][i]==globalvar->m_nColor+1)
	    	nYEnd = i;
		else if (globalvar->m_Board[nX][i]==0)
		{
			bYEndEmpty = MM_TRUE;     
			for (j=i+1; j<ROWNUM; j++)            // ->
			{
			    if (globalvar->m_Board[nX][j]==globalvar->m_nColor+1)
	    			nYEndAdd = j-i;
			    else if (globalvar->m_Board[nX][j]==0) 
			    {
					bYEndEmpty1 = MM_TRUE;
					break;
				}
				else
					break;
			}
            break;
		}
	    else
	    	break;
	}
	
	//j = nY;
	for (i=nX-1, j=nY+1; i>=0&&j<ROWNUM; i--, j++)            // /'
	{
	    //j++;
	    if (globalvar->m_Board[i][j]==globalvar->m_nColor+1)
	    	nXYStart = i;
		else if (globalvar->m_Board[i][j]==0)
		{
			bXYStartEmpty = MM_TRUE; 
			for (k=i-1, l=j+1; k>=0&&l<ROWNUM; k--, l++)            // /'
			{
			    if (globalvar->m_Board[k][l]==globalvar->m_nColor+1)
	    			nXYStartAdd = i-k;
				else if (globalvar->m_Board[k][l]==0)
				{
					bXYStartEmpty1 = MM_TRUE; 
                    break;
                }
                else
                	break;
            }
			break;
		}
	    else
	    	break;
	}   
	//j = nY;
	for (i=nX+1, j=nY-1; i<COLUMNNUM&&j>=0; i++, j--)           // ./
	{      
		//j--;
	    if (globalvar->m_Board[i][j]==globalvar->m_nColor+1)
	    	nXYEnd = i;
		else if (globalvar->m_Board[i][j]==0)
		{
			bXYEndEmpty = MM_TRUE;   
			for (k=i+1, l=j-1; l>=0&&k<COLUMNNUM; l--, k++)            // /'
			{
			    if (globalvar->m_Board[k][l]==globalvar->m_nColor+1)
	    			nXYEndAdd = k-i;
				else if (globalvar->m_Board[k][l]==0)
				{
					bXYEndEmpty1 = MM_TRUE; 
                                  break;
                             }
                             else
                			break;
            		}
			break;
		}
	    else
	    	break;
	}
	    	
	//j = nY;
	for (i=nX-1, j=nY-1; i>=0&&j>=0; i--, j--)            // '`
	{
	    //j--;
	    if (globalvar->m_Board[i][j]==globalvar->m_nColor+1)
	    	nYXStart = i;
		else if (globalvar->m_Board[i][j]==0)
		{
			bYXStartEmpty = MM_TRUE; 
			for (k=i-1, l=j-1; k>=0&&l>=0; k--, l--)            // /'
			{
			    if (globalvar->m_Board[k][l]==globalvar->m_nColor+1)
	    			nYXStartAdd = i-k;
				else if (globalvar->m_Board[k][l]==0)
				{
					bYXStartEmpty1 = MM_TRUE; 
                    break;
                }
                else
                	break;
            }
			break;
		}
	    else
	    	break;
	}   
	//j = nY;
	for (i=nX+1, j=nY+1; i<COLUMNNUM&&j<ROWNUM; i++, j++)           // `.
	{      
		//j++;
	    if (globalvar->m_Board[i][j]==globalvar->m_nColor+1)
	    	nYXEnd = i;
		else if (globalvar->m_Board[i][j]==0)
		{
			bYXEndEmpty = MM_TRUE;   
			for (k=i+1, l=j+1; l<ROWNUM&&k<COLUMNNUM; l++, k++)            // /'
			{
			    if (globalvar->m_Board[k][l]==globalvar->m_nColor+1)
	    			nYXEndAdd = k-i;
				else if (globalvar->m_Board[k][l]==0)
				{
					bYXEndEmpty1 = MM_TRUE; 
                    break;
                }
                else
                	break;
            }
			break;
		}
	    else
	    	break;
	}
	        
	 nXStep  = nXEnd-nXStart+1;
	 nYStep  = nYEnd-nYStart+1;
	 nXYStep = nXYEnd-nXYStart+1;
	 nYXStep = nYXEnd-nYXStart+1;
	
	bX_4 = ((nXStep==4)&&(bXStartEmpty&&bXEndEmpty));
	bY_4 = ((nYStep==4)&&(bYStartEmpty&&bYEndEmpty));
	bXY_4 = ((nXYStep==4)&&(bXYStartEmpty&&bXYEndEmpty));
	bYX_4 = ((nYXStep==4)&&(bYXStartEmpty&&bYXEndEmpty));
	bX4 = ((nXStep==4)&&(bXStartEmpty||bXEndEmpty));
	bY4 = ((nYStep==4)&&(bYStartEmpty||bYEndEmpty));
	bXY4 = ((nXYStep==4)&&(bXYStartEmpty||bXYEndEmpty));
	bYX4 = ((nYXStep==4)&&(bYXStartEmpty||bYXEndEmpty));

	bX_3 = ((nXStep==3)&&(bXStartEmpty&&bXEndEmpty));
	bY_3 = ((nYStep==3)&&(bYStartEmpty&&bYEndEmpty));
	bXY_3 = ((nXYStep==3)&&(bXYStartEmpty&&bXYEndEmpty));
	bYX_3 = ((nYXStep==3)&&(bYXStartEmpty&&bYXEndEmpty));

	bX3 = ((nXStep==3)&&(bXStartEmpty||bXEndEmpty));
	bY3 = ((nYStep==3)&&(bYStartEmpty||bYEndEmpty));
	bXY3 = ((nXYStep==3)&&(bXYStartEmpty||bXYEndEmpty));
	bYX3 = ((nYXStep==3)&&(bYXStartEmpty||bYXEndEmpty));

	bX_2 = ((nXStep==2)&&(bXStartEmpty&&bXEndEmpty));
	bY_2 = ((nYStep==2)&&(bYStartEmpty&&bYEndEmpty));
	bXY_2 = ((nXYStep==2)&&(bXYStartEmpty&&bXYEndEmpty));
	bYX_2 = ((nYXStep==2)&&(bYXStartEmpty&&bYXEndEmpty));
	bX2 = ((nXStep==2)&&(bXStartEmpty||bXEndEmpty));
	bY2 = ((nYStep==2)&&(bYStartEmpty||bYEndEmpty));
	bXY2 = ((nXYStep==2)&&(bXYStartEmpty||bXYEndEmpty));
	bYX2 = ((nYXStep==2)&&(bYXStartEmpty||bYXEndEmpty));

  	bX_1 = ((nXStep==1)&&(bXStartEmpty&&bXEndEmpty));
  	bY_1 = ((nYStep==1)&&(bYStartEmpty&&bYEndEmpty));
  	bXY_1 = ((nXYStep==1)&&(bXYStartEmpty&&bXYEndEmpty));
  	bYX_1 = ((nYXStep==1)&&(bYXStartEmpty&&bYXEndEmpty));


	nXAdd = nYAdd = nXYAdd = nYXAdd = 0;

	if (nXEndAdd>=nXStartAdd)
	{
		nXAdd = nXEndAdd;
		bXEndEmpty = bXEndEmpty1;
	}
	else                      
	{
		nXAdd = nXStartAdd;
		bXStartEmpty = bXStartEmpty1;
    }
    
	if (nYEndAdd>=nYStartAdd)
	{
		nYAdd = nYEndAdd;
		bYEndEmpty = bYEndEmpty1;
	}
	else                      
	{
		nYAdd = nYStartAdd;
		bYStartEmpty = bYStartEmpty1;
    }

	if (nXYEndAdd>=nXYStartAdd)
	{
		nXYAdd = nXYEndAdd;
		bXYEndEmpty = bXYEndEmpty1;
	}
	else                      
	{
		nXYAdd = nXYStartAdd;
		bXYStartEmpty = bXYStartEmpty1;
    }

	if (nYXEndAdd>=nYXStartAdd)
	{
		nYXAdd = nYXEndAdd;
		bYXEndEmpty = bYXEndEmpty1;
	}
	else                      
	{
		nYXAdd = nYXStartAdd;
		bYXStartEmpty = bYXStartEmpty1;
    }
	
	b1X_4 = ((nXStep+nXAdd>=4)&&(bXStartEmpty&&bXEndEmpty));
	b1Y_4 = ((nYStep+nYAdd>=4)&&(bYStartEmpty&&bYEndEmpty));
	b1XY_4 = ((nXYStep+nXYAdd>=4)&&(bXYStartEmpty&&bXYEndEmpty));
	b1YX_4 = ((nYXStep+nYXAdd>=4)&&(bYXStartEmpty&&bYXEndEmpty));
	b1X4 = ((nXStep+nXAdd>=4)&&(bXStartEmpty||bXEndEmpty));
	b1Y4 = ((nYStep+nYAdd>=4)&&(bYStartEmpty||bYEndEmpty));
	b1XY4 = ((nXYStep+nXYAdd>=4)&&(bXYStartEmpty||bXYEndEmpty));
	b1YX4 = ((nYXStep+nYXAdd>=4)&&(bYXStartEmpty||bYXEndEmpty));

	b1X_3 = ((nXStep+nXAdd==3)&&(bXStartEmpty&&bXEndEmpty));
	b1Y_3 = ((nYStep+nYAdd==3)&&(bYStartEmpty&&bYEndEmpty));
	b1XY_3 = ((nXYStep+nXYAdd==3)&&(bXYStartEmpty&&bXYEndEmpty));
	b1YX_3 = ((nYXStep+nYXAdd==3)&&(bYXStartEmpty&&bYXEndEmpty));
	
	globalvar->m_nType = -1;	                           
	
	////////	
	if (nXStep>=5 || nYStep>=5 || nXYStep>=5 || nYXStep>=5)
	{ 
		nGrade = 0;
		globalvar->m_nType = 0;
	}
	////////	
	else if (bX_4 || bY_4 || bXY_4 || bYX_4)
	{
		nGrade = 1;             
		globalvar->m_nType = 1;
	}
	////////	
	else if ((bX4 && (bY4 || bXY4 || bYX4 || b1Y4 || b1XY4 || b1YX4))||
			 (bY4 && (bX4 || bXY4 || bYX4 || b1X4 || b1XY4 || b1YX4))||
			 (bXY4 && (bY4 || bX4 || bYX4 || b1Y4 || b1X4 || b1YX4)) ||
			 (bYX4 && (bY4 || bXY4 || bX4 || b1Y4 || b1XY4 || b1X4)) ||
			 (b1X4 && (bY4 || bXY4 || bYX4 || b1Y4 || b1XY4 || b1YX4))||
			 (b1Y4 && (bX4 || bXY4 || bYX4 || b1X4 || b1XY4 || b1YX4))||
			 (b1XY4 && (bY4 || bX4 || bYX4 || b1Y4 || b1X4 || bYX4))  ||
			 (b1YX4 && (bY4 || bXY4 || bX4 || b1Y4 || b1XY4 || b1X4)))
	{
		nGrade = 2;
		globalvar->m_nType = 1;
	}		
    /////////
	else if ((bX4 && (bY_3 || bXY_3 || bYX_3 || b1Y_3 || b1XY_3 || b1YX_3))||
	         (bY4 && (bX_3 || bXY_3 || bYX_3 || b1X_3 || b1XY_3 || b1YX_3))||
			 (bXY4 && (bY_3 || bX_3 || bYX_3 || b1Y_3 || b1X_3 || b1YX_3)) ||
			 (bYX4 && (bY_3 || bXY_3 || bX_3 || b1Y_3 || b1XY_3 || b1X_3)) ||
			 (b1X4 && (bY_3 || bXY_3 || bYX_3 || b1Y_3 || b1XY_3 || b1YX_3))||
			 (b1Y4 && (bX_3 || bXY_3 || bYX_3 || b1X_3 || b1XY_3 || b1YX_3))||
			 (b1XY4 && (bY_3 || bX_3 || bYX_3 || b1Y_3 || b1X_3 || b1YX_3)) ||
			 (b1YX4 && (bY_3 || bXY_3 || bX_3 || b1Y_3 || b1XY_3 || b1X_3)))
	{
		nGrade = 3;
		globalvar->m_nType = 1;
	}		
	////////	
	else if ((bX_3 && (bY_3 || bXY_3 || bYX_3 || b1Y_3 || b1XY_3 || b1YX_3))||
	         (bY_3 && (bX_3 || bXY_3 || bYX_3 || b1X_3 || b1XY_3 || b1YX_3))||
			 (bXY_3 && (bY_3 || bX_3 || bYX_3 || b1Y_3 || b1X_3 || b1YX_3)) ||
			 (bYX_3 && (bY_3 || bXY_3 || bX_3 || b1Y_3 || b1XY_3 || b1X_3)) ||
			 (b1X_3 && (bY_3 || bXY_3 || bYX_3 || b1Y_3 || b1XY_3 || b1YX_3))||
			 (b1Y_3 && (bX_3 || bXY_3 || bYX_3 || b1X_3 || b1XY_3 || b1YX_3))||
			 (b1XY_3 && (bY_3 || bX_3 || bYX_3 || b1Y_3 || b1X_3 || b1YX_3)) ||
			 (b1YX_3 && (bY_3 || bXY_3 || bX_3 || b1Y_3 || b1XY_3 || b1X_3)))
	{
		nGrade = 4;
		globalvar->m_nType = 2;
	}		
	////////
	else if ((bXY4 && (bYX_2 || bY_2 || bX_2))||
	         (bYX4 && (bXY_2 || bY_2 || bX_2))||
	         (bX4 && (bXY_2 || bYX_2 || bY_2))||
	         (bY4 && (bXY_2 || bYX_2 || bX_2)))
	
	{
		nGrade = 5;
		globalvar->m_nType = 1;
	}		                     
	else if ((bXY4 && (bYX3 || bY3 || bX3))||
	         (bYX4 && (bXY3 || bY3 || bX3))||
	         (bX4 && (bXY3 || bYX3 || bY3))||
	         (bY4 && (bXY3 || bYX3 || bX3)))
	{
		nGrade = 6;
		globalvar->m_nType = 1;
	}		
	else if ((bXY4 && (bYX_1 || bY_1 || bX_1))||
	         (bYX4 && (bXY_1 || bY_1 || bX_1))||
	         (bX4 && (bXY_1 || bYX_1 || bY_1))||
	         (bY4 && (bXY_1 || bYX_1 || bX_1)))
	{
		nGrade = 7;
		globalvar->m_nType = 2;
	}		
	else if ((bXY4 && (bYX2 || bY2 || bX2))||
	         (bYX4 && (bXY2 || bY2 || bX2))||
	         (bX4 && (bXY2 || bYX2 || bY2))||
	         (bY4 && (bXY2 || bYX2 || bX2)))
	
	{
		nGrade = 8;
		globalvar->m_nType = 1;
	}		
	else if (bXY4 || bYX4 || bX4 || bY4)
	{
		nGrade = 9;
		globalvar->m_nType = 1;
	}		
	////////
	else if ((bXY_3 && (bYX_2 || bY_2 || bX_2))||
	         (bYX_3 && (bXY_2 || bY_2 || bX_2))||
	         (bX_3 && (bXY_2 || bYX_2 || bY_2))||
	         (bY_3 && (bXY_2 || bYX_2 || bX_2)))
	{
		nGrade = 10;
		globalvar->m_nType = 2;
	}		
	else if ((bXY_3 && (bYX3 || bY3 || bX3))||
	         (bYX_3 && (bXY3 || bY3 || bX3))||
	         (bX_3 && (bXY3 || bYX3 || bY3))||
	         (bY_3 && (bXY3 || bYX3 || bX3)))
	{
		nGrade = 11;
		globalvar->m_nType = 2;
	}		
	else if ((bXY_3 && (bYX_1 || bY_1 || bX_1))||
	         (bYX_3 && (bXY_1 || bY_1 || bX_1))||
	         (bX_3 && (bXY_1 || bYX_1 || bY_1))||
	         (bY_3 && (bXY_1 || bYX_1 || bX_1)))
	{
		nGrade = 12;
		globalvar->m_nType = 2;
	}		
	else if ((bXY_3 && (bYX2 || bY2 || bX2))||
	         (bYX_3 && (bXY2 || bY2 || bX2))||
	         (bX_3 && (bXY2 || bYX2 || bY2))||
	         (bY_3 && (bXY2 || bYX2 || bX2)))
	{
		nGrade = 13;
		globalvar->m_nType = 2;
	}		
	else if (bXY_3 || bYX_3 || bX_3 || bY_3)
	{
		nGrade = 14;
		globalvar->m_nType = 2;
	}		           
	////////		
	else if (bXY_2 || bYX_2 || bX_2 || bY_2)
		nGrade = 16;
    ////////
    else if (bXY3 || bYX3 || bX3 || bY3)
		nGrade = 17;
	else if (bXY2 || bYX2 || bX2 || bY2)
		nGrade = 18;
	else if (bXY_1 || bYX_1 || bX_1 || bY_1)    
		nGrade = 19; 
	else
		nGrade = 20;

	///////	                
	if (nGrade>15)
		if ((globalvar->m_Board[nX][nY-1]==0 || globalvar->m_Board[nX][nY-1]==globalvar->m_nColor+1) &&
			(globalvar->m_Board[nX+1][nY]==0 || globalvar->m_Board[nX+1][nY]==globalvar->m_nColor+1) &&
			(globalvar->m_Board[nX][nY+1]==0 || globalvar->m_Board[nX][nY+1]==globalvar->m_nColor+1) &&
			(globalvar->m_Board[nX-1][nY]==0 || globalvar->m_Board[nX-1][nY]==globalvar->m_nColor+1) &&
			((nX+2<15 && nY-2>=0 && (globalvar->m_Board[nX+2][nY-2]==0 || globalvar->m_Board[nX+2][nY-2]==globalvar->m_nColor+1) &&
			 globalvar->m_Board[nX][nY-2]==globalvar->m_nColor+1 && globalvar->m_Board[nX+1][nY-1]==globalvar->m_nColor+1 && globalvar->m_Board[nX+2][nY]==globalvar->m_nColor+1) ||
	     	(nX+2<15 && nY+2<15 && (globalvar->m_Board[nX+2][nY+2]==0 || globalvar->m_Board[nX+2][nY+2]==globalvar->m_nColor+1) &&
	     	 globalvar->m_Board[nX][nY+2]==globalvar->m_nColor+1 && globalvar->m_Board[nX+1][nY+1]==globalvar->m_nColor+1 && globalvar->m_Board[nX+2][nY]==globalvar->m_nColor+1) ||
	     	(nX-2>=0 && nY+2<15 && (globalvar->m_Board[nX-2][nY+2]==0 || globalvar->m_Board[nX-2][nY+2]==globalvar->m_nColor+1) &&
	     	 globalvar->m_Board[nX][nY+2]==globalvar->m_nColor+1 && globalvar->m_Board[nX-1][nY+1]==globalvar->m_nColor+1 && globalvar->m_Board[nX-2][nY]==globalvar->m_nColor+1) || 
		  	(nX-2>=0 && nY-2>=0 && (globalvar->m_Board[nX-2][nY-2]==0 || globalvar->m_Board[nX-2][nY-2]==globalvar->m_nColor+1) &&
		  	 globalvar->m_Board[nX][nY-2]==globalvar->m_nColor+1 && globalvar->m_Board[nX-1][nY-1]==globalvar->m_nColor+1 && globalvar->m_Board[nX-2][nY]==globalvar->m_nColor+1)))
			nGrade = 15;
	/////////

	return nGrade;		
}



static MBT_VOID Ring(Gamepara *globalvar)
{
    MBT_CHAR	*string;
    globalvar->g_nStoneNum++;

    if (globalvar->m_nType == 0)
    {		  
        globalvar->m_bGameOver = MM_TRUE;

        if(globalvar->m_nColor)
        {
            string=uiv_GameGobangString[uiv_u8Language][13];
        }
        else
        {
            string=uiv_GameGobangString[uiv_u8Language][14];
        }

        //这里添加退出前的对话框，画该画的东西。
        //drawOverMessage(string);
        Game_DrawWinner(string);
        //return 4;
        uiv_u8GoBangGameRet=1;
    }

    if(globalvar->g_nStoneNum==BOARD_LINE_NUMBER*BOARD_LINE_NUMBER)
    {    
        string=uiv_GameGobangString[uiv_u8Language][15];
        Game_DrawWinner(string);
        uiv_u8GoBangGameRet=1;
    }//drawOverMessage(" DOGFALL!! ");
}


static  MBT_VOID Game_DrawWinner(MBT_CHAR * string)
 	//游戏退出之前提示是否退出的对话框。
{
    MBT_S32 key;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_S32 thisStartX=GOBANG_START_LEFT + 91,thisStartY=243,thisWidth=210,thisHeight=90;
    MBT_S32 font_width = 0;
    MBT_S32 s32Yoffset = 0;
    MBT_S32 s32Xoffset = 0;
    MBT_S32 font_height = 0;
    
    uif_ShareDrawFilledBoxWith4CircleCorner(thisStartX,thisStartY,thisWidth,thisHeight, 8,HELP_HINT_COLOR);

    font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    
    font_width = WGUIF_FNTGetTxtWidth(strlen(uiv_GameGobangString[uiv_u8Language][6]), uiv_GameGobangString[uiv_u8Language][6]);
    s32Xoffset = (thisWidth - font_width)/2;
    s32Yoffset = (30 - SMALL_GWFONT_HEIGHT)/2;
    WGUIF_FNTDrawTxt(thisStartX+s32Xoffset, thisStartY+s32Yoffset,strlen(uiv_GameGobangString[uiv_u8Language][6]), uiv_GameGobangString[uiv_u8Language][6],FONT_FRONT_COLOR_BLACK);

    WGUIF_SetFontHeight(SMALLER_GWFONT_HEIGHT);
    font_width = WGUIF_FNTGetTxtWidth(strlen(string), string);
    s32Xoffset = (thisWidth - font_width)/2;
    s32Yoffset = (30 - SMALLER_GWFONT_HEIGHT)/2;
    WGUIF_FNTDrawTxt(thisStartX+s32Xoffset, thisStartY+30+s32Yoffset, strlen(string), string,FONT_FRONT_COLOR_WHITE);

    font_width = WGUIF_FNTGetTxtWidth(strlen(uiv_GameGobangString[uiv_u8Language][5]), uiv_GameGobangString[uiv_u8Language][5]);
    s32Xoffset = (thisWidth - font_width)/2;
    s32Yoffset = (30 - SMALLER_GWFONT_HEIGHT)/2;
    WGUIF_FNTDrawTxt(thisStartX+s32Xoffset, thisStartY+60+s32Yoffset,  strlen(uiv_GameGobangString[uiv_u8Language][5]), uiv_GameGobangString[uiv_u8Language][5], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);

    while(1)
    {
        if(bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        
        key=uif_ReadKey ( 0);
        if(DUMMY_KEY_SELECT==key)
        {
            break;             
        }

        if(DUMMY_KEY_EXIT == key)
        {
            UIF_SendKeyToUi(DUMMY_KEY_EXIT);
            break;
        }
        else if(key ==DUMMY_KEY_FORCE_REFRESH)
        {
            bRefresh = MM_TRUE;
        }
        else if( uif_QuickKey(key))
        {
            break;
        }
    }
    //uif_ShareDrawFilledBoxWith4CircleCorner(thisStartX,thisStartY,thisWidth,thisHeight, 8,LISTITEM_NOFOCUS_COLOR );	
    WGUIF_ReFreshLayer();
}


static MBT_VOID keyup(Gamepara *globalvar)
{
	MBT_U32 i,k;
	ColumnRowType point1,point2;
	point1.iCol=globalvar->g_nCurx;
	point1.iRow=globalvar->g_nCury;
	destroyCurrentGrid(point1);

	for(i=0;i<0xfffff;i++)
	{
		k=0;	
	}
	//TRACE("destroyCurrentGrid\n");
	
    if( globalvar->g_nCury==0)
    {
        globalvar->g_nCury=COLUMNNUM-1;
        point2.iCol=globalvar->g_nCurx;
        point2.iRow=globalvar->g_nCury;
    }
	else
	{
		globalvar->g_nCury --;
		point2.iCol=globalvar->g_nCurx;
		point2.iRow=globalvar->g_nCury;
	}
	drawCurrentCursor(point2);
	if (globalvar->m_Board[point1.iCol][point1.iRow]!=0)
	{
		drawCurrentChess(globalvar->m_Color[point1.iCol][point1.iRow],point1);
	}
	
		
}
	
static MBT_VOID keydown(Gamepara *globalvar)
{	
	MBT_U32 i,k;
       ColumnRowType point1,point2;
	point1.iCol=globalvar->g_nCurx;
	point1.iRow=globalvar->g_nCury;
//擦掉上一个坐标。
	destroyCurrentGrid(point1);

	for(i=0;i<0xfffff;i++)
	{
		k=0;	
	}
/*	TRACE("destroyCurrentGrid\n");*/
    if( globalvar->g_nCury==COLUMNNUM-1)
    {
        globalvar->g_nCury=0;
        point2.iCol=globalvar->g_nCurx;
        point2.iRow=globalvar->g_nCury;
    }
	else
	{
		globalvar->g_nCury ++;
		point2.iCol=globalvar->g_nCurx;
		point2.iRow=globalvar->g_nCury;
	}
	drawCurrentCursor(point2);
	if (globalvar->m_Board[point1.iCol][point1.iRow]!=0)
	{
		drawCurrentChess(globalvar->m_Color[point1.iCol][point1.iRow],point1);
	}
}
static MBT_VOID keyleft(Gamepara *globalvar)
{
	MBT_U32 i,k;
	//Gamepara * isee=globalvar
    ColumnRowType point1,point2;
	point1.iCol=globalvar->g_nCurx;
	point1.iRow=globalvar->g_nCury;
	destroyCurrentGrid(point1);
	for(i=0;i<0xfffff;i++)
	{
		k=0;	
	}
/*	TRACE("destroyCurrentGrid\n");*/
	
    if( globalvar->g_nCurx==0)
    {
        globalvar->g_nCurx=COLUMNNUM-1;
        point2.iCol=globalvar->g_nCurx;
        point2.iRow=globalvar->g_nCury;
    }
	else
	{
		globalvar->g_nCurx--;
		point2.iCol=globalvar->g_nCurx;
		point2.iRow=globalvar->g_nCury;
	}
	//GetRectangleImage(10,10,700,500);	
    drawCurrentCursor(point2);
	if (globalvar->m_Board[point1.iCol][point1.iRow]!=0)
	{
		drawCurrentChess(globalvar->m_Color[point1.iCol][point1.iRow],point1);
	}
}

static MBT_VOID keyright(Gamepara *globalvar)
{
	MBT_U32 i,k;
    ColumnRowType point1,point2;
	point1.iCol=globalvar->g_nCurx;
	point1.iRow=globalvar->g_nCury;
	destroyCurrentGrid(point1);

	for(i=0;i<0xfffff;i++)
	{
		k=0;	
	}
	//TRACE("destroyCurrentGrid\n");
	
    if( globalvar->g_nCurx==COLUMNNUM-1)
    {
        globalvar->g_nCurx=0;
        point2.iCol=globalvar->g_nCurx;
        point2.iRow=globalvar->g_nCury;
    }
	else
	{
		globalvar->g_nCurx++;
		point2.iCol=globalvar->g_nCurx;
		point2.iRow=globalvar->g_nCury;
	}
       drawCurrentCursor(point2);
	if (globalvar->m_Board[point1.iCol][point1.iRow]!=0)
	{
		drawCurrentChess(globalvar->m_Color[point1.iCol][point1.iRow],point1);
	}
}

static MBT_VOID UrgentPoint(Gamepara *globalvar)
{     
    MBT_CHAR *mystring;
	MBT_U32  i,j;
	MBT_U16 nGrade1, nGrade2;
	MBT_U16 nUrgent1, nUrgent2, nUrgent;
	ColumnRowType  ptUrgent[2025];
	ColumnRowType  ptCurrent;
	for (i=0; i<2025; i++)
	{
		ptUrgent[i].iCol=-1;
		ptUrgent[i].iRow=-1;
	}
    
    for (i=0; i<BOARD_LINE_NUMBER;  i++)
	{
	  	for (j=0; j<BOARD_LINE_NUMBER;  j++)
	    {
	    	if (globalvar->m_Board[i][j]==0)
	    	{
        		ptCurrent.iCol= i;
        		ptCurrent.iRow = j;
     
                nGrade1 = Judge(i, j, globalvar);
                globalvar->m_nColor=1-globalvar->m_nColor;
                nGrade2 = Judge(i, j, globalvar);
                globalvar->m_nColor=1-globalvar->m_nColor;
		    	switch (nGrade1)
		    	{
    				case 0 : nUrgent1 = 0; break;
    				case 1 : nUrgent1 = 2; break;					
    				case 2 : nUrgent1 = 4; break;					
    				case 3 : nUrgent1 = 5; break;					
    				case 4 : nUrgent1 = 8; break;					
    						
    				case 5 : nUrgent1 = 10; break;																									
    				case 6 : nUrgent1 = 11; break;					
    				case 7 : nUrgent1 = 12; break;					
    				case 8 : nUrgent1 = 13; break;					
     				case 9 : nUrgent1 = 14; break;					
    				case 10 : nUrgent1 = 15; break;					
    				case 11 : nUrgent1 = 16; break;					
    				case 12 : nUrgent1 = 17; break;					
    				case 13 : nUrgent1 = 18; break;					
    				case 14 : nUrgent1 = 19; break;					
    				case 15 : nUrgent1 = 20; break;					
    						
    				case 16 : nUrgent1 = 32; break;					
    				case 17 : nUrgent1 = 34; break;					
    				case 18 : nUrgent1 = 36; break;					
    				case 19 : nUrgent1 = 38; break;					
    				case 20 : nUrgent1 = 40; break;					
    				default : nUrgent1 = 40; break;					
				}
                
		    	switch (nGrade2)
		    	{
    				case 0 : nUrgent2 = 1; break;
    				case 1 : nUrgent2 = 3; break;					
    				case 2 : nUrgent2 = 6; break;					
    				case 3 : nUrgent2 = 7; break;					
    				case 4 : nUrgent2 = 9; break;					
    						
    				case 5 : nUrgent2 = 21; break;																									
    				case 6 : nUrgent2 = 22; break;					
    				case 7 : nUrgent2 = 23; break;					
    				case 8 : nUrgent2 = 24; break;					
    				case 9 : nUrgent2 = 25; break;					
    				case 10 : nUrgent2 = 26; break;					
    				case 11 : nUrgent2 = 27; break;					
    				case 12 : nUrgent2 = 28; break;					
    				case 13 : nUrgent2 = 29; break;					
    				case 14 : nUrgent2 = 30; break;					
    				case 15 : nUrgent2 = 31; break;					
    						
    				case 16 : nUrgent2 = 33; break;											
    				case 17 : nUrgent2 = 35; break;					
    				case 18 : nUrgent2 = 37; break;					
    				case 19 : nUrgent2 = 39; break;					
    				case 20 : nUrgent2 = 41; break;					
    				default : nUrgent2 = 41; break;											
			    }
                
	            nUrgent = min(nUrgent1, nUrgent2)*45 + max(nUrgent1, nUrgent2);
				ptUrgent[nUrgent] = ptCurrent;
            }
		}
    }


    for (i=0; i<2025; ++i)   
    {
        if (ptUrgent[i].iCol !=-1&&ptUrgent[i].iRow!=-1 )
        {
            globalvar->g_nCurx=ptUrgent[i].iCol;
            globalvar->g_nCury=ptUrgent[i].iRow;
            break;
        }
    }

    if(i<2025)
    {
        if (ptUrgent[i].iCol == -1&&ptUrgent[i].iRow==-1)              
        {        
            mystring=uiv_GameGobangString[uiv_u8Language][15];
            Game_DrawWinner(mystring);
            uiv_u8GoBangGameRet=1;
            //最后一手在黑棋手里，怎么可能要这个，提示平局也是在黑棋
            //落完子以后，轮不到人工智能的白棋来字判断吧。
            //uif_ShareDrawFilledBoxWith4CircleCorner(300,300,50,50, 8,SCROLLBAR_BACK_COLOR );
            //drawOverMessage(" DOGFALL!! ");
        }
    }
}


static MBT_VOID DrawSwitchGame(MBT_U8 ithisPtr)
{
    T_OSGRect 	textRect;
    // MBT_S32 i=0,j=0;
    //初始化变量
    textRect.x = GOBANG_START_LEFT + 415;
    textRect.y = GOBANG_START_TOP+15;
    textRect.width = 230;
    textRect.height = 204;

    WGUIF_DrawFilledRectangle(textRect.x+30, textRect.y+100,160,80, SCROLLBAR_BACK_COLOR);

    if(ithisPtr)
    {
        WGUIF_DrawFilledRectangle(textRect.x+30, textRect.y+100, 160, 37, SCROLLBAR_BACK_COLOR);
        WGUIF_FNTDrawTxt(textRect.x+60, textRect.y+108, strlen(uiv_GameGobangString[uiv_u8Language][8]), uiv_GameGobangString[uiv_u8Language][8],FONT_FRONT_COLOR_WHITE);
        WGUIF_FNTDrawTxt(textRect.x+60,textRect.y+148, strlen(uiv_GameGobangString[uiv_u8Language][9]), uiv_GameGobangString[uiv_u8Language][9], FONT_FRONT_COLOR_BLACK);
    }

    else
    {
        WGUIF_DrawFilledRectangle(textRect.x+30, textRect.y+140, 160, 37, SCROLLBAR_BACK_COLOR);
        WGUIF_FNTDrawTxt(textRect.x+60, textRect.y+108,strlen(uiv_GameGobangString[uiv_u8Language][8]), uiv_GameGobangString[uiv_u8Language][8],FONT_FRONT_COLOR_BLACK);
        WGUIF_FNTDrawTxt(textRect.x+60, textRect.y+148, strlen(uiv_GameGobangString[uiv_u8Language][9]), uiv_GameGobangString[uiv_u8Language][9], FONT_FRONT_COLOR_WHITE);
    }
                 
}

/********************************************************************************************
function:		SwitchGame(MBT_VOID)
     函数功能:游戏类型选择，是人工智能还是双人游戏
                参数:无
           返回值:MBT_U8变量，为真为假
		    true   选择人工智能
                 false   选择双人游戏

********************************************************************************************/
static MBT_U8 SwitchGame(MBT_VOID)
 	//选择游戏的对话框
{
    MBT_S32 key;
    MBT_U8 thisPtr=MM_TRUE;
    MBT_BOOL bRedraw=MM_TRUE;
    MBT_BOOL bRefresh=MM_TRUE;
    MBT_S32 thisStartX=GOBANG_START_LEFT + 415,thisStartY=GOBANG_START_TOP+15,thisWidth=210;
    uif_ShareDrawFilledBoxWith4CircleCorner(thisStartX,thisStartY+10,thisWidth,70, 8,SCROLLBAR_BACK_COLOR );
    WGUIF_FNTDrawTxt(thisStartX+70, thisStartY+20,strlen(uiv_GameGobangString[uiv_u8Language][0]), uiv_GameGobangString[uiv_u8Language][0],FONT_FRONT_COLOR_BLACK);
    WGUIF_DrawFilledRectangle(thisStartX+15, thisStartY+43,180,2, SCROLLBAR_BACK_COLOR);
    WGUIF_FNTDrawTxt(thisStartX+30, thisStartY+50,strlen(uiv_GameGobangString[uiv_u8Language][7]), uiv_GameGobangString[uiv_u8Language][7],FONT_FRONT_COLOR_BLACK);
    uif_ShareDrawFilledBoxWith4CircleCorner(thisStartX,thisStartY+90,thisWidth,90, 8,SCROLLBAR_BACK_COLOR );

    while(1)
    {   
        if(bRedraw)
        {
            bRedraw=MM_FALSE;
            DrawSwitchGame(thisPtr);
            bRefresh = MM_TRUE;
        }
        
        if(bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        
        key = uif_ReadKey (125);

        switch(key)
        {
            case DUMMY_KEY_LEFTARROW:
                thisPtr=!thisPtr;
                bRedraw=MM_TRUE;
                break;
            case DUMMY_KEY_RIGHTARROW:
                thisPtr=!thisPtr;
                bRedraw=MM_TRUE;
                break;
            case DUMMY_KEY_UPARROW:
                thisPtr=!thisPtr;
                bRedraw=MM_TRUE;
                //DrawSwitchGame(thisPtr);
                break;
            case DUMMY_KEY_DNARROW:
                thisPtr=!thisPtr;
                bRedraw=MM_TRUE;
                //DrawSwitchGame(thisPtr);
                break;
            case DUMMY_KEY_SELECT:
                if(thisPtr)
                {
                    return 1;
                }
                else
                {
                    return 2;
                }
                break;
            case DUMMY_KEY_BACK:
            case DUMMY_KEY_MENU:
            case DUMMY_KEY_EXIT:
                return 3;
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            default:
                if( uif_QuickKey(key))
                {
                    return 3;
                }
                break;
        }
    }
    return 0;
}

