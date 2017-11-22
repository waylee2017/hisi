#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif
include base.mak
include configure_custom.mak

#===============================================================================
# local variable
#===============================================================================

#custom info
CFLAGS	+= -D'CUSTOMER_OUI=$(CFG_CUSTOMER_OUI)'
CFLAGS	+= -D'AP_SW_MODEL=$(CFG_AP_SW_MODEL)'
CFLAGS	+= -D'AP_SW_VERSION=$(CFG_AP_SW_VERSION)'
CFLAGS	+= -D'HW_MODELNO=$(CFG_HW_MODELNO)'
CFLAGS	+= -D'HW_VERSION=$(CFG_HW_VERSION)'
#logo
CFLAGS     += -D'LOGO_ADDR=$(CFG_LOGO_ADDR)'
CFLAGS     += -D'LOGO_SIZE=$(CFG_LOGO_SIZE)'

#fac
CFLAGS += -D'OVT_FAC_MODE=$(CFG_OVT_FAC_MODE)'

#ovtvod
CFLAGS += -D'OVT_VOD_MODE=$(CFG_OVT_VOD_MODE)'

#ovtvoduart
CFLAGS += -D'OVT_VOD_UART_MODE=$(CFG_OVT_VOD_UART_MODE)'

#FLASH SIZE
CFLAGS += -D'FLASH_SIZE_CFG=$(CFG_FLASH_SIZE)'

#cas
CFLAGS += -D'OVT_CAS_MODE=$(CFG_OVT_CAS_MODE)'

#freetype
CFLAGS += -D'FREETYPE_USE_MODE=$(CFG_FREETYPE_USE_MODE)'

#image
CFLAGS += -D'IMAGE_USE_MODE=$(CFG_IMAGE_USE_MODE)'

CFLAGS += $(CFG_HI_SAMPLE_CFLAGS)

CFLAGS += -I$(SDK_DIR)/middleware/
CFLAGS += -I$(SDK_DIR)/middleware/mapi
CFLAGS += -I$(SDK_DIR)/middleware/stgui/include
CFLAGS += -I$(SDK_DIR)/middleware/stgui/include/m_header
CFLAGS += -I$(SDK_DIR)/middleware/stgui/include/ffs_header
CFLAGS += -I$(SDK_DIR)/middleware/stgui/include/ca_header
CFLAGS += -I$(SDK_DIR)/middleware/stgui/include/ad_header

ifeq "$(CFG_FREETYPE_USE_MODE)" "1"
	CFLAGS += -I$(SDK_DIR)/middleware/stgui/freetype/include
	CFLAGS += -I$(SDK_DIR)/middleware/stgui/freetype/include/freetype
	CFLAGS += -I$(SDK_DIR)/middleware/stgui/freetype
else
	CFLAGS += -I$(SDK_DIR)/source/component/freetype/freetype-2.7/include
endif

CFLAGS += -I$(SDK_DIR)/middleware/stgui/fac
CFLAGS += -I$(SDK_DIR)/middleware/stgui/env
CFLAGS += -I$(SDK_DIR)/middleware/stgui/lzma
CFLAGS += -I${SDK_INC_DIR} -I$(SAMPLE_DIR)/common


LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group

APP = middleware
middleware_src := $(shell find ./mapi -name '*.c' )
middleware_src += $(shell find ./stgui -name '*.c' )

#OBJS = ovt_main.o ${COMMON_FILES}
OBJS = ovt_main.o
OBJS += $(filter %.o,${middleware_src:.c=.o})

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:$(APP)
	echo $(CFLAGS) $(LIB)
	@cp $(APP) $(SDK_DIR)/pub/app
	@./AppPackTools app_pack_16M.json
	@cp app_pack.bin $(SDK_DIR)/pub/app

%.o: %.c
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^

$(APP): ${OBJS}
	$(AT)$(CC) -o $@ $^ ${LIBPATH} ${LIB}


clean:
	@-find ./res -name *.lzma | xargs rm -f
	@-find ./ -name app_pack.bin | xargs rm -f
	-$(AT)rm -f ${OBJS}
	-$(AT)rm -f $(APP)

	
install:

uninstall:
