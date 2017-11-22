
/****QOS reg address****/
#define PERI_QOS_GLOB_CTRL  0xf8a20040
#define PERI_QOS_CFG0       0xf8a20044
#define PERI_QOS_CFG1       0xf8a20048
#define PERI_QOS_CFG2       0xf8a2004c
#define PERI_QOS_CFG3       0xf8a20050
#define PERI_QOS_CFG4       0xf8a20054
#define PERI_QOS_CFG5       0xf8a20058
#define PERI_QOS_CFG6       0xf8a2005c
#define PERI_QOS_CFG7       0xf8a20060

#if    defined(CHIP_TYPE_hi3716cv200)   \
    || defined(CHIP_TYPE_hi3716mv400)   \
    || defined(CHIP_TYPE_hi3718cv100)   \
    || defined(CHIP_TYPE_hi3719cv100)   \
    || defined(CHIP_TYPE_hi3718mv100)   \
    || defined(CHIP_TYPE_hi3719mv100)   \
    || defined(CHIP_TYPE_hi3798mv100)   \
    || defined(CHIP_TYPE_hi3716mv310)   \
    || defined(CHIP_TYPE_hi3716mv330)   \
    || defined(CHIP_TYPE_hi3798mv100_a)

#define DDRT_TEST_V1

#define REG_DDRT_BASE_CRG       0x1001f000

#elif  defined(CHIP_TYPE_hi3798cv100)   \
    || defined(CHIP_TYPE_hi3798cv100_a) \
    || defined(CHIP_TYPE_hi3796cv100) \
    || defined(CHIP_TYPE_hi3796cv100_a)

#define DDRT_TEST_V2

#define REG_DDRT0_BASE_CRG      0xFF350000
#define REG_DDRT1_BASE_CRG      0xFF430000

#else

#error "Unkown chip type!"

#endif

#define DDRT_OP                        0x0
#define DDRT_STATUS                    0x4
#define DDRT_BURST_CONFIG              0x8
#define DDRT_MEM_CONFIG                0xc
#define DDRT_BURST_NUM                 0x10
#define DDRT_ADDR_NUM                  0x14
#define DDRT_LOOP_NUM                  0x18
#define DDRT_DDR_BASE_ADDR             0x1c
#define DDRT_ADDR                      0x20
#define DDRT_ADDR_OFFSET0              0x24
#define DDRT_REVERSED_DQ               0x30
#define DDRT_KDATA                     0x3c
#define DDRT_DATA0                     0x40
#define DDRT_DATA1                     0x44
#define DDRT_DATA2                     0x48
#define DDRT_DATA3                     0x4c

#define DDRT_DQ_ERR_CNT(n)             (0x60 + ((n) << 2))
#define DDRT_DQ_ERR_OVFL               0x80

#define DDRT_START                     0x1
#define BURST_NUM                      0xff


#define RW_COMPRARE_MODE               (0<<8)
#define ONLY_WRITE_MODE                (1<<8)
#define ONLY_READ_MODE                 (2<<8)
#define RANDOM_RW_MODE                 (3<<8)

#define DDRT_PATTERM_PRBS9             (0<<12)
#define DDRT_PATTERM_PRBS7             (1<<12)
#define DDRT_PATTERM_PRBS11            (2<<12)
#define DDRT_PATTERM_K28_5             (3<<12)

