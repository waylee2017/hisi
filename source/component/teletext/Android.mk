LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(SDK_DIR)/Android.def

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libhi_ttx
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\"
LOCAL_CFLAGS += -DVER_V1R4

#LOCAL_SRC_FILES := $(sort $(call all-c-files-under, ./))
CURDIR := .
LOCAL_SRC_FILES := $(CURDIR)/src/hi_unf_ttx.c
LOCAL_SRC_FILES += $(CURDIR)/src/teletext_data.c
LOCAL_SRC_FILES += $(CURDIR)/src/teletext_mem.c
LOCAL_SRC_FILES += $(CURDIR)/src/teletext_parse.c
LOCAL_SRC_FILES += $(CURDIR)/src/teletext_recv.c
LOCAL_SRC_FILES += $(CURDIR)/src/teletext_showpage.c
LOCAL_SRC_FILES += $(CURDIR)/src/teletext_utils.c

LOCAL_C_INCLUDES := $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

LOCAL_SHARED_LIBRARIES := libcutils libutils libdl libhi_common libhi_avplay

include $(BUILD_SHARED_LIBRARY)
