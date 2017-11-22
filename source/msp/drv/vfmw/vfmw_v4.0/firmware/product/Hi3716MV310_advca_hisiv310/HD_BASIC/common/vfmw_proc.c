/*$$$!!Warning: Huawei key information asset. No spread without permission.$$$*/
/*CODEMARK:HuE1v2Elv7J9C1aMkGmdiUQZoS/R2sDdIoxXqdBKL9eiPHH/FdSvQYZfBQZKkVdipTcRXX+G
kqk+/W4lTjU7wod1fiGpDLWinyw9avjJNtVJXlCqEH8vbMgn4565yduiKY1IaIpzuduWKvns
ccIC0kT7fz5+fwf56kzejb7PtL1Ad3pMnTLsMpfLipO3WPFq4XofQ0HGu/6d4F3+Zqn/PMf/
SVAYHwmsntXHBP50T5i+lP7eLEMUAeeT3UWDbspz/4SJuD8M3K2gbvI3nDTVWA==#*/
/*$$$!!Warning: Deleting or modifying the preceding information is prohibited.$$$*/
#include "basedef.h"
#include "mem_manage.h"
#include "public.h"
#include "vfmw_ctrl.h"
#include "vdm_drv.h"
#include "sdec_imedia.h"
#ifdef VFMW_VC1_SUPPORT
//#include "bitplane.h"
#endif
#ifdef VFMW_DNR_SUPPORT
#include "dnr_hal.h"
#include "dnr_offline.h"
#endif

#ifdef ENV_ARMLINUX_KERNEL
#include "imedia_viddec.h"
#endif

#include <asm/setup.h>
#include <linux/sched.h>
#include <linux/version.h>

/*======================================================================*/
/*   外部全局变量                                                              */
/*======================================================================*/
extern IMAGE_VO_QUEUE *VCTRL_GetChanVoQue(SINT32 ChanID);

extern SINT32 g_chipID;
extern SM_IIS_S  s_SmIIS;
extern FSP_INST_S *s_pFspInst[MAX_CHAN_NUM];
extern DSP_STATE_E   g_DSPState[MAX_CHAN_NUM];
extern SINT32 g_FrameRate[MAX_CHAN_NUM];
extern SINT32 g_LastFrameRate[MAX_CHAN_NUM];

#ifdef VFMW_MODULE_LOWDLY_SUPPORT
extern UINT32 g_LowDelaySeqIndex[MAX_CHAN_NUM];
extern SINT32 g_TunnelLineNumber;
#endif

extern SINT32  extra_ref;
extern SINT32  extra_disp;
extern UINT32  extra_cmd;
extern VFMW_CHAN_S  *s_pstVfmwChan[MAX_CHAN_NUM];
extern SINT32   g_CurProcChan;
extern UINT32  g_ResetCreateNewSave;




#ifdef HI_ADVCA_FUNCTION_RELEASE
#undef  HI_VFMW_PROC_SUPPORT
#else
#define HI_VFMW_PROC_SUPPORT
#endif

#ifdef HI_VFMW_PROC_SUPPORT
static SINT8  s_VfmwSavePath[64] = {'/', 'm', 'n', 't', 0};

/* 内核态proc读写 */

#define VFMW_PROC_NAME          "vfmw"
#define VFMW_PROC_NAME_DBG      "vfmw_dbg"
#define VFMW_PROC_NAME_DPRN     "vfmw_prn"
//#define VFMW_PROC_NAME_RAW      "vfmw_raw"
#define VFMW_PROC_NAME_SCD      "vfmw_scd"
#define VFMW_PROC_NAME_DEC      "vfmw_dec"
#ifdef VFMW_DNR_SUPPORT
#define VFMW_PROC_NAME_DNR      "vfmw_dnr"
#endif

#define VFMW_PROC_NAME_LWD      "vfmw_lwd"
#define VFMW_PROC_NAME_CHN      "vfmw_chn"

int vfmw_read_proc_info(struct seq_file *p, void *v)
{
    extern SM_IIS_S *g_pSmIIS;
    SINT32 ret;
    int i = 0;
    int j = 0;
    int chanID = 0;
    int usedFrameNum = 0;
    SINT32 s32percent = 0;
    SM_INSTANCE_S *pInst;
    SINT32  RawNum, RawSize, SegNum, SegSize , BufSize;
    FSP_INST_S *pFsp = NULL;
    chanID = g_CurProcChan;
    pFsp = s_pFspInst[chanID];
    pInst = g_pSmIIS->pSmInstArray[i];

    if (NULL == pInst || pInst->Mode == SM_INST_MODE_IDLE)
    {
        return 0;
    }

    ret = GetRawStreamSize(&pInst->RawPacketArray, &RawSize);

    if (FMW_OK != ret)
    {
        dprint(PRN_FATAL, "fuction return value is null,%s %d unknow error!!\n", __FUNCTION__, __LINE__);
    }

    ret = GetRawStreamNum(&pInst->RawPacketArray, &RawNum);

    if (FMW_OK != ret)
    {
        dprint(PRN_FATAL, "fuction return value is null,%s %d unknow error!!\n", __FUNCTION__, __LINE__);
    }

    ret = GetSegStreamSize(&pInst->StreamSegArray, &SegSize);

    if (FMW_OK != ret)
    {
        dprint(PRN_FATAL, "fuction return value is null,%s %d unknow error!!\n", __FUNCTION__, __LINE__);
    }

    SegNum = GetSegStreamNum(&pInst->StreamSegArray);
    BufSize = pInst->StreamSegArray.SegBufSize;

    if (BufSize == 0)
    {
        s32percent = 0;
    }
    else
    {
        s32percent = SegSize * 100 / BufSize;
    }

    seq_printf(p, "============================= vfmw%02d info ==============================\n", chanID);
    seq_printf(p, "%-45s :%d\n", "VersionNum", VFMW_VERSION_NUM);
    seq_printf(p, "%-45s :%d\n", "VfmwID", chanID);
    seq_printf(p, "----------------------------- scd stream info ---------------------------\n");
    seq_printf(p, "%-45s :%d/%d\n", "RawStream(Size/Num)", RawSize, RawNum);
    seq_printf(p, "%-45s :%d/%d\n", "SCDSegStream(Size/Num)", SegSize, SegNum);
    seq_printf(p, "%-45s :%d/%d/%d%%\n", "SCDSegBuffer(Total/Use/Percent)", BufSize, SegSize, s32percent);
    seq_printf(p, "----------------------------- vdh frame info ----------------------------\n");

    if (1 < MAX_VDH_NUM)
    {
        seq_printf(p, "%-45s :%d.%d%%\n", "VDH 0 load", g_VfmwGlobalStat[0].u32VdhLoad / 10, g_VfmwGlobalStat[0].u32VdhLoad % 10);
        seq_printf(p, "%-45s :%d.%d%%\n", "VDH 1 load", g_VfmwGlobalStat[1].u32VdhLoad / 10, g_VfmwGlobalStat[1].u32VdhLoad % 10);
    }
    else
    {
        seq_printf(p, "%-45s :%d.%d%%\n", "VDH 0 load", g_VfmwGlobalStat[0].u32VdhLoad / 10, g_VfmwGlobalStat[0].u32VdhLoad % 10);
    }

    seq_printf(p, "%-45s :%d*%d\n", "Decode(Width*Height)", pFsp->stInstCfg.s32DecFsWidth, pFsp->stInstCfg.s32DecFsHeight );
    seq_printf(p, "%-45s :%d*%d\n", "Display(Width*Height)", pFsp->stInstCfg.s32DispFsWidth, pFsp->stInstCfg.s32DispFsHeight );
    seq_printf(p, "%-45s :%d.%d fps\n", "FrameRate", g_VfmwChanStat[i].u32FrFrameRate / 10, g_VfmwChanStat[i].u32FrFrameRate % 10);

    for (j = 0; j < pFsp->s32DecFsNum; j++)
    {
        if (FS_DISP_STATE_WAIT_DISP == pFsp->stDecFs[j].DispState || 1 == pFsp->stDecFs[j].IsDecRef)
        {
            usedFrameNum++;
        }
    }

    if (pFsp->s32DecFsNum == 0)
    {
        s32percent = 0;
    }
    else
    {
        s32percent = usedFrameNum * 100 / pFsp->s32DecFsNum;
    }

    seq_printf(p, "%-45s :%d/%d/%d%%\n", "VDHFrameBuffer(Total/Use/Percent)", pFsp->s32DecFsNum, usedFrameNum, s32percent);
    seq_printf(p, "===========================================================================\n");

    return 0;
}

int vfmw_read_proc(struct seq_file *p, void *v)
{
    int i = 0;

    seq_printf(p, "=============== vfmw info =============\n");
    seq_printf(p, "%-35s :%d\n", "version num", VFMW_VERSION_NUM);

    for (i = 0; i < MAX_VDH_NUM; i++)
    {
        seq_printf(p, "%-35s %d:%d.%d%%\n", "VDM load", i, g_VfmwGlobalStat[i].u32VdhLoad / 10, g_VfmwGlobalStat[i].u32VdhLoad % 10);
    }

    seq_printf(p, "%-35s :%d.%d%%\n", "DNR load", g_VfmwGlobalStat[0].u32DaDnrLoad / 10, g_VfmwGlobalStat[0].u32DaDnrLoad % 10);

    seq_printf(p, "%-35s :%d\n", "extra_ref", extra_ref);
    seq_printf(p, "%-35s :%d\n", "extra_disp", extra_disp);
    seq_printf(p, "%-35s :%d\n", "extra_cmd", extra_cmd);

    seq_printf(p, "%-35s :%d\n", "USE_FF_APT_EN", USE_FF_APT_EN);
    seq_printf(p, "%-35s :%d\n", "g_ResetCreateNewSave", g_ResetCreateNewSave);
    seq_printf(p, "%-35s :%d\n", "u32VdmKiloCycle", g_VfmwGlobalStat[0].u32VdhKiloCyclePerSecond);
    seq_printf(p, "%-35s :%d\n", "u32StatPeriod", g_VfmwGlobalStat[0].u32Period);

    return 0;
}

int vfmw_read_proc_dbg(struct seq_file *p, void *v)
{
    extern SINT32 TracerPhyAddr;

    seq_printf(p, "------------------------debug options--------------------------\n");
    seq_printf(p, "%-27s :%#x\n", "tracer address", TracerPhyAddr);
    seq_printf(p, "%-27s :%s\n", "path to save debug data", (char *)s_VfmwSavePath);
    seq_printf(p, "%-27s :%#x\n", "print enable word", g_PrintEnable);
    seq_printf(p, "%-27s :%#x\n", "vfmw_state enable word", g_TraceCtrl);
    seq_printf(p, "%-27s :%d\n", "bitstream control period", g_TraceBsPeriod);
    seq_printf(p, "%-27s :%d\n", "frame control period", g_TraceFramePeriod);
    seq_printf(p, "%-27s :%d\n", "rcv/rls img control period", g_TraceImgPeriod);
    seq_printf(p, "%-27s :%d\n", "no stream report period", g_NoStreamReportPeriod);
    seq_printf(p, "---------------------------------------------------------------\n");
    seq_printf(p, "you can perform vfmw debug with such commond:\n");
    seq_printf(p, "echo [arg1] [arg2] > /proc/vfmw\n\n");
    seq_printf(p, "debug action                    arg1       arg2\n");
    seq_printf(p, "------------------------------  --------  ---------------------\n");
    seq_printf(p, "set print enable                0x0       print_enable_word\n");
    seq_printf(p, "set err_thr                     0x2       (chan_id<<24)|err_thr\n");
    seq_printf(p, "set dec order output            0x4       (chan_id<<24)|dec_order_output_enable\n");
    seq_printf(p, "set dec_mode(0/1/2=IPB/IP/I)    0x5       (chan_id<<24)|dec_mode\n");
    seq_printf(p, "set discard_before_dec_thr      0x7       (chan_id<<24)|stream_size_thr\n");
    seq_printf(p, "set postprocess options         0xa       (dc<<8)|(db<<4)|dr, 0000=auto,0001=on,0010=off\n");
    seq_printf(p, "set frame/adaptive storage      0xb       0:frame only, 1:adaptive\n");
    seq_printf(p, "pay attention to the channel    0xd       channel number\n");
    seq_printf(p, "channel vcmp config             0xe       chanId: arg2>>27,\n%42smirror_en: (arg2>>26)&1,\n%42svcmp_en: (arg2>>25)&1,\n%42swm_en: (arg2>>24)&1,\n%42swm_start: (arg2>>12)&0xfff,\n%42swm_end: (arg2)&0xfff\n", " ", " ", " ", " ", " ");
    seq_printf(p, "print tracer                    0x100     tracer address. do not care if vfmw still running\n");
    seq_printf(p, "start/stop raw stream saving    0x200     chan_id\n");
    seq_printf(p, "start/stop stream seg saving    0x201     chan_id\n");
    seq_printf(p, "start/stop 2D yuv saving        0x202     chan_id\n");
    seq_printf(p, "save a single 2D frame          0x203     frame phy addr\n");
    seq_printf(p, "save a single 1D frame          0x204     frame phy addr width height=(height+PicStructure)\n");
    seq_printf(p, "set dec_task_schedule_delay     0x400     schedual_delay_time(ms)\n");
    seq_printf(p, "set dnr_active_interval         0x401     dnr_active_interval(ms)\n");
    seq_printf(p, "stop/start syntax dec           0x402     do not care\n");
    seq_printf(p, "set trace controller            0x500     vfmw_state_word in /proc/vfmw_prn\n");
    seq_printf(p, "set bitstream control period    0x501     period (ms)\n");
    seq_printf(p, "set frame control period        0x502     period (ms)\n");
    seq_printf(p, "set rcv/rls img control period  0x503     period (ms)\n");
    seq_printf(p, "set no stream report period     0x504     period (ms)\n");
    seq_printf(p, "set module lowdelay start       0x600     channel number\n");
    seq_printf(p, "set module lowdelay stop        0x601     channel number\n");
    seq_printf(p, "set tunnel line number          0x602     channel number\n");
    seq_printf(p, "set scd lowdelay start          0x603     channel number\n");
    seq_printf(p, "set scd lowdelay stop           0x604     channel number\n");
    seq_printf(p, "---------------------------------------------------------------\n");

    return 0;
}

