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

CFLAGS +=   -I$(SDK_INC_DIR)        \
            -I$(SAMPLE_DIR)/common




LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group


APP     := sample_log

OBJS    := sample_log.o sample_module.o

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: $(APP)

$(APP): $(OBJS)
	$(AT)$(CC) -o $@ $^ $(LIBPATH) $(LIB)

clean:
	-$(AT)rm -f $(OBJS)
	-$(AT)rm -f $(APP)

%.o: %.c
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^

install:

uninstall:

