
ifeq (5.,$(shell echo -e "5.\n$(PLATFORM_VERSION)"|sort|head -n 1))
PNG_MODULE_MAKEFILES := $(call all-named-subdir-makefiles, libpng_for_5.0)
else
PNG_MODULE_MAKEFILES := $(call all-named-subdir-makefiles, libpng)
endif

LOCAL_PATH := $(call my-dir)

########## shared lib
include $(CLEAR_VARS)

include $(SDK_DIR)/Android.def

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libhi_png

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\"
LOCAL_CFLAGS += -DCONFIG_GFX_ANDROID_SDK
LOCAL_CFLAGS += -DCONFIG_GFX_MEM_ION

ifeq ($(CFG_HI_SMMU_SUPPORT),y)
LOCAL_CFLAGS += -DCONFIG_GFX_MMU_SUPPORT
endif

ifeq ($(CFG_HI_GFX_DEBUG_LOG_SUPPORT), y)
LOCAL_CFLAGS += -DCFG_HI_GFX_DEBUG_LOG_SUPPORT
endif

LOCAL_SRC_FILES := $(sort $(call all-c-files-under, ./libpng-1.4.0))

LOCAL_C_INCLUDES := $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/png/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(MSP_DIR)/api/jpeg/grc_cmm_inc

LOCAL_SHARED_LIBRARIES := libcutils libutils libdl libhi_common libz

include $(BUILD_SHARED_LIBRARY)

########## static lib
include $(CLEAR_VARS)

include $(SDK_DIR)/Android.def

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libhi_png

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\"
LOCAL_CFLAGS += -DCONFIG_GFX_ANDROID_SDK
LOCAL_CFLAGS += -DCONFIG_GFX_MEM_ION

ifeq ($(CFG_HI_SMMU_SUPPORT),y)
LOCAL_CFLAGS += -DCONFIG_GFX_MMU_SUPPORT
endif

LOCAL_SRC_FILES := $(sort $(call all-c-files-under, ./libpng-1.4.0))

LOCAL_C_INCLUDES := $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/png/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(MSP_DIR)/api/jpeg/grc_cmm_inc

LOCAL_SHARED_LIBRARIES := libcutils libutils libdl libhi_common libz

include $(BUILD_STATIC_LIBRARY)

include $(PNG_MODULE_MAKEFILES)