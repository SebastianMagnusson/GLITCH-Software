#include <stdio.h>
#include <stdbool.h> 

#ifndef esp32dev
#include <stdint.h> 
#include <stdlib.h>
#endif

#ifdef esp32dev
#include "esp_log.h"
#endif

#include "buffer.h"

#define MAX_BUFFER_SIZE 10 // Maximum size of the buffer (used for the circular array)

struct frame_tm{
	uint8_t* data; // Pointer to the Ethernet frame data
    int priority; // Priority of the frame (0-3)
    frame_tm_t* next; // Pointer to the next frame in the buffer (for linked list implementation)
};

frame_tm_t* head_tm; // Head of the linked list for tm buffer

// Circular array for tc buffer with max size of MAX_BUFFER_SIZE
// Curcular means that the as long as there are not more than MAX_BUFFER_SIZE commands to be sent, the buffer will not overflow
uint8_t* buffer_tc[MAX_BUFFER_SIZE]; // Circular array for tc buffer with max size of MAX_BUFFER_SIZE
int front_tc; // Pointer to the front of the tc buffer
int size_tc; // Size of the tc buffer


/// @brief Function to initialize the buffer
/// @note The function initializes the head of the linked list to NULL and allocates memory for the tc buffer
void buffer_init() {
    head_tm = NULL; // Initialize the head of the linked list to NULL
    for (int i = 0; i < MAX_BUFFER_SIZE; i++) {
        buffer_tc[i] = NULL; // Initialize each element of the buffer to NULL
    }
    front_tc = 0; // Initialize the front of the tc buffer to 0
    size_tc = 0; // Initialize the size of the tc buffer to 0     
}

/// @brief Function to add frame to the buffer with priority
/// @param priority: Priority of the frame (0-3)
/// @param data: Pointer to the frame to be added to the buffer
/// @note The function uses the frame_tm_t structure to store the ethernet frame and its priority in a linked list
void buffer_add_tm(int priority, uint8_t* data) {
    // Check if the priority is valid (0-3)
    if (priority < 0 || priority > 3) {
        #ifdef esp32dev
        ESP_LOGE("Buffer", "Invalid priority: %d\nNo data added to buffer\n", priority); // Log error message
        #endif
        return; // Return if the priority is invalid
    }

    frame_tm_t* new_frame = (frame_tm_t*)malloc(sizeof(frame_tm_t)); // Allocate memory for the new frame
    new_frame->data = data; // Set the data of the new frame
    new_frame->priority = priority; // Set the priority of the new frame

    if (head_tm == NULL) { // Check if the linked list is empty
        head_tm = new_frame; // Set the new frame as the head of the linked list
        head_tm->next = NULL; // Set the next pointer to NULL
        return; // Return after adding the frame to the buffer
    }

    frame_tm_t* current_frame = head_tm; // Start from the head of the linked list

    while (current_frame->next != NULL && current_frame->next->priority >= new_frame->priority) { // Traverse the linked list to find the correct position to insert the new frame based on priority
        current_frame = current_frame->next; // Move to the next frame in the linked list
    }

    if (current_frame->next == NULL) {
        new_frame->next = NULL; // Set the next pointer of the new frame to NULL
        current_frame->next = new_frame; // Insert the new frame at the end of the linked list
    } else {
        new_frame->next = current_frame->next; // Link the new frame to the next frame
        current_frame->next = new_frame; // Link the current frame to the new frame
    }

}

/// @brief Function to retreive frames from buffer
/// @return Ethernet frame
uint8_t* buffer_retreive_tm() {

    if (head_tm == NULL) { // Check if the linked list is empty
        #ifdef esp32dev
        ESP_LOGE("Buffer", "Buffer is empty, no data to retrieve\n"); // Log error message
        #endif
        return (uint8_t*)NULL; // Return NULL if the buffer is empty
    }

    frame_tm_t* frame = head_tm; // Get the first frame in the linked list
    head_tm = head_tm->next; // Move the head pointer to the next frame in the linked list
    return frame->data; // Return the data of the first frame

}

/// @brief Function to add command ready to be sent to FPGA
/// @param data: Pointer to the data to be added to the buffer
void buffer_add_tc(uint8_t* data) {

    if (size_tc >= MAX_BUFFER_SIZE) { // Check if the buffer is full
        #ifdef esp32dev
        ESP_LOGE("Buffer", "Buffer is full, no data added\n"); // Log error message
        #endif
        return; // Return if the buffer is full
    }

    buffer_tc[(front_tc + size_tc)%MAX_BUFFER_SIZE] = data; // Add the data to the buffer
    size_tc++; // Increment the size of the buffer
}

uint8_t* buffer_retreive_tc() {
    
    if (size_tc == 0) { // Check if the buffer is empty
        #ifdef esp32dev
        ESP_LOGE("Buffer", "Buffer is empty, no data to retrieve\n"); // Log error message
        #endif
        return (uint8_t*)NULL; // Return NULL if the buffer is empty
    }

    uint8_t* data = buffer_tc[front_tc]; // Get the first data in the buffer
    free(buffer_tc[front_tc]); // Free the memory allocated for the data
    front_tc = (front_tc + 1) % MAX_BUFFER_SIZE; // Move the front pointer to the next data in the buffer
    size_tc--; // Decrement the size of the buffer
    return data; // Return the data of the first frame
}