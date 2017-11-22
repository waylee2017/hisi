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
		  
APP = sample_sci sample_complex_sci
OBJS = sample_sci.o sample_complex_sci.o
#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:$(APP)
sample_sci: sample_sci.c
	$(AT)$(CC) -o $@ $^ $(CFLAGS) ${LIBPATH} ${LIB}

sample_complex_sci: sample_complex_sci.c
	$(AT)$(CC) -o $@ $^ $(CFLAGS) ${LIBPATH} ${LIB}

clean:
	-$(AT)rm -f ${OBJS}
	-$(AT)rm -f $(APP)

	
install:

uninstall:
