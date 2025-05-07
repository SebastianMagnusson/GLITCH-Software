#include <stdio.h>

#ifndef es32dev
#include <stdint.h>
#include <stdlib.h>
#endif

#ifdef es32dev
#include "esp_log.h"
#endif

int priority_assign(uint8_t* data);
