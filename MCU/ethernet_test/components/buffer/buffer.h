#include <stdio.h>
#include <stdint.h>
#include "esp_log.h"

#pragma once

typedef struct frame_tm{
	uint8_t* data; // Pointer to the Ethernet frame data
    int priority; // Priority of the frame (0-3)
    struct frame_tm* next; // Pointer to the next frame in the buffer (for linked list implementation)
}frame_tm;

/// @brief Function to check the length of the data based on telemetry type
/// @param uint8_t* Pointer to the data buffer (first byte of the data)
/// @return int: Length of the data to be read
int check_length(uint8_t* data); // Function to check the length of the data based on telemetry type

/// @brief Function to initialize the buffer
/// @note The function initializes the head of the linked list to NULL and allocates memory for the tc buffer
void buffer_init(); // Function to initialize the buffer

/// @brief Function to deinitialize the buffer and free memory
/// @note The function frees the memory allocated for the tm buffer and sets the head to NULL
void buffer_deinit(); // Function to deinitialize the buffer and free memory

/// @brief Function to add frame to the buffer with priority
/// @param int: Priority of the frame (0-3)
/// @param uint8_t*: Pointer to the frame to be added to the buffer
/// @param int: Length of the frame to be added to the buffer
/// @note The function uses the frame_tm_t structure to store the ethernet frame and its priority in a linked list
void buffer_add_tm(int priority, uint8_t* data); // Function to add tm frame to the buffer with priority

/// @brief Function to add command ready to be sent to FPGA
/// @param uint8_t*: Pointer to the data to be added to the buffer
void buffer_add_tc(uint8_t* data); // Function to add frame to the tc buffer

/// @brief Function to retreive frames from buffer
/// @return Ethernet frame
uint8_t* buffer_retreive_tm(); // Function to retreive tm frames from buffer

/// @brief Function to retreive command ready to be sent to FPGA
/// @return uint8_t*: Pointer to the data to be retreived from the buffer
uint8_t* buffer_retreive_tc(); // Function to retreive tc frames from buffer

/// @brief Function to peek tm frame at a specific index
/// @param int: Index of the frame to be peeked
/// @return frame_tm*: The frame_tm pointer at the specified index
frame_tm* peek_tm(int index); 

/// @brief Function to peek tc frame at a specific index
/// @param int: Index of the frame to be peeked
/// @return uint8_t*: The data pointer at the specified index
uint8_t* peek_tc(int index);