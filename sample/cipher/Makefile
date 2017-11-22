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
CFLAGS += -I$(SDK_INC_DIR)		\
	  -I$(SAMPLE_DIR)/common

LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group 

ifeq ($(CFG_HI_CIPHER_MULTICIPHER_SUPPORT),y)
image = sample_cipher sample_anticopy
endif
ifeq ($(CFG_HI_CIPHER_HASH_SUPPORT),y)
image += sample_hash
endif
ifeq ($(CFG_HI_CIPHER_RNG_SUPPORT),y)
image += sample_rng
endif
ifeq ($(CFG_HI_CIPHER_MULTI_PACKGET),y)
image += sample_multicipher
endif
ifeq ($(CFG_HI_CIPHER_AES_CBCMAC),y)
image += sample_cbcmac
endif

image += sample_rsa_enc sample_rsa_sign

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:$(image)

sample_cipher: sample_cipher.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)

sample_rng: sample_rng.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)

sample_multicipher: sample_multicipher.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)

sample_hash: sample_hash.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
	
sample_cbcmac: sample_cbcmac.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)

sample_anticopy: sample_anticopy.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)

sample_rsa_enc: sample_rsa_enc.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)

sample_rsa_sign: sample_rsa_sign.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
	
clean:
	-@rm -f $(image)

install:

uninstall:

