#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../..
include $(SDK_DIR)/base.mak
endif

include $(SAMPLE_DIR)/base.mak

ifeq ($(CFG_LIB_PNG_VERSION_1_6_25),y)
LIB_VER  := 1.6.25
else
LIB_VER  := 1.4.16
endif
#===============================================================================
# local variable
#===============================================================================
CFLAGS += $(CFG_HI_SAMPLE_CFLAGS)

CFLAGS +=   -I$(SDK_INC_DIR)                         \
	    -I$(MSP_DIR)/api/png/libpng-${LIB_VER}   \
	    -I$(MSP_DIR)/api/png/include             \
            -I$(SAMPLE_DIR)/common                   \
	    -I$(MSP_DIR)/api/tde/include             \
	    -I$(COMMON_UNF_INCLUDE)

LIBPATH = -L$(SDK_STATIC_LIB_DIR) -L$(SDK_SHARE_LIB_DIR)
LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -lz -lpng -Wl,--end-group

APP     := sample_png

OBJS    := sample_png.o $(COMMON_FILES)

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

