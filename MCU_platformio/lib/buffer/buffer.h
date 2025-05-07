#include <stdio.h>

#ifndef esp32dev
#include <stdint.h>
#include <stdlib.h>
#endif

#ifdef esp32dev
#include "esp_log.h"
#endif

typedef struct frame_tm frame_tm_t; // Forward declaration of frame_tm structure

void buffer_init(); // Function to initialize the buffer

void buffer_add_tm(int priority, uint8_t* data); // Function to add tm frame to the buffer with priority
void buffer_add_tc(uint8_t* data); // Function to add frame to the tc buffer

uint8_t* buffer_retreive_tm(); // Function to retreive tm frames from buffer
uint8_t* buffer_retreive_tc(); // Function to retreive tc frames from buffer