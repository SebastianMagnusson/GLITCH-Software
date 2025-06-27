#include <stdio.h>
#include "esp_log.h"

#pragma once

typedef struct frame_tm{
	uint8_t* data; // Pointer to the Ethernet frame data
    int priority; // Priority of the frame (0-3)
    struct frame_tm* next; // Pointer to the next frame in the buffer (for linked list implementation)
}frame_tm;

/// @brief Function to initialize the buffer
/// @note The function initializes the head of the linked list to NULL and allocates memory for the tc buffer
void buffer_init(); // Function to initialize the buffer

/// @brief Function to add frame to the buffer with priority
/// @param priority: Priority of the frame (0-3)
/// @param data: Pointer to the frame to be added to the buffer
/// @note The function uses the frame_tm_t structure to store the ethernet frame and its priority in a linked list
void buffer_add_tm(int priority, uint8_t* data); // Function to add tm frame to the buffer with priority

/// @brief Function to add command ready to be sent to FPGA
/// @param data: Pointer to the data to be added to the buffer
void buffer_add_tc(uint8_t* data); // Function to add frame to the tc buffer

/// @brief Function to retreive frames from buffer
/// @return Ethernet frame
uint8_t* buffer_retreive_tm(); // Function to retreive tm frames from buffer

/// @brief Function to retreive command ready to be sent to FPGA
/// @return data: Pointer to the data to be retreived from the buffer
uint8_t* buffer_retreive_tc(); // Function to retreive tc frames from buffer

/// @brief Function to peek tm frame at a specific index
/// @param index : Index of the frame to be peeked
/// @return The frame_tm pointer at the specified index
frame_tm* peek_tm(int index); 