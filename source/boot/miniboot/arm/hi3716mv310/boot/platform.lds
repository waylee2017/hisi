arm/hi3716mv310/boot/start.o                 (.text)
arm/hi3716mv310/boot/early_uart.o            (.text)
arm/hi3716mv310/boot/lowlevel_init.o         (.text)
arm/hi3716mv310/boot/ddrphy_training.o       (.text)
arm/hi3716mv310/boot/ddrphy_training_func.o  (.text)
arm/hi3716mv310/boot/hi3716mv310_ddr_training.o  (.text)
arm/hi3716mv310/boot/ddr_dataeye_training.o  (.text)
arm/hi3716mv310/boot/chip.o                  (.text)

__init_end = .;
ASSERT(((__init_end - __text_start) < 0x4c00), "init sections too big!");
