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
CFLAGS +=-I$(SDK_DIR)/source/common/api/mmz

LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group

ifeq ($(CFG_HI_FREETYPE_FONT_SUPPORT),y)
LIB += -lfreetype
endif

ifeq ($(CFG_HI_PNG_DECODER_SUPPORT),y)
LIB += -lpng -lz 
endif

APP = sample_mce_base
APP2 = sample_mce_logo
APP3 = sample_mce_ts
APP4 = sample_mce_control
APP5 = mce_to_dvbplay
APP6 = sample_mce_animation
APP7 = sample_mce_dvb
APP8 = mce_to_iframe
APP9 = sample_logo_pic
OBJS = sample_mce_base.o ${COMMON_FILES}
OBJS2 = sample_mce_logo.o ${COMMON_FILES}
OBJS3 = sample_mce_ts.o tsanalyse.o ${COMMON_FILES}
OBJS4 = sample_mce_control.o ${COMMON_FILES}
OBJS5 = mce_to_dvbplay.o ${COMMON_FILES}
OBJS6 = sample_mce_animation.o ${COMMON_FILES}
OBJS7 = sample_mce_dvb.o ${COMMON_FILES}
OBJS8 = mce_to_iframe.o ${COMMON_FILES}
OBJS9 = sample_logo_pic.o ${COMMON_FILES}



#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:$(APP) $(APP2) $(APP3) $(APP4) $(APP5) $(APP6) $(APP7) $(APP8) $(APP9)

%.o: %.c
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^

$(APP): ${OBJS}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

$(APP2): ${OBJS2}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

$(APP3): ${OBJS3}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}
	
$(APP4): ${OBJS4}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

$(APP5): ${OBJS5}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}
	
$(APP6): ${OBJS6}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

$(APP7): ${OBJS7}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}
	
$(APP8): ${OBJS8}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

$(APP9): ${OBJS9}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}

clean:
	-$(AT)rm -f ${OBJS}
	-$(AT)rm -f ${OBJS2}
	-$(AT)rm -f ${OBJS3}
	-$(AT)rm -f ${OBJS4}
	-$(AT)rm -f ${OBJS5}
	-$(AT)rm -f ${OBJS6}
	-$(AT)rm -f ${OBJS7}
	-$(AT)rm -f ${OBJS8}
	-$(AT)rm -f ${OBJS9}
	-$(AT)rm -f $(APP)
	-$(AT)rm -f $(APP2)
	-$(AT)rm -f $(APP3)
	-$(AT)rm -f $(APP4)
	-$(AT)rm -f $(APP5)
	-$(AT)rm -f $(APP6)
	-$(AT)rm -f $(APP7)
	-$(AT)rm -f $(APP8)
	-$(AT)rm -f $(APP9)
	
install:

uninstall:
