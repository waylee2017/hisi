
#ifndef __DNR_HAL_HEADER__
#define __DNR_HAL_HEADER__

#ifdef __cplusplus
extern "C" {
#endif

#include "basedef.h"
#include "mem_manage.h"
#include "vfmw.h"

#if 0
// define para
#define   DNR_FRAME                           0
#define   DNR_TOP_FIELD                       1
#define   DNR_BOTTOM_FIELD                    2
#define   DNR_BAFF                            3
#define   DNR_FIELD_PAIR                      4
#endif
/* register operator */

/*======================================================================*/
/*  常数                                                                */
/*======================================================================*/
#define DNR_MAX_REG 512
#define DNR_QMATRIX_NUM     56
#define	DNR_DDR_ALIGN_LEN 	64
//#define REG_ROLL_ADDR       0x050

/************************************************************************/
/* DNR寄存器                                                            */
/************************************************************************/
#define  DNR_REG_START      	0x0
#define  DNR_REG_BASIC_CFG0 	0x004
#define  DNR_REG_BASIC_CFG1 	0x008
#define  DNR_REG_BASIC_CFG  	0x00C

#define  DNR_REG_DNR_THR 		0x010
#define  DNR_REG_DB_THR  		0x014

#define  DNR_REG_YSTADDR_1D  	0x018
#define  DNR_REG_STRIDE_1D   	0x01C
#define  DNR_REG_UVOFFSET_1D 	0x020

#define  DNR_REG_YSTADDR_2D  	0x024
#define  DNR_REG_YSTRIDE_2D	 	0x028
#define  DNR_REG_DDR_STRIDE 	0x028

#define  DNR_REG_INT_DNR_RAW   	0x02C
#define  DNR_REG_INT_DNR_STATE 	0x030
#define  DNR_REG_INT_DNR_CLR   	0x034
#define  DNR_REG_INT_DNR_MASK  	0x038
#define  DNR_REG_BASIC_CFG2     0x03c

#define  DNR_REG_DNR_OFFLINE_TH 0x040
#define  DNR_REG_DNR_INFO_ADDR  0x044

#define  DNR_REG_DNR_USE_PIC_QP 0x048
#define  DNR_REG_DNR_DX_SCALE  	0x04c

#ifdef Hi3716MV330
#define  DNR_REG_DX_TOP_STADDR  0x050
#endif

#define  DNR_REG_DNR_EMAR_ID 	0x054
#define  DNR_REG_DNR_RPT_CNT 	0x058

#define  DNR_REG_DNR_SED_TO 	0x05C
#define  DNR_REG_MAC_DATA_TO 	0x05c

#define  DNR_REG_DNR_PRC_TO 	0x060
#define  DNR_REG_MAC_INFO_TO	0x060

#define  DNR_REG_DNR_DR_TO  	0x064
#define  DNR_REG_DNR_DO_TO  	0x068

#define  DNR_REG_DNR_TF_TO  	0x06C
#define  DNR_REG_DNR_SM_TO		0x06c

#define  DNR_REG_DNR_THR_1  	0x070
#define  DNR_REG_DNR_THR_2  	0x074

#define  DNR_REG_DNR_VCMP_CFG0  0x080
#define  DNR_REG_DNR_LTX_CFG0 	0x080

#define  DNR_REG_DNR_LTX_CFG1 	0x084
#define  DNR_REG_DNR_LTX_CFG2 	0x088
#define  DNR_REG_DNR_LTX_CFG3 	0x08C
#define  DNR_REG_DNR_LTX_CFG4 	0x090
#define  DNR_REG_DNR_LTX_CFG5 	0x094
#define  DNR_REG_DNR_LTX_CFG6 	0x098
#define  DNR_REG_DNR_LTX_CFG7 	0x09C
#define  DNR_REG_DNR_LTX_CFG8 	0x0A0
#define  DNR_REG_DNR_LTX_CFG9 	0x0A4

#define  DNR_REG_DNR_LTX_CFG10 	0x0A8
#define  DNR_REG_DNR_LTX_CFG11 	0x0AC
#define  DNR_REG_DNR_LTX_CFG12 	0x0B0
#define  DNR_REG_DNR_LTX_CFG13 	0x0B4
#define  DNR_REG_DNR_LTX_CFG14 	0x0B8
#define  DNR_REG_DNR_LTX_CFG15 	0x0BC
#define  DNR_REG_DNR_LTX_CFG16 	0x0C0
#define  DNR_REG_DNR_LTX_CFG17 	0x0C4
#define  DNR_REG_DNR_LTX_CFG18 	0x0C8
#define  DNR_REG_DNR_LTX_CFG19 	0x0CC

#define  DNR_REG_DNR_LTX_CFG20 	0x0D0
#define  DNR_REG_DNR_LTX_CFG21 	0x0D4
#define  DNR_REG_DNR_LTX_CFG22 	0x0D8

#define  DNR_DEC_CYCLEPERPIC	0x200
#define  DNR_RD_BDWIDTH_PERPIC	0x204
#define  DNR_WR_BDWIDTH_PERPIC	0x208
#define  DNR_RD_REQ_PERPIC		0x20C
#define  DNR_WR_REQ_PERPIC		0x210
#define  DNR_REG_DNR_VERSION_ID 0x220

#define  DNR_AXI_TEST_ST		0x300
#define  DNR_AXI_TEST_MODE		0x304
#define  DNR_AXI_TEST_ADDR		0x308
#define  DNR_AXI_TEST_CMD		0x30C
#define  DNR_AXI_TEST_LOOP		0x310
#define  DNR_AXI_TEST_STA		0x314
/*======================================================================*/
/*  结构与枚举                                                          */
/*======================================================================*/

typedef struct
{

    SINT8  dc_en;
    SINT8  db_en;
    SINT8  dr_en;
    UINT8  pic_structure;
    UINT8  chroma_format_idc;
    UINT8  Range_mapy_flag;
    UINT8  Range_mapy;
    UINT8  Range_mapuv_flag;
    UINT8  Range_mapuv;
    UINT8  vc1_profile;
    SINT8  use_pic_qp_en;
    SINT8  s32MirrorEn;
    SINT8  s32VcmpEn;           /*压缩使能位*/

    VID_STD_E video_standard;
    SINT32 mbtodec;
    SINT32 pic_width_in_mb;
    SINT32 pic_height_in_mb;
    SINT32 dnr_ystaddr_1d;
    SINT32 dnr_ystaddr_2d;
    SINT32 dnr_ystride_1d;
    SINT32 dnr_uvoffset_1d;
    SINT32 QP_Y;
    SINT32 QP_U;
    SINT32 QP_V;
    SINT32 ddr_stride;
    SINT32 dnr_stride_1d;
    SINT32 Rangedfrm;

    //SINT32 Dnr2dBufAddr;
    UINT32 dnr_info_addr;
    SINT32 s32VcmpWmStartLine; /*水印起始行号*/
    SINT32 s32VcmpWmEndLine;	/*水印结束行号*/
} DNR_CFG_S;

/* DNR自用内存地址 */
typedef struct
{
    // Dnr register base vir addr
    SINT32    *pDnrRegVirAddr;

    // vdm hal base addr
    SINT32    DnrMemBaseAddr;
    SINT32    DnrMemSize;
    SINT32    Dnr2dBufAddr;
} DNROFF_HWMEM_S;

typedef enum
{
    DNR_FALSE = 0,
    DNR_TRUE
} DNR_BOOL_E;

typedef enum
{
    BLK_SMOOTH = 0,
    BLK_TEXTURE,
    BLK_RING,
    BLK_CANDIDATE
} DNR_BLK_E;

typedef enum
{
    DNR_FLDPAIR = 0,
    DNR_TOP,
    DNR_BOT,
    DNR_FRM
} DNR_PICSTRUCT_E;

typedef enum
{
    DB_FLAT = 0,
    DB_TEXT,
    DB_GRADUP, //gradient , from left toright; from top to bottom
    DB_GRADDN
} DNR_DBOBJTYPE_E;

typedef enum
{
    DB_NONE = 0,
    DB_STRONG,
    DB_MEDIAN,
    DB_WEAK ,
    DB_COLUMN ,
    DB_2LEFT,
    DB_2RIGHT
} DNR_DBFLTTYPE_E;


typedef struct
{
    UINT8 *y;
    UINT8 *u;
    UINT8 *v;
    SINT32 id;
} GEN_DNRIMAGE_S;

typedef struct
{
    UINT8 FldPred; //only indicates field predicted mb in frame picture
    UINT8 Qp[3];
    //    UINT8 TransType; //4, 8
} GEN_DNRMB_S;

typedef struct
{
    UINT8 Mean;
    UINT8 MeanTopFld;
    UINT8 MeanBotFld;
    UINT8 Max;
    UINT8 Min;
} GEN_DNRTXTURE_S;

typedef struct
{
    SINT32 Max;
    SINT32 Min;
    SINT32 SumPix;
    SINT32 SumDelta;
    SINT32 SumVar;
} GEN_DNRDC_WINDOWCOL_S;

typedef struct
{
    SINT32 Max;
    SINT32 Min;
    SINT32 ContourFlag;
    SINT32 ScaleMode;
} GEN_DNRDC_DETINFO_S;


typedef struct
{
    //image infomation
    SINT32 TfEn;
    SINT32 DrEn;
    SINT32 DcEn;
    SINT32 DbEn;
    DNR_PICSTRUCT_E PicStruct; //0: Field pair; 1: Top field; 2: Bottom field; 3: Frame (progressive or interlaced, don't care)
    SINT32 Stride;
    SINT32 MbWidth;
    SINT32 MbHeight;
    SINT32 PicCodedWidth;
    SINT32 PicCodedHeight;
    SINT32 DbUseWeakFlt; //Choose filter
    SINT32 ThrDrLargeSmooth;
    SINT32 ThrDbLargeSmooth;
    GEN_DNRMB_S *PstMb;
    //self maintain
    GEN_DNRTXTURE_S PreTxt[6];
    GEN_DNRIMAGE_S InPut1D;
    GEN_DNRIMAGE_S OrgImg;//420 planar , original pic
    GEN_DNRIMAGE_S CurImg;//420 planar , middle result
    GEN_DNRIMAGE_S OutPut2D;

    //additional setting registers
    SINT32 DetailImgQpThr;     //0~255
    SINT32 DrAlphaScale;        //0~31
    SINT32 DrBetaScale;          //0~31
    SINT32 DbThrLeastBlkDiff; //0~128
    SINT32 DbAlphaScale;        //0~31
    SINT32 DbBetaScale;          //0~31

    //mb info
    SINT32 Mbn;
    SINT32 Mbx;
    SINT32 Mby;
} GEN_DNRINFO_S;

typedef struct
{
    SINT32 PicCnt;
    SINT32 FrmCnt;
} VFMW_DNR_DBGINFO_S;

typedef struct
{
    UINT8 *DnrCurYStaddr1d;
    UINT8 *DnrCurCStaddr1d;
    UINT8 *DnrCurYStaddr2d;
    UINT8 *DnrCurCStaddr2d;
    GEN_DNRMB_S *pDnrMb;
    GEN_DNRINFO_S DnrPara;
    VFMW_DNR_DBGINFO_S DbgInfo;

    SINT32 TfEn;
    SINT32 DrEn;
    SINT32 DcEn;
    SINT32 DbEn;
    DNR_PICSTRUCT_E PicStruct; //0: Field pair; 1: Top field; 2: Bottom field; 3: Frame (progressive or interlaced, don't care)
    SINT32 Stride;
    SINT32 MbWidth;
    SINT32 MbHeight;
    SINT32 PicCodedWidth;
    SINT32 PicCodedHeight;
} VFMW_DNR_INFO_S;

typedef struct hiDNRHAL_FUN_PTR_S
{
    /*DNR API*/
    VOID (*pfun_DNRDRV_OpenHardware)(VOID);
    VOID (*pfun_DNRHAL_Init)(VOID);
    VOID (*pfun_DNRHAL_CfgReg)(DNR_CFG_S *pDnrOffCfg);
    VOID (*pfun_DNRHAL_Reset)(VOID);
    VOID (*pfun_DNRHAL_Start)(VOID);
    VOID (*pfun_DNRHAL_ClearIntState)(VOID);
    VOID (*pfun_DNRHAL_MaskInt)(VOID);
    VOID (*pfun_DNRHAL_EnableInt)(VOID);
    VOID (*pfun_DNRHAL_PrintDnrPhyRegDat)(VOID);
} DNRHAL_FUN_PTR_S;

extern DNRHAL_FUN_PTR_S g_dnr_hal_fun_ptr;
extern DNROFF_HWMEM_S g_DnrHwMem;

#define DNRHAL_NULL_FUN_PTR -1

#define  DNRHAL_NULL_FUN_PRINT   dprint(PRN_FATAL,"DNRHAL_NULL_FUN_RETURN,L%d\n", __LINE__)

#if 0
#define DNRDRV_OpenHardware() \
    g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware? \
    g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware(): \
    DNRHAL_NULL_FUN_PRINT
#define DNRHAL_Init() \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_Init? \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_Init(): \
    DNRHAL_NULL_FUN_PRINT
#define DNRHAL_CfgReg(pDnrOffCfg) \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg? \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg(pDnrOffCfg): \
    DNRHAL_NULL_FUN_PRINT
#define DNRHAL_Reset() \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset? \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset(): \
    DNRHAL_NULL_FUN_PRINT
#define DNRHAL_Start() \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_Start? \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_Start(): \
    DNRHAL_NULL_FUN_PRINT
#define DNRHAL_ClearIntState() \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState? \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState(): \
    DNRHAL_NULL_FUN_PRINT
#define DNRHAL_MaskInt() \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt? \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt(): \
    DNRHAL_NULL_FUN_PRINT
#define DNRHAL_EnableInt() \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt? \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt(): \
    DNRHAL_NULL_FUN_PRINT
#define DNRHAL_PrintDnrPhyRegDat() \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_PrintDnrPhyRegDat? \
    g_dnr_hal_fun_ptr.pfun_DNRHAL_PrintDnrPhyRegDat(): \
    DNRHAL_NULL_FUN_PRINT
#endif

#define DNRDRV_OpenHardware() \
    do \
    { \
        if(NULL != g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware)  \
        { \
            g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware(); \
        }  \
        else  \
        {  \
            DNRHAL_NULL_FUN_PRINT;  \
        }  \
    }while(0)

#define DNRHAL_Init() \
    do \
    { \
        if(NULL != g_dnr_hal_fun_ptr.pfun_DNRHAL_Init)  \
        { \
            g_dnr_hal_fun_ptr.pfun_DNRHAL_Init(); \
        }  \
        else  \
        {  \
            DNRHAL_NULL_FUN_PRINT;  \
        }  \
    }while(0)

#define DNRHAL_CfgReg(pDnrOffCfg) \
    do \
    { \
        if(NULL != g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg)  \
        { \
            g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg(pDnrOffCfg); \
        }  \
        else  \
        {  \
            DNRHAL_NULL_FUN_PRINT;  \
        }  \
    }while(0)

#define DNRHAL_Reset() \
    do \
    { \
        if(NULL != g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset)  \
        { \
            g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset(); \
        }  \
        else  \
        {  \
            DNRHAL_NULL_FUN_PRINT;  \
        }  \
    }while(0)

#define DNRHAL_Start() \
    do \
    { \
        if(NULL != g_dnr_hal_fun_ptr.pfun_DNRHAL_Start)  \
        { \
            g_dnr_hal_fun_ptr.pfun_DNRHAL_Start(); \
        }  \
        else  \
        {  \
            DNRHAL_NULL_FUN_PRINT;  \
        }  \
    }while(0)

#define DNRHAL_ClearIntState() \
    do \
    { \
        if(NULL != g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState)  \
        { \
            g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState(); \
        }  \
        else  \
        {  \
            DNRHAL_NULL_FUN_PRINT;  \
        }  \
    }while(0)

#define DNRHAL_MaskInt() \
    do \
    { \
        if(NULL != g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt)  \
        { \
            g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt(); \
        }  \
        else  \
        {  \
            DNRHAL_NULL_FUN_PRINT;  \
        }  \
    }while(0)

#define DNRHAL_EnableInt() \
    do \
    { \
        if(NULL != g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt)  \
        { \
            g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt(); \
        }  \
        else  \
        {  \
            DNRHAL_NULL_FUN_PRINT;  \
        }  \
    }while(0)

#ifdef DNR_PRINT_REG_ENABLE
#define DNRHAL_PrintDnrPhyRegDat() \
    do \
    { \
        if(NULL != g_dnr_hal_fun_ptr.pfun_DNRHAL_PrintDnrPhyRegDat)  \
        { \
            g_dnr_hal_fun_ptr.pfun_DNRHAL_PrintDnrPhyRegDat(); \
        }  \
        else  \
        {  \
            DNRHAL_NULL_FUN_PRINT;  \
        }  \
    }while(0)
#endif

#define WR_DNROFF_VREG( reg, dat )               \
    do {                    \
        *((volatile SINT32*)((SINT32)g_DnrHwMem.pDnrRegVirAddr+ reg)) = dat; \
    } while(0)

#define RD_DNROFF_VREG( reg, dat )               \
    do {                    \
        dat = *((volatile SINT32*)((SINT32)g_DnrHwMem.pDnrRegVirAddr + reg)); \
    } while(0)

#define RD_PRINT_DNROFF_VREG( reg, dat )               \
    do {                    \
        dat = *((volatile SINT32*)((SINT32)g_DnrHwMem.pDnrRegVirAddr + reg)); \
        dprint(PRN_DNR, "Phy %#x = %#x\n",  MEM_Vir2Phy((UINT8*)((SINT32)g_DnrHwMem.pDnrRegVirAddr+ reg)),dat);\
    } while(0)

extern HI_VOID DNRHAL_GetCaps(HI_VOID);
#ifdef __cplusplus
}
#endif

#endif
