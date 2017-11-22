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

LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group
		  
APP = sample_tsplay
OBJS = tsplay.o ${COMMON_FILES}

APP1 = sample_tsplay_pid
OBJS1 = tsplay_pid.o ${COMMON_FILES}

APP2 = sample_tsplay_mulaud
OBJS2 = tsplay_multiaud.o ${COMMON_FILES}

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:$(APP) $(APP1) $(APP2)

%.o: %.c
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^
$(APP): ${OBJS}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

$(APP1): ${OBJS1}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

$(APP2): ${OBJS2}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

clean:
	-$(AT)rm -f ${OBJS}
	-$(AT)rm -f $(APP)
	-$(AT)rm -f ${OBJS1}
	-$(AT)rm -f $(APP1)
	-$(AT)rm -f ${OBJS2}
	-$(AT)rm -f $(APP2)

install:

uninstall:
