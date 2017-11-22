#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif
include $(SAMPLE_DIR)/base.mak

#===============================================================================
# local variable
#===============================================================================
CFLAGS += $(CFG_HI_SAMPLE_CFLAGS) 

ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716mv310  hi3716mv320 hi3716mv330),)
CFLAGS += -DCFG_HI_HD_FB_VRAM_SIZE=$(CFG_HI_HD_FB_VRAM_SIZE)
else
CFLAGS += -DCFG_HI_HD_FB_VRAM_SIZE=$(CFG_HI_SD_FB_VRAM_SIZE)
endif


CFLAGS +=   -I$(SDK_INC_DIR)        \
            -I$(PUB_DIR)            \
            -I$(SAMPLE_DIR)/common

LIB = -Wl,--start-group ${SYS_LIBS} ${HI_LIBS} -Wl,--end-group

COMMON_FILES := $(SAMPLE_DIR)/common/hi_adp_hdmi.c      \
                $(SAMPLE_DIR)/common/hi_adp_mpi.c       

SRC = $(wildcard *.c)

#========================================================================
ifeq ($(CFG_HIFB_SCROLLTEXT_SUPPORT), )
SRC := $(filter-out sample_scrolltext.c, $(SRC))
endif

ifeq ($(CFG_HIFB_CURSOR_SUPPORT), )
SRC := $(filter-out sample_cursorck.c, $(SRC))
endif

ifeq ($(CFG_HI_FREETYPE_FONT_SUPPORT), )
SRC := $(filter-out sample_text.c, $(SRC))
endif

ifneq ($(CFG_HI_JPEG_SOFT_ENCODE_SUPPORT),y)
SRC := $(filter-out sample_enc_jpg.c, $(SRC))
endif
#=======================================================================

APP= $(SRC:%.c=%)


#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: $(APP) 

$(APP):  %: %.c
	$(AT)$(CC) -o $@  $< $(COMMON_FILES) $(LIBPATH) $(LIB) $(CFLAGS)

clean:
	-$(AT)rm -f $(APP)

install:

uninstall:

