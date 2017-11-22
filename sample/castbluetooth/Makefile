#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../..
include $(SDK_DIR)/base.mak
endif

include $(SAMPLE_DIR)/base.mak

#===============================================================================
# local variable
#===============================================================================
CFLAGS += $(CFG_HI_SAMPLE_CFLAGS)
CFLAGS += -I$(SDK_INC_DIR) -I$(SAMPLE_DIR)/common

LIBPATH = -L$(SDK_STATIC_LIB_DIR) -L$(SDK_SHARE_LIB_DIR)

ifeq ($(CFG_HI_BLUETOOTH_SUPPORT),y)
LIBPATH += -L$(SDK_SHARE_LIB_DIR)/alsa_bluez
CFLAGS += -I$(SDK_INC_DIR)/alsa_bluez
endif

DEP_LIBS := $(HI_LIBS)
DEP_LIBS += -lhi_bluetooth
DEP_LIBS += -lasound -lbluetooth -ldbus-1

LIB = -Wl,--start-group $(SYS_LIBS) $(DEP_LIBS) -Wl,--end-group

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

APP =sample_bluetooth 

OBJS =bluetooth.o  castbluetooth.o $(COMMON_FILES)

all: $(APP)
sample_bluetooth: bluetooth.o
	@$(CC) -o $@ $^  $(CFG_INC) $(LIBPATH) $(LIB)

clean:
	-$(AT)rm -f $(OBJS)
	-$(AT)rm -f $(APP)

install:

uninstall:



