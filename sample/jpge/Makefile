JPGE_SAMPLE=$(shell pwd)

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
ifeq ($(CFG_LIB_JPEG_VERSION_6B),y)
JPEG_VER := 6b
else ifeq ($(CFG_LIB_JPEG_VERSION_NEWEST),y)
JPEG_VER := soft
endif


CFLAGS += $(CFG_HI_SAMPLE_CFLAGS)

CFLAGS +=   -I$(SDK_DIR)/pub/include                            \
	    -I$(JPGE_SAMPLE)                                    \
            -I$(SDK_DIR)/source/msp/api/jpeg/inc/inc_${JPEG_VER}\
	    -I$(MSP_DIR)/api/jpeg/inc/inc_hard

LIBPATH = -L$(SDK_STATIC_LIB_DIR) -L$(SDK_SHARE_LIB_DIR)
LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group


SRC = $(wildcard *.c)
APP= $(SRC:%.c=%)

ENCODE_DEPEND_DIR := ${JPGE_SAMPLE}/getsrcdata/sample_get_srcdata.c
ENCODE_DEPEND_OBJ := $(patsubst %.o, %.c, $(ENCODE_DEPEND_DIR))

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

ifeq ($(CFG_HI_JPEG_SOFT_ENCODE_SUPPORT),y)
all: $(APP) 

$(APP):  %: %.c
	$(AT)$(CC) -o $@  $< $(ENCODE_DEPEND_OBJ) $(LIBPATH) $(LIB) $(CFLAGS)

else
all: 
	echo "compile finish"	
endif

clean:
	$(AT)rm -rf $(APP)
	$(AT)rm -rf ${JPGE_SAMPLE}/res/encode/*
install:

uninstall:

