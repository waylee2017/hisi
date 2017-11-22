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

CFLAGS +=   -I$(SDK_INC_DIR)        \
            -I$(SAMPLE_DIR)/common  \
			-I$(MSP_API_INCLUDE)

LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group

APP     := dvb_demux
APP2    := filter_sample
APP3    := sample_demux_record
APP4    := sample_demux_change_pid_pts
APP5    := sample_demux_get_pes_extdata

OBJS    := dvb_demux_sample.o $(COMMON_FILES)
OBJS2   := filter_sample.o $(COMMON_FILES)
OBJS3   := dvb_demux_record.o $(COMMON_FILES)
OBJS4   := dvb_demux_change_pid_pts.o $(COMMON_FILES) 
OBJS5   := sample_demux_get_pes_extdata.o $(COMMON_FILES) 
#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

ifeq ($(CFG_HI_DMX_PES_EXT_DATA_SUPPORT), y)
all: $(APP) $(APP2) $(APP3) $(APP4) $(APP5)
else
all: $(APP) $(APP2) $(APP3) $(APP4)
endif

$(APP): $(OBJS)
	$(AT)$(CC) -o $@ $^ $(LIBPATH) $(LIB)

$(APP2): $(OBJS2)
	$(AT)$(CC) -o $@ $^ $(LIBPATH) $(LIB)

$(APP3): $(OBJS3)
	$(AT)$(CC) -o $@ $^ $(LIBPATH) $(LIB)

$(APP4): $(OBJS4)
	$(AT)$(CC) -o $@ $^ $(LIBPATH) $(LIB)

$(APP5): $(OBJS5)
	$(AT)$(CC) -o $@ $^ $(LIBPATH) $(LIB)


clean:
	-$(AT)rm -f $(OBJS)
	-$(AT)rm -f $(OBJS2)
	-$(AT)rm -f $(OBJS3)
	-$(AT)rm -f $(OBJS4)
	-$(AT)rm -f $(OBJS5)

	-$(AT)rm -f $(APP)
	-$(AT)rm -f $(APP2)
	-$(AT)rm -f $(APP3)
	-$(AT)rm -f $(APP4)
	-$(AT)rm -f $(APP5)

%.o: %.c
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^

install:

uninstall:

