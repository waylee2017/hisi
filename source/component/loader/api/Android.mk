LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(strip $(TARGET_HAVE_APPLOADER)),true)

include $(SDK_DIR)/Android.def

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libhiloader
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_MODULE_TAGS := optional

ifndef CFG_HI_CFLAGS
CFG_HI_CFLAGS= -Wall -g -march=armv5te -ggdb
endif

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\"
LOCAL_CFLAGS += -DHI_LOADER_APPLOADER

LOCAL_SRC_FILES := src/loaderdb_info.c
LOCAL_SRC_FILES += src/hi_loader_info.c
LOCAL_SRC_FILES += src/crc32.c

ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
LOCAL_SRC_FILES += src/ca_ssd.c
LOCAL_SRC_FILES += src/cx_config.c
LOCAL_SRC_FILES += src/cx_ssd.c
endif

LOCAL_C_INCLUDES := $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(COMMON_DIR)/api/flash/include
LOCAL_C_INCLUDES += $(COMPONENT_DIR)/loader/app/include

LOCAL_SHARED_LIBRARIES := libcutils libutils libdl libhi_common libhi_msp

include $(BUILD_SHARED_LIBRARY)

endif
