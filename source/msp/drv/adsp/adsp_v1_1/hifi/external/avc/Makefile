ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../../../../../..
include $(SDK_DIR)/base.mak
endif

#****** 定义编译选项 ***********************************************************
#****** 定义编译选项 ***********************************************************

#****** 定义目标输出名称的  ****************************************************
TARGET = libimedia_avc_drc_armA9

#****** 定义要编译目标文件的存放位置 *******************************************
CUR_DIR = .
OBJ_DIR  = $(CUR_DIR)/lib/obj
TAR_DIR  = $(CUR_DIR)/lib

#****** 定义源代码及头文件的位置 ***********************************************
TARGET_INC_DIR = $(CUR_DIR)/inc
TARGET_SRC_DIR = $(CUR_DIR)/src

#****** 定义头文件的搜索路径 ***************************************************
CFG_INC += -I$(TARGET_INC_DIR) 
#
# compiler flags (for normal, DEBUG, and WMOPS compilation)
#
CFLAGS_NORM  = $(USER_CFLAGS)
CFLAGS_NORM  += -O2 -DTARGET_ARM -D__LINUX_ARM_ARCH__

#****** 定义编译选项 ***********************************************************
CFLAGS += -Wall $(CFLAGS_NORM)
CFLAGS += $(CFG_INC)
CFLAGS += $(CFG_HI_CFLAGS)
##当高安选项打开时，由于高安要求SDK api不编译静态库，所以SDK顶层Makefile中把-fPIC去掉了，但audio模块必须要使用-fPIC，故做此处理
ifneq ($(findstring -fPIC, $(CFG_HI_CFLAGS)), -fPIC)
CFLAGS += -fPIC
endif

DCFLAGS = -Wall $(CFLAGS_NORM)
DCFLAGS += $(CFG_DEMO_INC)

CFLAGSDEPEND = -MM $(CFLAGS)                    # for make depend
COMPILE=$(CC) -c $(CFLAGS) -o "$(OBJ_DIR)/$(PREFIX)$(*F).o" "$<"


#
# construct SPC library name:
#

TARGET_LIB=$(TAR_DIR)/$(TARGET).a        

SRC_DECWRAP   = $(CUR_DIR)/src

# SRC_SYS_FILES = $(wildcard $(SRC_SYS)/*.cpp)
SRC_HADECWRAP = $(wildcard $(SRC_DECWRAP)/*.c)

all:build_prepare target_lib

OBJ_HADECWRAP=$(patsubst %.c,%.o,$(SRC_HADECWRAP))
$(OBJ_HADECWRAP): %.o: %.c 
	$(CC) -c  $(CFLAGS) -O2 $^ -o $@  -DENV_INT32 -DHI_ADVCA_FUNCTION_RELEASE




build_prepare:
	mkdir -p $(TAR_DIR)

target_lib:$(OBJ_HADECWRAP)
	$(AT)$(AR) -rs $(TARGET_LIB) $(OBJ_HADECWRAP) $(OBJ_WRAP)
clean:
	-@rm -f $(OBJ_HADECWRAP)
