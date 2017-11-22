#ifndef __HI_IRQS_H__
#define __HI_IRQS_H__

#define HISI_GIC_IRQ_START      (32)
#define IRQ_LOCALTIMER          (29)
#define INTNR_COMMTX0           (HISI_GIC_IRQ_START + 0)
#define INTNR_COMMRX0           (HISI_GIC_IRQ_START + 2)
#define INTNR_WATCHDOG          (HISI_GIC_IRQ_START + 4)
#define INTNR_TIMER_0_1         (HISI_GIC_IRQ_START + 5) /* Timer 0 and 1 */
#define INTNR_TIMER_2_3         (HISI_GIC_IRQ_START + 6) /* Timer 2 and 3 */
#define INTNR_TIMER_4_5         (HISI_GIC_IRQ_START + 7) /* Timer 4 and 5 */
#define INTNR_TIMER_6_7         (HISI_GIC_IRQ_START + 8) /* Timer 6 and 7 */
#define INTNR_GPIO_0            (HISI_GIC_IRQ_START + 9) /* GPIO 0 */
#define INTNR_GPIO_1            (HISI_GIC_IRQ_START + 10)/* GPIO 1 */
#define INTNR_GPIO_2            (HISI_GIC_IRQ_START + 11)/* GPIO 2 */
#define INTNR_GPIO_3            (HISI_GIC_IRQ_START + 12)/* GPIO 3 */
#define INTNR_GPIO_4            (HISI_GIC_IRQ_START + 13)/* GPIO 4 */
#define INTNR_GPIO_5            (HISI_GIC_IRQ_START + 14)/* GPIO 5 */
#define INTNR_GPIO_6            (HISI_GIC_IRQ_START + 15)/* GPIO 6 */
#define INTNR_GPIO_7            (HISI_GIC_IRQ_START + 16)/* GPIO 7 */
#define INTNR_GPIO_8            (HISI_GIC_IRQ_START + 17)/* GPIO 8 */
#define INTNR_GPIO_9            (HISI_GIC_IRQ_START + 18)/* GPIO 9 */
#define INTNR_GPIO_10           (HISI_GIC_IRQ_START + 19)/* GPIO 10 */
#define INTNR_GPIO_11           (HISI_GIC_IRQ_START + 20)/* GPIO 11 */
#define INTNR_GPIO_12           (HISI_GIC_IRQ_START + 21)/* GPIO 12 */
#define INTNR_I2C0              (HISI_GIC_IRQ_START + 22)
#define INTNR_I2C1              (HISI_GIC_IRQ_START + 23)
#define INTNR_I2C2              (HISI_GIC_IRQ_START + 24)
#define INTNR_I2C3              (HISI_GIC_IRQ_START + 25)
#define INTNR_UART0             (HISI_GIC_IRQ_START + 28)
#define INTNR_UART1             (HISI_GIC_IRQ_START + 27)
#define INTNR_ETH               (HISI_GIC_IRQ_START + 51) /*SF */
#define INTNR_L2CACHE_CHK0_INT  (HISI_GIC_IRQ_START + 72)
#define INTNR_L2CACHE_CHK1_INT  (HISI_GIC_IRQ_START + 73)
#define INTNR_L2CACHE_INT_COMB  (HISI_GIC_IRQ_START + 74)
#define INTNR_A9_PMU_INT        (HISI_GIC_IRQ_START + 75)
#define NR_IRQS                 (HISI_GIC_IRQ_START + 96)

#define MAX_GIC_NR              1

#endif
