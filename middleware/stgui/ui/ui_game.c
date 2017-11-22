#include "ui_share.h"

#define SNAKE_ITEM_WIDTH 20
#define SNAKE_ITEM_HEIGHT 20


#define random(num)     (rand() % (num) )
#define  MAX_LEVEL_GAMENUM_ITEM   9
#define GAME_SNAKE_MOVE_X 200//35 //统一移动位置

#define    HELPING_START_LEFT 747//(420)
#define    HELPING_START_TOP   125 //
#define     HELPING_START_SNAKE_TOP  150
#define    HELPING_WIDTH_ONE       80
#define   HELPING_WIDTH_TWO       110
#define  HELPING_HEIGHT     34
#define HELP_HINT_COLOR 0xFF848484

#define HELP_PLAY_COLOR 0xFFDCDCDC


static MBT_VOID uif_ShareManaulDisapperDlg( MBT_CHAR* pMsg );
/*以下是游戏所用的专有位图，在publicbmpdata.c里有详细的注释*/


MBT_CHAR* G_Game_String[2][45] = 
{
    {
        "Suggest",
        "OK",
        "Select/Go",
        "Return",
        "Higher Menu",
        "Exit",
        "EXit Menu",
        "Select Game Type",
        "Single Player",
        "Two Player",
        "Gaming",/*10*/
        "Black",
        "White",
        "Black Win",
        "White Win",
        "IPB",
        "Game Over",/*16*/
        "Press OK to Goon",
        "failure ",
        "Win",
        "Next Level",/*20*/
        "Pause",
        "Game is Paused",
        "Press OK to Exit",
        "Game Setting",
        "Level",/*25*/
        "Speed",
        "Game Speed",
        "NO",
        "Level",
        "Sorce",/*30*/
        "Setp",
        "Setting",
        "L&R",
        "U&D",
        "Turn",/*35*/
        "Down",
        "Tetris",
        "Snake",
        "Rotate",
        "Left",/*40*/
        "Right",
        "Play",
        "Drop",
        "Up"
    },

    {
        "Suggest",
        "OK",
        "Select/Go",
        "Return",
        "Higher Menu",
        "Exit",
        "EXit Menu",
        "Select Game Type",
        "Single Player",
        "Two Player",
        "Gaming",/*10*/
        "Black",
        "White",
        "Black Win",
        "White Win",
        "IPB",
        "Game Over",/*16*/
        "Press OK to Goon",
        "failure ",
        "Win",
        "Next Level",/*20*/
        "Pause",
        "Game is Paused",
        "Press OK to Exit",
        "Game Setting",
        "Level",/*25*/
        "Speed",
        "Game Speed",
        "NO",
        "Level",
        "Sorce",/*30*/
        "Setp",
        "Setting",
        "L&R",
        "U&D",
        "Turn",/*35*/
        "Down",
        "Tetris",
        "Snake",
        "Rotate",
        "Left",/*40*/
        "Right",
        "Play",
        "Drop",
        "Up"
    }
};



typedef struct POS_T
{
	MBT_S32 uiPosX;
	MBT_S32 uiPosY;
}POINTS;
typedef struct CRECT_T
{
	POINTS  RectPos;
	MBT_S32  uiRectWidth;
	MBT_S32  uiRectHeight;
}CRECT2;    

static MBT_S32 uiv_iGameFram[24][16], uiv_iGameOldFram[24][16];
static MBT_S32 uiv_iGameBox[19][4][4]=
{
	{{0,1,0,0},{0,1,0,0},{0,1,0,0},{0,1,0,0}},
	{{0,0,0,0},{1,1,1,1},{0,0,0,0},{0,0,0,0}},
	{{1,1,0,0},{1,1,0,0},{0,0,0,0},{0,0,0,0}},
	{{0,1,0,0},{0,1,1,0},{0,0,1,0},{0,0,0,0}},   
	{{0,1,1,0},{1,1,0,0},{0,0,0,0},{0,0,0,0}},
	{{0,1,0,0},{1,1,0,0},{1,0,0,0},{0,0,0,0}},
	{{1,1,0,0},{0,1,1,0},{0,0,0,0},{0,0,0,0}},
	{{1,1,1,0},{1,0,0,0},{0,0,0,0},{0,0,0,0}},
	{{1,1,0,0},{0,1,0,0},{0,1,0,0},{0,0,0,0}},
	{{0,0,1,0},{1,1,1,0},{0,0,0,0},{0,0,0,0}},
	{{1,0,0,0},{1,0,0,0},{1,1,0,0},{0,0,0,0}},
	{{0,1,1,0},{0,1,0,0},{0,1,0,0},{0,0,0,0}},
	{{1,1,1,0},{0,0,1,0},{0,0,0,0},{0,0,0,0}},
	{{0,0,1,0},{0,0,1,0},{0,1,1,0},{0,0,0,0}},
	{{0,1,0,0},{0,1,1,1},{0,0,0,0},{0,0,0,0}},
	{{0,0,0,0},{1,1,1,0},{0,1,0,0},{0,0,0,0}},
	{{0,1,0,0},{1,1,0,0},{0,1,0,0},{0,0,0,0}},
	{{0,1,0,0},{1,1,1,0},{0,0,0,0},{0,0,0,0}},
	{{0,1,0,0},{0,1,1,0},{0,1,0,0},{0,0,0,0}}
};
static MBT_U8 uiv_iSetcolor = 0;
static MBT_S32  uiv_iGameX, uiv_iGameY, uiv_iGameR ;

static CRECT2 uiv_stPlayArea;

#define uiHorBlockNum 14
#define uiVerBlockNum 20



static MBT_S32 uiv_iGameSpeed =1;
static MBT_S32 uiv_iGameLevel=0;

static MBT_S8 UpdateDrawDataArea(MBT_S32 iData,CRECT2 rArea);
extern MBT_VOID HALVID_DisableDisplay(MBT_VOID);
static MBT_VOID output1(CRECT2 rArea,MBT_S32 ex1,MBT_S32 ey1);
static MBT_VOID output2(CRECT2 rArea,MBT_S32 ex1,MBT_S32 ey1);
static MBT_VOID output3(CRECT2 rArea,MBT_S32 ex1,MBT_S32 ey1);
MBT_VOID FlushPlayArea(CRECT2 rArea,MBT_U8 uiBlockW,MBT_U8 uiBlockH,MBT_S8 iMaxXoffset, MBT_S8 iMaxYoffset);
MBT_VOID DrawGameSolidPanel(MBT_S32 uiPosX,MBT_S32 uiPosY, MBT_S32 uiWidth,MBT_S32 uiHeight,MBT_S32 uiEdgeWidth,MBT_S32 uiMainPanelColor,MBT_S32 uiType);
static MBT_VOID hebin(MBT_S32 ex,MBT_S32 ey);
static MBT_VOID shuaxing(MBT_VOID);
static MBT_S32 down(MBT_S32 ex,MBT_S32 ey);
static MBT_VOID left(MBT_S32 ex,MBT_S32 ey);
static MBT_VOID right(MBT_S32 ex,MBT_S32 ey);
static MBT_VOID bian(MBT_S32 ex,MBT_S32 ey);
static MBT_S32 checkd(MBT_S32 ex,MBT_S32 ey);
static MBT_S32 checkb(MBT_S32 ex,MBT_S32 ey,MBT_S32 s );
static MBT_S32 checkl(MBT_S32 ex,MBT_S32 ey);
static MBT_S32 checkr(MBT_S32 ex,MBT_S32 ey);
MBT_U16 GetTextWidth(MBT_CHAR* pTextString, MBT_U16 uiTextLen);
//MBT_U16 GetTextHeight(MBT_VOID);

MBT_S32 InitGameCRectObj(CRECT2* rCRect, MBT_S32 uiPosX,MBT_S32 uiPosY,MBT_S32 uiWidth, MBT_S32 uiHeight );
static MBT_VOID InitOrgLevel(MBT_S32 iLevel);

static MBT_VOID GameConfigParams(MBT_S32* iSpeed, MBT_S32* iOrgLevel);
MBT_VOID Game_DrawConfigParams(MBT_S32 iselectlevel,MBT_S32 iselectspeed,MBT_U8 iSelectUD);

MBT_VOID Draw_FilledRectangle(CRECT2 rArea, MBT_U32 uiColor)
{
	WGUIF_DrawFilledRectangle(rArea.RectPos.uiPosX,rArea.RectPos.uiPosY, rArea.uiRectWidth,rArea.uiRectHeight,uiColor);
}
#if 0
MBT_U16 GetTextHeight(MBT_VOID)
{
	return 20;
}
#endif
MBT_S32 InitGameCRectObj(CRECT2* rCRect, MBT_S32 uiPosX,MBT_S32 uiPosY,MBT_S32 uiWidth, MBT_S32 uiHeight )
{
    if(rCRect ==MM_NULL)
    {
        return -1;
    }
    rCRect->RectPos.uiPosX =uiPosX;
    rCRect->RectPos.uiPosY =uiPosY;
    if(uiWidth>0)
    {
        rCRect->uiRectWidth =uiWidth;
    }
    if(uiHeight>0)
    {
        rCRect->uiRectHeight =uiHeight;
    }
    return 0;
}

MBT_VOID DrawGameSolidPanel(MBT_S32 uiPosX,MBT_S32 uiPosY, MBT_S32 uiWidth,MBT_S32 uiHeight,MBT_S32 uiEdgeWidth,MBT_S32  uiMainPanelColor,MBT_S32 uiType)
{
	MBT_S32 uiTopLeftColor =DEEP_FRAM_COLOR,uiBottomRight =FONT_FRONT_COLOR_BLACK;
	if(uiType<=0)
	{
		MBT_S32 uiTemColor =uiTopLeftColor;
		uiTopLeftColor =uiBottomRight;
		uiBottomRight =uiTemColor;
	}
	WGUIF_DrawFilledRectangle(uiPosX, uiPosY, uiWidth-uiEdgeWidth, uiEdgeWidth, uiTopLeftColor);
	WGUIF_DrawFilledRectangle(uiPosX, uiPosY, uiEdgeWidth, uiHeight-uiEdgeWidth, uiTopLeftColor);
	WGUIF_DrawFilledRectangle(uiPosX+uiEdgeWidth,uiPosY+uiEdgeWidth,uiWidth -2*uiEdgeWidth, uiHeight-2*uiEdgeWidth, uiMainPanelColor);
	WGUIF_DrawFilledRectangle(uiPosX+uiWidth-uiEdgeWidth, uiPosY+uiEdgeWidth,uiEdgeWidth, uiHeight-uiEdgeWidth,uiBottomRight);
	WGUIF_DrawFilledRectangle(uiPosX+uiEdgeWidth,uiPosY+uiHeight-uiEdgeWidth,uiWidth-uiEdgeWidth, uiEdgeWidth,uiBottomRight);
}


static MBT_S32 check1(MBT_S32 ex,MBT_S32 ey)
{ 
	MBT_S32 i,j;
    for(i=0;i<4;i++)
    {
    	for(j=0;j<4;j++)
    	{
    		if(uiv_iGameFram[ey+i][ex+j+1]+uiv_iGameBox[uiv_iGameR][i][j]>1) 
    		{
    			break;
    		}
    	}

        if(j!=4)  
        {
            break;
        }
    }
    
    if(i==4&&j==4) 
    {
		return(1);              /*    判断是否能画方块    */
    }
    else 
  	{
		return(0);
  	}
 
}
static MBT_S32 out(MBT_S32 ex,MBT_S32 ey)
{
    if(check1(ex,ey)==1 )
	{
		hebin(ex,ey);
		shuaxing();          /* 出块      */
		return(1);
    }
    else return(0);
}

static MBT_VOID jilu(MBT_VOID)
{
    MBT_S32 i,j;
    for(i=1;i<=20;i++)
    {
        for(j=2;j<=15;j++)   
        {
            uiv_iGameOldFram[i][j] = uiv_iGameFram[i][j] ;
        }
    }
}
static MBT_VOID hebin(MBT_S32 ex,MBT_S32 ey)
{
    MBT_S32 i,j;
    for(i=0;i<4;i++)                   /*  合并数组*/
    {
        for(j=0;j<4;j++)
        {
            uiv_iGameFram[ey+i][ex+j+1]+=uiv_iGameBox[uiv_iGameR][i][j];
        }
    }
}

static MBT_S32 dong(MBT_S32 ex,MBT_S32 ey,MBT_S32 c)
{
    MBT_S32 d=1;
    switch(c)
    {
        case DUMMY_KEY_DNARROW:
            while(1 == (d=down(ex,ey++)))
            {
        		MLMF_Task_Sleep(8);
            }
            break;

        case -1 :
            d=down(ex,ey);		
            break;   /*判断如何移动*/

        case DUMMY_KEY_LEFTARROW:
            left(ex,ey);
            break;

        case  DUMMY_KEY_RIGHTARROW:
            right(ex,ey);
            break;

        case DUMMY_KEY_UPARROW:
        //case DUMMY_KEY_SELECT:
            bian(ex,ey);
            break;

        default:
            break;
    }
    return(d);
}


static MBT_S32 down(MBT_S32 ex,MBT_S32 ey)
{	
    if(checkd(ex,ey)==1)
    {
        ey=++uiv_iGameY;
        hebin(ex,ey);            /* 下移   */
        shuaxing();
        return(1);
    }

    return(0);
}

static MBT_VOID left(MBT_S32 ex,MBT_S32 ey)
{
    if(checkl(ex,ey)==1)
    {
        ex=--uiv_iGameX;                      /*     左移   */
        hebin(ex,ey);
        shuaxing();
    }
}

static MBT_VOID right(MBT_S32 ex,MBT_S32 ey)
{
    if(checkr(ex,ey)==1)
    {
        ex=++uiv_iGameX;
        hebin(ex,ey);                   /*    右移     */
        shuaxing();
    }
}

static MBT_VOID bian(MBT_S32 ex,MBT_S32 ey)
{
    MBT_S32 s;
    s=uiv_iGameR;
    if(s==1)
    {
        s=0;
    }
    else if(s==2) 
    {
        s=2;
    }
    else if(s==4) 
    {
        s=3;
    }
    else if(s==6) 
    {
        s=5;
    }
    else if(s==10)
    {
        s=7;                  /*    旋转   */
    }
    else if(s==14) 
    {
        s=11;
    }
    else if(s==18)
    {
        s=15;
    }
    else 
    {
        s++;
    }
    
    if(checkb(ex,ey,s))
    {
        uiv_iGameR=s;
        hebin(ex,ey);
        shuaxing();
    }
    
    MLMF_Task_Sleep(1);
}

static MBT_S32 checkb(MBT_S32 ex,MBT_S32 ey,MBT_S32 s )
{
    MBT_S32 i,j;
    for(i=0;i<4;i++)
    {
        for(j=0;j<4;j++)
        {
            if(uiv_iGameBox[uiv_iGameR][i][j]==1)  uiv_iGameFram[ey+i][ex+j+1]=0;
        }
    }
    
    for(i=0;i<4;i++)                                     /*   判断是否能旋转 */
    {
        for(j=0;j<4;j++)
        {
            if(uiv_iGameFram[ey+i][ex+j+1]+uiv_iGameBox[s][i][j]>1) 
            {
                break;
            }
        }
    }
    
    if(i==4&&j==4) 
    {
        return(1);
    }

    for(i=0;i<4;i++)
    {
        for(j=0;j<4;j++)
        {
            if(uiv_iGameBox[uiv_iGameR][i][j]==1)  
            {
                uiv_iGameFram[ey+i][ex+j+1]=1;
            }
        }
    }
    return(0);

}

static MBT_VOID shuaxing()
{
    MBT_S32 i,j;
    /*   刷新  */
    for(i=1;i<=20;i++)
    {
        for(j=2;j<=15;j++)
        {
            if(uiv_iGameFram[i][j]==1&&uiv_iGameOldFram[i][j]==0)  
            {
                output1(uiv_stPlayArea,j-2,i-1);
            }
            
            if(uiv_iGameFram[i][j]==0&&uiv_iGameOldFram[i][j]==1)  
            {
                output2(uiv_stPlayArea,j-2,i-1);
            }
        }
    }
    jilu();
}
/******************************************************************************************
如果判断一行为满，就调用此函数
记录分数，等等。

*******************************************************************************************/
static MBT_VOID xiayi(MBT_S32 h)
{
    MBT_S32 i,j;
    
    MLMF_Task_Sleep(20);
    WGUIF_DrawFilledRectangle(uiv_stPlayArea.RectPos.uiPosX, uiv_stPlayArea.RectPos.uiPosY+(h-1)*SNAKE_ITEM_HEIGHT, uiHorBlockNum*SNAKE_ITEM_WIDTH, SNAKE_ITEM_HEIGHT, HELP_PLAY_COLOR);
    //需要修改
	MLMF_Task_Sleep( 20);
    
    jilu();
    for(i=h;i>1;i--)
    {
        for(j=2;j<=15;j++)
        {
            uiv_iGameFram[i][j]=uiv_iGameFram[i-1][j];
            uiv_iGameFram[1][j]=0;
        }
    }
    shuaxing();
    WGUIF_DrawFilledRectangle(uiv_stPlayArea.RectPos.uiPosX, uiv_stPlayArea.RectPos.uiPosY, uiv_stPlayArea.uiRectWidth, uiv_stPlayArea.uiRectHeight, HELP_PLAY_COLOR);
    //需要修改
    for(i=1;i<=20;i++)
    {
        for(j=2;j<=15;j++)
        {
            if(uiv_iGameFram[i][j]==1) 
            {
                output3(uiv_stPlayArea,j-2,i-1);
            }
        }
    }
}

static MBT_S32 checkl(MBT_S32 ex,MBT_S32 ey)
{
    MBT_S32 i,j;
    for(i=0;i<4;i++)
    {
        for(j=0;j<4;j++)
        {
            if(uiv_iGameBox[uiv_iGameR][i][j]==1)  
            {
                uiv_iGameFram[ey+i][ex+j+1]=0;
            }
        }
    }
    
    for(i=0;i<4;i++)
    { 
        for(j=0;j<4;j++)
        {
            if((uiv_iGameFram[ey+i][ex+j]+uiv_iGameBox[uiv_iGameR][i][j])>1)  
            {
                break;
            }
        }
        
        if(j!=4)  
        {
            break;
        }
    }
    
    if(i==4&&j==4)      
    {
        return(1);     
    }
    // 判断是否能左移

    for(i=0;i<4;i++)
    {
        for(j=0;j<4;j++)
        {
            if(uiv_iGameBox[uiv_iGameR][i][j]==1)
            {
                uiv_iGameFram[ey+i][ex+j+1]=1;
            }
        }
    }
    return(0);
}

static MBT_S32 checkr(MBT_S32 ex,MBT_S32 ey)
{
    MBT_S32 i,j;
    for(i=0;i<4;i++)
    {
        for(j=0;j<4;j++)
        {
            if(uiv_iGameBox[uiv_iGameR][i][j]==1) 
            {
                uiv_iGameFram[ey+i][ex+j+1]=0;
            }
        }
    }
    
    for(i=0;i<4;i++)
    {
        for(j=0;j<4;j++)
        {
            if((uiv_iGameFram[ey+i][ex+j+2]+uiv_iGameBox[uiv_iGameR][i][j])>1)  
            {
                break;
            }
        }
        
        if(j!=4)  
        {
            break;
        }
    }
    
    if(i==4&&j==4)    
    {
        return(1);          
    }
    //判断是否能右移 

    for(i=0;i<4;i++)
    {
        for(j=0;j<4;j++)
        {
            if(uiv_iGameBox[uiv_iGameR][i][j]==1)
            {
                uiv_iGameFram[ey+i][ex+j+1]=1;
            }
        }
    }
    return(0);
}

static MBT_S32 checkd(MBT_S32 ex,MBT_S32 ey)
{
	MBT_S32 i,j;
	
	for(i=0;i<4;i++)
	{
		for(j=0;j<4;j++)
		{
			if(uiv_iGameBox[uiv_iGameR][i][j]==1)  
			{
				uiv_iGameFram[ey+i][ex+j+1]=0;
			}
		}
	}
	
	for(i=0;i<4;i++)
	{
		for(j=0;j<4;j++)
		{
			if((uiv_iGameFram[ey+i+1][ex+j+1]+uiv_iGameBox[uiv_iGameR][i][j])>1)  
			{
				break;
			}
		}
		
		if(j!=4)
		{
			break;
		}
	}
	
	if(i==4&&j==4)      
	{
		return(1);             /*   判断是否能下移 */
	}
	else  
	{
		for(i=0;i<4;i++)
		{
			for(j=0;j<4;j++)
			{
				if(uiv_iGameBox[uiv_iGameR][i][j]==1) 
				{
					uiv_iGameFram[ey+i][ex+j+1]=1;
				}
			}
		}
		return(0);
	}
}


static MBT_VOID yulan(MBT_S32 yu,CRECT2 rArea,MBT_S32 uiBkColor)//就是出块的提示。
{
    MBT_S32 i,j;
    WGUIF_DrawFilledRectangle(rArea.RectPos.uiPosX, rArea.RectPos.uiPosY, rArea.uiRectWidth, rArea.uiRectHeight,HELP_PLAY_COLOR);
    for(i=0;i<4;i++)   
    {
        for(j=0;j<4;j++)
        {
            if(uiv_iGameBox[yu][i][j]==1)  
            {
                output3(rArea,j,i);
            }
        }
    }
}


static MBT_VOID output1(CRECT2 rArea,MBT_S32 ex1,MBT_S32 ey1)
{	
    MBT_U32 u16FontColor = SNAKE1_COLOR;
	switch(uiv_iSetcolor)
   	{
        case 0:
            u16FontColor = SNAKE1_COLOR;
            break;
        case 1:
            u16FontColor = SNAKE2_COLOR;
            break;
        case 2:
            u16FontColor = SNAKE3_COLOR;
            break;
        case 3:
            u16FontColor = SNAKE4_COLOR;
            break;
        case 4:
            u16FontColor = SNAKE6_COLOR;
            break;
        default:
            break;
   } 

   DrawGameSolidPanel(rArea.RectPos.uiPosX+ex1*SNAKE_ITEM_WIDTH, rArea.RectPos.uiPosY+ey1*SNAKE_ITEM_HEIGHT,SNAKE_ITEM_WIDTH,SNAKE_ITEM_HEIGHT,1,u16FontColor, 1);
}


static MBT_VOID output3(CRECT2 rArea,MBT_S32 ex1,MBT_S32 ey1)
{
    DrawGameSolidPanel(rArea.RectPos.uiPosX+ex1*SNAKE_ITEM_WIDTH, rArea.RectPos.uiPosY+ey1*SNAKE_ITEM_HEIGHT,SNAKE_ITEM_WIDTH,SNAKE_ITEM_HEIGHT,1,SNAKE5_COLOR, 1);
}

static MBT_VOID output2(CRECT2 rArea,MBT_S32 ex1,MBT_S32 ey1)
{
	WGUIF_DrawFilledRectangle(rArea.RectPos.uiPosX+ex1*SNAKE_ITEM_WIDTH, rArea.RectPos.uiPosY+ey1*SNAKE_ITEM_HEIGHT, SNAKE_ITEM_WIDTH, SNAKE_ITEM_HEIGHT, HELP_PLAY_COLOR);
}

static MBT_VOID InitFram(MBT_VOID)
{
    MBT_S32 i,j;
    for(i=0;i<24;i++)
    {
        for(j=0;j<16;j++)
        {
            if(i==0||i==21||i==22||i==23||j==0||j==1)
            {
                uiv_iGameFram[i][j]=1;
            }
            else
            {
                uiv_iGameFram[i][j]=0;
            }
            uiv_iGameOldFram[i][j]=uiv_iGameFram[i][j];
        }
    }
}

static MBT_S8 UpdateDrawDataArea(MBT_S32 iData,CRECT2 rArea)
{
    MBT_CHAR pBuff[32];
    MBT_S32 iLen;
    MBT_S32 font_height = 0, font_width = 0;
    MBT_S32 s32Xoffset = 0, s32Yoffset = 0;
    
    memset(pBuff,0,sizeof(pBuff));
    font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE18);
    WGUIF_DrawFilledRectangle(rArea.RectPos.uiPosX,rArea.RectPos.uiPosY, rArea.uiRectWidth, rArea.uiRectHeight, SCROLLBAR_BACK_COLOR);

    iLen = sprintf(pBuff,"%d",iData);
    font_width = WGUIF_FNTGetTxtWidth(iLen, pBuff);
    s32Xoffset = (rArea.uiRectWidth - font_width)/2;
    s32Yoffset = (rArea.uiRectHeight - GWFONT_HEIGHT_SIZE18)/2;
    
    WGUIF_FNTDrawTxt(rArea.RectPos.uiPosX+s32Xoffset, rArea.RectPos.uiPosY+s32Yoffset,iLen,pBuff, FONT_FRONT_COLOR_WHITE);  
    return 0;
}

static MBT_VOID InitOrgLevel(MBT_S32 iLevel)
{
    MBT_S32 i=0,j=0;
    for(i=20;i>20-iLevel;i--)
    {
        for(j=2;j<=15;j++) 
        {
            uiv_iGameFram[i][j]=rand()%2;
        }
    }
}

static MBT_VOID Draw_Gameover(MBT_VOID)
{   
    MBT_CHAR*G_gameover_String[2]={"Game is over,Press Ok Contiue", "Game is over,Press Ok Contiue"};

    uif_ShareManaulDisapperDlg(G_gameover_String[uiv_u8Language]);
}


static MBT_VOID Draw_GameGetGoal(MBT_VOID)
{
     MBT_CHAR*G_GetGoal_String[2]={"Go to next Level", "Go to next Level",};
     uif_ShareDisplayResultDlg(G_GetGoal_String[uiv_u8Language], MM_NULL, 5);
}

static MBT_VOID Draw_GamePause(MBT_VOID)
{   
    MBT_CHAR*G_gamepause_String[2]={"Game is pausing,Press Ok Contiue", "Game is pausing,Press Ok Contiue"};
    uif_ShareManaulDisapperDlg(G_gamepause_String[uiv_u8Language]);
}

static MBT_VOID uif_ShareManaulDisapperDlg( MBT_CHAR* pMsg )
{    
    MBT_S32 iRetKey;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    BITMAPTRUECOLOR  Copybitmap;
    MBT_S32 x, y;
    MBT_S32 iStrlen;
    MBT_CHAR* resultstr[2][2] = 
    { 
        {
            "Information", 
            "Confirm"
        },
        {
            "Information", 
            "Confirm"
        }
    };
    MBT_S32 font_width, s32Xoffset, font_height, s32Yoffset;
    
    iStrlen = 360;

    Copybitmap.bWidth = iStrlen;
    Copybitmap.bHeight = 150;    

    x = P_MENU_LEFT + (OSD_REGINMAXWIDHT - iStrlen) / 2;
    y = P_WORKSPACE_TOP+(P_WORKSPACE_HEIGHT-Copybitmap.bHeight)/2;    

    WGUIF_GetRectangleImage(x,y, &Copybitmap);

    WGUIF_DrawFilledRectangle(x+4,y+4,Copybitmap.bWidth-8,Copybitmap.bHeight-8, SCROLLBAR_BACK_COLOR);

    WGUIF_DrawFilledRectangle(x+6,y+6,Copybitmap.bWidth-12,30, SUBAREA_BKG_COLOR);
    font_width = WGUIF_FNTGetTxtWidth(strlen(resultstr[uiv_u8Language][0]), resultstr[uiv_u8Language][0]);
    s32Xoffset = (Copybitmap.bWidth-12 - font_width)/2;
    font_height = WGUIF_GetFontHeight();
    s32Yoffset = (30 - font_height)/2;
    WGUIF_FNTDrawTxt(x+6+s32Xoffset,y+6+s32Yoffset, strlen(resultstr[uiv_u8Language][0]), resultstr[uiv_u8Language][0], FONT_FRONT_COLOR_BLACK);

    font_width = WGUIF_FNTGetTxtWidth(strlen(pMsg), pMsg);
    s32Xoffset = (Copybitmap.bWidth-8 - font_width)/2;
    font_height = WGUIF_GetFontHeight();
    s32Yoffset = (Copybitmap.bHeight-8 -30 - font_height)/2;
    WGUIF_FNTDrawTxt(x+4+s32Xoffset,y+4+32+s32Yoffset, strlen(pMsg), pMsg, FONT_FRONT_COLOR_BLACK);
    
    while ( !bExit )
    {
        if(bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        
        iRetKey = uif_ReadKey( 0 );

        switch ( iRetKey )
        {
        case DUMMY_KEY_SELECT:
            bExit = MM_TRUE;
            break;

        case DUMMY_KEY_MUTE:
            bRefresh |= UIF_SetMute();
            break;
            
        case DUMMY_KEY_FORCE_REFRESH:
            bRefresh = MM_TRUE;
            break;
            
        default:   
            if(0 !=  uif_QuickKey(iRetKey))
            {
                bExit = MM_TRUE;
            }
            break;
        }
    }

    if(MM_TRUE == WGUIF_PutRectangleImage(x,y, &Copybitmap))
    {
        WGUIF_ReFreshLayer();
    }
#ifdef BLS_CDCA
    CDCASTB_RefreshInterface();
#endif
}


MBT_U8 GameBeforeExitConfirmOrCancel(MBT_VOID)
{
    MBT_U8 iReturn;
    MBT_CHAR*Game_before_Exit[2][2]=
    {
        {
            "Info",
            "Are you sure to exit the game?"
        },
        {
            "Info",
            "Are you sure to exit the game?"
        },
    };	
    
    iReturn=uif_ShareMakeSelectDlg(Game_before_Exit[uiv_u8Language][0], Game_before_Exit[uiv_u8Language][1], MM_FALSE);
    
    return iReturn;
}




MBT_VOID Game_DrawConfigParams(MBT_S32 iselectlevel,MBT_S32 iselectspeed,MBT_U8  iSelectUD)
{

    MBT_CHAR* istring[11]={"0","1","2","3","4","5","6","7","8","9","10"};
    MBT_S32 thisStartX=410,thisStartY=248;
    MBT_S32 font_width = 0;
    MBT_S32 s32Xoffset = 0;

    font_width = WGUIF_FNTGetTxtWidth(strlen(istring[iselectlevel]), istring[iselectlevel]);
    s32Xoffset = (34-font_width)/2; 
    WGUIF_FNTDrawTxt(thisStartX+146+s32Xoffset, thisStartY+75,strlen(istring[iselectlevel]), istring[iselectlevel], FONT_FRONT_COLOR_WHITE);

    font_width = WGUIF_FNTGetTxtWidth(strlen(istring[iselectspeed]), istring[iselectspeed]);
    s32Xoffset = (34-font_width)/2; 
    WGUIF_FNTDrawTxt(thisStartX+146+s32Xoffset, thisStartY+106, strlen(istring[iselectspeed]), istring[iselectspeed], FONT_FRONT_COLOR_WHITE);

    if(iSelectUD)
    {
        font_width = WGUIF_FNTGetTxtWidth(strlen(istring[iselectlevel]), istring[iselectlevel]);
        s32Xoffset = (34-font_width)/2; 
        WGUIF_DrawFilledRectangle(thisStartX+146, thisStartY+75,34,20, HELP_HINT_COLOR);
        WGUIF_FNTDrawTxt(thisStartX+146+s32Xoffset, thisStartY+75,strlen(istring[iselectlevel]), istring[iselectlevel], FONT_FRONT_COLOR_BLACK);
    }
    else
    {
        font_width = WGUIF_FNTGetTxtWidth(strlen(istring[iselectspeed]), istring[iselectspeed]);
        s32Xoffset = (34-font_width)/2; 
        WGUIF_DrawFilledRectangle(thisStartX+146, thisStartY+106,34,20, HELP_HINT_COLOR);
        WGUIF_FNTDrawTxt(thisStartX+146+s32Xoffset, thisStartY+106, strlen(istring[iselectspeed]), istring[iselectspeed], FONT_FRONT_COLOR_BLACK);
    }
}


MBT_VOID GameConfigParams(MBT_S32* iSpeed, MBT_S32* iOrgLevel)
{     
    MBT_S32 iKey;
    MBT_U8 iSelectUD=MM_TRUE;//上下控制
    MBT_BOOL bRefresh=MM_TRUE;
    MBT_BOOL bRedraw=MM_TRUE;
    MBT_BOOL bLoop = MM_TRUE;
    MBT_S32 thisStartX=410,thisStartY=248,thisWidth=240,thisHeight=130;
    BITMAPTRUECOLOR  Copybitmap;
    MBT_S32 font_width = 0;
    MBT_S32 s32Xoffset = 0;

    
    Copybitmap.bWidth = 254;
    Copybitmap.bHeight = 144;	
    WGUIF_GetRectangleImage(thisStartX-7,thisStartY-7, &Copybitmap);

    uif_ShareDrawFilledBoxWith4CircleCorner(thisStartX-7,thisStartY-7,thisWidth+14,thisHeight+14, 8,HELP_HINT_COLOR );	
    //uif_ShareDrawFilledBoxWith4CircleCorner(thisStartX,thisStartY,thisWidth,thisHeight, 8,SCROLLBAR_BACK_COLOR );

    font_width = WGUIF_FNTGetTxtWidth(strlen(G_Game_String[uiv_u8Language][24]), G_Game_String[uiv_u8Language][24]);
    s32Xoffset = (thisWidth - font_width)/2;
    WGUIF_FNTDrawTxt(thisStartX+s32Xoffset, thisStartY+5, strlen(G_Game_String[uiv_u8Language][24]), G_Game_String[uiv_u8Language][24] ,FONT_FRONT_COLOR_BLACK);

    font_width = WGUIF_FNTGetTxtWidth(strlen(G_Game_String[uiv_u8Language][23]), G_Game_String[uiv_u8Language][23]);
    s32Xoffset = (thisWidth - font_width)/2;
    WGUIF_FNTDrawTxt(thisStartX+s32Xoffset, thisStartY+40, strlen(G_Game_String[uiv_u8Language][23]), G_Game_String[uiv_u8Language][23] ,FONT_FRONT_COLOR_WHITE);

    WGUIF_FNTDrawTxt(thisStartX+40, thisStartY+75, strlen(G_Game_String[uiv_u8Language][25]), G_Game_String[uiv_u8Language][25], FONT_FRONT_COLOR_WHITE);
    uif_DrawLeftArrow(thisStartX+130, thisStartY+75,16,16,FONT_FRONT_COLOR_WHITE);
    uif_DrawRightArrow(thisStartX+180, thisStartY+75, 16,16,FONT_FRONT_COLOR_WHITE);
    WGUIF_FNTDrawTxt(thisStartX+40, thisStartY+106, strlen(G_Game_String[uiv_u8Language][26]), G_Game_String[uiv_u8Language][26], FONT_FRONT_COLOR_WHITE);
    uif_DrawLeftArrow(thisStartX+130, thisStartY+106,16,16,FONT_FRONT_COLOR_WHITE);
    uif_DrawRightArrow(thisStartX+180, thisStartY+106, 16,16,FONT_FRONT_COLOR_WHITE);

    while(bLoop)
    {     
        if(bRedraw)
        {
            bRedraw=MM_FALSE;
            Game_DrawConfigParams(*iOrgLevel,*iSpeed,iSelectUD);
            bRefresh = MM_TRUE;
        }
        
        if(bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey= uif_ReadKey ( 0);
        switch(iKey)
        {
            case DUMMY_KEY_LEFTARROW:
                if(iSelectUD)
                { 
                    (*iOrgLevel)--;
                    if((*iOrgLevel) < 0) 
                    {
                        (*iOrgLevel) = MAX_LEVEL_GAMENUM_ITEM+1;
                    } 
                }
                else
                { 
                    (*iSpeed)--;
                    if((*iSpeed) < 1) 
                    {
                        (*iSpeed) = MAX_LEVEL_GAMENUM_ITEM;
                    } 
                }
                bRedraw=MM_TRUE;		
                break;
            case DUMMY_KEY_RIGHTARROW:
                if(iSelectUD)
                { 
                    (*iOrgLevel)++;
                    if((*iOrgLevel) > MAX_LEVEL_GAMENUM_ITEM+1) 
                    {
                        (*iOrgLevel) = 0;
                    } 
                }
                else
                { 
                    (*iSpeed)++;
                    if((*iSpeed)> MAX_LEVEL_GAMENUM_ITEM) 
                    {
                        (*iSpeed) = 1;
                    } 
                }
                bRedraw=MM_TRUE;	
                break;
            case DUMMY_KEY_UPARROW:
                iSelectUD=!iSelectUD;
                bRedraw=MM_TRUE;
                break;
            case DUMMY_KEY_DNARROW:
                iSelectUD=!iSelectUD;
                bRedraw=MM_TRUE;
                break;
            case DUMMY_KEY_SELECT:
                bLoop = MM_FALSE;
                break;
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            default:
                if(0 !=  uif_QuickKey(iKey))
                {
                    bLoop = MM_FALSE;
                }
                break;
        }
    }

    if(MM_TRUE == WGUIF_PutRectangleImage(thisStartX-7,thisStartY-7, &Copybitmap))
    {
        WGUIF_ReFreshLayer();
    }
}


static MBT_VOID Draw_SnakeHelpInfo(CRECT2 *rect1, CRECT2 *rect2, CRECT2 *rect3, CRECT2 *rectHint)
{
    MBT_S32 s32Yoffset, s32yOffSetBmp;
    MBT_CHAR*pTitle[8]; 
    MBT_S32 font_height;
    BITMAPTRUECOLOR* pstFramBmp;
    
    pTitle[0] =G_Game_String[uiv_u8Language][26];
    pTitle[1] =G_Game_String[uiv_u8Language][29];
    pTitle[2] =G_Game_String[uiv_u8Language][30];

    
    font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    s32Yoffset = (rect1->uiRectHeight - SMALL_GWFONT_HEIGHT)/2;
    
    WGUIF_FNTDrawTxt(rect1->RectPos.uiPosX-80, rect1->RectPos.uiPosY+s32Yoffset, strlen(pTitle[0]), pTitle[0], FONT_FRONT_COLOR_WHITE);
    WGUIF_FNTDrawTxt(rect2->RectPos.uiPosX-80, rect2->RectPos.uiPosY+s32Yoffset, strlen(pTitle[1]), pTitle[1], FONT_FRONT_COLOR_WHITE);
    WGUIF_FNTDrawTxt(rect3->RectPos.uiPosX-80, rect3->RectPos.uiPosY+s32Yoffset, strlen(pTitle[2]), pTitle[2], FONT_FRONT_COLOR_WHITE);   

    uif_ShareDrawFilledBoxWith4CircleCorner( rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_greenIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+ s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][32]), G_Game_String[uiv_u8Language][32], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner( rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2+36*1,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_redIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+36*1 + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2+36*1 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][21]), G_Game_String[uiv_u8Language][21], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner( rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2+36*2,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_okIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+36*2 + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2+36*2 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][42]), G_Game_String[uiv_u8Language][42], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner( rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2+36*3,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_leftIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+36*3 + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2+36*3 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][40]), G_Game_String[uiv_u8Language][40], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner( rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2+36*4,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_rightIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+36*4 + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2+36*4 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][41]), G_Game_String[uiv_u8Language][41], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner(rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2+36*5,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_upIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+36*5 + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2+36*5 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][44]), G_Game_String[uiv_u8Language][44], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner(rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2+36*6,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_downIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+36*6 + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2+36*6 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][36]), G_Game_String[uiv_u8Language][36], FONT_FRONT_COLOR_WHITE);   

}


static MBT_VOID Draw_ElosiHelpInfo(CRECT2 *rect1, CRECT2 *rect2, CRECT2 *rect3, CRECT2 *rectHint)
{
    MBT_S32 s32Yoffset, s32yOffSetBmp;
    MBT_CHAR*pTitle[8]; 
    MBT_S32 font_height;
    BITMAPTRUECOLOR* pstFramBmp;
    
    pTitle[0] =G_Game_String[uiv_u8Language][26];
    pTitle[1] =G_Game_String[uiv_u8Language][29];
    pTitle[2] =G_Game_String[uiv_u8Language][30];

    
    font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    s32Yoffset = (rect1->uiRectHeight - SMALL_GWFONT_HEIGHT)/2;
    
    WGUIF_FNTDrawTxt(rect1->RectPos.uiPosX-80, rect1->RectPos.uiPosY+s32Yoffset, strlen(pTitle[0]), pTitle[0], FONT_FRONT_COLOR_WHITE);
    WGUIF_FNTDrawTxt(rect2->RectPos.uiPosX-80, rect2->RectPos.uiPosY+s32Yoffset, strlen(pTitle[1]), pTitle[1], FONT_FRONT_COLOR_WHITE);
    WGUIF_FNTDrawTxt(rect3->RectPos.uiPosX-80, rect3->RectPos.uiPosY+s32Yoffset, strlen(pTitle[2]), pTitle[2], FONT_FRONT_COLOR_WHITE);   

    uif_ShareDrawFilledBoxWith4CircleCorner( rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_greenIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+ s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][32]), G_Game_String[uiv_u8Language][32], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner( rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2+36*1,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_redIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+36*1 + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2+36*1 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][21]), G_Game_String[uiv_u8Language][21], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner( rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2+36*2,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_okIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+36*2 + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2+36*2 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][42]), G_Game_String[uiv_u8Language][42], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner( rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2+36*3,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_leftIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+36*3 + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2+36*3 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][40]), G_Game_String[uiv_u8Language][40], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner( rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2+36*4,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_rightIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+36*4 + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2+36*4 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][41]), G_Game_String[uiv_u8Language][41], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner(rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2+36*5,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_upIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+36*5 + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2+36*5 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][39]), G_Game_String[uiv_u8Language][39], FONT_FRONT_COLOR_WHITE);

    uif_ShareDrawFilledBoxWith4CircleCorner(rectHint->RectPos.uiPosX+25, rectHint->RectPos.uiPosY+2+36*6,130,34, 8,HELP_HINT_COLOR );  
    pstFramBmp = BMPF_GetBMP(m_ui_game_downIfor);
    s32yOffSetBmp = (34 - pstFramBmp->bHeight)/2;
    WGUIF_DisplayReginTrueColorBmp(rectHint->RectPos.uiPosX+25 + 10, rectHint->RectPos.uiPosY+2+36*6 + s32yOffSetBmp, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
	WGUIF_FNTDrawTxt(rectHint->RectPos.uiPosX+25 + 10+ pstFramBmp->bWidth + 15, rectHint->RectPos.uiPosY+2+36*6 + s32Yoffset, strlen(G_Game_String[uiv_u8Language][43]), G_Game_String[uiv_u8Language][43], FONT_FRONT_COLOR_WHITE);   
}

MBT_S32  Game_Elosi(MBT_S32 iPara)
{
	MBT_S32 i,j,yu =0 , jiashu=5000;
	MBT_S32 f=0;
	MBT_S32 iKey;
	MBT_BOOL bRefresh = MM_TRUE;
	MBT_S32 score=0,record=0;
	CRECT2 rMainPanel, rPreviewArea;

    CRECT2 rSpeedDataArea, rScoreDataArea,rRecordDataArea;
    CRECT2 rHintUpArea, rHintDownArea;
	MBT_S8 iExitFrom =-1;
    UIF_StopAV();
    uif_ShareDrawGameCommonPanel();

	InitGameCRectObj(&rMainPanel, 380, 148, 10*2+uiHorBlockNum*SNAKE_ITEM_WIDTH,10*2+uiVerBlockNum*SNAKE_ITEM_HEIGHT);//SCROLLBAR_BACK_COLOR
	InitGameCRectObj(&uiv_stPlayArea,rMainPanel.RectPos.uiPosX+10, rMainPanel.RectPos.uiPosY+10, uiHorBlockNum*SNAKE_ITEM_WIDTH,uiVerBlockNum*SNAKE_ITEM_HEIGHT);
	InitGameCRectObj(&rPreviewArea,uiv_stPlayArea.RectPos.uiPosX+uiv_stPlayArea.uiRectWidth+30, uiv_stPlayArea.RectPos.uiPosY, SNAKE_ITEM_WIDTH*4,SNAKE_ITEM_HEIGHT*4);

    uif_ShareDrawFilledBoxWith4CircleCorner(rMainPanel.RectPos.uiPosX, rMainPanel.RectPos.uiPosY, rMainPanel.uiRectWidth, rMainPanel.uiRectHeight, 8, LISTITEM_NOFOCUS_COLOR);
    uif_ShareDrawFilledBoxWith4CircleCorner(rPreviewArea.RectPos.uiPosX-10, rPreviewArea.RectPos.uiPosY-10, rPreviewArea.uiRectWidth+20, rPreviewArea.uiRectHeight+20, 8, LISTITEM_NOFOCUS_COLOR);

    InitGameCRectObj(&rHintUpArea,rMainPanel.RectPos.uiPosX+rMainPanel.uiRectWidth+30+SNAKE_ITEM_WIDTH*4+50,rMainPanel.RectPos.uiPosY, 180,110);          
	InitGameCRectObj(&rHintDownArea,rHintUpArea.RectPos.uiPosX,rHintUpArea.RectPos.uiPosY+rHintUpArea.uiRectHeight+16, 180,254);

    InitGameCRectObj(&rSpeedDataArea,rHintUpArea.RectPos.uiPosX+90,rHintUpArea.RectPos.uiPosY+2, HELPING_WIDTH_ONE,HELPING_HEIGHT);          
	InitGameCRectObj(&rRecordDataArea,rHintUpArea.RectPos.uiPosX+90,rHintUpArea.RectPos.uiPosY+38, HELPING_WIDTH_ONE,HELPING_HEIGHT);
	InitGameCRectObj(&rScoreDataArea,rHintUpArea.RectPos.uiPosX+90,rHintUpArea.RectPos.uiPosY+74, HELPING_WIDTH_ONE,HELPING_HEIGHT);

    uif_ShareDrawFilledBoxWith4CircleCorner(rHintUpArea.RectPos.uiPosX, rHintUpArea.RectPos.uiPosY, rHintUpArea.uiRectWidth, rHintUpArea.uiRectHeight, 8, LISTITEM_NOFOCUS_COLOR);
    uif_ShareDrawFilledBoxWith4CircleCorner(rHintDownArea.RectPos.uiPosX, rHintDownArea.RectPos.uiPosY, rHintDownArea.uiRectWidth, rHintDownArea.uiRectHeight, 8, LISTITEM_NOFOCUS_COLOR);

	Draw_ElosiHelpInfo(&rSpeedDataArea, &rRecordDataArea, &rScoreDataArea, &rHintDownArea);
	uiv_iGameSpeed=1;
	uiv_iGameLevel=0;
	UpdateDrawDataArea(uiv_iGameSpeed,rSpeedDataArea);
	UpdateDrawDataArea(uiv_iGameLevel,rRecordDataArea);

	do
	{
		f = 0 ;
		jiashu = 5000;
		InitFram();
		WGUIF_DrawFilledRectangle(uiv_stPlayArea.RectPos.uiPosX, uiv_stPlayArea.RectPos.uiPosY, uiv_stPlayArea.uiRectWidth, uiv_stPlayArea.uiRectHeight, HELP_PLAY_COLOR);
		WGUIF_DrawFilledRectangle(rPreviewArea.RectPos.uiPosX, rPreviewArea.RectPos.uiPosY, rPreviewArea.uiRectWidth, rPreviewArea.uiRectHeight, HELP_PLAY_COLOR);
		bRefresh = MM_TRUE;
WAIT_TO_START_POINT:
		score=0;
		record =0;

		UpdateDrawDataArea(score,rScoreDataArea);
		bRefresh = MM_TRUE;
		while(MM_TRUE)
		{
            if(MM_TRUE == bRefresh)
            {
               WGUIF_ReFreshLayer();
               bRefresh = MM_FALSE;
            }
			iKey = uif_ReadKey ( 0);
			if(iKey ==DUMMY_KEY_YELLOW_SUBSCRIBE || iKey ==DUMMY_KEY_SELECT)
			{
				break;
			}
			else if(iKey ==DUMMY_KEY_EXIT || iKey == DUMMY_KEY_MENU || iKey == DUMMY_KEY_BACK )
			{
				iExitFrom =0;
				goto EXIT_POINT;
			}
			else if(iKey ==DUMMY_KEY_GREEN)
			{
				GameConfigParams(&uiv_iGameSpeed,&uiv_iGameLevel);
				UpdateDrawDataArea(uiv_iGameSpeed,rSpeedDataArea);	
				UpdateDrawDataArea(uiv_iGameLevel,rRecordDataArea);
                bRefresh = MM_TRUE;
			}
			else if(iKey ==DUMMY_KEY_FORCE_REFRESH)
			{
                bRefresh = MM_TRUE;
			}
			else
			{
                if( uif_QuickKey(iKey))
                {
                    iExitFrom =0;
                    bRefresh = MM_TRUE;
                    goto EXIT_POINT;
                }
			}
		}
		InitOrgLevel(uiv_iGameLevel);
		yu=random(19);
GENERATE:

		uiv_iGameR=yu;
		yu=random(19);
		srand((MBT_U32)MLMF_SYS_GetMS());
		uiv_iSetcolor=rand()%5;
		yulan(yu,rPreviewArea,HELP_PLAY_COLOR);
        bRefresh = MM_TRUE;
		for(i=1,f=0;i<=20;i++)
		{
			for(j=2;j<=15;j++)
			{
				if(uiv_iGameFram[i][j]==0)
				break;
			}
			if(j==16) 
			{
				xiayi(i);	
				f++;
			}
		}

		if(f!=0)
		{
		    switch(f)
            {
                case 1: score += 10;
                    break;
                case 2: score += 40;
                    break;
                case 3: score += 80;
                    break;
                case 4: score += 150;
                    break;
                default:
                    break;
            }      

			if(record<score)   
			{
                record=score;
			}
			//UpdateDrawDataArea(record,rRecordDataArea,uiDataTextColor,uiTextBkColor);
			UpdateDrawDataArea(score,rScoreDataArea);
		}

		if(score>=jiashu)  
		{
			uiv_iGameSpeed++;
			if(uiv_iGameSpeed>9)
			{
                uiv_iGameSpeed=1;
			}
			jiashu += 400+uiv_iGameSpeed*100;
			Draw_GameGetGoal();
			UpdateDrawDataArea(uiv_iGameSpeed,rSpeedDataArea);
		}

		uiv_iGameX= 4; uiv_iGameY= 1 ;
        bRefresh = MM_TRUE;
		if( out(uiv_iGameX,uiv_iGameY)==0) /*判断顶部是不是还能出块*/
		{
			Draw_Gameover();
			uiv_iGameSpeed=1;
			UpdateDrawDataArea(uiv_iGameSpeed,rSpeedDataArea);
			iExitFrom =1;
            bRefresh = MM_TRUE;
			goto EXIT_POINT;
		}
BLOCK_DOWN:
		while(1)
		{     
			
            if(MM_TRUE == bRefresh)
            {
               WGUIF_ReFreshLayer();
               bRefresh = MM_FALSE;
            }
                           
			iKey = uif_ReadKey ( (50)*(12-(MBT_S32)uiv_iGameSpeed) ) ;
			if( iKey == DUMMY_KEY_RED)//暂停
			{
				Draw_GamePause();
                bRefresh = MM_TRUE;
				continue;
			}

			if(iKey ==DUMMY_KEY_EXIT || iKey == DUMMY_KEY_MENU || iKey == DUMMY_KEY_BACK )
			{
				iExitFrom =2;
				goto EXIT_POINT ;
			}
			else if(iKey ==DUMMY_KEY_GREEN)//setting
			{
				GameConfigParams(&uiv_iGameSpeed,&uiv_iGameLevel);
				UpdateDrawDataArea(uiv_iGameSpeed,rSpeedDataArea);	
				UpdateDrawDataArea(uiv_iGameLevel,rRecordDataArea);
                bRefresh = MM_TRUE;
			}
			else if(iKey ==DUMMY_KEY_FORCE_REFRESH)
			{
                bRefresh = MM_TRUE;
			}
			else
			{
                if( uif_QuickKey(iKey))
                {
                    iExitFrom =0;
                    goto EXIT_POINT;
                }
			}
	
			if( dong(uiv_iGameX,uiv_iGameY, iKey )==0 ) 
			{
				MLMF_Task_Sleep( 20 );//xiegai 20 wei 20*30
				goto GENERATE ; 
			}
            bRefresh = MM_TRUE;
		}
EXIT_POINT:
		MLMF_Task_Sleep(20);
		if(iExitFrom ==1)
		{
			iExitFrom =-1;
			continue;
		}
		
		
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

		if(GameBeforeExitConfirmOrCancel())
		{
			return DUMMY_KEY_EXIT;
		}
		else
		{
			if(iExitFrom ==0)
			{
			iExitFrom =-1;
			goto WAIT_TO_START_POINT;
			}
			else
			if(iExitFrom ==2)
			{
			iExitFrom =-1;
			goto BLOCK_DOWN;
			}
		}
	} while(1) ;//while( iKey == DUMMY_KEY_SELECT );
}

/************************************************************************************************
              以下是游戏贪吃蛇
              
            
             date:9.02
             create by blossoms digital
***********************************************************************************************/

typedef struct SNAKE_T
{
	MBT_S8  iXOffset;
	MBT_S8  iYOffset;
	struct SNAKE_T *pNext;
}SNAKE;

enum
{
	GO_R,
	GO_L,
	GO_U,
	GO_D
};

/***********************************************************************
MBT_VOID GameConfigSnakeParams(MBT_S32* ispeed)
游戏开始前对游戏速度进行配置

************************************************************************/
 

static MBT_VOID GameConfigSnakeParams(MBT_S32* ispeed)
{     
    MBT_S32 iKey;
    MBT_CHAR* istring[6]={"1","2","3","4","5","6"};
    MBT_S32 thisStartX=410,thisStartY=248,thisWidth=240,thisHeight=130;
    MBT_BOOL bLoop = MM_TRUE;
    MBT_BOOL bReDraw = MM_TRUE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_S32 font_width = 0, s32Xoffset = 0;
    BITMAPTRUECOLOR  Copybitmap;

    
    Copybitmap.bWidth = thisWidth+14;
    Copybitmap.bHeight = thisHeight+14;	
    WGUIF_GetRectangleImage(thisStartX-7,thisStartY-7, &Copybitmap);
    uif_ShareDrawFilledBoxWith4CircleCorner(thisStartX-7,thisStartY-7,thisWidth+14,thisHeight+14, 8,HELP_HINT_COLOR );	

    font_width = WGUIF_FNTGetTxtWidth(strlen(G_Game_String[uiv_u8Language][24]), G_Game_String[uiv_u8Language][24]);
    s32Xoffset = (thisWidth - font_width)/2;
    WGUIF_FNTDrawTxt(thisStartX+s32Xoffset, thisStartY+5, strlen(G_Game_String[uiv_u8Language][24]), G_Game_String[uiv_u8Language][24] ,FONT_FRONT_COLOR_BLACK);

    font_width = WGUIF_FNTGetTxtWidth(strlen(G_Game_String[uiv_u8Language][23]), G_Game_String[uiv_u8Language][23]);
    s32Xoffset = (thisWidth - font_width)/2;
    WGUIF_FNTDrawTxt(thisStartX+s32Xoffset, thisStartY+40, strlen(G_Game_String[uiv_u8Language][23]), G_Game_String[uiv_u8Language][23] ,FONT_FRONT_COLOR_WHITE);

    WGUIF_FNTDrawTxt(thisStartX+20, thisStartY+80, strlen(G_Game_String[uiv_u8Language][27]), G_Game_String[uiv_u8Language][27] , FONT_FRONT_COLOR_WHITE);

    uif_DrawLeftArrow(thisStartX+130, thisStartY+80, 16,16, LISTITEM_NOFOCUS_COLOR);
    uif_DrawRightArrow(thisStartX+180, thisStartY+80,16,16 , LISTITEM_NOFOCUS_COLOR);

    while(bLoop)
    {  
        if(bReDraw)
        {
            WGUIF_DrawFilledRectangle(thisStartX+155, thisStartY+80,20,20, HELP_HINT_COLOR);
            WGUIF_FNTDrawTxt(thisStartX+158, thisStartY+80, 1, istring[(*ispeed)-1], FONT_FRONT_COLOR_BLACK);
            bReDraw = MM_FALSE;
            bRefresh = MM_TRUE;
        }

        if(bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey ( 0);

        switch(iKey)
        {
        case DUMMY_KEY_LEFTARROW:
            (*ispeed)--;
            if((*ispeed)<1)
            {
                (* ispeed) =6;
            }
            bReDraw = MM_TRUE;
            break;
        case DUMMY_KEY_RIGHTARROW:
            (*ispeed)++;
            if((*ispeed)>6)
            {
                (*ispeed)=1;
            }
            bReDraw = MM_TRUE;
            break;
        case DUMMY_KEY_UPARROW:
            break;
        case DUMMY_KEY_DNARROW:
            break;
        case DUMMY_KEY_SELECT:
            bLoop = MM_FALSE;
            break;
            
        case DUMMY_KEY_EXIT:
            bLoop = MM_FALSE;
            break;
            
        case DUMMY_KEY_MUTE:
            bRefresh |= UIF_SetMute();
            break;
        case DUMMY_KEY_FORCE_REFRESH:
            bRefresh = MM_TRUE;
            break;
            
        default:
            iKey = uif_QuickKey(iKey);
            if(0 !=  iKey)
            {
                bLoop = MM_FALSE;
            }
            break;
        }
    }

    if(MM_TRUE == WGUIF_PutRectangleImage(thisStartX-7,thisStartY-7, &Copybitmap))
    {
        WGUIF_ReFreshLayer();
    }
}

MBT_VOID Draw_SolidPanel(CRECT2 rArea, MBT_S32 uiEdgeWidth,MBT_S32 uiMainPanelColor,MBT_S32 uiType)
{
	DrawGameSolidPanel(rArea.RectPos.uiPosX,rArea.RectPos.uiPosY,rArea.uiRectWidth,rArea.uiRectHeight,uiEdgeWidth,uiMainPanelColor,uiType);
}
static MBT_VOID DrawSnakeBlockObj(CRECT2 uiv_stPlayArea,MBT_S32 uiBlockColor,MBT_U8  uiBlockW,MBT_U8 uiBlockH, MBT_U8  iXOffset,MBT_U8  iYOffset)
{
	if(uiBlockColor ==0)
	{          	
        DrawGameSolidPanel(uiv_stPlayArea.RectPos.uiPosX+iXOffset*uiBlockW,uiv_stPlayArea.RectPos.uiPosY+iYOffset*uiBlockH,SNAKE_ITEM_WIDTH,SNAKE_ITEM_HEIGHT,1,SNAKE5_COLOR, 1);
	}
	else
	{
		WGUIF_DrawFilledRectangle(uiv_stPlayArea.RectPos.uiPosX+iXOffset*uiBlockW, uiv_stPlayArea.RectPos.uiPosY+iYOffset*uiBlockH, uiBlockW, uiBlockH, SUBMENU_MIDDLE_BACK_DEEP_COLOR);
	}
}
static MBT_S8 AddNewBlock(SNAKE**pSnakeHeadAddr, MBT_S8 iXOffset, MBT_S8 iYOffset)
{
	SNAKE* pNewObj =(SNAKE*)uif_ForceMalloc(sizeof(SNAKE));
	if(pNewObj ==MM_NULL)
	{
		return -1;
	}
	else
	{
		pNewObj->iXOffset =iXOffset;
		pNewObj->iYOffset =iYOffset;
		pNewObj->pNext =MM_NULL;
	}
 	if(*pSnakeHeadAddr ==MM_NULL)
	{
		*pSnakeHeadAddr =pNewObj;
 	}
	else
	{
		pNewObj->pNext =*pSnakeHeadAddr;
		*pSnakeHeadAddr =pNewObj;
	}
	return 1;
}
static MBT_S8 IsSnakeTouchWall(SNAKE* pChainHead, MBT_S8 iMaxXOffset,MBT_S8 iMaxYOffset)
{
	if(pChainHead ==MM_NULL)
		return -1;
	else
	{
		SNAKE* pTemObj =pChainHead->pNext;
		if(pChainHead->iXOffset<0 ||pChainHead->iXOffset >iMaxXOffset-1)
			return 1;
		if(pChainHead->iYOffset<0 || pChainHead->iYOffset >iMaxYOffset -1)
			return 1;
		while(pTemObj!=MM_NULL)
		{
			if(pChainHead->iXOffset ==pTemObj->iXOffset && pChainHead->iYOffset ==pTemObj->iYOffset )
				return 1;
			pTemObj =pTemObj->pNext;
		}
		return 0;
	}
}

MBT_S8 UpdateSnakeChainData(SNAKE* pChainHead, MBT_S8 iDirection,MBT_S8* iLastOldXoffset,MBT_S8* iLastOldYoffset)
{
	if(pChainHead ==MM_NULL)
		return -1;
	else
	{
		SNAKE* pTemObj=pChainHead;
		MBT_S8 iXoffset =pChainHead->iXOffset, iYoffset =pChainHead->iYOffset;
		MBT_S8 iTemXoffsetA, iTemYoffsetA;
		MBT_S8 iTemXoffsetB, iTemYoffsetB;
		switch(iDirection)
		{
		case GO_L:
			iXoffset =pChainHead->iXOffset-1;
			break;
		case GO_R:
			iXoffset =pChainHead->iXOffset+1;
			break;
		case GO_U:
			iYoffset =pChainHead->iYOffset -1;
			break;
		case GO_D:
			iYoffset =pChainHead->iYOffset +1;
			break;
		default:
			return 0;
		}
		iTemXoffsetA =pChainHead->iXOffset;
		iTemYoffsetA =pChainHead->iYOffset;
		while(pTemObj !=MM_NULL && pTemObj->pNext !=MM_NULL)
		{
			iTemXoffsetB =pTemObj->pNext->iXOffset;
			iTemYoffsetB =pTemObj->pNext->iYOffset;
			pTemObj->pNext->iXOffset =iTemXoffsetA;
			pTemObj->pNext->iYOffset =iTemYoffsetA;
			iTemXoffsetA =iTemXoffsetB;
			iTemYoffsetA =iTemYoffsetB;
			pTemObj =pTemObj->pNext;
		}
		pChainHead->iXOffset =iXoffset;
		pChainHead->iYOffset =iYoffset;
		*iLastOldXoffset =iTemXoffsetA;
		*iLastOldYoffset =iTemYoffsetA;
		return 0;
	}
}

MBT_VOID FlushPlayArea(CRECT2 rArea,MBT_U8 uiBlockW,MBT_U8 uiBlockH,MBT_S8 iMaxXoffset, MBT_S8 iMaxYoffset)
{
	MBT_S8 i=0,j=0;
	for(j=iMaxYoffset-1;j>=0;j--)
	{
		for(i=0;i<iMaxXoffset;i++)
		DrawSnakeBlockObj(rArea, 0,uiBlockW,uiBlockH,i,j);
		MLMF_Task_Sleep(50);
	}
}

static MBT_VOID UpdateDrawSnakeChain(SNAKE* pChainHead,CRECT2 rArea, MBT_U8 uiBlockW,MBT_U8 uiBlockH,MBT_S8 iLastUnitOldXOffset, MBT_S8 iLastUnitOldYOffset,MBT_S32  u16Color)
{
	if(pChainHead!=MM_NULL)
	{
		DrawSnakeBlockObj(rArea, 0,uiBlockW,uiBlockH,pChainHead->iXOffset,pChainHead->iYOffset);
		DrawSnakeBlockObj(rArea,u16Color,uiBlockW,uiBlockH,iLastUnitOldXOffset,iLastUnitOldYOffset);
	}
}
static MBT_S8 IsSnakeGetFood(SNAKE* pChainHead,MBT_S8 iFoodXoffset, MBT_S8 iFoodYoffset, MBT_S8 iCurDir)
{
	if(pChainHead ==MM_NULL)
		return -1;
	else
	{
		MBT_S8 iTemXOffset, iTemYOffset;
		iTemXOffset =pChainHead->iXOffset;
		iTemYOffset =pChainHead->iYOffset;
		switch(iCurDir)
		{
		case GO_L:
			iTemXOffset =pChainHead->iXOffset-1;
			break;
		case GO_R:
			iTemXOffset =pChainHead->iXOffset+1;
			break;
		case GO_U:
			iTemYOffset =pChainHead->iYOffset -1;
			break;
		case GO_D:
			iTemYOffset =pChainHead->iYOffset +1;
			break;
		default:
			return -1;
		}
		if(iTemXOffset ==iFoodXoffset && iTemYOffset ==iFoodYoffset)
			return 1;
		else
			return 0;
	}

}
static MBT_S8 SafeFreeSnakeChain(SNAKE* pChainHead)
{
	SNAKE* pTempBlock =pChainHead;
	while(pTempBlock !=MM_NULL)
	{
		pChainHead =pChainHead->pNext;
		uif_ForceFree(pTempBlock);
		pTempBlock =pChainHead;
	}
	return 0;
}

static MBT_S8 RandomGenerateFood(SNAKE* pSnakeHead, MBT_S8 iMaxXOffset, MBT_S8 iMaxYOffset, MBT_S8* iNewFoodX, MBT_S8* iNewFoodY)
{
	if(pSnakeHead ==MM_NULL)
	{
		return -1;
	}
	else
	{
		MBT_S8 iFBlockXOffset,iFBlockYOffset;
		MBT_BOOL bFoodOK=MM_FALSE;
		SNAKE* pTemObj =MM_NULL;
		do
		{
			pTemObj =pSnakeHead;
			iFBlockXOffset =random(iMaxXOffset); 
			iFBlockYOffset =random(iMaxYOffset);
			while(pTemObj !=MM_NULL)
			{
				if(pTemObj->iXOffset ==iFBlockXOffset && pTemObj->iYOffset ==iFBlockYOffset)
					break;
				pTemObj =pTemObj->pNext;
			}
			if(pTemObj ==MM_NULL)
				bFoodOK =MM_TRUE;
		}
		while(bFoodOK ==MM_FALSE);
		*iNewFoodX =iFBlockXOffset;
		*iNewFoodY =iFBlockYOffset;
		return 1;
	}
	
}


static MBT_BOOL DrawFlickerFood(CRECT2 uiv_stPlayArea, MBT_U8 uiBlockW, MBT_U8 uiBlockH,MBT_S8 iFBlockXOffset,MBT_S8 iFBlockYOffset,MBT_U8 uiPlayAreaColor)
{
    MBT_BOOL bRefresh = MM_FALSE;
    static MBT_S8 iFoodFlickerCount =0;
    if(iFoodFlickerCount ==0)
    {
        DrawSnakeBlockObj(uiv_stPlayArea,0,uiBlockW,uiBlockH,iFBlockXOffset,iFBlockYOffset);
        bRefresh = MM_TRUE;
    }	  
    else if(iFoodFlickerCount ==1)
    {
        DrawSnakeBlockObj(uiv_stPlayArea,uiPlayAreaColor,uiBlockW,uiBlockH,iFBlockXOffset,iFBlockYOffset);
        bRefresh = MM_TRUE;
    }
    iFoodFlickerCount++;
    iFoodFlickerCount %=2;
    return bRefresh;
}


MBT_S32  Game_Snake(MBT_S32 iPara)
{
    CRECT2 rMainPanel, uiv_stPlayArea, rSpeedDataArea, rRecordDataArea,rScoreDataArea;
    SNAKE* pSnakeHead=MM_NULL;
    MBT_S32 iKey;
    MBT_S32 iScore=0, iRecord=0;
    MBT_S32 iValidKey =-1;
    MBT_S32 iFlickerTimeSpace =50;
    MBT_S8  iFBlockXOffset, iFBlockYOffset;
    MBT_S8 iExitFrom =-1,iCurDir =GO_R;
    MBT_S8 iTailBlockXOffset, iTailBlockYOffset;
	//闪烁
    MBT_S8 iFoodFlickerTimes=0;
    MBT_S32 iSpeed =1;
	//每个小方块的大小18*18
    MBT_U8 uiBlockW =SNAKE_ITEM_WIDTH,uiBlockH =SNAKE_ITEM_HEIGHT;
	//横竖的数量
    MBT_U8 uiHBlockNum =30, uiVBlockNum =15;
    MBT_S32 uiSnakeThemeColor =SUBMENU_MIDDLE_BACK_DEEP_COLOR;
    MBT_BOOL bRefresh = MM_TRUE;
    CRECT2 rHintUpArea, rHintDownArea;
    
    UIF_StopAV();
    //NM_Snake_DrawPanel();
    uif_ShareDrawGameCommonPanel();

	//初始化整个面板区域
    InitGameCRectObj(&rMainPanel,GAME_SNAKE_MOVE_X + 10*2,HELPING_START_SNAKE_TOP,uiHBlockNum*uiBlockW+20, uiVBlockNum*uiBlockH+20);	
	//初始化游戏区域
    InitGameCRectObj(&uiv_stPlayArea, rMainPanel.RectPos.uiPosX+10, rMainPanel.RectPos.uiPosY+10, uiHBlockNum*uiBlockW, uiVBlockNum*uiBlockH);

    InitGameCRectObj(&rHintUpArea,rMainPanel.RectPos.uiPosX+rMainPanel.uiRectWidth+35,rMainPanel.RectPos.uiPosY, 180,110);          
	InitGameCRectObj(&rHintDownArea,rHintUpArea.RectPos.uiPosX,rHintUpArea.RectPos.uiPosY+rHintUpArea.uiRectHeight+16, 180,254);

    InitGameCRectObj(&rSpeedDataArea,rHintUpArea.RectPos.uiPosX+90,rHintUpArea.RectPos.uiPosY+2, HELPING_WIDTH_ONE,HELPING_HEIGHT);          
	InitGameCRectObj(&rRecordDataArea,rHintUpArea.RectPos.uiPosX+90,rHintUpArea.RectPos.uiPosY+38, HELPING_WIDTH_ONE,HELPING_HEIGHT);
	InitGameCRectObj(&rScoreDataArea,rHintUpArea.RectPos.uiPosX+90,rHintUpArea.RectPos.uiPosY+74, HELPING_WIDTH_ONE,HELPING_HEIGHT);

    uif_ShareDrawFilledBoxWith4CircleCorner(rMainPanel.RectPos.uiPosX, rMainPanel.RectPos.uiPosY, rMainPanel.uiRectWidth, rMainPanel.uiRectHeight, 8, LISTITEM_NOFOCUS_COLOR);

    uif_ShareDrawFilledBoxWith4CircleCorner(rHintUpArea.RectPos.uiPosX, rHintUpArea.RectPos.uiPosY, rHintUpArea.uiRectWidth, rHintUpArea.uiRectHeight, 8, LISTITEM_NOFOCUS_COLOR);
    uif_ShareDrawFilledBoxWith4CircleCorner(rHintDownArea.RectPos.uiPosX, rHintDownArea.RectPos.uiPosY, rHintDownArea.uiRectWidth, rHintDownArea.uiRectHeight, 8, LISTITEM_NOFOCUS_COLOR);

	Draw_SnakeHelpInfo(&rSpeedDataArea, &rRecordDataArea, &rScoreDataArea, &rHintDownArea);

    	
    bRefresh = MM_TRUE;

NEW_GAME_START_POINT:
	//绘制游戏区域颜色
    Draw_FilledRectangle(uiv_stPlayArea, SUBMENU_MIDDLE_BACK_DEEP_COLOR);
    iScore =0;
    iRecord =0;
    UpdateDrawDataArea(iSpeed,rSpeedDataArea);
    UpdateDrawDataArea(iScore,rScoreDataArea);
    UpdateDrawDataArea(iRecord,rRecordDataArea);

    SafeFreeSnakeChain(pSnakeHead);
    pSnakeHead =MM_NULL;
    bRefresh = MM_TRUE;
    if(AddNewBlock(&pSnakeHead,12, 6) <0)
    {
        iExitFrom =0;
        goto EXIT_POINT;
    }
    
    DrawSnakeBlockObj(uiv_stPlayArea,0,uiBlockW,uiBlockH,pSnakeHead->iXOffset,pSnakeHead->iYOffset);
    RandomGenerateFood(pSnakeHead, uiHBlockNum-1,uiVBlockNum-1,&iFBlockXOffset,&iFBlockYOffset);
    DrawSnakeBlockObj(uiv_stPlayArea,0,uiBlockW,uiBlockH,iFBlockXOffset,iFBlockYOffset);
    bRefresh = MM_TRUE;
GAME_WAIT_START:
    //Draw_FilledRectangle(uiv_stPlayArea, SUBMENU_MIDDLE_BACK_DEEP_COLOR);
    while(MM_TRUE)
    {
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        
        iKey = uif_ReadKey ( iFlickerTimeSpace);
        
        if(iKey ==DUMMY_KEY_YELLOW_SUBSCRIBE || iKey ==DUMMY_KEY_SELECT)
        {
            break;
        }
        else if(iKey ==DUMMY_KEY_FORCE_REFRESH)
        {
            bRefresh = MM_TRUE;
        }
        else if(iKey ==DUMMY_KEY_EXIT || iKey == DUMMY_KEY_MENU || iKey == DUMMY_KEY_BACK )
        {
            iExitFrom =3;
            goto EXIT_POINT;
        }
        
        //绿色键对游戏速度进行配置
        if(iKey ==DUMMY_KEY_GREEN)
        {			
        	MLMF_Print("=================DUMMY_KEY_GREEN \n");
            GameConfigSnakeParams(&iSpeed);
            UpdateDrawDataArea(iSpeed,rSpeedDataArea);
            bRefresh = MM_TRUE;
			//设置速度后，按确定后不直接进入游戏
            //break;
        }	
        else
        {
            if( uif_QuickKey(iKey))
            {
                iExitFrom =3;
                goto EXIT_POINT;
            }
            else
            {
                bRefresh |= DrawFlickerFood(uiv_stPlayArea,uiBlockW,uiBlockH, iFBlockXOffset,iFBlockYOffset,uiSnakeThemeColor);
            }
        }
    }
    
GAME_PLAYING:
    //Draw_FilledRectangle(uiv_stPlayArea, SUBMENU_MIDDLE_BACK_DEEP_COLOR);
    while(MM_TRUE)
    {     
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        
        iKey = uif_ReadKey ( iFlickerTimeSpace);

        iFoodFlickerTimes++;
        if(iKey !=-1)
        {
            iValidKey =iKey;
        }
        
        bRefresh |= DrawFlickerFood(uiv_stPlayArea,uiBlockW,uiBlockH, iFBlockXOffset,iFBlockYOffset,uiSnakeThemeColor);
		//控制滑动速度
        if(iFoodFlickerTimes <(7-iSpeed))
        {
            continue;
        }
        else
        {
            iFoodFlickerTimes =0;
        }

        switch(iValidKey)
        {
            case DUMMY_KEY_LEFTARROW:
                if(iCurDir !=GO_R)
                {
                    iCurDir =GO_L;
                }
				
                break;
            case DUMMY_KEY_RIGHTARROW:
                if(iCurDir !=GO_L)
                {
                    iCurDir =GO_R;
                }
                break;
            case DUMMY_KEY_UPARROW:
                if(iCurDir !=GO_D)
                {
                    iCurDir =GO_U;
                }
				
                break;
            case DUMMY_KEY_DNARROW:
                if(iCurDir !=GO_U)
                {
                    iCurDir =GO_D;
                }
				
                break;
            //case DUMMY_KEY_FAV:
            //    Draw_GamePause();
            //    break;
			case DUMMY_KEY_RED:
				Draw_GamePause();
				break;
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:
            case DUMMY_KEY_BACK:
                if(GameBeforeExitConfirmOrCancel())
                {
                    return DUMMY_KEY_EXIT;
                }
                iValidKey =-1;
                break;
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            default:
                if( uif_QuickKey(iKey))
                {
                    return DUMMY_KEY_EXIT;
                }
                break;
        }
        
        iValidKey =-1;
        if(IsSnakeGetFood(pSnakeHead, iFBlockXOffset, iFBlockYOffset, iCurDir) ==1)
        {
            if(AddNewBlock(&pSnakeHead,iFBlockXOffset, iFBlockYOffset)<0)
            {
                iExitFrom =0;
                goto EXIT_POINT;
            }
            iScore +=10;
            UpdateDrawDataArea(iScore,rScoreDataArea);
            DrawSnakeBlockObj(uiv_stPlayArea, 0,uiBlockW,uiBlockH,pSnakeHead->iXOffset,pSnakeHead->iYOffset);
            RandomGenerateFood(pSnakeHead, uiHBlockNum-1,uiVBlockNum-1,&iFBlockXOffset,&iFBlockYOffset);
            bRefresh = MM_TRUE;
        }
        else
        {
            UpdateSnakeChainData(pSnakeHead, iCurDir, &iTailBlockXOffset,&iTailBlockYOffset);
            if(IsSnakeTouchWall(pSnakeHead, uiHBlockNum,uiVBlockNum)>0)
            {
                iExitFrom =2;
                goto EXIT_POINT;
            }
            iRecord++;
            UpdateDrawDataArea(iRecord,rRecordDataArea);
            UpdateDrawSnakeChain(pSnakeHead,uiv_stPlayArea,uiBlockW,uiBlockH,iTailBlockXOffset,iTailBlockYOffset,uiSnakeThemeColor);
            bRefresh = MM_TRUE;
        }
    }
    
EXIT_POINT:
    MLMF_Task_Sleep(20);
    if(iExitFrom ==2)
    {
        FlushPlayArea(uiv_stPlayArea, uiBlockW, uiBlockH,uiHBlockNum, uiVBlockNum);
        iExitFrom =-1;
        Draw_Gameover();
        Draw_FilledRectangle(uiv_stPlayArea, SUBMENU_MIDDLE_BACK_DEEP_COLOR);
        bRefresh = MM_TRUE;
        goto NEW_GAME_START_POINT;
    }
    
    if(MM_TRUE == bRefresh)
    {
        WGUIF_ReFreshLayer();
        bRefresh = MM_FALSE;
    }

    if(iExitFrom ==3)
    {    
        if(GameBeforeExitConfirmOrCancel())
        {
            return DUMMY_KEY_EXIT;
        }
        else
        {
            iExitFrom =-1;
            goto NEW_GAME_START_POINT;
        }
    }
    else
    {
        if(iExitFrom ==0)
        {
            iExitFrom =-1;
            //Draw_Gameover();
            goto GAME_WAIT_START;
			
        }
        else if(iExitFrom ==1)
        {
            iExitFrom =-1;
            //Draw_Gameover();
            goto GAME_PLAYING;
        }
    }
    return DUMMY_KEY_BACK;
}





