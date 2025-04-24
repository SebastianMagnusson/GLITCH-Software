#include <stdio.h>
#include "esp_log.h"
#include "driver/gpio.h"
#include "gpio.h"


// This shit don't work on our ESP since there are no LED pins
void gpio_init(int LED_PIN) {
    // Configure the GPIO pin
    gpio_config_t io_conf = {
        .pin_bit_mask = (1ULL << LED_PIN),
        .mode = GPIO_MODE_OUTPUT,
        .pull_up_en = GPIO_PULLUP_DISABLE,
        .pull_down_en = GPIO_PULLDOWN_DISABLE,
        .intr_type = GPIO_INTR_DISABLE
    };

    // Initialize the GPIO with the configuration
    gpio_config(&io_conf);
    ESP_LOGI("GPIO", "GPIO configured successfully\n"); // Log the success message
}
