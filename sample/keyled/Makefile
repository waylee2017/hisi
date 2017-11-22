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
CFG_INC = -I$(SDK_INC_DIR) -I$(SAMPLE_DIR)/common

LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group

image = sample_keyled 

all:$(image)

sample_keyled:sample_keyled.c
	@$(CC) -o $@ $^  $(CFG_INC) $(LIBPATH) $(LIB) 
 
clean:
	-@rm -f $(image)

install:

uninstall:

