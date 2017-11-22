#include "stdio.h"
#include "stdlib.h"
#include "hi_type.h"
#include <string.h>
#include "hi_adp.h"
#include "strings.h"
#include "tsanalyse.h"


//define __PARSE_TSFILE__

static FILEHandle     G_FileHandle   = 0;
static unsigned char *pG_Buffer      = NULL;
static unsigned int   G_BufferLength = 0;
static unsigned int   G_BufferOffset = 0;

struct _PidStat PidStat[MAX_PID_NUM];
struct _PatTab PatTab[MAX_PROG_NUM];
char sec_status[256], desc_cont[256];
int curr_sec_num = 0, last_sec_num = 0;
void DescParse(FILEHandle FifiSrc, int TotLen, int pidnum, int pidtype, int *tsnum, int *leftbytes, int *para);

char streamtype[MAX_STR_TYPE][10] =
{   "Reserved ", "V   MPEG1", "v  MPEG2", "A   MPEG1", "A   MPEG2",
    "Private  ", "PESPrivate", "MHEG     ", "DSM-CC   ", "H.222.1  ",
    "*********", "*********", "*********", "*********", "*********",
    "MPEG2AAC ", "V   MPEG4", "MPEG2AAC2", "*********", "*********",
    "*********", "*********", "*********", "*********", "*********",
    "*********", "*********", "V   H.264", "*********", "*********",
    "*********", "*********" };

char progstatus[MAX_PROG_STAT_TYPE][10] =
{   "Undefined", "NoRun ", "Running ", "Pause  ", "Runing  ", 
    "*******", "*******", "*******" };

char pidtypestr[PIDTYPE_BUTT][10] =
{   "PAT    ", "CAT    ", "NIT    ", "PMT    ", "SDT    ",
    "EIT    ", "VIDEO  ", "AUDIO  ", "PRIVATE", "TDT/TOT",
    "MHEG   ", "DSM_CC ", "H222   ", "TSDT   ", "RST    ",
    "DIT    ", "SIT    ", "Reserved", "NullPack", "ECM    ",
    "EMM    "};

void reset_sec_info()
{
    int i;
    
    for(i=0; i<256; i++)
        sec_status[i] = 0;

    curr_sec_num = 0;
    last_sec_num = 0;
}

FILEHandle FIFOCreate(unsigned char *data, int dataLegth)
{
    
    pG_Buffer = (unsigned char *)malloc(dataLegth);
    if(pG_Buffer == NULL)
    {
        sample_printf("Error: Can not allocate.\n");
        return 0;
    }
    
    memcpy(pG_Buffer, data, dataLegth);
    G_BufferLength = dataLegth;
    G_BufferOffset = 0;
    
    G_FileHandle = (FILEHandle)pG_Buffer;
    
    sample_printf("xxx0:0x%x\n", pG_Buffer[0]);
    
    return G_FileHandle;
    
}

int FIFODelete(void)
{
    if(pG_Buffer != NULL)
    {
        free(pG_Buffer);
    }
    pG_Buffer      = NULL;
    G_BufferLength = 0;
    G_BufferOffset = 0;    
    return 0;
}

char FIFOgetc(FILEHandle Handle)
{
    if (Handle != G_FileHandle)
    {
        sample_printf("handle error Handle:0x%x, G_FileHandle:0x%x\n", Handle, G_FileHandle);
        return 0;
    }
    if (pG_Buffer == NULL)
    {
        sample_printf("pG_Buffer NULL\n");
        return 0;
    }
    if (G_BufferOffset >= G_BufferLength)
    {
        sample_printf("offset too big %d >= %d\n", G_BufferOffset, G_BufferLength);
        return 0;
    }
    return (char)(pG_Buffer[G_BufferOffset ++]);
}

int FIFOseek(FILEHandle Handle, long offset, int whence)
{
    if (Handle != G_FileHandle)
    {
        sample_printf("handle error Handle:0x%x, G_FileHandle:0x%x\n", Handle, G_FileHandle);
        return -1;
    }
    if (pG_Buffer == NULL)
    {
        sample_printf("pG_Buffer NULL\n");
        return -1;
    }

    if(whence == SEEK_SET)
    {
        G_BufferOffset = offset;
        
        if (G_BufferOffset >= G_BufferLength)
        {
            sample_printf("offset too big %d >= %d\n", G_BufferOffset, G_BufferLength);
            G_BufferOffset = G_BufferLength - 1;
        }        
    }
    else if(whence == SEEK_CUR)
    {
        G_BufferOffset += offset;
        
        if (G_BufferOffset >= G_BufferLength)
        {
            sample_printf("offset too big %d >= %d\n", G_BufferOffset, G_BufferLength);
            G_BufferOffset = G_BufferLength - 1;
        }
    }
    else
    {
        if(offset >= G_BufferLength)
            G_BufferOffset = 0;
        else
            G_BufferOffset = G_BufferLength - 1 - offset;
    }
    
    return 0;
}

long FIFOtell(FILEHandle Handle)
{
    if (Handle != G_FileHandle)
    {
        sample_printf("handle error Handle:0x%x, G_FileHandle:0x%x\n", Handle, G_FileHandle);
        return 0;
    }
    if (pG_Buffer == NULL)
    {
        sample_printf("pG_Buffer NULL\n");
        return 0;
    }
    
    return G_BufferOffset;
}

void FIFOrewind(FILEHandle Handle)
{
    if (Handle != G_FileHandle)
    {
        sample_printf("handle error Handle:0x%x, G_FileHandle:0x%x\n", Handle, G_FileHandle);
        return;
    }
    if (pG_Buffer == NULL)
    {
        sample_printf("pG_Buffer NULL\n");
        return;
    }
    
    G_BufferOffset = 0;
    return;
}

int FIFOeof(FILEHandle Handle)
{
    if (Handle != G_FileHandle)
    {
        sample_printf("handle error Handle:0x%x, G_FileHandle:0x%x\n", Handle, G_FileHandle);
        return 0;
    }
    if (pG_Buffer == NULL)
    {
        sample_printf("pG_Buffer NULL\n");
        return 0;
    }
    
    if(G_BufferOffset < G_BufferLength)
    {
        return 0;
    }
    else
    {
        return 1;
    }
} 

int GetNextSecChar(FILEHandle FifiSrc, int pidnum, int *tsnum, int *leftbytes)
{
    if( *leftbytes > 0 )
    {
        (*leftbytes) --;
        return FIFOgetc(FifiSrc);
    }
    else
    {
        (*tsnum) ++;
        FIFOseek(FifiSrc, PidStat[pidnum].TopTSInfo[*tsnum].TSOffset + PidStat[pidnum].TopTSInfo[*tsnum].PayloadOffset, 0);
        (*leftbytes) = 188 - PidStat[pidnum].TopTSInfo[*tsnum].PayloadOffset - 1;
        return FIFOgetc(FifiSrc);
    }
}

int FindSyncByte(FILEHandle FifiSrc, long *offset, int *tslen)
{
    int tmp1, tmp2, tmp3, tmp4, searchcount=0;
    long tmpoffset=0;

    tmp1 = FIFOgetc(FifiSrc);
    while(!FIFOeof(FifiSrc))
    {
        if(tmp1 != 0x47)
        {
            tmp1 = FIFOgetc(FifiSrc);
            continue;
        }

        tmpoffset = FIFOtell(FifiSrc);

        FIFOseek(FifiSrc, 187, 1);
        tmp1 = FIFOgetc(FifiSrc);

        FIFOseek(FifiSrc, 15, 1);
        tmp2 = FIFOgetc(FifiSrc);

        FIFOseek(FifiSrc, 171, 1);
        tmp3 = FIFOgetc(FifiSrc);

        FIFOseek(FifiSrc, 31, 1);
        tmp4 = FIFOgetc(FifiSrc);

        if(tmp1 == 0x47 && tmp3 == 0x47)
        {
            *offset = tmpoffset;
            *tslen = 188;
            return 0;
        }
        else if(tmp2 == 0x47 && tmp4 == 0x47)
        {
            *offset = tmpoffset;
            *tslen = 204;
            return 0;
        }
        else
        {
            if(searchcount >= 256)
                return -1;
            else
            {
                searchcount ++;
                FIFOrewind(FifiSrc);
                FIFOseek(FifiSrc, tmpoffset, 0);
                tmp1 = FIFOgetc(FifiSrc);
            }
        }
    }
    return -1;
}

void DescParse(FILEHandle FifiSrc, int TotLen, int pidnum, int pidtype, int *tsnum, int *bytesleft, int *para)
{
    int Descbyteleft = TotLen;
    int desc_tag, desc_len, i, tmp0, tmp1, tmp2, tmp3;

    while(Descbyteleft > 0)
    {
        desc_tag = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
        desc_len = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);

        switch(desc_tag)
        {
            case 0x40://Network Name
                for(i=0; i<desc_len; i++)
                    desc_cont[i] = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                desc_cont[desc_len] = 0;
                sample_printf("Network Name: %s\n", desc_cont);
                break;
            case 0x41://Service list
                sample_printf("Service list:");
                for(i=0; i<desc_len/3; i++)
                {
                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp0 = (tmp0<<8) + GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    sample_printf("[ID: %d,type:%d] \n", tmp0, tmp1);
                }
                break;
            case 0x44://Cable deliver system
                sample_printf("Cable deliver system:");
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp0 = ((tmp0 & 0xf0) * 10) + (tmp0 & 0x0f);
                tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp1 = ((tmp1 & 0xf0) * 10) + (tmp1 & 0x0f);
                tmp2 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp2 = ((tmp2 & 0xf0) * 10) + (tmp2 & 0x0f);
                tmp3 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp3 = ((tmp3 & 0xf0) * 10) + (tmp3 & 0x0f);
                tmp0 = tmp0 * 1000000 + tmp1 * 10000 + tmp2 * 100 + tmp3;
                sample_printf("Freq=%d, ", tmp0);
                
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                if(tmp0 == 1)
                    sample_printf("QAM:16-QAM, ");
                else if(tmp0 == 2)
                    sample_printf("QAM:32-QAM, ");
                else if(tmp0 == 3)
                    sample_printf("QAM:64-QAM, ");
                else if(tmp0 == 4)
                    sample_printf("QAM:128-QAM, ");
                else if(tmp0 == 5)
                    sample_printf("QAM:256-QAM, ");
                else
                    sample_printf("QAM:Undefined, ");

                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp0 = ((tmp0 & 0xf0) * 10) + (tmp0 & 0x0f);
                tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp1 = ((tmp1 & 0xf0) * 10) + (tmp1 & 0x0f);
                tmp2 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp2 = ((tmp2 & 0xf0) * 10) + (tmp2 & 0x0f);
                tmp3 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp3 = ((tmp3 & 0xf0) * 10) + (tmp3 & 0x0f);
                tmp0 = tmp0 * 100000 + tmp1 * 1000 + tmp2 * 10 + tmp3/10;
                sample_printf("SymbolRate=%d\n", tmp0);
                break;
            case 0x56://Teletext
            case 0x46://VBI txt
                sample_printf("VBI Text: ");
                for(i=0; i<desc_len/5; i++)
                {
                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp2 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    sample_printf("Language=%02x %02x %02x ", (unsigned char)tmp0, (unsigned char)tmp1, (unsigned char)tmp2);

                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                }
                sample_printf("\n");
                break;
            case 0x48://Service
                sample_printf("Service:");
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                if(tmp0 == 1)
                    sample_printf("Service type=DTV, ");
                else if(tmp0 == 2)
                    sample_printf("Service type=Audio, ");
                else if(tmp0 == 3)
                    sample_printf("Service type=VBI/Teletext, ");
                else if(tmp0 == 4)
                    sample_printf("Service type=NVODReference, ");
                else if(tmp0 == 5)
                    sample_printf("Service type=NVODShift, ");
                else if(tmp0 == 0x10)
                    sample_printf("Service type=DVB MHP, ");
                else if(tmp0 == 0x16)
                    sample_printf("Service type=SD DTV, ");
                else if(tmp0 == 0x17)
                    sample_printf("Service type=SD NVODShift, ");
                else if(tmp0 == 0x18)
                    sample_printf("Service type=SD NVODReference, ");
                else if(tmp0 == 0x19)
                    sample_printf("Service type=HD DTV, ");
                else if(tmp0 == 0x1A)
                    sample_printf("Service type=HD NVODShift, ");
                else if(tmp0 == 0x1B)
                    sample_printf("Service type=HD NVODReference, ");
                else
                    sample_printf("Service type=Other, ");

                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                for(i=0; i<tmp0; i++)
                    desc_cont[i] = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                desc_cont[tmp0] = 0;
                sample_printf("Service Provider=%s, ", desc_cont);

                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                for(i=0; i<tmp0; i++)
                    desc_cont[i] = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                desc_cont[tmp0] = 0;
                sample_printf("Service Name=%s\n", desc_cont);
                break;
            case 0x09://CA
                sample_printf("CA: ");
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp0 = (tmp0<<8) + GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                sample_printf("CA ID=%d ", tmp0);

                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp0 = ((tmp0&0x1f)<<8) + GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                if(pidtype == PMT)
                {
                    sample_printf("ECM_PID=0x%04x ", tmp0);
                    for(i=0; i<MAX_PID_NUM; i++)
                    {
                        if(PidStat[i].pid == tmp0)
                        {
                            PidStat[i].type = ECM;
                            break;
                        }
                    }
                }
                else
                {
                    sample_printf("EMM_PID=0x%04x ", tmp0);
                    for(i=0; i<MAX_PID_NUM; i++)
                    {
                        if(PidStat[i].pid == tmp0)
                        {
                            PidStat[i].type = EMM;
                            break;
                        }
                    }
                }

                for(i=0; i<desc_len-4; i++)
                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                
                sample_printf("\n");                    
                break;
            case 0x53://CA
                sample_printf("CA: ");
                for(i=0; i<desc_len/2; i++)
                {
                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp0 = (tmp0<<8) + GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    sample_printf("CA system ID=%d ", tmp0);
                }
                sample_printf("\n");
                break;
            case 0x59://Subtitle
                sample_printf("Subtitle: ");
                for(i=0; i<desc_len/8; i++)
                {
                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp2 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    sample_printf("Language=%c%c%c ", tmp0, tmp1, tmp2);

                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    if(tmp0 == 1)
                        sample_printf("Subtitle=EBU VBI ");
                    else if(tmp0 == 2)
                        sample_printf("Subtitle=Relatvie EBU VBI ");
                    else if(tmp0 == 3)
                        sample_printf("Subtitle=VBI Data");
                    else if(tmp0 == 0x10)
                        sample_printf("Subtitle=DVB No AspectRate ");
                    else if(tmp0 == 0x11)
                        sample_printf("Subtitle=DVB 4:3 ");
                    else if(tmp0 == 0x12)
                        sample_printf("Subtitle=DVB 16:9 ");
                    else if(tmp0 == 0x13)
                        sample_printf("Subtitle=DVB 2.21:1  ");
                    else if(tmp0 == 0x20)
                        sample_printf("Subtitle=DVB Disable No AspectRate ");
                    else if(tmp0 == 0x21)
                        sample_printf("Subtitle=DVB Disable 4:3 ");
                    else if(tmp0 == 0x22)
                        sample_printf("Subtitle=DVB Disable 16:9 ");
                    else if(tmp0 == 0x23)
                        sample_printf("Subtitle=DVB Disable 2.21:1 ");
                    else
                        sample_printf("Subtitle=Other ");

                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp0 = (tmp0<<8) + tmp1;
                    sample_printf("Page ID=%d ", tmp0);

                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp0 = (tmp0<<8) + tmp1;
                    sample_printf("SecondPage ID=%d ", tmp0);
                }
                sample_printf("\n");
                break;
            case 0x65://Scrambling
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                if(tmp0 >= 0x01 && tmp0 <= 0x7F)
                    sample_printf("ScambleMode: DVB Defined");
                else if(tmp0 >= 0x80 && tmp0 <= 0xFE)
                    sample_printf("ScambleMode: User Defined");
                else
                    sample_printf("ScambleMode: Other");
                sample_printf("\n");
                break;
            case 0x02://video stream
                sample_printf("Video Stream:");
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                if( (tmp0 & 0x80) != 0 )
                    sample_printf("Mutli Frame Rate");
                else
                    sample_printf("Single Frame Rate ");

                if( (tmp0 & 0x04) != 0 )
                    sample_printf("Only Include MPEG1 ");
                else
                    sample_printf("More than include MPEG1 ");

                if( (tmp0 & 0x02) != 0 )
                    sample_printf("Limit Video Param ");
                else
                    sample_printf("Un-limit Video Param ");

                if( (tmp0 & 0x01) != 0 )
                    sample_printf("Only include freeze picture ");
                else
                    sample_printf("More than freeze picture ");

                if( (tmp0 & 0x04) == 0 )
                {
                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                }
                sample_printf("\n");
                break;
            case 0x03://audio stream
                sample_printf("Audio Stream0x03:");
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                sample_printf("\n");
                break;
            case 0x06://data stream alignment
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                if(para == NULL)
                {
                    sample_printf("Sync mode:(Error) ");
                }
                else
                {
                    if(para[0] == 0)//Audio
                    {
                        if(tmp0 == 1)
                            sample_printf("Sync mode: SyncByte");
                        else
                            sample_printf("Sync mode: Other");
                    }
                    else//Video
                    {
                        if(tmp0 == 1)
                            sample_printf("Sync mode: Slice/Vidoe AccessUnit");
                        else if(tmp0 == 2)
                            sample_printf("Sync mode: Vidoe AccessUnit");
                        else if(tmp0 == 3)
                            sample_printf("Sync mode: GOP/SEQ");
                        else if(tmp0 == 4)
                            sample_printf("Sync mode: SEQ");
                        else
                            sample_printf("Sync mode: Other");
                    }
                }
                sample_printf("\n");
                break;
            case 0x0A://language
                sample_printf("Language0x0A: ");
                for(i=0; i<desc_len/4; i++)
                {
                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    tmp2 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    sample_printf("Language=%c%c%c ", tmp0, tmp1, tmp2);

                    tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    if(tmp0 == 1)
                        sample_printf("AudioType=NoLanguage ");
                    else if(tmp0 == 2)
                        sample_printf("AudioType=Disable A ");
                    else if(tmp0 == 3)
                        sample_printf("AudioType=Disable V ");
                    else
                        sample_printf("AudioType=Other ");
                }
                sample_printf("\n");
                break;
            case 0x0b://system clock
                sample_printf("System clock: ");
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                if((tmp0 & 0x80) != 0)
                    sample_printf("External clock ");
                else
                    sample_printf("Internal clock ");

                sample_printf("precision 1=%d ", tmp0 & 0x3F);

                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                sample_printf("precision 2 =%d ", (tmp0 & 0xE0)>>5);
                sample_printf("\n");
                break;
            case 0x52://Stream ID
                sample_printf("Stream ID: %d", GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft));
                sample_printf("\n");
                break;
            case 0x6a:
                sample_printf("AC3 Flag: ");
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp3 = desc_len;
                tmp3 --;
                if( (tmp0 & 0x80) == 0x80)
                {
                    tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    sample_printf("Compoment Type=%d ", tmp1);
                    tmp3 --;
                }
                if( (tmp0 & 0x80) == 0x40)
                {
                    tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    sample_printf("bsid=%d ", tmp1);
                    tmp3 --;
                }
                if( (tmp0 & 0x80) == 0x20)
                {
                    tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    sample_printf("mainid=%d ", tmp1);
                    tmp3 --;
                }
                if( (tmp0 & 0x80) == 0x10)
                {
                    tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                    sample_printf("asvc=%d ", tmp1);
                    tmp3 --;
                }
                if(tmp3 > 0)
                {
                    sample_printf("Other Message=");
                    for(i=0; i<tmp3; i++)
                    {
                        tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                        sample_printf(" %d", tmp1);
                    }
                }
                sample_printf("\n");
                break;
            case 0x0e://MAX bitrate
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp2 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp0 = ((tmp0&0x3F)<<16) + (tmp1<<8) + tmp2;
                sample_printf("MAX Bitrate=%d", tmp0*50);
                sample_printf("\n");
                break;
            case 0x0f://private data indicator
                tmp0 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp1 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp2 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                tmp3 = GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft);
                sample_printf("Private Data indicator=0x%02x 0x%02x 0x%02x 0x%02x", tmp0, tmp1, tmp2, tmp3);
                sample_printf("\n");
                break;
            default:
#if 0
                sample_printf("Unknow tag:0x%02x length:0x%02x ", desc_tag, desc_len);
                for(i=0; i<desc_len; i++)
                {
                    sample_printf("0x%02x ", GetNextSecChar(FifiSrc, pidnum, tsnum, bytesleft));
                    if((i + 1) % 16 == 0)
                    {
                        sample_printf("\n");
                    }
                }
                sample_printf("\n");
#endif
                break;
        }

        Descbyteleft -= desc_len + 2;
    }

    sample_printf("\n");
}

int ParseFIFO_TSStream(unsigned char *buffer, unsigned int length, int *PCR_PID, int *VELEMENT_PID, int *AELEMENT_PID, int *VIDEO_TYPE, int *AUDIO_TYPE)
{
    FILEHandle FifiSrc;
    int tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmpflag, TSLEN, pid;
    int seclen, prognum, progpid, curcc, adpt, tabid, tmpid;
    int i, j, k, CurPid, curlen, leftsecbytes, tsnum, bytesleft;
    unsigned long offset=0, curpos=0, Firstoffset=0, fsize;
    unsigned long  packnum=0, curpercent;
    int actprognum=0, percentflag[10];
    
    for(i=0; i<10; i++)
        percentflag[i]=0;

    for(i=0; i<MAX_PID_NUM; i++)
    {
        PidStat[i].pid = 0xffff;
        PidStat[i].num = 0;
        PidStat[i].CurCC = 0x10;
        PidStat[i].type = PIDTYPE_BUTT;
        for(j=0; j<TOP_PACK_NUM; j++)
            PidStat[i].TopTSInfo[j].TSOffset = 0xffffffff;
    }

    for(i=0; i<MAX_PROG_NUM; i++)
    {
        PatTab[i].prognum = 0xffffffff;
        PatTab[i].prognum = 0xffffffff;
    }    
    
    fsize = length;
    FifiSrc = FIFOCreate(buffer, fsize);

    /**********TS stream parser**********/
    sample_printf("Seaching TS Sync Byte...");

    if(FindSyncByte(FifiSrc, (long *)&Firstoffset, &TSLEN) == -1)
    {
        sample_printf("  It is not a TS file!\n");
        return -1;
    }

    if(Firstoffset > 1)
        sample_printf("  %d Invaild bytes before first SyncByte\n", (int)(Firstoffset-1));

    sample_printf("  TSPack length: %d.\n", TSLEN);

    FIFOrewind(FifiSrc);
    FIFOseek(FifiSrc, Firstoffset-1, 0);

    tmp0 = FIFOgetc(FifiSrc);
    while(!FIFOeof(FifiSrc))
    {
        if(tmp0 != 0x47)
        {
            curpos = FIFOtell(FifiSrc);
            sample_printf("  Sync Byte lost, offset:0x%lx, %ldth tspack, CurrentByte:0x%x.\n", curpos-1, packnum, tmp0);
            //find sync byte again
            if(FindSyncByte(FifiSrc, (long *)&offset, &TSLEN) == -1)
            {
                sample_printf("  Warring:TS pack has Un-SyncByte data, can not parse.\n");
                break;
            }

            FIFOrewind(FifiSrc);
            FIFOseek(FifiSrc, offset-1, 0);
            tmp0 = FIFOgetc(FifiSrc);
            continue;
        }
        
        curpos = FIFOtell(FifiSrc) - 1;

        if(curpos >= 0x7FFF0000)
            break;

        tmp1 = FIFOgetc(FifiSrc);
        tmp2 = FIFOgetc(FifiSrc);

        tmp3 = FIFOgetc(FifiSrc);
        adpt = (tmp3 & 0x30) >> 4;
        curcc = tmp3 & 0x0f;

        pid = ( (tmp1 & 0x001f) << 8 ) + tmp2;

        if( (tmp1 & 0x80) != 0)
            sample_printf("  Warring: transport_error_indecator occur, offset:0x%lx¡£%ldth TSpack. PID = 0X%X.\n", curpos, packnum, pid);

        tmp4 = FIFOgetc(FifiSrc);

        for(i=0; i<MAX_PID_NUM; i++)
        {
            if(PidStat[i].pid == 0xffff)
            {
                PidStat[i].pid = pid;
                break;
            }
            if(pid == PidStat[i].pid)
                break;
        }
        if(i < MAX_PID_NUM)
        {
            if(PidStat[i].pid != 0x1fff)
            {
                if(PidStat[i].CurCC != 0x10)
                {
                    if( curcc == PidStat[i].CurCC )
                    {
                        if(adpt == 0x01 || adpt == 0x03)
                            sample_printf("  repeated TSpack:offset:0x%lx,%ldth TSpatck,PID = 0X%X.\n", curpos, packnum, pid);
                    }
                    else if( curcc != ((PidStat[i].CurCC + 1)&0x0f) )
                        sample_printf("  Error CC, offset:0x%lx%ldth TSpatck,PID = 0X%X.\n", curpos, packnum, pid);
                }
                PidStat[i].CurCC = curcc;
            }

            if(PidStat[i].num < TOP_PACK_NUM)
            {
                PidStat[i].TopTSInfo[PidStat[i].num].TSOffset = curpos;

                if( (tmp1 & 0x40) != 0)
                    PidStat[i].TopTSInfo[PidStat[i].num].PayloadInd = 1;
                else
                    PidStat[i].TopTSInfo[PidStat[i].num].PayloadInd = 0;

                if( (tmp3 & 0x20) != 0)
                    PidStat[i].TopTSInfo[PidStat[i].num].PayloadOffset = 5 + tmp4;//payload just after adaption field
                else
                    PidStat[i].TopTSInfo[PidStat[i].num].PayloadOffset = 4;//payload just after CC
            }

            PidStat[i].num ++;
        }

        FIFOseek(FifiSrc, 183, 1);

        if(TSLEN == 204)
            FIFOseek(FifiSrc, 16, 1);

        if(fsize > 0)
        {
            curpercent = curpos / (fsize/10);
            if( (curpercent < 10) && (percentflag[curpercent] == 0) )
            {
                sample_printf(" %01ld0%% ", curpercent);
                percentflag[curpercent] = 1;
            }
        }

        tmp0 = FIFOgetc(FifiSrc);

        packnum++;      
    }
    sample_printf("\n");
    sample_printf("OK\n");


    /**********PAT**********/
    sample_printf("Parsing PAT Table ....");

    sample_printf("\n2. PAT Message\n");

    for(i=0; i<MAX_PID_NUM; i++)
    {
        if(PidStat[i].pid == PAT_PID)
            break;
    }

    if(i < MAX_PID_NUM)
    {
        PidStat[i].type = PAT;
        reset_sec_info();
        tmp6 = 0;
        actprognum = 0;

        while(1)
        {
            if(tmp6 >= TOP_PACK_NUM)
            {
                sample_printf("OK\n");
                break;
            }
            
            if(PidStat[i].TopTSInfo[tmp6].PayloadInd == 0)//no section start
            {
                tmp6++;
                continue;
            }

            FIFOrewind(FifiSrc);
            FIFOseek(FifiSrc, PidStat[i].TopTSInfo[tmp6].TSOffset + PidStat[i].TopTSInfo[tmp6].PayloadOffset, 0);
            bytesleft = 188- PidStat[i].TopTSInfo[tmp6].PayloadOffset;
            tmp0 = FIFOgetc(FifiSrc);//point byte
            bytesleft --;

            tabid = FIFOgetc(FifiSrc);
            seclen = FIFOgetc(FifiSrc) & 0x0f;
            seclen = (seclen<<8) + FIFOgetc(FifiSrc);
            bytesleft -= 3;

            tmpid = FIFOgetc(FifiSrc);
            tmpid = (tmpid <<8) + FIFOgetc(FifiSrc);

            FIFOseek(FifiSrc, 1, 1);

            curr_sec_num = FIFOgetc(FifiSrc);
            last_sec_num = FIFOgetc(FifiSrc);

            if(sec_status[curr_sec_num] == 1)//Repeat to receive Section
            {
                if( seclen > bytesleft )
                {
                    tmp6 ++;
                    seclen -= bytesleft;
                }

                while(seclen >= 0)
                {
                    tmp6 ++;

                    if(seclen > (188-PidStat[i].TopTSInfo[tmp6].PayloadOffset))
                        seclen -= 188-PidStat[i].TopTSInfo[tmp6].PayloadOffset;
                    else
                        break;
                }
                continue;
            }
            else
            {
                sample_printf("  Table ID: 0x%02x.\n", tabid);
                sample_printf("  TS ID   : 0x%04x.\n", tmpid);
                sec_status[curr_sec_num] = 1;
            }

            bytesleft -= 8;
            tsnum = tmp6;

            tmp5 = 0;
            for(j=0; j<(seclen-9)/4; j++)
            {
                prognum = GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                prognum = (prognum<<8) + GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                progpid = GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                progpid = (progpid<<8) + GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                progpid &= 0x1fff;

                PatTab[actprognum + j].prognum = prognum;
                PatTab[actprognum + j].progpid = progpid;

                tmp5 ++;
                
                if(prognum == 0)
                    sample_printf("  Programnum = %5d,  Network PID  = 0x%04x.\n", prognum, progpid);
                else
                    sample_printf("  Programnum = %5d,  PMT PID = 0x%04x.\n", prognum, progpid);
            }
            actprognum += tmp5;

            tmp6 = tsnum + 1;

            for(k=0; k<= last_sec_num; k++)
            {
                if(sec_status[k] == 0)
                    break;
            }

            if(k <= last_sec_num)
                continue;
                
            sample_printf("OK\n");
            break;
        }
    }
    else
    {
        sample_printf("Not Found\n");
    }
    sample_printf("\n");


	

    /**********CAT**********/
    sample_printf("Parsing CAT ...");

    sample_printf("\n3. CAT Message:\n");

    for(i=0; i<MAX_PID_NUM; i++)
    {
        if(PidStat[i].pid == CAT_PID)
            break;
    }

    if(i < MAX_PID_NUM)
    {
        PidStat[i].type = CAT;
        reset_sec_info();
        tmp6 = 0;

        while(1)
        {
            if(tmp6 >= TOP_PACK_NUM)
            {
                sample_printf("OK\n");
                break;
            }

            if(PidStat[i].TopTSInfo[tmp6].PayloadInd == 0)//no section start
            {
                tmp6++;
                continue;
            }

            FIFOrewind(FifiSrc);
            FIFOseek(FifiSrc, PidStat[i].TopTSInfo[tmp6].TSOffset + PidStat[i].TopTSInfo[tmp6].PayloadOffset, 0);
            bytesleft = 188- PidStat[i].TopTSInfo[tmp6].PayloadOffset;
            tmp0 = FIFOgetc(FifiSrc);//point byte
            bytesleft --;

            tabid = FIFOgetc(FifiSrc);
            seclen = FIFOgetc(FifiSrc) & 0x0f;
            seclen = (seclen<<8) + FIFOgetc(FifiSrc);

            FIFOseek(FifiSrc, 3, 1);
            curr_sec_num = FIFOgetc(FifiSrc);
            last_sec_num = FIFOgetc(FifiSrc);

            if(sec_status[curr_sec_num] == 1)//Repeat to receive Section
            {
                if( seclen > bytesleft )
                {
                    tmp6 ++;
                    seclen -= bytesleft;
                }

                while(seclen >= 0)
                {
                    tmp6 ++;

                    if(seclen > (188-PidStat[i].TopTSInfo[tmp6].PayloadOffset))
                        seclen -= 188-PidStat[i].TopTSInfo[tmp6].PayloadOffset;
                    else
                        break;
                }
                continue;
            }
            else
            {
                sample_printf("  Table ID: 0x%02x.\n", tabid);
                sec_status[curr_sec_num] = 1;
            }

            tsnum = tmp6;
            bytesleft -= 8;

            sample_printf("  CAMessage: ");
            DescParse(FifiSrc, seclen-9, i, CAT, &tsnum, &bytesleft, NULL);

            tmp6 = tsnum + 1;

            for(k=0; k<= last_sec_num; k++)
            {
                if(sec_status[k] == 0)
                    break;
            }

            if(k <= last_sec_num)
                continue;

            sample_printf("OK\n");
            break;
        }
    }
    else
    {
        sample_printf("Not Found\n");
    }
    sample_printf("\n");
    
    /**********PMT**********/
    sample_printf("Paring PMT Table ...");
    sample_printf("\n4. PMT Message:\n");

    tmpflag = 0;
    for(i=0; i<actprognum; i++)
    {
        if(PatTab[i].prognum == 0)
            continue;
        
        for(j=0; j<MAX_PID_NUM; j++)
        {
            if(PidStat[j].pid == PatTab[i].progpid)
                break;
        }

        if(j >= MAX_PID_NUM)
            continue;

        tmpflag = 1;
        PidStat[j].type = PMT;
        reset_sec_info();
        tmp6 = 0;

        while(1)
        {
            if(tmp6 >= TOP_PACK_NUM)
                break;

            if(PidStat[j].TopTSInfo[tmp6].PayloadInd == 0)//no section start
            {
                tmp6++;
                continue;
            }

            FIFOrewind(FifiSrc);
            FIFOseek(FifiSrc, PidStat[j].TopTSInfo[tmp6].TSOffset + PidStat[j].TopTSInfo[tmp6].PayloadOffset, 0);
            bytesleft = 188- PidStat[j].TopTSInfo[tmp6].PayloadOffset;
            tmp0 = FIFOgetc(FifiSrc);//point byte
            bytesleft --;

            tabid = FIFOgetc(FifiSrc);
            seclen = FIFOgetc(FifiSrc) & 0x0f;
            seclen = (seclen<<8) + FIFOgetc(FifiSrc);
            tmpid = FIFOgetc(FifiSrc);
            tmpid = (tmpid<<8) + FIFOgetc(FifiSrc);

            FIFOseek(FifiSrc, 1, 1);

            curr_sec_num = FIFOgetc(FifiSrc);
            last_sec_num = FIFOgetc(FifiSrc);

            if(sec_status[curr_sec_num] == 1)//Repeat to receive Section
            {
                if( seclen > bytesleft )
                {
                    tmp6 ++;
                    seclen -= bytesleft;
                }

                while(seclen >= 0)
                {
                    tmp6 ++;

                    if(seclen > (188-PidStat[j].TopTSInfo[tmp6].PayloadOffset))
                        seclen -= 188-PidStat[j].TopTSInfo[tmp6].PayloadOffset;
                    else
                        break;
                }
                continue;
            }
            else
            {
                sample_printf("  Table ID: 0x%02x.\n", tabid );
                sample_printf("  program num : %5d.\n", tmpid);
                sec_status[curr_sec_num] = 1;
            }
            
            bytesleft -= 8;
            tsnum = tmp6;

            CurPid = FIFOgetc(FifiSrc) & 0x1f;
            CurPid = (CurPid<<8) + FIFOgetc(FifiSrc);
            sample_printf("  PCR Pid : 0x%02x.\n", CurPid);
            *PCR_PID = CurPid;

            sample_printf("  Program meesage: ");
            curlen = FIFOgetc(FifiSrc) & 0x0f;
            curlen = (curlen<<8) + FIFOgetc(FifiSrc);
			sample_printf("curlen = 0x%x\n",curlen);
            bytesleft -= 4 ;
#if 0
            DescParse(FifiSrc, curlen, j, PMT, &tsnum, &bytesleft, NULL);
#else		
{
			int index;
			for(index = 0; index < curlen; index ++)
			{
				GetNextSecChar(FifiSrc, j, &tsnum, &bytesleft);
			}
}			
#endif
            leftsecbytes = (seclen + 3) - 12 - 4 - curlen;
			sample_printf("seclen:%d, curlen:%d, leftsecbytes:%d\n", seclen, curlen, leftsecbytes);
            while(leftsecbytes >= 5)
            {
                tmp0 = GetNextSecChar(FifiSrc, j, &tsnum, &bytesleft);
                if(tmp0 < MAX_STR_TYPE)
                {
                    if( streamtype[tmp0][0] == '*' )
                        sample_printf("    Stream Type: %9d. ", tmp0);
                    else
                        sample_printf("    Stream Type: %s. ", streamtype[tmp0]);
                }
                else
                    sample_printf("    Stream Type: %9d. ", tmp0);
                
                CurPid = GetNextSecChar(FifiSrc, j, &tsnum, &bytesleft) & 0x1f;
                CurPid = (CurPid<<8) + GetNextSecChar(FifiSrc, j, &tsnum, &bytesleft);
                sample_printf("  Stream PID : 0x%04x. ", CurPid);
#if 0
                if((tmp0 == 0x01) || (tmp0 == 0x02))
                {
                   // *VIDEO_TYPE = tmp0;
                   // *VELEMENT_PID  = CurPid;
                }
                else if(tmp0 == 0x1b)
                {
                   // *VIDEO_TYPE = tmp0;
                   // *VELEMENT_PID  = CurPid;
                }
                
                if((tmp0 == 0x03) || (tmp0 == 0x04))
                {
                   // *AUDIO_TYPE = tmp0;
                    //*AELEMENT_PID  = CurPid;
                }
#endif				
                for(k=0; k<MAX_PID_NUM; k++)
                {
                    if(PidStat[k].pid == CurPid)
                    {
                    
                        switch(tmp0)
                        {
                            case 0:
                                PidStat[k].type = RSVD;
                                break;
                            case 1:
                            case 2:
                            case 27:
								sample_printf("\n*******VIDEO begin**********\n");
								sample_printf("PidStat[k].pid == CurPid\n");
								sample_printf("CurPid = 0x%x,tmp0 = %d\n",CurPid,tmp0);
								*VIDEO_TYPE = tmp0;
								*VELEMENT_PID  = CurPid;
                                PidStat[k].type = VIDEO;
								sample_printf("*******VIDEO end**********\n");
                                break;
                            case 3:
                            case 4:
								sample_printf("\n*******AUDIO begin**********\n");
								*AUDIO_TYPE = tmp0;
								*AELEMENT_PID = CurPid;
                                PidStat[k].type = AUDIO;
								sample_printf("PidStat[k].pid == CurPid\n");
								sample_printf("CurPid = 0x%x,tmp0 = %d\n",CurPid,tmp0);
								sample_printf("*******AUDIO end**********\n");
                                break;
                            case 5:
                            case 6:
                                PidStat[k].type = PRIVATE;
                                break;
                            case 7:
                                PidStat[k].type = MHEG;
                                break;
                            case 8:
                                PidStat[k].type = DSM_CC;
                                break;
                            case 9:
                                PidStat[k].type = H222;
                                break;
                            default:
                                PidStat[k].type = RSVD;
                                break;
                        }
                        break;
                    }
                }
                
                curlen = GetNextSecChar(FifiSrc, j, &tsnum, &bytesleft) & 0x0f;
                curlen = (curlen<<8) + GetNextSecChar(FifiSrc, j, &tsnum, &bytesleft);

//GetNextSecChar(FILEHandle FifiSrc, int pidnum, int *tsnum, int *leftbytes)

#if 1
{
	int index;
	//sample_printf("curlen = %d, leftsecbytes:%d\n",curlen, leftsecbytes);
	
	for(index = 0; index < curlen; index ++)
	{
		GetNextSecChar(FifiSrc, j, &tsnum, &bytesleft);
	}
    leftsecbytes -= curlen + 5;
}
#else


				
                sample_printf("  Stream Message: ");

                if(tmp0 == 3 || tmp0 == 4)
                {
                    para[0] = 0;
                    DescParse(FifiSrc, curlen, j, PMT, &tsnum, &bytesleft, para);
                }
                else if(tmp0 == 1 || tmp0 == 2 || tmp0 == 27)
                {
                    para[0] = 1;
                    DescParse(FifiSrc, curlen, j, PMT, &tsnum, &bytesleft, para);
                }
                else
                    DescParse(FifiSrc, curlen, j, PMT, &tsnum, &bytesleft, NULL);

                leftsecbytes -= curlen + 5;
            }
            sample_printf("\n");
#endif			
        	}
            tmp6 = tsnum + 1;

            for(k=0; k<= last_sec_num; k++)
            {
                if(sec_status[k] == 0)
                    break;
            }

            if(k <= last_sec_num)
                continue;

            break;
        }
    }
    if(tmpflag == 1)
        sample_printf("OK\n");
    else
    {
        sample_printf("Not Found\n");
    }
	
#if 0	
	sample_printf("Pid table:\n");
	for(k=0; k<MAX_PID_NUM; k++)
	{
	    sample_printf("index:%002d, PID:0x%x\n", k, PidStat[k].pid);
	}
#endif

	//return ;
#if 0
    /**********NIT analysis**********/
    sample_printf("Parsing NIT...");

    sample_printf("\n5. NIT Message:\n");

    for(i=0; i<MAX_PID_NUM; i++)
    {
        if(PidStat[i].pid == NIT_PID)
            break;
    }

    if(i < MAX_PID_NUM)
    {
        PidStat[i].type = NIT;
        reset_sec_info();
        tmp6 = 0;

        while(1)
        {
            if(tmp6 >= TOP_PACK_NUM)
            {
                sample_printf("OK\n");
                break;
            }

            if(PidStat[i].TopTSInfo[tmp6].PayloadInd == 0)//no section start
            {
                tmp6++;
                continue;
            }

            FIFOrewind(FifiSrc);
            FIFOseek(FifiSrc, PidStat[i].TopTSInfo[tmp6].TSOffset + PidStat[i].TopTSInfo[tmp6].PayloadOffset, 0);
            bytesleft = 188- PidStat[i].TopTSInfo[tmp6].PayloadOffset;
            tmp0 = FIFOgetc(FifiSrc);//point byte
            bytesleft --;

            tabid = FIFOgetc(FifiSrc);
            seclen = FIFOgetc(FifiSrc) & 0x0f;
            seclen = (seclen<<8) + FIFOgetc(FifiSrc);
            tmpid = FIFOgetc(FifiSrc);
            tmpid = (tmpid<<8) + FIFOgetc(FifiSrc);

            FIFOseek(FifiSrc, 1, 1);

            curr_sec_num = FIFOgetc(FifiSrc);
            last_sec_num = FIFOgetc(FifiSrc);

            if(sec_status[curr_sec_num] == 1)//Repeat to receive Section
            {
                if( seclen > bytesleft )
                {
                    tmp6 ++;
                    seclen -= bytesleft;
                }

                while(seclen >= 0)
                {
                    tmp6 ++;

                    if(seclen > (188-PidStat[i].TopTSInfo[tmp6].PayloadOffset))
                        seclen -= 188-PidStat[i].TopTSInfo[tmp6].PayloadOffset;
                    else
                        break;
                }
                continue;
            }
            else
            {
                sample_printf("  Table ID: 0x%02x.\n", tabid);
                sample_printf("  Network ID: 0x%04x.\n", tmpid);
                sec_status[curr_sec_num] = 1;
            }

            bytesleft -= 8;
            tsnum = tmp6;

            curlen = FIFOgetc(FifiSrc) & 0x0f;
            curlen = (curlen<<8) + FIFOgetc(FifiSrc);
            bytesleft -= 2;

            sample_printf("  NetworkMessage: ");

            DescParse(FifiSrc, curlen, i, PMT, &tsnum, &bytesleft, NULL);

            leftsecbytes = GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft) & 0x0f;
            leftsecbytes = (leftsecbytes<<8) + GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);

            while(leftsecbytes >= 6)
            {
                tmp0 = GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                tmp0 = (tmp0<<8) + GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                sample_printf("    TS ID:     0x%04x.\n", tmp0);
                
                tmp0 = GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                tmp0 = (tmp0<<8) + GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                sample_printf("    Orignal Network ID: 0x%04x.\n", tmp0);

                sample_printf("    TS Message:   ");
                curlen = GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft) & 0x0f;
                curlen = (curlen<<8) + GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);

                DescParse(FifiSrc, curlen, i, PMT, &tsnum, &bytesleft, NULL);

                leftsecbytes -= curlen + 6;
            }

            tmp6 = tsnum + 1;

            for(k=0; k<= last_sec_num; k++)
            {
                if(sec_status[k] == 0)
                    break;
            }

            if(k <= last_sec_num)
                continue;

            sample_printf("OK\n");
            break;
        }
    }
    else
    {
        sample_printf("Not Found\n");
    }

