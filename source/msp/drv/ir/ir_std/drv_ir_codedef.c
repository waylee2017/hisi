

#ifndef __HI_IR_CODEDEF__
#define __HI_IR_CODEDEF__

/* device parameter */
typedef struct
{
    HI_U16 LeadsMin;
    HI_U16 LeadsMax;

    HI_U16 LeadeMin;
    HI_U16 SeadeMax;

    HI_U16 Bit0Min;
    HI_U16 Bit0Max;

    HI_U16 Bit1Min;
    HI_U16 Bit1Max;

    HI_U16 SleadeMin;
    HI_U16 SleadeMax;

	HI_U16 SecLeadsMin;
    HI_U16 SecLeadsMax;

	HI_U16 SecLeadeMin;
    HI_U16 SecSeadeMax;	

	HI_U16 CodeLen;
    HI_U16 CodeType;
	
	HI_U16 TrailerMin;
	HI_U16 TrailerMax;   
	
    HI_U16 Modebit;	
	HI_U16 MaxLevel;
}IR_DEV_PARA_S;

static IR_DEV_PARA_S g_IrDevPara[] = 
{
    /*NEC with simple repeat code : uPD6121G*/
  	{828, 972, 414, 486, 39, 84 , 135, 203, 180, 270, 0 , 0 ,0 , 0 ,32, 0},
    
    /*NEC with simple repeat code : D6121/BU5777/D1913*/
    {828, 972, 414, 486, 45, 67 , 135, 203, 207, 243, 0 , 0 ,0 , 0 ,32, 0},
    
    /*NEC with simple repeat code : LC7461M-C13*/
    {828, 972, 414, 486, 45, 67 , 135, 203, 207, 243, 0 , 0 ,0 , 0 ,42, 0},
    
    /*NEC with simple repeat code : AEHA*/
    {270, 405, 135, 203, 34, 51 , 101, 152, 270, 405, 0 , 0 ,0 , 0 ,48, 0},
    
    /*TC9012 : TC9012F/9243*/
    {414, 486, 414, 486, 45, 67 , 135, 203, 0  , 0  , 0 , 0 ,0 , 0 ,32, 1},
    
    /*NEC with full repeat code : uPD6121G*/
    {828, 972, 414, 486, 45, 67 , 135, 203, 0  , 0  , 0 , 0 ,0 , 0 ,32, 2},
    
    /*NEC with full repeat code : LC7461M-C13*/
    {828, 972, 414, 486, 45, 67 , 135, 203, 0  , 0  , 0 , 0 ,0 , 0 ,42, 2},
    
    /*NEC with full repeat code : MN6024-C5D6*/
    {270, 405, 270, 405, 68, 101, 203, 304, 0  , 0  , 0 , 0 ,0 , 0 ,22, 2},
    
    /*NEC with full repeat code : MN6014-C6D6*/
    {279, 419, 279, 419, 70, 105, 140, 210, 0  , 0  , 0 , 0 ,0 , 0 ,24, 2},
    
    /*NEC with full repeat code : MATNEW*/
    {279, 419, 300, 449, 35, 52 , 105, 157, 0  , 0  , 0 , 0 ,0 , 0 ,48, 2},
    
    /*NEC with full repeat code : MN6030*/
    {279, 419, 279, 419, 70, 105, 210, 314, 0  , 0  , 0 , 0 ,0 , 0 ,22, 2},
    
    /*NEC with full repeat code : PANASONIC*/
    {282, 422, 282, 422, 70, 106, 211, 317, 0  , 0  , 0 , 0 ,0 , 0 ,22, 2},
    
    /*SONY-D7C5*/
    {192, 288, 48 , 72 , 48, 72 , 96 , 144, 0  , 0  , 0 , 0 ,0 , 0 ,12, 3},
    
    /*SONY-D7C6*/
    {192, 288, 48 , 72 , 48, 72 , 96 , 144, 0  , 0  , 0 , 0 ,0 , 0 ,13, 3},
    
    /*SONY-D7C8*/
    {192, 288, 48 , 72 , 48, 72 , 96 , 144, 0  , 0  , 0 , 0 ,0 , 0 ,15, 3},
    
    /*SONY-D7C13*/
    {192, 288, 48 , 72 , 48, 72 , 96 , 144, 0  , 0  , 0 , 0 ,0 , 0 ,20,  3},

	/*NEC 2Head with simple repeat code:guangdong*/
    {291, 437, 144 , 216 , 45, 67 , 96 , 144, 291 , 437 , 291 , 437 , 144 , 216 ,23,  4,0,0,23},
	
	/* Philips RC5/RC5X */
  //  {71 , 107, 71 , 107, 71 , 107 ,71 , 107, 0 , 0  , 0 , 0  ,0 , 0 ,13,  5},
	{50, 116, 50, 116, 50, 116, 50, 116, 0 , 0  , 0 , 0  ,0 , 0 ,13,  5,0,0,0},

	/*NEC 2Head with full repeat code:guangdong*/
    {552, 648, 160 , 240 , 45, 67 , 96 , 144, 0 , 0 , 291 , 437 , 291 , 437 ,40,  6,0,0,23},
		
	/* Philips RC6 */
    {214, 320, 71 , 107 , 35, 53 , 35, 53, 0 , 0  , 0 , 0  ,0 , 0 ,37,  7,70,105,4},
	
	/* Rstep */
    {20, 40, 20, 40,20, 40, 20, 40, 0 , 0  , 0 , 0  ,0 , 0 ,17,  8,0,0,0},

};

#endif /* __HI_IR_CODEDEF__ */




