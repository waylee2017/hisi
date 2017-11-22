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

CFLAGS +=   -I$(SDK_INC_DIR) \
            -I$(SAMPLE_DIR)/common
	
DEP_C := sample_localplay.c play_m3u9.c

ifeq ($(CFG_HI_PLAYER_BASIC_SUPPORT),y)
CFLAGS += -DHI_PLAYER_BASIC_SUPPORT
endif
#CFG_HI_KEYLED_SUPPORT
ifeq ($(CFG_HI_PLAYER_NORMAL_SUPPORT),y)
export CHARSET_SUPPORT = 1
CFLAGS += -DHI_PLAYER_NORMAL_SUPPORT
endif

ifeq ($(CFG_HI_PLAYER_FULL_SUPPORT),y)
export CHARSET_SUPPORT = 1
CFLAGS += -DHI_PLAYER_FULL_SUPPORT
ifndef CFG_HI_ADVCA_FUNCTION
#export DRM_SUPPORT = 1
DEP_C += localplay_drm.c
endif
endif

LIB = -Wl,--start-group -lcrypt 
LIB += $(HI_LIBS)

ifdef CHARSET_SUPPORT
CFLAGS += -DCHARSET_SUPPORT
LIB += -lhi_charsetMgr
endif

ifdef DRM_SUPPORT
CFLAGS += -DDRM_SUPPORT
LIB += -L $(LIB_DIR)/share -lHiDrmEngine
endif

LIB += $(SYS_LIBS) -Wl,--end-group

LIB_FILE := ./libprivateprotocol.so
IMG_FILE = sample_localplay
		
#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: $(IMG_FILE) $(LIB_FILE)

all: $(IMG_FILE)
$(IMG_FILE): $(DEP_C) ${COMMON_FILES}
	@$(CC) $(CFLAGS) -o $@ $^ $(LIBPATH) $(LIB)

$(LIB_FILE): test_protocol.c 
	@$(CC) $(CFLAGS) -shared -fPIC -o $@ $^ 

clean:
	-@rm -f $(IMG_FILE)
	-@rm -f $(LIB_FILE)
	