int vfmw_read_proc_prn(struct seq_file *p, void *v)
{
    seq_printf(p, "'print_enable_word' definition, from bit31 to bit0:\n");
    seq_printf(p, "---------------------------------------------------------------\n");
    seq_printf(p, "<not used>  DEC_MODE    PTS         DNR\n");
    seq_printf(p, "FOD         SCD_INFO    SCD_STREAM  SCD_REGMSG\n");
    seq_printf(p, "BLOCK       DBG         SE          SEI\n");
    seq_printf(p, "SLICE       PIC         SEQ         MARK_MMCO\n");
    seq_printf(p, "POC         DPB         REF         QUEUE\n");
    seq_printf(p, "IMAGE       STR_BODY    STR_TAIL    STR_HEAD\n");
    seq_printf(p, "STREAM      UPMSG       RPMSG       DNMSG\n");
    seq_printf(p, "VDMREG      CTRL        ERROR       FATAL\n");
    seq_printf(p, "---------------------------------------------------------------\n");
    seq_printf(p, "'vfmw_state' definition, from bit31 to bit0:\n");
    seq_printf(p, "---------------------------------------------------------------\n");
    seq_printf(p, "<not used>       <not used>       <not used>    <not used>\n");
    seq_printf(p, "<not used>       <not used>       <not used>    <not used>\n");
    seq_printf(p, "<not used>       <not used>       <VO_REL_IMG>  <VO_RCV_IMG>\n");
    seq_printf(p, "<2D_TO_QUEUE>    <DNR_INTERRUPT>  <DNR_START>   <1D_TO_QUEUE>\n");
    seq_printf(p, "<VDH_REPAIR>     <VDH_INTERRUPT>  <VDH_START>   <GENERATE_DECPARAM>\n");
    seq_printf(p, "<DECSYNTAX_SEG>  <SCD_INTERRUPT>  <SCD_START>   <RCV_RAW>\n");
    seq_printf(p, "---------------------------------------------------------------\n");
    seq_printf(p, "'extra_cmd' definition, from bit31 to bit0:\n");
    seq_printf(p, "---------------------------------------------------------------\n");
    seq_printf(p, "<not used>       <not used>       <not used>    <not used>\n");
    seq_printf(p, "<not used>       <not used>       <not used>    <not used>\n");
    seq_printf(p, "<not used>       <not used>       <not used>    <not used>\n");
    seq_printf(p, "<not used>       <not used>       <not used>    <not used>\n");
    seq_printf(p, "<not used>       <not used>       <not used>    <not used>\n");
    seq_printf(p, "<not used>       <not used>      <direct 8x8>   <B before P>\n");
    seq_printf(p, "---------------------------------------------------------------\n");

    return 0;
}

#if 0
int vfmw_read_proc_raw(struct seq_file *p, void *v)
{
    extern RAWBUF_INST_S *s_pstRawInst[MAX_CHAN_NUM];
    RAWBUF_INST_S *pstRaw;
    int i;

    seq_printf(p, "=============== raw info ==============================\n");

    for (i = 0; i < MAX_CHAN_NUM; i++)
    {
        pstRaw = s_pstRawInst[i];

        if (pstRaw == NULL)
        {
            continue;
        }

        seq_printf(p, "--------------- inst[%d] -------------\n", i);
        seq_printf(p, "%-25s :%#x\n", "s32BufPhyAddr", pstRaw->s32BufPhyAddr);
        seq_printf(p, "%-25s :%d\n", "s32BufSize", pstRaw->s32BufSize);
        seq_printf(p, "%-25s :%d\n", "s32ReadOfst", pstRaw->s32ReadOfst);
        seq_printf(p, "%-25s :%d\n", "s32WriteOfst", pstRaw->s32WriteOfst);
        seq_printf(p, "%-25s :%d\n", "s32Quehist", pstRaw->s32Quehist);
        seq_printf(p, "%-25s :%d\n", "s32QueHead", pstRaw->s32QueHead);
        seq_printf(p, "%-25s :%d\n", "s32QueTail", pstRaw->s32QueTail);
    }

    return 0;
}
#endif

