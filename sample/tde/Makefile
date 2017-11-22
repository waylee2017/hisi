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


LIB = -Wl,--start-group ${SYS_LIBS} ${HI_LIBS} -Wl,--end-group

SRC = $(wildcard *.c)
APP= $(SRC:%.c=%)
OTHERSRC= src/tde_common.c 
COMMON_FILES := $(SAMPLE_DIR)/common/hi_adp_demux.c     \
                $(SAMPLE_DIR)/common/hi_adp_data.c      \
                $(SAMPLE_DIR)/common/hi_adp_hdmi.c      \
                $(SAMPLE_DIR)/common/hi_adp_mpi.c

INCDIR = src
CFLAGS += -I$(INCDIR)

.PHONY: all clean install uninstall
all: $(APP) 
$(APP): %: %.c
	$(AT)$(CC) -o $@ $< $(OTHERSRC) $(COMMON_FILES) $(LIBPATH) $(LIB) $(CFLAGS)

clean: 
	-@rm -f $(APP) 

install:

uninstall:

