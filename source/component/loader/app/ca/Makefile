ifeq ($(CFG_HI_EXPORT_FLAG),)
ifeq ($(CFG_HI_LOADER_BOOTLOADER),y)
SDK_DIR := $(shell pwd)/../../../../..
else
SDK_DIR := $(shell pwd)/../../../..
endif
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================
CA_SSD_DIR := $(COMPONENT_DIR)/loader/app/ca
 
ifeq ($(CFG_HI_ADVCA_SUPPORT), y)
CA_SSD_SRC := $(CA_SSD_DIR)/ca_ssd.c
ifneq ($(CFG_HI_ADVCA_TYPE), VERIMATRIX)
ifeq ($(CFG_HI_ADVCA_TYPE), NAGRA)
CA_SSD_SRC += $(CA_SSD_DIR)/nasc/api/nasc1x_ssd.c
else
CA_SSD_SRC += $(wildcard $(CA_SSD_DIR)/cx/api/*.c)
CA_SSD_SRC += $(wildcard $(CA_SSD_DIR)/cx/polarssl/*.c)
endif
else
CA_SSD_SRC += $(wildcard $(CA_SSD_DIR)/vmx/api/*.c)
endif

endif

CFLAGS := -I$(INCLUDE_DIR)
CFLAGS += -I$(MSP_UNF_INCLUDE)
CFLAGS += -I$(COMPONENT_DIR)/loader/app/include
CFLAGS += -I$(COMPONENT_DIR)/loader/api/include
ifeq ($(CFG_HI_ADVCA_SUPPORT), y)
CFLAGS += -I$(CA_SSD_DIR)/
ifneq ($(CFG_HI_ADVCA_TYPE), VERIMATRIX)
ifeq ($(CFG_HI_ADVCA_TYPE), NAGRA)
CFLAGS += -I$(CA_SSD_DIR)/nasc/include
else
CFLAGS += -I$(CA_SSD_DIR)/cx/include
CFLAGS += -I$(CA_SSD_DIR)/cx/polarssl
endif
else
CFLAGS += -I$(CA_SSD_DIR)/vmx/include
CFLAGS += -I$(COMPONENT_DIR)/loader/api/include
endif
endif

ifeq ($(CFG_HI_LOADER_BOOTLOADER),y)
CFLAGS += -DHI_LOADER_BOOTLOADER
endif

ifeq ($(CFG_HI_LOADER_APPLOADER),y)
CFLAGS += -DHI_LOADER_APPLOADER
endif

SLIB_NAGRA_PATH := $(CA_SSD_DIR)/nasc/api

SLIB := $(CA_SSD_DIR)/libhi_ca_ssd.a
DLIB := $(CA_SSD_DIR)/libhi_ca_ssd.so

CA_SSD_OBJS=$(patsubst %.c,%.o,$(CA_SSD_SRC))

#=================================================================
#     rules
#=================================================================
.PHONY: all clean advca advca_clean BUILD_OBJ_DIR
all: advca $(SLIB)
ifeq ($(CFG_HI_ADVCA_TYPE), VERIMATRIX)
ifeq ($(CFG_HI_LOADER_APPLOADER),y)
	make -f $(CA_SSD_DIR)/vmx/vmx_loader_verify_lib/Makefile
endif
endif

$(SLIB): $(CA_SSD_OBJS)
ifeq ($(CFG_HI_ADVCA_TYPE), NAGRA)
ifeq ($(CFG_HI_ADVCA_FUNCTION), DEBUG)
	$(AT)cp $(SLIB_NAGRA_PATH)/libssd_dbg.a_bak $(SLIB_NAGRA_PATH)/libhi_ssd.a
else
	$(AT)cp $(SLIB_NAGRA_PATH)/libssd_rel.a_bak $(SLIB_NAGRA_PATH)/libhi_ssd.a
endif
	$(AT)$(AR) -rc -o $@ $(CA_SSD_OBJS) $(SLIB_NAGRA_PATH)/libhi_ssd.a
else
	$(AT)$(AR) -rc -o $@ $(CA_SSD_OBJS)
endif

$(DLIB): $(CA_SSD_OBJS)
	$(AT)$(CC) -shared -o $@ $(CA_SSD_OBJS)

%.o: %.c
	@echo cc: $^
	$(CC) $(CFG_HI_CFLAGS) -c $^ -o $@ $(CFLAGS)

clean: 

	$(AT)rm -rvf *.o
	$(AT)rm -rvf $(SLIB)
ifneq ($(CFG_HI_ADVCA_TYPE), VERIMATRIX)
ifeq ($(CFG_HI_ADVCA_TYPE), NAGRA)
	$(AT)rm -rvf nasc/api/*.o
else
	$(AT)rm -rvf cx/api/*.o
	$(AT)rm -rvf cx/polarssl/*.o
endif
else
ifeq ($(CFG_HI_LOADER_APPLOADER),y)
	make -f $(CA_SSD_DIR)/vmx/vmx_loader_verify_lib/Makefile clean
	$(AT)rm -rvf vmx/api/*.o

endif
endif
