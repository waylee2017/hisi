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
CFLAGS += -I$(SDK_INC_DIR)						\
          -I$(SAMPLE_DIR)/common             	\
	  		-I$(SDK_DIR)/source/common/include

LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group

image = sample_otp_setcustomerkey sample_otp_setstbrootkey sample_otp_sethdcprootkey sample_otp_gethdcprootkey \
		sample_otp_getcustomerkey sample_otp_setstbprivatedata sample_otp_gethdcprootkeylockflag sample_otp_getstbprivatedata \
		sample_otp_getstbrootkeylockflag sample_otp_getstbrootkey sample_otp_lockhdcprootkey sample_otp_lockstbrootkey sample_otp_lockidword
		
#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:$(image)

sample_otp_setcustomerkey: sample_otp_setcustomerkey.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
	
sample_otp_setstbrootkey: sample_otp_setstbrootkey.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
	
sample_otp_sethdcprootkey: sample_otp_sethdcprootkey.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
	
sample_otp_gethdcprootkey: sample_otp_gethdcprootkey.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
	
sample_otp_getcustomerkey: sample_otp_getcustomerkey.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
	
sample_otp_setstbprivatedata: sample_otp_setstbprivatedata.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
	
sample_otp_gethdcprootkeylockflag: sample_otp_gethdcprootkeylockflag.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
	
sample_otp_getstbprivatedata: sample_otp_getstbprivatedata.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
	
sample_otp_getstbrootkeylockflag: sample_otp_getstbrootkeylockflag.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
	
sample_otp_getstbrootkey: sample_otp_getstbrootkey.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)

sample_otp_lockhdcprootkey: sample_otp_lockhdcprootkey.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)

sample_otp_lockstbrootkey: sample_otp_lockstbrootkey.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
sample_otp_lockidword: sample_otp_lockidword.c
	@echo "compiling $@..."
	@$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LIB)
clean:
	-@rm -f $(image)

install:

uninstall:
