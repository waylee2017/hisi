#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
    KERNEL_DIR := $(srctree)
    
    SDK_DIR := $(KERNEL_DIR)/../../..
    else
    SDK_DIR := $(CURDIR)/../../../..
    endif

include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================
CFG_CIPHER_MINI_OR_NOT = y

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)
EXTRA_CFLAGS += -I$(MSP_UNF_INCLUDE)			\
		-I$(MSP_DRV_INCLUDE) 			\
		-I$(MSP_DIR)/drv/cipher		    	\
		-I$(MSP_DIR)/drv/cipher/cipher		\
		-I$(MSP_DIR)/drv/cipher/hash		\
		-I$(MSP_DIR)/drv/cipher/hdcp		\
		-I$(MSP_DIR)/drv/cipher/rng 		\
		-I$(MSP_DIR)/drv/cipher/rsa             \
		-I$(COMMON_UNF_INCLUDE)			\
		-I$(COMMON_DRV_INCLUDE)

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_cipher
$(MOD_NAME)-y += ./drv_cipher_intf.o 
obj-$(CFG_MSP_BUILDTYPE) := $(MOD_NAME).o
ifeq ($(CFG_HI_CIPHER_MULTICIPHER_SUPPORT),y)
EXTRA_CFLAGS += -DCFG_HI_CIPHER_MULTICIPHER_SUPPORT
$(MOD_NAME)-y += ./cipher/drv_cipher.o ./cipher/hal_cipher.o
endif
ifeq ($(CFG_HI_CIPHER_HDCP_SUPPORT),y)
EXTRA_CFLAGS += -DCFG_HI_CIPHER_HDCP_SUPPORT
$(MOD_NAME)-y += ./hdcp/drv_cipher_hdcp.o
endif
ifeq ($(CFG_HI_CIPHER_HASH_SUPPORT),y)
EXTRA_CFLAGS += -DCFG_HI_CIPHER_HASH_SUPPORT
$(MOD_NAME)-y += ./hash/drv_hash_intf.o
endif
ifeq ($(CFG_HI_CIPHER_RNG_SUPPORT),y)
EXTRA_CFLAGS += -DCFG_HI_CIPHER_RNG_SUPPORT
$(MOD_NAME)-y += ./rng/drv_cipher_rng.o
endif
ifeq ($(CFG_HI_CIPHER_MULTI_PACKGET),y)
EXTRA_CFLAGS += -DCFG_HI_CIPHER_MULTI_PACKGET
endif

$(MOD_NAME)-y += ./rsa/drv_rsa.o ./rsa/drv_rsa_bignum.o

#===============================================================================
#   rules
#===============================================================================
.PHONY: all clean install uninstall

all: 
	$(AT)make -C $(LINUX_DIR) ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- M=$(CURDIR) modules
	
clean:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) clean
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf .tmp_versions
	$(AT)rm -rf  Module.symvers
	$(AT)rm -rf  modules.order
	
install: all
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)cp -f $(CURDIR)/$(MOD_NAME).ko $(MODULE_DIR)/
endif

uninstall:
	$(AT)rm -rf $(MODULE_DIR)/$(MOD_NAME).ko
