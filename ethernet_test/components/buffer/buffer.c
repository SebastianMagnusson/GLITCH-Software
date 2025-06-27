#include <stdio.h>
#include <stdbool.h> 
#include "esp_log.h"


#include "buffer.h"

#define MAX_BUFFER_SIZE 10 // Maximum size of the buffer (used for the circular array)



frame_tm* head_tm; // Head of the linked list for tm buffer

// Circular array for tc buffer with max size of MAX_BUFFER_SIZE
// Curcular means that the as long as there are not more than MAX_BUFFER_SIZE commands to be sent, the buffer will not overflow
uint8_t* buffer_tc[MAX_BUFFER_SIZE]; // Circular array for tc buffer with max size of MAX_BUFFER_SIZE
int front_tc; // Pointer to the front of the tc buffer
int size_tc; // Size of the tc buffer


void buffer_init() {
    head_tm = NULL; // Initialize the head of the linked list to NULL
    for (int i = 0; i < MAX_BUFFER_SIZE; i++) {
        buffer_tc[i] = NULL; // Initialize each element of the buffer to NULL
    }
    front_tc = 0; // Initialize the front of the tc buffer to 0
    size_tc = 0; // Initialize the size of the tc buffer to 0     
}

void buffer_add_tm(int priority, uint8_t* data) {
    // Check if the priority is valid (0-3)
    if (priority < 0 || priority > 3) {
        
        ESP_LOGE("Buffer", "Invalid priority: %d\nNo data added to buffer\n", priority); // Log error message
        
        return; // Return if the priority is invalid
    }

    frame_tm* new_frame = (frame_tm*)malloc(sizeof(frame_tm)); // Allocate memory for the new frame
    new_frame->data = data; // Set the data of the new frame
    new_frame->priority = priority; // Set the priority of the new frame

    if (head_tm == NULL) { // Check if the linked list is empty
        head_tm = new_frame; // Set the new frame as the head of the linked list
        head_tm->next = NULL; // Set the next pointer to NULL
        return; // Return after adding the frame to the buffer
    }

    frame_tm* current_frame = head_tm; // Start from the head of the linked list
    frame_tm* previous_frame = NULL; // Pointer to the previous frame in the linked list

    while (current_frame != NULL && current_frame->priority >= new_frame->priority) { // Traverse the linked list to find the correct position to insert the new frame based on priority
        previous_frame = current_frame; // Store the previous frame
        current_frame = current_frame->next; // Move to the next frame in the linked list
    }

    if (previous_frame == NULL) { // Check if the new frame should be inserted at the head of the linked list
        new_frame->next = head_tm; // Link the new frame to the current head of the linked list
        head_tm = new_frame; // Set the new frame as the head of the linked list
    } else {
        previous_frame->next = new_frame; // Link the previous frame to the new frame
        new_frame->next = current_frame; // Link the new frame to the current frame
    }

}

uint8_t* buffer_retreive_tm() {

    if (head_tm == NULL) { // Check if the linked list is empty
        
        ESP_LOGE("Buffer", "Buffer is empty, no data to retrieve\n"); // Log error message
        
        return (uint8_t*)NULL; // Return NULL if the buffer is empty
    }

    frame_tm* frame = head_tm; // Get the first frame in the linked list
    head_tm = head_tm->next; // Move the head pointer to the next frame in the linked list
    return frame->data; // Return the data of the first frame

}

frame_tm* peek_tm(int index) {
    if (head_tm == NULL) { // Check if the linked list is empty
        
        ESP_LOGE("Buffer", "Buffer is empty, no data to retrieve\n"); // Log error message
        
        return NULL; // Return NULL if the buffer is empty
    }

    frame_tm* current_frame = head_tm; // Start from the head of the linked list

    for (int i = 0; i < index && current_frame != NULL; i++) { // Traverse the linked list to find the frame at the specified index
        current_frame = current_frame->next; // Move to the next frame in the linked list
    }

    if (current_frame == NULL) { // Check if the frame at the specified index exists
        
        ESP_LOGE("Buffer", "Frame at index %d does not exist\n", index); // Log error message
        
        return NULL; // Return NULL if the frame at the specified index does not exist
    }

    return current_frame; // Return the pointer to the frame at the specified index
}


void buffer_add_tc(uint8_t* data) {

    if (size_tc >= MAX_BUFFER_SIZE) { // Check if the buffer is full
        
        ESP_LOGE("Buffer", "Buffer is full, no data added\n"); // Log error message
        
        return; // Return if the buffer is full
    }

    buffer_tc[(front_tc + size_tc)%MAX_BUFFER_SIZE] = data; // Add the data to the buffer
    size_tc++; // Increment the size of the buffer
}

uint8_t* buffer_retreive_tc() {
    
    if (size_tc == 0) { // Check if the buffer is empty
        
        ESP_LOGE("Buffer", "Buffer is empty, no data to retrieve\n"); // Log error message
        
        return (uint8_t*)NULL; // Return NULL if the buffer is empty
    }

    uint8_t* data = buffer_tc[front_tc]; // Get the first data in the buffer
    free(buffer_tc[front_tc]); // Free the memory allocated for the data
    front_tc = (front_tc + 1) % MAX_BUFFER_SIZE; // Move the front pointer to the next data in the buffer
    size_tc--; // Decrement the size of the buffer
    return data; // Return the data of the first frame
}

uint8_t* peek_tc(int index) {
    if (size_tc == 0) { // Check if the buffer is empty
        
        ESP_LOGE("Buffer", "Buffer is empty, no data to retrieve\n"); // Log error message
        
        return (uint8_t*)NULL; // Return NULL if the buffer is empty
    }

    if (index < 0 || index >= size_tc) { // Check if the index is valid
        
        ESP_LOGE("Buffer", "Invalid index: %d\n", index); // Log error message
        
        return (uint8_t*)NULL; // Return NULL if the index is invalid
    }

    return buffer_tc[(front_tc + index) % MAX_BUFFER_SIZE]; // Return the data at the specified index in the buffer
}