#ifndef __TSANALYSE_H__
#define __TSANALYSE_H__

#define MAX_PID_NUM 64
#define MAX_PROG_NUM 16
#define TOP_PACK_NUM 128
#define MAX_STR_TYPE 32
#define MAX_PROG_STAT_TYPE 8
#define PAT_PID 0
#define CAT_PID 1
#define TSDT_PID 2
#define NIT_PID 16
#define SDT_PID 17
#define EIT_PID 18
#define RST_PID 19
#define TDT_TOT_PID 20
#define DIT_PID 30
#define SIT_PID 31
#define STUFF_PID 8191

enum _PidType
{
	PAT,
	CAT,
	NIT,
	PMT,
	SDT,
	EIT,
	VIDEO,
	AUDIO,
	PRIVATE,
	TDT_TOT,
    MHEG,
    DSM_CC,
    H222,
    TSDT,
    RST,
    DIT,
    SIT,
    RSVD,
	STUFF,
    ECM,
    EMM,
    PIDTYPE_BUTT
};

struct _TSPayloadInfo
{
    unsigned long TSOffset;
    int PayloadInd;
    int PayloadOffset;
};

struct _PidStat
{
	int pid;
	int num;
	enum _PidType type;
	int CurCC;
    struct _TSPayloadInfo TopTSInfo[TOP_PACK_NUM];
};

struct _PatTab
{
	int prognum;
	int progpid;
};

typedef unsigned int FILEHandle;
extern int ParseFIFO_TSStream(unsigned char *buffer, unsigned int length, int *PCR_PID, int *VELEMENT_PID,int *AELEMENT_PID, int *VIDEO_TYPE, int *AUDIO_TYPE);
#endif /*__TSANALYSE_H__*/
