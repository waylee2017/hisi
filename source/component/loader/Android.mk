LOCAL_PATH := $(call my-dir)

LOADER_MODULE := api app

include $(call all-named-subdir-makefiles,$(LOADER_MODULE))
