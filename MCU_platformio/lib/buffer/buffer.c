#include <stdio.h>
#include "esp_log.h"
#include "buffer.h"

// TODO: fix everything to work with the new linked list, and implement one for the tc buffer too.       

// The size needs to be looked over, maybe implement a dynamic array or linked list instead of a static array
frame_t* buffer_tm[100]; // Declare tm buffer
int size_tm = 0; // Initialize size of tm buffer to 0

uint8_t* buffer_tc[100]; // Declare tc buffer
int size_tc = 0; // Initialize size of tc buffer to 0

frame_t* head_tm; // Head of the linked list for tm buffer


/// @brief Function to add frame to the buffer with priority
/// @param priority: Priority of the frame (0-3)
/// @param frame: Pointer to the Ethernet frame to be added to the buffer
void buffer_add_tm(int priority, uint8_t* data) {
    // Check if the priority is valid (0-3)
    if (priority < 0 || priority > 3) {
        ESP_LOGE("Buffer", "Invalid priority: %d\nNo data added to buffer\n", priority); // Log error message
        return; // Return if the priority is invalid
    }

    if (size_tm >= 100) { // Check if the buffer is full
        ESP_LOGE("Buffer", "Buffer is full, no data added\n"); // Log error message
        return; // Return if the buffer is full
    }

    frame_t* new_frame = (frame_t*)malloc(sizeof(frame_t)); // Allocate memory for the new frame
    new_frame->data = data; // Set the data of the new frame
    new_frame->priority = priority; // Set the priority of the new frame

    // For use of linked list
    if (head_tm == NULL) { // Check if the linked list is empty
        head_tm = new_frame; // Set the new frame as the head of the linked list
        head_tm->next = NULL; // Set the next pointer to NULL
        return; // Return after adding the frame to the buffer
    }

    frame_t* current_frame = head_tm; // Start from the head of the linked list

    while (current_frame->next != NULL && current_frame->next->priority >= priority) {
        current_frame = current_frame->next; // Move to the next frame in the linked list
    }

    if (current_frame->next == NULL) {
        current_frame->next = new_frame; // Insert the new frame at the end of the linked list
    } else {
        new_frame->next = current_frame->next; // Link the new frame to the next frame
        current_frame->next = new_frame; // Link the current frame to the new frame
    }

    // For use of static array
    int index = 0;

    while (buffer_tm[index] != NULL && buffer_tm[index]->priority >= priority) { // Find the index to insert the new frame based on priority
        
        index++;
        if (index >= 100) { // Check if the buffer is full
            ESP_LOGE("Buffer", "Buffer is full, no data added\n"); // Log error message
            free(new_frame); // Free the allocated memory for the new frame
            return; // Return if the buffer is full
        }
    }

    for (int i = size_tm + 1; i > index; i--) { // Shift frames to make space for the new frame
        buffer_tm[i] = buffer_tm[i - 1]; // Move the frames one position to the right
    }

    buffer_tm[index] = new_frame; // Insert the new frame at the correct index
    size_tm++; // Increment the size of the buffer
    return; // Return after adding the frame to the buffer
    
}

/// @brief Function to retreive frames from buffer
/// @return Ethernet frame
uint8_t* buffer_retreive_tm() {

    if (size_tm == 0 && buffer_tm[size_tm] == NULL) { // Check if the buffer is empty
        ESP_LOGE("Buffer", "Buffer is empty, no data to retrieve\n"); // Log error message
        return (uint8_t*)NULL; // Return NULL if the buffer is empty
    }

    frame_t* frame = buffer_tm[0]; // Get the first frame in the buffer

    for (int i = 0; i < size_tm - 1; i++) { // Shift frames to remove the first frame
        buffer_tm[i] = buffer_tm[i + 1]; // Move the frames one position to the left
    }

    size_tm--; // Decrement the size of the buffer
    buffer_tm[size_tm] = NULL; // Set the last position to NULL
    return frame->data; // Return the data of the first frame

}

/// @brief Function to add command ready to be sent to FPGA
/// @param data: Pointer to the data to be added to the buffer
void buffer_add_tc(uint8_t* data) {
    if (size_tc >= 100) {
        ESP_LOGE("Buffer", "Buffer is full, no data added\n"); // Log error message
        return; // Return if the buffer is full

    }
    buffer_tc[size_tc] = data; // Add the data to the buffer
    size_tc++; // Increment the size of the buffer
    return; // Return after adding the data to the buffer

}

uint8_t* buffer_retreive_tc() {
    if (size_tc == 0 && buffer_tc[size_tc] == NULL) { // Check if the buffer is empty
        ESP_LOGE("Buffer", "Buffer is empty, no data to retrieve\n"); // Log error message
        return (uint8_t*)NULL; // Return NULL if the buffer is empty
    }

    uint8_t* data = buffer_tc[0]; // Get the first data in the buffer

    for (int i = 0; i < size_tc - 1; i++) { // Shift data to remove the first data
        buffer_tc[i] = buffer_tc[i + 1]; // Move the data one position to the left
    }

    size_tc--; // Decrement the size of the buffer
    buffer_tc[size_tc] = NULL; // Set the last position to NULL
    return data; // Return the first data in the buffer

}