#endif
#if 0
    /**********Current SDT**********/
    sample_printf("Parsing SDT Table ...");

    sample_printf("\n6. Current SDT Message: \n");

    for(i=0; i<MAX_PID_NUM; i++)
    {
        if(PidStat[i].pid == SDT_PID)
            break;
    }

    if(i < MAX_PID_NUM)
    {
        PidStat[i].type = SDT;
        reset_sec_info();
        tmp6 = 0;
        tmpflag = 0;

        while(tmpflag != 1)
        {
            if(tmp6 >= TOP_PACK_NUM)
            {
                if(tmpflag == 1)
                    sample_printf("OK\n");
                else
                {
                    sample_printf("Not Found\n");
                }
                break;
            }

            if(PidStat[i].TopTSInfo[tmp6].PayloadInd == 0)//no section start
            {
                tmp6++;
                continue;
            }

            FIFOrewind(FifiSrc);
            FIFOseek(FifiSrc, PidStat[i].TopTSInfo[tmp6].TSOffset + PidStat[i].TopTSInfo[tmp6].PayloadOffset, 0);
            bytesleft = 188- PidStat[i].TopTSInfo[tmp6].PayloadOffset;
            tmp0 = FIFOgetc(FifiSrc);//point byte
            bytesleft --;

            tmp0 = FIFOgetc(FifiSrc);
            if(tmp0 != 0x42)//Current SDT
            {
                seclen = FIFOgetc(FifiSrc) & 0x0f;
                seclen = (seclen<<8) + FIFOgetc(FifiSrc);
                if( seclen > bytesleft )
                {
                    tmp6 ++;
                    seclen -= bytesleft;
                }

                while(seclen >= 0)
                {
                    tmp6 ++;

                    if(seclen > (188-PidStat[i].TopTSInfo[tmp6].PayloadOffset))
                        seclen -= 188-PidStat[i].TopTSInfo[tmp6].PayloadOffset;
                    else
                        break;
                }
                continue;
            }

            tmpflag = 1;

            tabid = tmp0;
            seclen = FIFOgetc(FifiSrc) & 0x0f;
            seclen = (seclen<<8) + FIFOgetc(FifiSrc);
            tmpid = FIFOgetc(FifiSrc);
            tmpid = (tmpid<<8) + FIFOgetc(FifiSrc);

            FIFOseek(FifiSrc, 1, 1);

            curr_sec_num = FIFOgetc(FifiSrc);
            last_sec_num = FIFOgetc(FifiSrc);

            if(sec_status[curr_sec_num] == 1)//Repeat to receive  Section
            {
                if( seclen > bytesleft )
                {
                    tmp6 ++;
                    seclen -= bytesleft;
                }

                while(seclen >= 0)
                {
                    tmp6 ++;

                    if(seclen > (188-PidStat[i].TopTSInfo[tmp6].PayloadOffset))
                        seclen -= 188-PidStat[i].TopTSInfo[tmp6].PayloadOffset;
                    else
                        break;
                }
                continue;
            }
            else
            {
                sample_printf("  Table ID    : 0x%02x.\n", tabid);
                sample_printf("  TS  ID      : 0x%04x.\n", tmpid);
                sec_status[curr_sec_num] = 1;
            }

            tmp0 = FIFOgetc(FifiSrc);
            tmp0 = (tmp0<<8) + FIFOgetc(FifiSrc);
            sample_printf("  Orignal Network ID  : 0x%04x.\n", tmp0);

            FIFOseek(FifiSrc, 1, 1);
        
            bytesleft -= 11;
            tsnum = tmp6;

            leftsecbytes = seclen - 12;

            while(leftsecbytes >= 5)
            {
                tmp0 = GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                tmp0 = (tmp0<<8) + GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                sample_printf("    Program ID      : %5d.\n", tmp0);
        
                tmp0 = GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                tmp0 = GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                sample_printf("    Program Running status: %s.\n", progstatus[tmp0>>5]);
                if( (tmp0 & 0x10) != 0)
                    sample_printf("    CA  : scambled.\n");
                else
                    sample_printf("    CA  : No scambled .\n");

                sample_printf("    Program Message    : ");
                curlen = tmp0 & 0x0f;
                curlen = (curlen<<8) + GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);

                DescParse(FifiSrc, curlen, i, SDT, &tsnum, &bytesleft, NULL);

                leftsecbytes -= curlen + 5;
            }

            tmp6 = tsnum + 1;

            for(k=0; k<= last_sec_num; k++)
            {
                if(sec_status[k] == 0)
                    break;
            }

            if(k <= last_sec_num)
                continue;

            sample_printf("OK\n");
            break;
        }
    }
    else
    {
        sample_printf("Not Found\n");
    }
