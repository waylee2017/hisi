#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR     := $(shell pwd)/../../../../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================
ifeq ($(CFG_HI_MINIBOOT_SUPPORT),y)
BOOT_DIR    := $(SDK_DIR)/source/boot/miniboot
else
BOOT_DIR    := $(SDK_DIR)/source/boot/fastboot
endif
PRODUCT_DIR  := $(BOOT_DIR)/../product


DRV_VO_DIR = $(SDK_DIR)/source/msp/drv/vo/vou_v4_0
DISP_DIR = $(PRODUCT_DIR)/driver/disp/vou_v4_0

ifndef CFLAGS
include $(BOOT_DIR)/define.mak
export MKFLAGS

CC := $(CROSS_COMPILE)gcc

gccincdir := $(shell $(CC) -print-file-name=include)

CFLAGS := -g -Os -D__ARM__ -fno-strict-aliasing -fno-common -ffixed-r8 \
	  -nostdinc -isystem $(gccincdir) $(MKFLAGS) -I$(PRODUCT_DIR) \
	  -fno-builtin -ffreestanding  -pipe -marm  -mabi=aapcs-linux  \
	  -mno-thumb-interwork -march=armv7-a \
	  -Wall -Wstrict-prototypes -fno-stack-protector
endif

CFLAGS   += -D__BOOT__ -DHI_VO_SINGLE_VIDEO_SUPPORT 
CFLAGS   += -I$(PRODUCT_DIR)/driver/include
ifeq ($(CFG_HI_VO_WRAP_SUPPORT), y)
CFLAGS += -DHI_VO_WRAP_SUPPORT
endif
CFLAGS   += -I$(BOOT_DIR)/arch/arm/include
CFLAGS   += -I$(BOOT_DIR)/include
CFLAGS   += -I$(DISP_DIR)/include
#CFLAGS   += -I$(SDK_DIR)/source/common/include/
CFLAGS   += -I$(SDK_DIR)/source/boot/product/driver/include
ASFLAGS  += -I$(SDK_DIR)/source/common/drv/include

ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3110ev500),)
CFLAGS += -DHI_VDP_ONLY_SD_SUPPORT
endif

# MV310 MV330 Don't support LCD/VGA
# HI_DISP_LCD_SUPPORT HI_DISP_VGA_SUPPORT
# These features don't need in boot
# HI_DISP_GAMMA_SUPPORT HI_DISP_ACC_SUPPORT HI_DISP_ACM_SUPPORT HI_VDP_DEI_SUPPORT
# HI_DISP_CGMS_SUPPORT HI_DISP_MACROVISION_SUPPORT
# HI_VDP_PUTGETFRAME_SUPPORT HI_VDP_EXTERNALBUFFER_SUPPORT HI_VDP_VIRTUAL_WIN_SUPPORT

# MV330 unsupport features below
ifneq ($(CFG_HI_CHIP_TYPE), hi3716mv330)
CFLAGS += -DHI_DISP_SCART_SUPPORT
endif

ifeq ($(CFG_HI_DISP_CC_SUPPORT), y)
CFLAGS += -DHI_DISP_CC_SUPPORT
endif

ifeq ($(CFG_HI_DISP_TTX_SUPPORT), y)
CFLAGS += -DHI_DISP_TTX_SUPPORT
endif

ifeq ($(CFG_HI_DISP_CVBS_VIDEO_BUFF), y)
CFLAGS += -DHI_DISP_CVBS_VIDEO_BUFF
endif

ifeq ($(CFG_HI_DISP_YPBPR_VIDEO_BUFF), y)
CFLAGS += -DHI_DISP_YPBPR_VIDEO_BUFF
endif

LIBS     := libdisp.a


FULL_PATH_DRV_SRCS := $(wildcard $(DISP_DIR)/*.c)
FULL_PATH_DRV_SRCS := $(filter-out %.mod.c, $(FULL_PATH_DRV_SRCS))



DRV_SRCS := $(shell echo $(FULL_PATH_DRV_SRCS) \
    	    | awk '{for(i=1;i<=NF;i++)print $$i}' \
	    | sed "s:\(.*\)/\<vo\>\(.*\):.\2:g")



OBJS     := $(patsubst %.c,%.o,$(DRV_SRCS))

ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
ASFLAGS += -DCONFIG_REMOVE_STRING
endif

OBJS += $(DISP_DIR)/optm_alg_api.o
OBJS += $(DISP_DIR)/optm_alg.o

#===============================================================================
# rules
#===============================================================================

.PHONY: prepare all clean install uninstall $(LIBS)


all: $(LIBS)


clean:
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(LIBS)

install: all

uninstall:

$(LIBS): $(OBJS)
	$(AT)$(AR) -rc $@ $^
