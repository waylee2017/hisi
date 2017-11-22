#===============================================================================
#  include chip type from SDK cfg.mak file   
#===============================================================================
#include $(PWD)/../../../../../../../base.mak

#===============================================================================
#  set chip type by yourself   
#===============================================================================
#CFG_HI_CHIP_TYPE = hi3716cv200
#CFG_HI_CHIP_TYPE = hi3716cv200es
#CFG_HI_CHIP_TYPE = hi3719
#CFG_HI_CHIP_TYPE = hi3535
CFG_HI_CHIP_TYPE = hi3716mv310
#CFG_HI_CHIP_TYPE = hi3716m
#CFG_HI_CHIP_TYPE = hi3716c
#CFG_HI_CHIP_TYPE = hi3716h
#===============================================================================
#   chip type used by STB
#   PRODUCT_DIR: product path
#   CFG_CAP_DIR£ºvfmw decode capbility
#===============================================================================
PRODUCT_DIR = Hi3716MV310
CFG_CAP_DIR = CFG0
#CFG_CAP_DIR = HD_FULL_Source
#CFG_CAP_DIR = SD_ONLY_Source
#CFG_CAP_DIR = HD_SIMPLE_Source
KTEST_CFLAGS := -DCHIP_TYPE_HI3716mv310