#endif

#if 0

    /**********Other SDT**********/
    sample_printf("Parsing other SDT Table...");

    sample_printf("\n7. Other SDT Message:\n");

    for(i=0; i<MAX_PID_NUM; i++)
    {
        if(PidStat[i].pid == SDT_PID)
            break;
    }

    if(i < MAX_PID_NUM)
    {
        PidStat[i].type = SDT;
        reset_sec_info();
        tmp6 = 0;
        tmpflag = 0;

        while(tmpflag != 1)
        {
            if(tmp6 >= TOP_PACK_NUM)
            {
                if(tmpflag == 1)
                    sample_printf("OK\n");
                else
                {
                    sample_printf("Not Found\n");
                }
                break;
            }

            FIFOrewind(FifiSrc);
            FIFOseek(FifiSrc, PidStat[i].TopTSInfo[tmp6].TSOffset + PidStat[i].TopTSInfo[tmp6].PayloadOffset, 0);
            bytesleft = 188- PidStat[i].TopTSInfo[tmp6].PayloadOffset;
            tmp0 = FIFOgetc(FifiSrc);//point byte
            bytesleft --;

            tmp0 = FIFOgetc(FifiSrc);
            if(tmp0 != 0x46)//Other SDT
            {
                seclen = FIFOgetc(FifiSrc) & 0x0f;
                seclen = (seclen<<8) + FIFOgetc(FifiSrc);
                if( seclen > bytesleft )
                {
                    tmp6 ++;
                    seclen -= bytesleft;
                }

                while(seclen >= 0)
                {
                    tmp6 ++;

                    if(seclen > (188-PidStat[i].TopTSInfo[tmp6].PayloadOffset))
                        seclen -= 188-PidStat[i].TopTSInfo[tmp6].PayloadOffset;
                    else
                        break;
                }
                continue;
            }

            tmpflag = 1;

            tabid = tmp0;
            seclen = FIFOgetc(FifiSrc) & 0x0f;
            seclen = (seclen<<8) + FIFOgetc(FifiSrc);
            tmpid = FIFOgetc(FifiSrc);
            tmpid = (tmpid<<8) + FIFOgetc(FifiSrc);

            FIFOseek(FifiSrc, 1, 1);

            curr_sec_num = FIFOgetc(FifiSrc);
            last_sec_num = FIFOgetc(FifiSrc);

            if(sec_status[curr_sec_num] == 1)//Repeat to receive  Section
            {
                if( seclen > bytesleft )
                {
                    tmp6 ++;
                    seclen -= bytesleft;
                }

                while(seclen >= 0)
                {
                    tmp6 ++;

                    if(seclen > (188-PidStat[i].TopTSInfo[tmp6].PayloadOffset))
                        seclen -= 188-PidStat[i].TopTSInfo[tmp6].PayloadOffset;
                    else
                        break;
                }
                continue;
            }
            else
            {
                sample_printf("  Table ID    : 0x%02x.\n", tabid);
                sample_printf("  TS  ID      : 0x%04x.\n", tmpid);
                sec_status[curr_sec_num] = 1;
            }

            tmp0 = FIFOgetc(FifiSrc);
            tmp0 = (tmp0<<8) + FIFOgetc(FifiSrc);
            sample_printf("  Orignal network ID  : 0x%04x.\n", tmp0);

            FIFOseek(FifiSrc, 1, 1);
        
            bytesleft -= 11;
            tsnum = tmp6;

            leftsecbytes = seclen - 12;

            while(leftsecbytes >= 5)
            {
                tmp0 = GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                tmp0 = (tmp0<<8) + GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                sample_printf("    Program ID      : %5d.\n", tmp0);
        
                tmp0 = GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                tmp0 = GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);
                sample_printf("    Program Running status: %s.\n", progstatus[tmp0>>5]);
                if( (tmp0 & 0x10) != 0)
                    sample_printf("    CA  : scambled.\n");
                else
                    sample_printf("    CA  : No-scambled.\n");

                sample_printf("    Program message    : \n");
                curlen = tmp0 & 0x0f;
                curlen = (curlen<<8) + GetNextSecChar(FifiSrc, i, &tsnum, &bytesleft);

                DescParse(FifiSrc, curlen, i, SDT, &tsnum, &bytesleft, NULL);

                leftsecbytes -= curlen + 5;
            }

            tmp6 = tsnum + 1;

            for(k=0; k<= last_sec_num; k++)
            {
                if(sec_status[k] == 0)
                    break;
            }

            if(k <= last_sec_num)
                continue;

            sample_printf("OK\n");
            break;
        }
    }
    else
    {
        sample_printf("Not Found\n");
    }

    sample_printf("\n8. TSPack statistics: \n");
    for(i=0; i<MAX_PID_NUM; i++)
    {
        if(PidStat[i].pid != 0xffff)
        {
            sample_printf("  Pid = 0x%04x,   TSPackNum = %10d,   Percentage = ", PidStat[i].pid, PidStat[i].num);
            lTmp = PidStat[i].num * 100;
            tmp0 = lTmp / packnum;
            sample_printf("%02d.", tmp0);
            tmp1 = ((lTmp - (tmp0 * packnum)) * 100) / packnum;
            sample_printf("%02d%%   ", tmp1);
            switch(PidStat[i].pid)
            {
                case PAT_PID:
                    PidStat[i].type = PAT;
                    break;
                case CAT_PID:
                    PidStat[i].type = CAT;
                    break;
                case NIT_PID:
                    PidStat[i].type = NIT;
                    break;
                case SDT_PID:
                    PidStat[i].type = SDT;
                    break;
                case TSDT_PID:
                    PidStat[i].type = TSDT;
                    break;
                case EIT_PID:
                    PidStat[i].type = EIT;
                    break;
                case RST_PID:
                    PidStat[i].type = RST;
                    break;
                case TDT_TOT_PID:
                    PidStat[i].type = TDT_TOT;
                    break;
                case DIT_PID:
                    PidStat[i].type = DIT;
                    break;
                case SIT_PID:
                    PidStat[i].type = SIT;
                    break;
                case STUFF_PID:
                    PidStat[i].type = STUFF;
                    break;
                default:
                    break;
            }
            if(PidStat[i].type < PIDTYPE_BUTT)
                sample_printf("  Type: %s.\n", pidtypestr[PidStat[i].type] );
            else
            {
                FIFOrewind(FifiSrc);
                FIFOseek(FifiSrc, PidStat[i].TopTSInfo[0].TSOffset + 3, 0);
                tmp0 = FIFOgetc(FifiSrc);
                if( (tmp0 & 0x20) != 0)//adpt field exist
                {
                    tmp0 = FIFOgetc(FifiSrc);
                    FIFOseek(FifiSrc, tmp0, 1);
                }
                tmp0 = FIFOgetc(FifiSrc);
                tmp1 = FIFOgetc(FifiSrc);
                tmp2 = FIFOgetc(FifiSrc);
                tmp3 = FIFOgetc(FifiSrc);

                if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xBD)
                    sample_printf("  Type: Private_Stream_1.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xBF)
                    sample_printf("  Type: Private_Stream_2.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xF0)
                    sample_printf("  Type: ECM_Stream.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xF1)
                    sample_printf("  Type: EMM_Stream.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xF2)
                    sample_printf("  Type: DMSCC_Stream.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xF3)
                    sample_printf("  Type: 13552_Stream.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xF4)
                    sample_printf("  Type: H.222.1 Type A.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xF5)
                    sample_printf("  Type: H.222.1 Type B.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xF6)
                    sample_printf("  Type: H.222.1 Type C.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xF7)
                    sample_printf("  Type: H.222.1 Type D.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xF8)
                    sample_printf("  Type: H.222.1 Type E.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xF9)
                    sample_printf("  Type: Ancillary_Stream.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xFA)
                    sample_printf("  Type: SL_Packetized_Stream.\n");
                else if(tmp0==0x00 && tmp1==0x00 && tmp2==0x01 && tmp3==0xFB)
                    sample_printf("  Type: FlexMux_Stream.\n");
                else
                    sample_printf("  Type: Unknow.\n");
            }
        }
        else
            break;
    }
#endif

    FIFODelete();
    
    return 0;
}


#ifdef __PARSE_TSFILE__
void main(int argc, char *argv[])
{
    FILE *pFSrc;
    FILEHandle FifiSrc;
    unsigned char *tmpbuffer;
    unsigned long fsize;
    
    int PCR_PID = 0, VELEMENT_PID = 0, AELEMENT_PID = 0, VIDEO_TYPE = 0, AUDIO_TYPE = 0;

    if(argc != 2 )
    {
        printf("\nUsage: tsana tsFile\n");
        return;
    }

    pFSrc = fopen(argv[1],"rb");
    if(pFSrc == NULL)
    {
        sample_printf("Error: Can not open source file.\n");
        return;
    }

    rewind(pFSrc);

    fseek(pFSrc, 0, SEEK_END);
    fsize = ftell(pFSrc);
    rewind(pFSrc);
    //copy data to Gobal data
    tmpbuffer = (unsigned char *)malloc(fsize);
    if(tmpbuffer == NULL)
    {
        sample_printf("Error: Can not open source file.\n");
        fclose(pFSrc);
        return;
    }
    fread(tmpbuffer, 1, fsize, pFSrc);
    fclose(pFSrc);
#if 1
    {
        int index;
        sample_printf("\n");
        for(index = 0; index < 16; index ++)
        {
            sample_printf("0x%02x ", tmpbuffer[index]);
        }
        sample_printf("\n");
    }
#endif    
    ParseFIFO_TSStream(tmpbuffer, fsize, &PCR_PID, &VELEMENT_PID, &AELEMENT_PID, &VIDEO_TYPE, &AUDIO_TYPE);
    
    free(tmpbuffer);
    return;   
}

#endif
