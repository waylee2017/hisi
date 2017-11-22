JPEG_SAMPLE=$(shell pwd)

#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif
include $(SAMPLE_DIR)/base.mak

#===============================================================================
# local variable
#===============================================================================
ifeq ($(CFG_LIB_JPEG_VERSION_6B),y)
JPEG_VER := 6b
else ifeq ($(CFG_LIB_JPEG_VERSION_NEWEST),y)
JPEG_VER := soft
endif


CFLAGS += $(CFG_HI_SAMPLE_CFLAGS)

CFLAGS +=   -I$(SDK_INC_DIR)                         \
	    -I$(JPEG_SAMPLE)/../inc                  \
	    -I$(MSP_DIR)/api/jpeg/grc_cmm_inc        \
	    -I$(MSP_DIR)/api/jpeg/inc/inc_${JPEG_VER}\
	    -I$(MSP_DIR)/api/jpeg/inc/inc_hard       \
	    -I$(MSP_DIR)/api/jpeg/inc/inc_test       \
	    -I$(MSP_DIR)/drv/jpeg/include            \
	    -I$(COMMON_DIR)/include                  \
            -I$(SAMPLE_DIR)/common                   \
            -I$(COMMON_DIR)/api/mmz

LIBPATH = -L$(SDK_STATIC_LIB_DIR) -L$(SDK_SHARE_LIB_DIR)
LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group

COMMON_FILES := $(SAMPLE_DIR)/common/hi_adp_hdmi.c      \
                $(SAMPLE_DIR)/common/hi_adp_mpi.c

COMMON_SRC := $(patsubst %.o, %.c, $(COMMON_FILES))

SRC = $(wildcard *.c)

ifeq ($(findstring $(CFG_HI_CHIP_TYPE), hi3796cv100 hi3798cv100),)
SRC := $(filter-out dec_virmem_crop_lines.c, $(SRC))
SRC := $(filter-out dec_virmem_crop_phymem.c, $(SRC))
SRC := $(filter-out dec_virmem_crop_virmem.c, $(SRC))
endif


CFLAGS += -DCONFIG_HI_SDK_JPEG_VERSION

ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3798hv100 hi3798cv200),)
CFLAGS += -DCONFIG_GFX_MEM_MMZ
else
CFLAGS += -DCONFIG_GFX_MEM_MMZ
endif

ifeq ($(CFG_HI_SMMU_SUPPORT),y)
CFLAGS += -DHI_SMMU_SUPPORT
CFLAGS += -DCONFIG_GFX_MMU_SUPPORT
endif




APP= $(SRC:%.c=%)

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: $(APP)

$(APP):  %: %.c
	$(AT)$(CC) -o $@  $< $(COMMON_SRC) $(LIBPATH) $(LIB) $(CFLAGS)
clean:
	-$(AT)rm -f $(APP)
install:
	$(AT)cp -rf $(APP) $(JPEG_SAMPLE)/../exe
uninstall:

