################################################################################
#    ./config.mk
#    Create By CaiZhiYong 
#    2011.06.22
################################################################################
#

#######   export val:     board tools ##################
#  CFG_HI_TOOL_DOSFS_SUPPORT
#  CFG_HI_TOOL_E2FSPROGS_SUPPORT
#  CFG_HI_TOOL_FILECAP_SUPPORT
#  CFG_HI_TOOL_GDB_SUPPORT
#  CFG_HI_TOOL_IPTABLES_SUPPORT
#  CFG_HI_TOOL_MTDUTILS_SUPPORT
#  CFG_HI_TOOL_REBOOT_SUPPORT
#  CFG_HI_TOOL_REG_SUPPORT
#  CFG_HI_TOOL_SANDBOX_SUPPORT
#  CFG_HI_TOOL_TOP_SUPPORT

# config default prefix
CONFIG_PREFIX=$(shell pwd)/pub

################################################################################

# udev support
CONFIG_TOOL_UDEV=$(CFG_HI_TOOL_UDEV_SUPPORT)

# dosfstools support
CONFIG_TOOL_DOSFS=$(CFG_HI_TOOL_DOSFS_SUPPORT)

# extfstools support
CONFIG_TOOL_E2FSPROGS=$(CFG_HI_TOOL_E2FSPROGS_SUPPORT)

# file capability tools support, for ca only
CONFIG_TOOL_FILECAP=$(CFG_HI_TOOL_FILECAP_SUPPORT)

# gdb tools support
CONFIG_TOOL_GDB=$(CFG_HI_TOOL_GDB_SUPPORT)

# include iptables utils
CONFIG_TOOL_IPTABLES=$(CFG_HI_TOOL_IPTABLES_SUPPORT)

# include mtd utils
CONFIG_TOOL_MTD_UTILS=$(CFG_HI_TOOL_MTDUTILS_SUPPORT)

# reg tools: himd, himm, himc etc.
CONFIG_TOOL_REG=$(CFG_HI_TOOL_REG_SUPPORT)

# include sandbox tools, for ca only
CONFIG_TOOL_SANDBOX=$(CFG_HI_TOOL_SANDBOX_SUPPORT)

# include standard top tools
CONFIG_TOOL_TOP=$(CFG_HI_TOOL_TOP_SUPPORT)

# include pppd tools
CONFIG_TOOL_PPPD=$(CFG_HI_TOOL_PPPD_SUPPORT)

# msp_debug for log server
CONFIG_MSP_DEBUG=$(CFG_HI_TOOL_MSP_DEBUG_SUPPORT)

# include soc_server tools
CONFIG_TOOL_SOC_SERVER=$(CFG_HI_TOOL_SOC_SERVER)

# lxc container tools
CONFIG_LXC_CONTAINER=$(CFG_HI_LXC_CONTAINER_SUPPORT)

# include iperf tools
CONFIG_TOOL_IPERF=$(CFG_HI_TOOL_IPERF_SUPPORT)

# include memtester tool
CONFIG_TOOL_MEMTESTER=$(CFG_HI_TOOL_MEMTESTER_SUPPORT)
