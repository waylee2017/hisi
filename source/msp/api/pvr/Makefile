#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../..

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variable
#===============================================================================
CFLAGS  +=  $(CFG_HI_CFLAGS)

##_XOPEN_SOURCE value:
# 500 - X/Open 5, incorporating POSIX 1995
# 600 - X/Open 6, incorporating POSIX 2004
# 700 - X/Open 7, incorporating POSIX 2008

#################################################################################################
# When _GNU_SOURCE is defined, the following constants become also automatically defined:
# _BSD_SOURCE, _SVID_SOURCE, _ATFILE_SOURCE, _LARGEFILE64_SOURCE, _ISOC99_SOURCE
# _POSIX_C_SOURCE is defined to the highest value supported by the C library (currently 200809L)
# _XOPEN_SOURCE is defined to the highest value supported by the C library (curently 700)
#################################################################################################
CFLAGS += -D_GNU_SOURCE -D_XOPEN_SOURCE=600 
CFLAGS += -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64

CFLAGS  +=  -I$(COMMON_UNF_INCLUDE)         \
            -I$(COMMON_API_INCLUDE)         \
            -I$(COMMON_DRV_INCLUDE)         \
            -I$(MSP_UNF_INCLUDE)            \
            -I$(MSP_API_INCLUDE)            \
            -I$(MSP_DRV_INCLUDE)            \
            -I$(MSP_DIR)/api/pvr/include

ifeq ($(CFG_HI_PVR_EXTRA_BUF_SUPPORT),y)
CFLAGS += -DHI_PVR_EXTRA_BUF_SUPPORT
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3716mv330)
CFLAGS += -DHI_PVR_SOFT_INDEX_SUPPORT
endif
ifeq ($(CFG_HI_PVR_FIFO_DIO),y)
CFLAGS += -DHI_PVR_FIFO_DIO
endif

SMOOTH_LIB_PATH := $(CURDIR)/lib/$(CFG_HI_TOOLCHAINS_NAME)

LIBS := libhi_pvrsmooth

OBJS := hi_pvr_smooth_ctrl.o

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean

all: $(LIBS)

clean:
	$(AT)rm -rf $(OBJS)

$(LIBS) : $(OBJS)
	$(AT)mkdir -p $(SMOOTH_LIB_PATH)
ifdef CFG_HI_ADVCA_FUNCTION
	$(AT)$(AR) -rs $(SMOOTH_LIB_PATH)/libhi_pvrsmooth_advca.a  $^  > /dev/null
else
	$(AT)$(AR) -rs $(SMOOTH_LIB_PATH)/libhi_pvrsmooth.a  $^  > /dev/null
endif
