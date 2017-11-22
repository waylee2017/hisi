ifeq ($(CFG_HI_EXPORT_FLAG),)
ifeq ($(CFG_HI_LOADER_BOOTLOADER),y)
SDK_DIR := $(shell pwd)/../../../../..
else
SDK_DIR := $(shell pwd)/../../../../../../..
endif
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================
VMX_SSD_DIR := $(COMPONENT_DIR)/loader/app/ca/vmx/
 
CFLAGS := -I$(INCLUDE_DIR)
CFLAGS += -I$(VMX_SSD_DIR)/../../include
CFLAGS += -I$(VMX_SSD_DIR)/include
CFLAGS += -I$(VMX_SSD_DIR)/polarssl
CFLAGS += -I$(VMX_SSD_DIR)/vmx_loader_verify_lib/3rd

SLIB_VMX_PATH := $(VMX_SSD_DIR)/vmx_loader_verify_lib
SLIB := $(SLIB_VMX_PATH)/libhi_vmx_loader_verify.a
ifeq ($(CFG_HI_ADVCA_VMX_3RD_SIGN),y)
VMX_SSD_SRC := $(VMX_SSD_DIR)/vmx_loader_verify_lib/3rd/vmx_3rd_adp.c
VMX_SSD_SRC += $(VMX_SSD_DIR)/vmx_loader_verify_lib/3rd/vmx_3rd_auth.c
VMX_SSD_SRC += $(VMX_SSD_DIR)/vmx_loader_verify_lib/3rd/vmx_3rd_test.c
VMX_SSD_OBJS=$(patsubst %.c,%.o,$(VMX_SSD_SRC))
CFLAGS += -DLOADER
else
VMX_SSD_SRC := $(VMX_SSD_DIR)/vmx_loader_verify_lib/vmx_auth.c
VMX_SSD_OBJS=$(patsubst %.c,%.o,$(VMX_SSD_SRC))
endif
#=================================================================
#     rules
#=================================================================
.PHONY: all clean

all: $(SLIB)

$(SLIB): $(VMX_SSD_OBJS)
	$(AT)$(AR) -rc -o $@ $(VMX_SSD_OBJS)

clean:
	$(AT)rm -rvf $(VMX_SSD_OBJS)
	$(AT)rm -rvf $(SLIB)

