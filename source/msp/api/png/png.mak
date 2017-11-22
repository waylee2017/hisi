#===============================================================================
#out dir
#===============================================================================
ifneq ($(HI_OUT_DIR),)
OBJS_OUT_DIR := $(HI_OUT_DIR)/source/msp/api/png/OBJS_LIB_PNG/
LIBS_OUT_DIR := $(HI_OUT_DIR)/source/msp/api/png/
else
OBJS_OUT_DIR := $(MSP_DIR)/api/png/OBJS/OBJ_LIB_PNG/
LIBS_OUT_DIR := $(MSP_DIR)/api/png/OBJS/
endif
#===============================================================================
# dir
#===============================================================================
OBJS_DIR  := $(OBJS_OUT_DIR)
LIBS_DIR  := $(LIBS_OUT_DIR)

OBJS_FILE := $(addprefix $(OBJS_DIR),$(SOURCES:%.c=%.o))

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all : $(LIBS_MAJO) $(OBJS_FILE)
	$(AT)echo ${CFLAGS}

$(OBJS_DIR)%.o : %.c
	$(AT)test -d $(dir $@) || mkdir -p $(dir $@)
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^

$(OBJS_DIR)%.o : %.S
	$(AT)test -d $(dir $@) || mkdir -p $(dir $@)
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^

$(LIBS_MAJO) : $(OBJS_FILE)
	$(AT)${RM} -rf $(LIBS_DIR)$(LIBS_NAME)*.so
	$(AT)${RM} -rf $(LIBS_DIR)$(LIBS_NAME)*.a
	$(AT)$(AR) $(LIBS_DIR)$@.a $^
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o $(LIBS_DIR)$@.so $^ ${DEPEND_LIB}
endif
	$(AT)cd $(LIBS_DIR) ; ln -s $(LIBS_MAJO).a  $(LIBS_NAME).a
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cd $(LIBS_DIR) ; ln -s $(LIBS_MAJO).so $(LIBS_NAME).so
endif

clean :
	$(AT)rm -rf $(LIBS_OUT_DIR)

install : all
	$(AT)cp -fa $(LIBS_DIR)$(LIBS_NAME)*.a  $(STATIC_LIB_DIR)
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -fa $(LIBS_DIR)$(LIBS_NAME)*.so $(SHARED_LIB_DIR)
endif

uninstall : clean
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(LIBS_NAME)*.a
	$(AT)rm -rf $(SHARED_LIB_DIR)/$(LIBS_NAME)*.so
