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
CFLAGS += -I${SDK_INC_DIR} -I$(SAMPLE_DIR)/common -I$(COMMON_UNF_INCLUDE) -I$(MSP_UNF_INCLUDE)

LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group

APP = sample_uti1201
OBJS = uti_driver.o utiplay.o $(COMMON_FILES)

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:$(APP)

%.o: %.c
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^

$(APP): ${OBJS}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}


clean:
	-$(AT)rm -f ${OBJS}
	-$(AT)rm -f $(APP)

	
install:

uninstall:
