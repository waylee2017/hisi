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
CFG_INC = -I$(SDK_INC_DIR) -I$(MSP_DRV_INCLUDE)  -I$(MSP_API_INCLUDE) -I$(SAMPLE_DIR)/common

LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group

ifeq ($(CFG_HI_KEYLED_SUPPORT),y)
CFG_INC += -DHI_KEYLED_SUPPORT
endif
ifeq ($(CFG_HI_CHIP_TYPE),hi3110ev500)
image = sample_pmoc
else
image = sample_pmoc sample_auto_pmoc
endif

all:$(image)

sample_pmoc:sample_pmoc.c 
	@$(CC) -o $@ $^  $(CFG_INC) $(LIBPATH) $(LIB)

sample_auto_pmoc:sample_auto_pmoc.c ${COMMON_FILES}
	@$(CC) -o $@ $^  $(CFG_INC) $(LIBPATH) $(LIB)  
 
clean:
	-@rm -f $(image)

install:

uninstall:

