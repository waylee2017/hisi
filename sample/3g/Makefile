################################################################################
#LIB = -Wl,--start-group -lpthread -lm   -Wl,--end-group
################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR       := $(shell pwd)/../..
INCLUDE_DIR   := $(SDK_DIR)/pub/include
ROOTFS_DIR    := $(SDK_DIR)/pub/rootfs
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif
include $(SAMPLE_DIR)/base.mak
################################################################################
image=
ifeq ($(CFG_HI_3G_SUPPORT),y)
image=3g_sample
endif

################################################################################

all:$(image)

3g_sample: 3g_sample.c 
	@$(CC) -o $@ $^ -I$(INCLUDE_DIR) $(LIBPATH) -lhi3g $(LIB)
clean:
	-@rm -f $(image)

install:

uninstall:

