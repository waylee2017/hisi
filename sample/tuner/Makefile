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

ifeq ($(CFG_HI_DISEQC_SUPPORT),y)
CFLAGS += -DDISEQC_SUPPORT
endif

LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group

APP = sample_tuner_dvbt 
APP2 = sample_tuner_dvbc
APP3 = sample_tuner_dvbs
OBJS = tuner_demo_dvbt.o $(COMMON_FILES)
OBJS2 = tuner_demo_dvbc.o ${COMMON_FILES}
OBJS3 = tuner_demo_dvbs.o $(COMMON_FILES)

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:$(APP) $(APP2) $(APP3)

%.o: %.c
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^

$(APP): ${OBJS}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

$(APP2): ${OBJS2}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}
	
$(APP3): ${OBJS3}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

clean:
	-$(AT)rm -f ${OBJS}
	-$(AT)rm -f ${OBJS2}
	-$(AT)rm -f ${OBJS3}
	-$(AT)rm -f $(APP)
	-$(AT)rm -f $(APP2)
	-$(AT)rm -f $(APP3)

	
install:

uninstall:
