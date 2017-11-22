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
            -I$(SAMPLE_DIR)/common


image = sample_petimer

all:$(image)

$(image): petimer.c
	@$(CC) -o $@ $^  $(CFLAGS) $(LIBPATH) -lpetimer -lpthread
		       
clean:
	-@rm -f $(image)

install:

uninstall:

