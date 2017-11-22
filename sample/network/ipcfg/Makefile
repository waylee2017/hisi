#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif
include $(SAMPLE_DIR)/base.mak

#===============================================================================
# local variable
#===============================================================================
CFLAGS += $(CFG_HI_SAMPLE_CFLAGS)
CFLAGS += -I${SDK_INC_DIR} -I$(SAMPLE_DIR)/common

#LIB         := -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group
LIB         := -Wl,--start-group  -Wl,--end-group
INCLUDE     := -I"$(COMMON_DIR)/include" -I"$(SAMPLE_DIR)/common/api" -I"$(SAMPLE_DIR)/common"
################################################################################
CROSS_COMPILE         := \
	$(if $(CROSS_COMPILE),$(CROSS_COMPILE),arm-hisiv200-linux-)

CC    ?= $(CROSS_COMPILE)gcc

################################################################################

image = sample_ipcfg

all:$(image)

$(image): sample_ipcfg.c hi_api_eth.c
	@$(CC) -o $@ $^  -I"$(MSP_DIR)/include" \
		$(INCLUDE) $(LIBPATH) $(LIB) -lhi_common -lpthread
  
clean:
	-@rm -f $(image)
	
