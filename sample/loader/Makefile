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
CFLAGS += -I$(SDK_INC_DIR) -I$(SAMPLE_DIR)/common

ifeq ($(CFG_HI_APPLOADER_SUPPORT),y)
CFLAGS += -DHI_LOADER_APPLOADER
endif

ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
ifneq ($(CFG_HI_ADVCA_TYPE), NAGRA)
LIBPATH =  -L$(SDK_STATIC_LIB_DIR) -L$(SDK_SHARE_LIB_DIR)
LIB = -Wl,--start-group -lrt -lpthread -lm -ldl -ljpeg -lhi_mpi -lhiloader -lhi_common -Wl,--end-group
#LIB = $(SYS_LIBS) $(HI_LIBS) -lhiloader
else
LIBPATH =  -L$(SDK_STATIC_LIB_DIR) -L$(SDK_SHARE_LIB_DIR)
LIB = -Wl,--start-group -lrt -lpthread -lm -ldl -lhi_nagra -ljpeg -lhi_mpi -lhiloader -lhi_common -Wl,--end-group
#LIB = $(SYS_LIBS) $(HI_LIBS) -lhi_nagra -lhiloader
endif
else
LIB = $(SYS_LIBS) -lhiloader $(HI_LIBS) 
endif

APP = sample_loader
OBJS = sample_loader.o

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:$(APP)

%.o: %.c
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^

$(APP): $(OBJS)
	$(AT)$(CC) -o $@ $^ $(LIBPATH) $(LIB)

clean:
	-$(AT)rm -f $(OBJS)
	-$(AT)rm -f $(APP)

install:

uninstall:
