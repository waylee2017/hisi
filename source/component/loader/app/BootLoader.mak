#===============================================================================
# for bootloader only
#===============================================================================
CFLAGS += -I$(BOOT_DIR)/product/driver/include
CFLAGS += -I$(BOOT_DIR)/product
ifndef HI_MINIBOOT_SUPPORT
CFLAGS += -I$(BOOT_DIR)/fastboot/include
CFLAGS += -I$(BOOT_DIR)/fastboot/arch/arm/include
else
CFLAGS += -I$(BOOT_DIR)/miniboot/include
CFLAGS += -I$(BOOT_DIR)/minitoot/arm/include
endif

ifeq ($(CFG_HI_ADVCA_SUPPORT), y)
CFLAGS += -I$(BOOT_DIR)/product/loader/app/ca
CFLAGS += -I$(BOOT_DIR)/product/driver/advca/common/cipher
LOADER_SRC += ca/ca_ssd.c
ifeq ($(CFG_HI_ADVCA_TYPE), VERIMATRIX)
CFLAGS += -I$(BOOT_DIR)/product/loader/app/ca/vmx/include
LOADER_SRC += $(wildcard ca/vmx/api/*.c)

####### use the same vmx lib as advca driver vmx library in bootloader########
# LOADER_SRC += $(wildcard ca/vmx/vmx_loader_verify_lib/*.c)
endif
endif
LOADER_OBJS += $(patsubst %.c,%.o,$(LOADER_SRC))
toLoaderLib = libapp.a

all:prepare
	make $(toLoaderLib)
#	cp -rvf $(CURDIR)/include/hi_loader_info.h $(SDK_DIR)/pub/include 

$(toLoaderLib):$(LOADER_OBJS)
	@rm -f $(toLoaderLib)
	$(AR) -rc $@ $^
	rm *.o
%.o: %.c
	$(CC) -c  $^ $(CFLAGS) $(LIBPATH) $(LD_FLAGS) -o $@
	
install:	
#	cp -rvf $(CURDIR)/include/hi_loader_info.h $(SDK_DIR)/pub/include 	       
	
clean:
	$(AT)rm -f $(CURDIR)/../$(toLoaderLib)
	$(AT)rm -f *.o
	$(AT)rm -f *.a
	$(AT)rm -rvf vmx/api/*.o
	$(AT)rm -rvf vmx/vmx_loader_verify_lib/*.o
	$(AT)rm -rf $(LOADER_OBJS)
