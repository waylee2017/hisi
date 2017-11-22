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
		  
APP1 = sample_fm
OBJS1 = sample_fm.o hi_adp_fm.o RDAFM_5807X_drv_V4.0.o parse_rds.o

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:$(APP1) 

%.o: %.c
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^

$(APP1): ${OBJS1}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

$(APP2): ${OBJS2}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

clean:
	-$(AT)rm -f ${OBJS1}
	-$(AT)rm -f $(APP1)

	
install:

uninstall:
