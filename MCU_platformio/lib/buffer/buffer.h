#include <stdio.h>
#include "esp_log.h"

typedef struct {
	uint8_t* data; // Pointer to the Ethernet frame data
    int priority; // Priority of the frame (0-3)
    frame_t* next; // Pointer to the next frame in the buffer (for linked list implementation)
} frame_t;

// The size needs to be looked over, maybe implement a dynamic array or linked list instead of a static array
extern frame_t* buffer_tm[100]; // Declare tm buffer
extern int size_tm; // Initialize size of tm buffer to 0

extern uint8_t* buffer_tc[100]; // Declare tc buffer
extern int size_tc; // Initialize size of tc buffer to 0

void buffer_add_tm(int priority, uint8_t* data);
uint8_t* buffer_retreive_tm();