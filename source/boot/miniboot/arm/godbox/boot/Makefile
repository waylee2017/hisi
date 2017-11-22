################################################################################
#    Copyright (C) 2014 Hisilicon STB Development Dept
#    All rights reserved.
#####
#    Create by Cai Zhiyong
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#    http://www.apache.org/licenses/LICENSE-2.0
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
################################################################################

SRCS-y := start.S ddrphy_train_route.S early_uart.S

SRCS-y += chip.c emmc_boot.c lowlevel_init.c \
	irq.c cpu.c

SRCS-$(CONFIG_NAND_RANDOMIZER_BOOT) += hinfc504_boot_nandr.c

CFLAGS += -Wall -Wstrict-prototypes -fno-stack-protector

TEMPS   += $(TOPDIR)/.init.reg

$(SRCDIR)start.o: $(TOPDIR)/.init.reg

$(TOPDIR)/.init.reg: $(INIT_REG)
	@cp -f $< $@
