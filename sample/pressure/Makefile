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
CFLAGS += -I${SDK_INC_DIR} -I$(SAMPLE_DIR)/common

# -share or -static
LIB = -Wl,--start-group $(LD_FLAGS) $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group

ifeq ($(CFG_HI_PVR_SUPPORT),y)
COMMON_FILES += $(SAMPLE_DIR)/common/hi_adp_pvr.c
endif
ifeq ($(CFG_HI_PVR_SUPPORT),y)
PVR_TIMESHIFT      := sample_pvr_timeshift.c
else
PVR_TIMESHIFT      := 
endif
DDRT_TEST		   := ddrt_test.c
HIGO_SCROLL		   := sample_scrolltext.c
DVBPLAY		   	   := sample_dvbplay.c
TSPLAY		   	   := sample_tsplay.c

TARGETS := $(basename $(PVR_TIMESHIFT) $(DDRT_TEST) $(HIGO_SCROLL) $(DVBPLAY) $(TSPLAY))

#===============================================================================
# rules
#===============================================================================
.PHONY:  all clean install uninstall

all: ${TARGETS}

clean:
	-rm -f *.o
	-rm -f $(TARGETS)

install:
uninstall:

${TARGETS}:%:%.c
	@echo "[CC] $@..."
	$(AT)$(CC) -o $@ $(CFLAGS) $(COMMON_FILES) $< $(LIBPATH) $(LIB)

