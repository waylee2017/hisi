
























































#include "optm_disp_rwzb.h"
#include "optm_hal.h"




static HI_U32 u32HDATESrc13Coef[][18]=
{
#ifdef HI_DISP_YPBPR_VIDEO_BUFF
    /*hard ware add capacitance  ,in order pass emi ,so need change para */
    //YPbPr's circuit type is video buffer
    /* Default */
    {
        0x0, 0x0, 0x7ff07ff, 0x5, 0x407f4, 0x7ee0017, 0x2e07dc, 0x7930035,
        0x14c07ae, 0x14c0266, 0x79307ae, 0x2e0035, 0x7ee07dc, 0x40017, 0x7f4, 0x7ff0005,
        0x7ff, 0x0
    },
    /*480P /576P */
    {
        0x0, 0x0, 0x7fe, 0x7ff0005, 0x607f5, 0x7ee0013, 0x2b07e3, 0x79d0028,
        0x14407cb, 0x144023d, 0x79d07cb, 0x2b0028, 0x7ee07e3, 0x60013, 0x7ff07f5, 0x5,
        0x7fe, 0x0
    },
    /*720P /1080I/*/
    {
        0x0, 0x0, 0x7ff07ff, 0x5, 0x407f4, 0x7ee0017, 0x2e07dc, 0x7930035,
        0x14c07ae, 0x14c0266, 0x79307ae, 0x2e0035, 0x7ee07dc, 0x40017, 0x7f4, 0x7ff0005,
        0x7ff, 0x0
    },
    /*1080P*/
    {
        0x0, 0x10000, 0x7fe07fe, 0x20008, 0x207ed, 0x7ed0025, 0x3807c2, 0x7770060,
        0x15f075d, 0x15f02d2, 0x777075d, 0x380060, 0x7ed07c2, 0x20025, 0x207ed, 0x7fe0008,
        0x107fe, 0x0
    },
#else
    //YPbPr's circuit type is LC

#ifdef CHIP_TYPE_hi3716mv330
    /* Default */
    {
        0x7ff0000, 0x7fe, 0x40006, 0x7f807f9, 0x12000c, 0x7e007f1, 0x3a0012, 0x79007ee,
        0x1480009, 0x14801fb, 0x7900009, 0x3a07ee, 0x7e00012, 0x1207f1, 0x7f8000c, 0x407f9,
        0x6, 0x7ff07fe
    },
    /*480P /576P */
    {
        0x7ff0000, 0x7f707f9, 0xa0001, 0x7f00000, 0x190000, 0x7d90000, 0x3f07fe, 0x78d0004,
        0x15207f4, 0x1520220, 0x78d07f4, 0x3f0004, 0x7d907fe, 0x190000, 0x7f00000, 0xa0000,
        0x7f70001, 0x7ff07f9
    },
    /*720P /1080I/*/
    {
        0x0, 0x7ff0000, 0x40000, 0x7f60001, 0x1307fe, 0x7dd0004, 0x3e07fa, 0x788000b,
        0x15007e2, 0x150022d, 0x78807e2, 0x3e000b, 0x7dd07fa,
        0x130004, 0x7f607fe, 0x40001,
        0x7ff0000, 0x0
    },
    /*1080P*/
    {
        0x0, 0x7fe0000, 0x50000, 0x7f50001, 0x1507fd, 0x7d90006, 0x4507f6, 0x77d0012,
        0x15707d1, 0x1570247, 0x77d07d1, 0x450012, 0x7d907f6,
        0x150006, 0x7f507fd, 0x50001,
        0x7fe0000, 0x0
    },
#else
    /* Default */
    {
        0x7ff0000, 0x7fe, 0x40006, 0x7f807f9, 0x12000c, 0x7e007f1, 0x3a0012, 0x79007ee,
        0x1480009, 0x14801fb, 0x7900009, 0x3a07ee, 0x7e00012, 0x1207f1, 0x7f8000c, 0x407f9,
        0x6, 0x7ff07fe
    },
    /*480P /576P */
    {
        0x7ff0000, 0x7f707f9, 0xa0001, 0x7f00000, 0x190000, 0x7d90000, 0x3f07fe, 0x78d0004,
        0x15207f4, 0x1520220, 0x78d07f4, 0x3f0004, 0x7d907fe, 0x190000, 0x7f00000, 0xa0000,
        0x7f70001, 0x7ff07f9
    },
    /*720P /1080I/*/
    {
        0x7ff0000, 0x7fe, 0x40006, 0x7f807f9, 0x12000c, 0x7e007f1, 0x3a0012, 0x79007ee,
        0x1480009, 0x14801fb, 0x7900009, 0x3a07ee, 0x7e00012, 0x1207f1, 0x7f8000c, 0x407f9,
        0x6, 0x7ff07fe
    },
    /*1080P*/
    {
        0x0, 0x7fe07fd, 0x50003, 0x7f407fa, 0x160008, 0x7d907f6, 0x44000a, 0x78007f9,
        0x15607f2, 0x1560224, 0x78007f2, 0x4407f9, 0x7d9000a, 0x1607f6, 0x7f40008, 0x507fa,
        0x7fe0003, 0x7fd
    },
#endif
#endif
};

HI_U32 u32SDDATESrcCoef[][10]=
{
#ifndef HI_DISP_CVBS_VIDEO_BUFF
    //CVBS's circuit type is LC
    {0x7f9 ,  0x20e ,  0x7f9 ,   0x79f0014 ,  0x14d014d ,  0x14079f},
#else
	/*default para  PAL NTSC */
    //CVBS's circuit type is video buffer
    {0x7f5 ,  0x216 ,  0x7f5 ,   0x78b001a ,  0x15b015b ,  0x1a078b},
#endif

#ifdef HI_DISP_YPBPR_VIDEO_BUFF
    /* FIDELITY_576I_YPBPR FIDELITY_480I_YPBPR  */
    //YPbPr's circuit type is video buffer
    {0x7d20007,  0x7d2024e,  0x7,   0x7af000d,  0x1430143, 0xd07af},
#else
    //YPbPr's circuit type is LC
    {0x7d20007,  0x7d2024e,  0x7,   0x7af000d,  0x1430143, 0xd07af},
#endif
};

   /*RWZB  Revise  */
HI_U32 u32SDDATESrcRwzbReviseCoef[][10]=
{
#if defined(CHIP_TYPE_hi3716mv330) && defined(HI_DISP_YPBPR_VIDEO_BUFF)
    /*default para*/
    { 0x00000001, 0x80807e7e, 0x00808080,0x00000001},

    /* FIDELITY_576I_YPBPR FIDELITY_480I_YPBPR  */
    {  0x00000001, 0x80807e7e, 0x00808080,0x00000000},

     /*   FIDELITY_SKN FIDELITY_ZDN  */
    {  0x00000001, 0x80807e7e, 0x00808080,0x00000102},

     /*  FIDELITY_MOTO_CVBS  luma Noline */
    {  0x00000001, 0x80807e7e, 0x00808080,0x00000011},

    /*  FIDELITY_033   Vector */
    {  0x00000001, 0x80807e7e, 0x00808080,0x00000001},

     /*   FIDELITY_MATRIX525 Vector */
    {  0x00000001, 0x80807e7e, 0x00808080,0x00000001},
#else
    /*default para*/
    { 0x00000001, 0x00808080, 0x00808080,0x00000001},

    /* FIDELITY_576I_YPBPR FIDELITY_480I_YPBPR  */
    {  0x00000001, 0x00808080, 0x00808080,0x00010000},

     /*   FIDELITY_SKN FIDELITY_ZDN  */
    {  0x00000001, 0x80808282, 0x00808080,0x00000102},

     /*  FIDELITY_MOTO_CVBS  luma Noline */
    {  0x00000001, 0x00808080, 0x00808080,0x00000011},

    /*  FIDELITY_033   Vector */
    {  0x00000001, 0x00808080, 0x00808080,0x00000001},

     /*   FIDELITY_MATRIX525 Vector */
    {  0x00000001, 0x00808080, 0x00808080,0x00000001},
#endif
};

HI_S32  RWZB_GetSDateReviseCoefIndex(HI_S32 u32RwzbType)
{
    HI_U32 u32Index;

    switch (u32RwzbType)
    {
        case FIDELITY_480I_YPBPR:
        case FIDELITY_576I_YPBPR:
            u32Index = 1;
            break;
        case FIDELITY_SKN:
        case FIDELITY_ZDN:
            u32Index = 2;
            break;
        case FIDELITY_MOTO_CVBS:
            u32Index = 3;
            break;
        case FIDELITY_033:
            u32Index = 4;
            break;
        case FIDELITY_MATRIX525:
            u32Index = 5;
            break;
        default:
            u32Index = 0;
            break;
    }
    return u32Index;
}

HI_VOID  VDP_Set_HDateSrc13Coef( HI_U32 u32Fmt)
{

    VDP_DATE_SetSrcCoef(0,(HI_U32 *)&u32HDATESrc13Coef[u32Fmt]);
    return ;
}

HI_VOID VDP_Set_SDateSrcCoef(HI_U32 u32Fmt)
{

    VDP_DATE_SetSrcCoef(1,(HI_U32 *)&u32SDDATESrcCoef[u32Fmt]);
    return ;
}

HI_VOID   VDP_Set_SDateRwzbReviseSrcCoef( HI_U32 u32RwzbType)
{
    VDP_DATE_SetCoefExtend(1,u32SDDATESrcRwzbReviseCoef[RWZB_GetSDateReviseCoefIndex(u32RwzbType)]);
    return ;
}


