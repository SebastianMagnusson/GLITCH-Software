#include <stdio.h>
#include "esp_log.h"
#include "driver/gpio.h"


// This shit don't work on our ESP since there are no LED pins
void gpio_init(int LED_PIN);