int vfmw_read_proc_scd(struct seq_file *p, void *v)
{
    int i;
    SINT32 ret;
    SM_INSTANCE_S *pInst;
    extern SM_IIS_S *g_pSmIIS;

    seq_printf(p, "=============== scd info ==============================\n");
    seq_printf(p, "%-25s :%d\n", "IsScdDrvOpen", g_pSmIIS->IsScdDrvOpen);
    seq_printf(p, "%-25s :%d\n", "SCDState", g_pSmIIS->SCDState);
    seq_printf(p, "%-25s :%d\n", "ThisInstID", g_pSmIIS->ThisInstID);
    seq_printf(p, "%-25s :%d\n", "LastProcessTime", g_pSmIIS->LastProcessTime);
    seq_printf(p, "%-25s :%#x\n", "HwMemAddr", g_pSmIIS->ScdDrvMem.HwMemAddr);
    seq_printf(p, "%-25s :%d\n", "HwMemSize", g_pSmIIS->ScdDrvMem.HwMemSize);
    seq_printf(p, "%-25s :%#x\n", "DownMsgMemAddr", g_pSmIIS->ScdDrvMem.DownMsgMemAddr);
    seq_printf(p, "%-25s :%#x\n", "UpMsgMemAddr", g_pSmIIS->ScdDrvMem.UpMsgMemAddr);

    i = g_CurProcChan;
    //for( i = 0; i < MAX_CHAN_NUM; i++)
    {
        SINT32  RawNum, RawSize, SegNum, SegSize;
        pInst = g_pSmIIS->pSmInstArray[i];

        if (NULL == pInst || pInst->Mode == SM_INST_MODE_IDLE)
        {
            return 0;
        }

        //continue;
        ret = GetRawStreamSize(&pInst->RawPacketArray, &RawSize);

        if (FMW_OK != ret)
        {
            dprint(PRN_DBG, "fuction return value is null,%s %d unknow error!!\n", __FUNCTION__, __LINE__);
        }

        ret = GetRawStreamNum(&pInst->RawPacketArray, &RawNum);

        if (FMW_OK != ret)
        {
            dprint(PRN_DBG, "fuction return value is null,%s %d unknow error!!\n", __FUNCTION__, __LINE__);
        }

        ret = GetSegStreamSize(&pInst->StreamSegArray, &SegSize);

        if (FMW_OK != ret)
        {
            dprint(PRN_DBG, "fuction return value is null,%s %d unknow error!!\n", __FUNCTION__, __LINE__);
        }

        SegNum = GetSegStreamNum(&pInst->StreamSegArray);

        seq_printf(p, "--------------- inst[%d] -------------\n", i);
        seq_printf(p, "%-25s :%d\n", "Mode", pInst->Mode);
        seq_printf(p, "%-25s :%d\n", "cfg VidStd", pInst->Config.VidStd);
        seq_printf(p, "%-25s :%d\n", "is wait seg ext", pInst->IsCounting);
        seq_printf(p, "%-25s :%d\n", "ScdLowBufEnable", pInst->Config.ScdLowBufEnable);
        seq_printf(p, "%-25s :%#x\n", "cfg BufPhyAddr", pInst->Config.BufPhyAddr);
        seq_printf(p, "%-25s :%d\n", "cfg BufSize", pInst->Config.BufSize);
        seq_printf(p, "%-25s :%d\n", "raw Total size", RawSize);
        seq_printf(p, "%-25s :%d\n", "raw Total num", RawNum);
        seq_printf(p, "%-25s :%d\n", "seg Total size", SegSize);
        seq_printf(p, "%-25s :%d\n", "seg Total num", SegNum);
        seq_printf(p, "%-25s :%#x\n", "seg read_addr", pInst->StreamSegArray.SegBufReadAddr);
        seq_printf(p, "%-25s :%#x\n", "seg write_addr", pInst->StreamSegArray.SegBufWriteAddr);
        seq_printf(p, "%-25s :%d Kbps\n", "actual bitrate", pInst->BitRate);
        seq_printf(p, "\n");
    }

    return 0;
}

int vfmw_read_proc_chn(struct seq_file *p, void *v)
{
    SINT32 i;

    seq_printf(p, "=============== chn info ==============================\n");

    seq_printf(p, "=============== chn by vdh ============================\n");

    for (i = 0; i < MAX_CHAN_NUM; i++)
    {
        seq_printf(p, "%d ", g_ChanCtx.ChanDecByVdhPlusOne[i] - 1);
    }

    seq_printf(p, "\n");

    seq_printf(p, "=============== chanid by prior =======================\n");

    for (i = 0; i < MAX_CHAN_NUM; i++)
    {
        seq_printf(p, "%d ", g_ChanCtx.ChanIdTabByPrior[i]);
    }

    seq_printf(p, "\n");

    seq_printf(p, "=============== chan prior ============================\n");

    for (i = 0; i < MAX_CHAN_NUM; i++)
    {
        seq_printf(p, "%d ", g_ChanCtx.PriorByChanId[i]);
    }

    seq_printf(p, "\n");

    seq_printf(p, "=============== chan isopen isrun =====================\n");

    for (i = 0; i < MAX_CHAN_NUM; i++)
    {
        if (s_pstVfmwChan[i] != NULL)
        {
            seq_printf(p, "%d %d %d\n", s_pstVfmwChan[i]->s32IsOpen, s_pstVfmwChan[i]->s32IsRun, s_pstVfmwChan[i]->s32Priority);
        }
    }

    seq_printf(p, "\n");

    return 0;
}

int vfmw_read_proc_dec(struct seq_file *p, void *v)
{
    SINT32 i, j;
    VFMW_CHAN_S *pChan;
    //    extern FSP_INST_S *g_pstFsp;
    extern FSP_INST_S *s_pFspInst[MAX_CHAN_NUM];
    FSP_INST_S *pFsp = NULL;

    seq_printf(p, "=============== dec info ==============================\n");
    seq_printf(p, "%-25s :%d\n", "USE_FF_APT_EN", USE_FF_APT_EN);

    i = g_CurProcChan;
    //for (i = 0; i < MAX_CHAN_NUM; i++)
    {
        SINT32 RefNum = 0, ReadNum = 0, NewNum = 0, VdhId = 0;
        SINT32 QueHist = 0, QueHead = 0, QueTail = 0;
        IMAGE_VO_QUEUE *pstDecQue;

        // fuyang 没有必要把上下文拷贝到一片单独的区域
        //            memcpy(&g_pstFsp[MAX_CHAN_NUM], &g_pstFsp[i], sizeof(FSP_INST_S));
        //            pFsp = g_pstFsp + MAX_CHAN_NUM;
        pFsp = s_pFspInst[i];

        if (pFsp == NULL)
        {
            dprint(PRN_FATAL, "vfmw_read_proc_dec L(%d): pFspInst[%d] null\n", __LINE__, i);
            return 0;
        }

        pChan = s_pstVfmwChan[i];

        if (pChan == NULL)
        {
            return 0;
        }

        //continue;
        VdhId = g_ChanCtx.ChanDecByVdhPlusOne[i] - 1;
        VCTRL_GetChanImgNum(i, &RefNum, &ReadNum, &NewNum);

        if (NULL != (pstDecQue = VCTRL_GetChanVoQue(i)))
        {
            QueHist = pstDecQue->history;
            QueHead = pstDecQue->head;
            QueTail = pstDecQue->tail;
        }

        seq_printf(p, "--------------- chan[%d] -------------\n", i);
        seq_printf(p, "%-25s :%d\n", "deced by vdh", VdhId);
        seq_printf(p, "%-25s :%d\n", "s32IsOpen", pChan->s32IsOpen);
        seq_printf(p, "%-25s :%d\n", "s32IsRun", pChan->s32IsRun);
        seq_printf(p, "%-25s :%d\n", "s32Priority", pChan->s32Priority);
        seq_printf(p, "%-25s :%d\n", "eVidStd", pChan->eVidStd);
        seq_printf(p, "%-25s :%d\n", "cfg s32ChanErrThr", pChan->stChanCfg.s32ChanErrThr);
        seq_printf(p, "%-25s :%d\n", "cfg s32ChanStrmOFThr", pChan->stChanCfg.s32ChanStrmOFThr);
        seq_printf(p, "%-25s :%d\n", "cfg s32DecMode", pChan->stChanCfg.s32DecMode);
        seq_printf(p, "%-25s :%d\n", "cfg s32DecOrderOutput", pChan->stChanCfg.s32DecOrderOutput);
        seq_printf(p, "%-25s :%d\n", "cfg LowBufEnable", pChan->stChanCfg.s32LowdBufEnable);
        seq_printf(p, "%-25s :%d\n", "cfg stdext AP", pChan->stChanCfg.StdExt.Vc1Ext.IsAdvProfile);
        seq_printf(p, "%-25s :%d\n", "cfg stdext CodecVer", pChan->stChanCfg.StdExt.Vc1Ext.CodecVersion);
        seq_printf(p, "%-25s :%d\n", "cfg stdext bReversed", pChan->stChanCfg.StdExt.Vp6Ext.bReversed);

        seq_printf(p, "%-25s :%#x\n", "ChanMem_vdh mem phy", pChan->stChanMem_vdh.PhyAddr);
        seq_printf(p, "%-25s :%d\n", "ChanMem_vdh mem size", pChan->stChanMem_vdh.Length);
        seq_printf(p, "%-25s :%#x\n", "ChanMem_scd mem phy", pChan->stChanMem_scd.PhyAddr);
        seq_printf(p, "%-25s :%d\n", "ChanMem_scd mem size", pChan->stChanMem_scd.Length);

        seq_printf(p, "%-25s :%#x\n", "s32SdecMemAddr", pChan->s32SdecMemAddr);
        seq_printf(p, "%-25s :%d\n", "s32SdecMemSize", pChan->s32SdecMemSize);
        seq_printf(p, "%-25s :%#x\n", "s32OffLineDnrMemAddr", pChan->s32OffLineDnrMemAddr);
        seq_printf(p, "%-25s :%d\n", "s32OffLineDNRMemSize", pChan->s32OffLineDNRMemSize);
        seq_printf(p, "%-25s :%#x\n", "s32VdmChanMemAddr", pChan->s32VdmChanMemAddr);
        seq_printf(p, "%-25s :%d\n", "s32VdmChanMemSize", pChan->s32VdmChanMemSize);

        if (pChan->eVidStd == VFMW_USER)
        {
            USRDEC_FRAME_DESC_S *FrameDesc = &pChan->stRecentUsrdecFrame;
            seq_printf(p, "Recent UsrdecFrame: enFmt=%d,w=%d,h=%d,Ystride=%d,Cstride=%d,PTS=%lld\n",
                       FrameDesc->enFmt, FrameDesc->s32YWidth, FrameDesc->s32YHeight,
                       FrameDesc->s32LumaStride, FrameDesc->s32ChromStride, FrameDesc->Pts);
        }

        seq_printf(p, "%-25s :%#x\n", "s32ScdChanMemAddr", pChan->s32ScdChanMemAddr);
        seq_printf(p, "%-25s :%d\n", "s32ScdChanMemSize", pChan->s32ScdChanMemSize);
        seq_printf(p, "%-25s :%d,%d,%d\n", "ref,read,new", RefNum, ReadNum, NewNum);
        seq_printf(p, "%-25s :(%d,%d,%d)\n", "decQue detail", QueHist, QueHead, QueTail);
        seq_printf(p, "%-25s :%d\n", "actual DecMode", pChan->stSynExtraData.s32DecMode);
        seq_printf(p, "%-25s :%d\n", "actual DecOrderOutput", pChan->stSynExtraData.s32DecOrderOutput);
        seq_printf(p, "%-25s :%#x\n", "image format", pChan->stRecentImg.format);
        seq_printf(p, "%-25s :%#x\n", "frame packing type", pChan->stRecentImg.eFramePackingType);
        seq_printf(p, "%-25s :%d.%02d fps\n", "stream frame rate", pChan->stRecentImg.frame_rate >> 10,
                   ((pChan->stRecentImg.frame_rate & 1023) * 100 + 512) >> 10);
        seq_printf(p, "%-25s :%d.%d fps\n", "actual frame rate", g_VfmwChanStat[i].u32FrFrameRate / 10, g_VfmwChanStat[i].u32FrFrameRate % 10);

        if (1 < MAX_VDH_NUM)
        {
            seq_printf(p, "%-25s :%d.%d%%\n", "VDH 0 load", g_VfmwGlobalStat[0].u32VdhLoad / 10, g_VfmwGlobalStat[0].u32VdhLoad % 10);
            seq_printf(p, "%-25s :%d.%d%%\n", "VDH 1 load", g_VfmwGlobalStat[1].u32VdhLoad / 10, g_VfmwGlobalStat[1].u32VdhLoad % 10);
        }
        else
        {
            seq_printf(p, "%-25s :%d.%d%%\n", "VDH 0 load", g_VfmwGlobalStat[0].u32VdhLoad / 10, g_VfmwGlobalStat[0].u32VdhLoad % 10);
        }

        seq_printf(p, "%-25s :%d\n", "skip frame found", g_VfmwChanStat[i].u32SkipFind);
        seq_printf(p, "%-25s :%d\n", "skip frame discarded", g_VfmwChanStat[i].u32SkipDiscard);

        /* fsp */
        if (pFsp == NULL)
        {
            dprint(PRN_FATAL, "vfmw_read_proc_dec L(%d): pFspInst[%d] null\n", __LINE__, i);
            return 0;
        }

        seq_printf(p, "\n");
        seq_printf(p, "%-25s :%d\n", "fsp DecFsWidth", pFsp->stInstCfg.s32DecFsWidth );
        seq_printf(p, "%-25s :%d\n", "fsp DecFsHeight", pFsp->stInstCfg.s32DecFsHeight );
        seq_printf(p, "%-25s :%d\n", "fsp DispFsWidth", pFsp->stInstCfg.s32DispFsWidth );
        seq_printf(p, "%-25s :%d\n", "fsp DispFsHeight", pFsp->stInstCfg.s32DispFsHeight );
        seq_printf(p, "%-25s :%d\n", "fsp ExpectedDecFsNum", pFsp->stInstCfg.s32ExpectedDecFsNum );
        seq_printf(p, "%-25s :%d\n", "fsp TotalValidFSNum", pFsp->s8TotalValidFsNum );

        if (pFsp->stInstCfg.s32DispLoopEnable)
        {
            seq_printf(p, "\n%-25s :%d\n", "fsp DispLoopEnable", pFsp->stInstCfg.s32DispLoopEnable );
            seq_printf(p, "%-25s :%d\n",   "fsp ExpectedDispFsNum", pFsp->stInstCfg.s32ExpectedDispFsNum );
            seq_printf(p, "\n%-25s :%d\n", "fsp s32DispFsNum", pFsp->s32DispFsNum );

            for (j = 0; j < pFsp->s32DispFsNum; j++)
            {
                if ((j != 0) && ((j & 15) == 0) ) { seq_printf(p, "\n"); }

                seq_printf(p, "%d%d ", pFsp->stDispFs[j].IsDecRef, pFsp->stDispFs[j].DispState);
            }
        }

        seq_printf(p, "%-25s :%d\n", "fsp ActualDecFsNum", pFsp->s32DecFsNum );

        for (j = 0; j < pFsp->s32DecFsNum; j++)
        {
            if ((j != 0) && ((j & 15) == 0) ) { seq_printf(p, "\n"); }

            seq_printf(p, "%d%d ", pFsp->stDecFs[j].IsDecRef, pFsp->stDecFs[j].DispState);
        }

        seq_printf(p, "\n%-25s :%d\n", "fsp ActualPmvNum", pFsp->s32PmvNum );
        seq_printf(p, "%-25s :%d\n", "fsp LogicFsNum", 64 );

        for (j = 0; j < 64; j++)
        {
            if ((j != 0) && ((j & 15) == 0) ) { seq_printf(p, "\n"); }

            seq_printf(p, "%d%d ", pFsp->stLogicFs[j].s32IsRef, pFsp->stLogicFs[j].s32DispState);
        }

        seq_printf(p, "\n");
    }

    seq_printf(p, "\n");

    return 0;
}

#ifdef VFMW_DNR_SUPPORT
int vfmw_read_proc_dnr(struct seq_file *p, void *v)
{
    SINT32 i, j;
    IMAGE_QUEUE *pQue;
    extern DNR_CTRL_DATA_S s_DnrCtrl;
    extern DNR_CHAN_S  s_DnrChan[MAX_CHAN_NUM];

    seq_printf(p, "=============== dnr info ==============================\n");
    seq_printf(p, "%-25s :%d\n", "DNRState", s_DnrCtrl.DNRState );
    seq_printf(p, "%-25s :%d\n", "ThisInstID", s_DnrCtrl.ThisInstID );
    seq_printf(p, "%-25s :%d\n", "s32ThisChanIDPlus1", s_DnrCtrl.s32ThisChanIDPlus1 );
    seq_printf(p, "%-25s :%d\n", "LastProcessTime", s_DnrCtrl.LastProcessTime );
    seq_printf(p, "%-25s :%d.%d%%\n", "DNR load", g_VfmwGlobalStat[0].u32DaDnrLoad / 10, g_VfmwGlobalStat[0].u32DaDnrLoad % 10);

    i = g_CurProcChan;
    //for (i = 0; i < MAX_CHAN_NUM; i++)
    {
        pQue = &s_DnrChan[i].LogicImageQue;

        if (s_DnrChan[i].InstMode == DNR_INST_MODE_IDLE)
        {
            return 0;
        }

        //continue;
        seq_printf(p, "--------------- inst[%d] -------------\n", i);
        seq_printf(p, "%-25s :%d\n", "s32IsOpen", s_DnrChan[i].s32IsOpen);
        seq_printf(p, "%-25s :%d\n", "InstMode", s_DnrChan[i].InstMode);
        seq_printf(p, "%-25s :%d\n", "NeedStartAgain", s_DnrChan[i].NeedStartAgain);
        seq_printf(p, "%-25s :%d\n", "s321DFrameIsProc", s_DnrChan[i].s321DFrameIsProc);
        seq_printf(p, "%-25s :%d\n", "is rwzb", s_DnrChan[i].IsRwzb);
        seq_printf(p, "%-25s :%d\n", "DR enable", s_DnrChan[i].enDR);
        seq_printf(p, "%-25s :%d\n", "DB enable", s_DnrChan[i].enDB);
        seq_printf(p, "%-25s :%d\n", "DC enable", s_DnrChan[i].enDC);
        seq_printf(p, "%-25s :%d\n", "VCMP enable", s_DnrChan[i].s32VcmpEn);

        if (s_DnrChan[i].s32VcmpEn == 1)
        {
            seq_printf(p, "%-25s :%d\n", "WmStartLine", s_DnrChan[i].s32VcmpWmStartLine);
            seq_printf(p, "%-25s :%d\n", "WmEndLine", s_DnrChan[i].s32VcmpWmEndLine);
        }

        seq_printf(p, "%-25s :%d\n", "dnr frame num", s_DnrChan[i].s32ValidImgNum);

        for (j = 0; j < s_DnrChan[i].s32ValidImgNum; j++)
        {
            seq_printf(p, "%x ", s_DnrChan[i].LogicImagePool[j].luma_2d_phy_addr);
        }

        seq_printf(p, "\ndnr_usage: ");

        for (j = 0; j < s_DnrChan[i].s32ValidImgNum; j++)
        {
            seq_printf(p, "%d ", s_DnrChan[i].LogicImageIsUsed[j]);
        }

        seq_printf(p, "\n%-25s :(%d,%d,%d)\n", "queue detail", pQue->history, pQue->head, pQue->tail);
    }
    seq_printf(p, "\n");

    return 0;
}
#endif

#ifdef VFMW_SCD_LOWDLY_SUPPORT
int vfmw_read_proc_lwd(struct seq_file *p, void *v)
{
    SINT32 i;
    LOWDLY_INFO_S *pLwd = NULL;

    i = g_CurProcChan;
    //for (i = 0; i < MAX_CHAN_NUM; i++)
    {
        pLwd = &g_stLowdlyInfo[i];

        //continue;
        seq_printf(p, "=============== lowdly info ================\n");
        seq_printf(p, "%-25s :%d\n", "LowdlyEnable", pLwd->lowdly_enable);
        seq_printf(p, "%-25s :%d\n", "ChanID", pLwd->chan_id);
        //      seq_printf(p, "%-25s :%d\n", "RecRaw", pLwd->receive_raw);
        //      seq_printf(p, "%-25s :%d\n", "ScdStart", pLwd->scd_start);
        seq_printf(p, "%-25s :%d\n", "ScdCount", pLwd->scd_count);
        //        seq_printf(p, "%-25s :%d\n", "RawToScdReturn", pLwd->raw_to_scd_return);
        //        seq_printf(p, "%-25s :%d\n", "VdhStart", pLwd->vdh_start);
        //        seq_printf(p, "%-25s :%d\n", "VdhReturn", pLwd->vdh_return);
        seq_printf(p, "%-25s :%d\n", "VdhCount", pLwd->vdh_count);
        //        seq_printf(p, "%-25s :%d\n", "RawToImg", pLwd->raw_to_img);
        //        seq_printf(p, "%-25s :%d\n", "RawToVo", pLwd->raw_to_vo);
    }
    seq_printf(p, "\n");

    return 0;
}
#endif

int str2val(char *str, unsigned int *data)
{
    unsigned int i, d, dat, weight;

    dat = 0;

    if (str[0] == '0' && (str[1] == 'x' || str[1] == 'X'))
    {
        i = 2;
        weight = 16;
    }
    else
    {
        i = 0;
        weight = 10;
    }

    for (; i < 10; i++)
    {
        if (str[i] < 0x20) { break; }
        else if (weight == 16 && str[i] >= 'a' && str[i] <= 'f')
        {
            d = str[i] - 'a' + 10;
        }
        else if (weight == 16 && str[i] >= 'A' && str[i] <= 'F')
        {
            d = str[i] - 'A' + 10;
        }
        else if (str[i] >= '0' && str[i] <= '9')
        {
            d = str[i] - '0';
        }
        else
        {
            return -1;
        }

        dat = dat * weight + d;
    }

    *data = dat;

    return 0;
}

int vfmw_write_proc(struct file *file, const char __user *buf, size_t count, loff_t *ppos)
{
    static char cmd[256], str[256];
    int i, j;
    unsigned int dat1, dat2, dat3, dat4;
    unsigned int args[8];

    dat1 = dat2 = dat3 = dat4 = 0;

    if (count >= sizeof(cmd))
    {
        dprint(PRN_ALWS, "MMZ: your parameter string is too long!\n");
        return -EIO;
    }

    memset(cmd, 0, sizeof(cmd));

    if (copy_from_user(cmd, buf, count))
    {
        dprint(PRN_ALWS, "MMZ: copy_from_user failed!\n");
        return -EIO;
    }

    cmd[count] = 0;

    /* dat1 */
    i = 0;
    j = 0;

    for (; i < count; i++)
    {
        if (j == 0 && cmd[i] == ' ') { continue; }

        if (cmd[i] > ' ') { str[j++] = cmd[i]; }

        if (j > 0 && cmd[i] == ' ') { break; }
    }

    str[j] = 0;

    if (str2val(str, &dat1) != 0)
    {
        dprint(PRN_ALWS, "error echo cmd '%s'!\n", cmd);
        return -1;
    }

    /* dat2 */
    j = 0;

    for (; i < count; i++)
    {
        if (j == 0 && cmd[i] == ' ') { continue; }

        if (cmd[i] > ' ') { str[j++] = cmd[i]; }

        if (j > 0 && cmd[i] == ' ') { break; }
    }

    str[j] = 0;

    if (str2val(str, &dat2) != 0)
    {
        dprint(PRN_ALWS, "error echo cmd '%s'!\n", cmd);
        return -1;
    }

    /* extra arguments */
    if (dat1 >= 0x200 && dat1 < 0x300) /* 存盘功能允许额外指定存盘路径 */
    {
        /* 如果是存YUV，还必须指定图像的宽高 */
        if (dat1 == 0x204)
        {
            j = 0;

            for (; i < count; i++)
            {
                if (j == 0 && cmd[i] == ' ') { continue; }

                if (cmd[i] > ' ') { str[j++] = cmd[i]; }

                if (j > 0 && cmd[i] <= ' ') { break; }
            }

            str[j] = 0;

            if (str2val(str, &dat3) != 0)  // dat3: 图像宽度
            {
                dprint(PRN_ALWS, "error echo cmd '%s'!\n", cmd);
                return -1;
            }

            j = 0;

            for (; i < count; i++)
            {
                if (j == 0 && cmd[i] == ' ') { continue; }

                if (cmd[i] > ' ') { str[j++] = cmd[i]; }

                if (j > 0 && cmd[i] <= ' ') { break; }
            }

            str[j] = 0;

            if (str2val(str, &dat4) != 0) // dat4: 图像高度
            {
                dprint(PRN_ALWS, "error echo cmd '%s'!\n", cmd);
                return -1;
            }
        }

        /* 所有存盘功能都可以重设存盘路径，如果buf还没有解析完毕，可能后面有路径信息 */
        j = 0;

        for (; i < count; i++)
        {
            if (j == 0 && cmd[i] == ' ') { continue; }

            if (cmd[i] > ' ') { str[j++] = cmd[i]; }

            if (j > 0 && cmd[i] <= ' ') { break; }
        }

        str[j] = 0;

        // j 大于零，说明设置有存盘路径，这里作判断是为了消除TQE警告
        if (str[0] == '/')
        {
            if (j >= 1)
            {
                if (str[j - 1] == '/')
                {
                    str[j - 1] = 0;
                }

                dprint(PRN_ALWS, "******* vfmw save path: %s ********\n", str);
                strncpy(s_VfmwSavePath, str, sizeof(s_VfmwSavePath));
                s_VfmwSavePath[sizeof(s_VfmwSavePath) - 1] = '\0';
            }
            else
            {
                dprint(PRN_ALWS, "%s %d j < 1!!\n", __FUNCTION__, __LINE__);
                return -1;
            }
        }
    }

    dprint(PRN_ALWS, "\nvfmw debug: arg1=%#x, arg2=%#x\n", dat1, dat2);

    args[0] = dat2;
    args[1] = dat3;
    args[2] = dat4;
    VCTRL_SetDbgOption(dat1, (UINT8 *)args);

    return count;
}

#define VFMW_MAX_PROC_NAME_SIZE     16

typedef int (*vfmw_proc_read_fn)(struct seq_file *, void *);
typedef int (*vfmw_proc_write_fn)(struct file *file, const char __user *buf, size_t count, loff_t *ppos);

typedef struct
{
    HI_CHAR             proc_name[VFMW_MAX_PROC_NAME_SIZE];
    vfmw_proc_read_fn   read;
    vfmw_proc_write_fn  write;
} vfmw_proc_func;

static int vfmw_proc_open(struct inode *inode, struct file *file)
{
    vfmw_proc_func *proc;

#if LINUX_VERSION_CODE < KERNEL_VERSION(3, 10, 0)
    proc = PDE(inode)->data;
#else
    proc = PDE_DATA(inode);
#endif

    if (NULL == proc)
    {
        return -ENOSYS;
    }

    if (proc->read)
    {
        return single_open(file, proc->read, proc);
    }

    return -ENOSYS;
}

static ssize_t vfmw_proc_write(struct file *file, const char __user *buf, size_t count, loff_t *ppos)
{
    struct seq_file *s      = file->private_data;
    vfmw_proc_func  *proc   = s->private;

    if (proc->write)
    {
        return proc->write(file, buf, count, ppos);
    }

    return -ENOSYS;
}

static const struct file_operations  vfmw_proc_fops =
{
    .owner      = THIS_MODULE,
    .open       = vfmw_proc_open,
    .read       = seq_read,
    .write      = vfmw_proc_write,
    .llseek     = seq_lseek,
    .release    = single_release,
};

static vfmw_proc_func  vfmw_proc[32];

HI_S32 vfmw_proc_create(HI_CHAR *proc_name, vfmw_proc_read_fn read, vfmw_proc_write_fn write)
{
    struct proc_dir_entry  *entry;
    vfmw_proc_func         *proc;
    HI_U32                  i;
    HI_U32                  count = sizeof(vfmw_proc) / sizeof(vfmw_proc[0]);

    for (i = 0; i < count; i++)
    {
        if ((HI_NULL == vfmw_proc[i].read) && (HI_NULL == vfmw_proc[i].write))
        {
            proc = &vfmw_proc[i];

            strncpy(proc->proc_name, proc_name, sizeof(proc->proc_name));
            proc->proc_name[sizeof(proc->proc_name) - 1] = 0;

            proc->read  = read;
            proc->write = write;

            break;
        }
    }

    if (i >= count)
    {
        return -1;
    }

#if LINUX_VERSION_CODE < KERNEL_VERSION(3, 10, 0)
    entry = create_proc_entry(proc_name, 0644, HI_NULL);

    if (!entry)
    {
        return -1;
    }

    entry->proc_fops    = &vfmw_proc_fops;
    entry->data         = proc;
#else
    entry = proc_create_data(proc_name, 0644, HI_NULL, &vfmw_proc_fops, (void *)proc);

    if (!entry)
    {
        return -1;
    }

#endif

    return 0;
}

HI_VOID vfmw_proc_destroy(HI_CHAR *proc_name)
{
    HI_U32  i;
    HI_U32  count = sizeof(vfmw_proc) / sizeof(vfmw_proc[0]);

    for (i = 0; i < count; i++)
    {
        vfmw_proc_func *proc = &vfmw_proc[i];

        if (0 == strncmp(proc_name, proc->proc_name, sizeof(proc->proc_name)))
        {
            remove_proc_entry(proc_name, HI_NULL);

            memset(proc->proc_name, 0, sizeof(proc->proc_name));

            proc->read  = HI_NULL;
            proc->write = HI_NULL;

            break;
        }
    }
}

#endif

int vfmw_proc_init(void)
{
#ifdef HI_VFMW_PROC_SUPPORT
    HI_S32  ret;
    HI_U32  i;
    HI_CHAR name[16];
    HI_U32  end = sizeof(name) - 1;

    for (i = 0; i < 16; i++)
    {
        snprintf(name, sizeof(name), "vfmw%02d", i);
        name[end] = 0;

        ret = vfmw_proc_create(name, vfmw_read_proc_info, vfmw_write_proc);

        if (0 != ret)
        {
            return -1;
        }
    }

    ret = vfmw_proc_create(VFMW_PROC_NAME, vfmw_read_proc, vfmw_write_proc);

    if (0 != ret)
    {
        return -1;
    }

    ret = vfmw_proc_create(VFMW_PROC_NAME_DBG, vfmw_read_proc_dbg, vfmw_write_proc);

    if (0 != ret)
    {
        return -1;
    }

    ret = vfmw_proc_create(VFMW_PROC_NAME_DPRN, vfmw_read_proc_dbg, vfmw_write_proc);

    if (0 != ret)
    {
        return -1;
    }

    ret = vfmw_proc_create(VFMW_PROC_NAME_SCD, vfmw_read_proc_scd, vfmw_write_proc);

    if (0 != ret)
    {
        return -1;
    }

    ret = vfmw_proc_create(VFMW_PROC_NAME_DEC, vfmw_read_proc_dec, vfmw_write_proc);

    if (0 != ret)
    {
        return -1;
    }

#ifdef VFMW_DNR_SUPPORT
    ret = vfmw_proc_create(VFMW_PROC_NAME_DNR, vfmw_read_proc_dnr, vfmw_write_proc);

    if (0 != ret)
    {
        return -1;
    }

#endif

#ifdef VFMW_SCD_LOWDLY_SUPPORT
    ret = vfmw_proc_create(VFMW_PROC_NAME_LWD, vfmw_read_proc_lwd, vfmw_write_proc);

    if (0 != ret)
    {
        return -1;
    }

#endif

    ret = vfmw_proc_create(VFMW_PROC_NAME_CHN, vfmw_read_proc_chn, vfmw_write_proc);

    if (0 != ret)
    {
        return -1;
    }

#endif

    return 0;
}

void vfmw_proc_exit(void)
{
#ifdef HI_VFMW_PROC_SUPPORT
    HI_U32  i;
    HI_CHAR name[16];
    HI_U32  end = sizeof(name) - 1;

    for (i = 0; i < 16; i++)
    {
        snprintf(name, sizeof(name), "vfmw%02d", i);
        name[end] = 0;

        vfmw_proc_destroy(name);
    }

    vfmw_proc_destroy(VFMW_PROC_NAME);
    vfmw_proc_destroy(VFMW_PROC_NAME_DBG);
    vfmw_proc_destroy(VFMW_PROC_NAME_DPRN);
    vfmw_proc_destroy(VFMW_PROC_NAME_SCD);
    vfmw_proc_destroy(VFMW_PROC_NAME_DEC);

#ifdef VFMW_DNR_SUPPORT
    vfmw_proc_destroy(VFMW_PROC_NAME_DNR);
#endif

#ifdef VFMW_SCD_LOWDLY_SUPPORT
    vfmw_proc_destroy(VFMW_PROC_NAME_LWD);
#endif

    vfmw_proc_destroy(VFMW_PROC_NAME_CHN);
#endif
}
