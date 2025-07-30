#include <stdio.h>
#include <stdbool.h> 
#include <string.h>
#include "esp_log.h"
#include "sdkconfig.h"
#include "buffer.h"

#define CHECK_BIT(var,pos) (((var)>>(pos)) & 1) // Macro to check if a bit is set in a variable
frame_tm* head_tm; // Head of the linked list for tm buffer

// Circular array for tc buffer with max size of MAX_TC_BUFFER_SIZE
// Curcular means that the as long as there are not more than MAX_TC_BUFFER_SIZE commands to be sent, the buffer will not overflow
uint8_t* buffer_tc[CONFIG_MAX_TC_BUFFER_SIZE]; 
int front_tc; 
int size_tc; 


int check_length(uint8_t* data) {
    int telemetry_type = CHECK_BIT(data[0], 0) + CHECK_BIT(data[0], 1) * 2; // Get the telemetry type from the first byte

    if (telemetry_type == 0){
        return 28; // Should return the length of the data to be read (look in sed or somewhere)
    } 
    if (telemetry_type == 1){
        return 28; // Should return the length of the data to be read (look in sed or somewhere)
    }
    if (telemetry_type == 2){
        return 3; // Should return the length of the data to be read (This ones wierd cuz don't really know size)
    }
    if (telemetry_type == 3){
        return 4; // Should return the length of the data to be read (look in sed or somewhere)
    }

    return (int)NULL;

}

// Function to initialize the tm buffer as NULL and set the front and size to 0 for tc buffer
void buffer_init() {
    head_tm = NULL;
    for (int i = 0; i < CONFIG_MAX_TC_BUFFER_SIZE; i++) {
        buffer_tc[i] = NULL; 
    }
    front_tc = 0;
    size_tc = 0;
}

void buffer_deinit() {
    // Free the memory allocated for the tm buffer
    frame_tm* current_frame = head_tm;
    while (current_frame != NULL) {
        frame_tm* next_frame = current_frame->next;
        free(current_frame->data); // Free the data pointer
        free(current_frame); // Free the frame itself
        current_frame = next_frame;
    }
    head_tm = NULL; // Set head to NULL after deinitialization

    // Reset the tc buffer
    for (int i = 0; i < CONFIG_MAX_TC_BUFFER_SIZE; i++) {
        buffer_tc[i] = NULL; 
    }
    front_tc = 0;
    size_tc = 0;
}

void buffer_add_tm(int priority, uint8_t* data) {
    // Check if the priority is valid (0-3)
    if (priority < 0 || priority > 3) {
        
        ESP_LOGE("Buffer", "Invalid priority: %d, No data added to buffer", priority);
        
        return;
    }
    
    int len = check_length(data);

    frame_tm* new_frame = (frame_tm*)malloc(sizeof(frame_tm));
    if (!new_frame) {
        ESP_LOGE("Buffer", "Failed to allocate memory for frame_tm");
        return;
    }

    new_frame->data = (uint8_t *)malloc(len);
    if (!new_frame->data) {
        ESP_LOGE("Buffer", "Failed to allocate memory for data");
        free(new_frame);
        return;
    }

    ESP_LOGI("Buffer", "TM added to buffer with priority %d and length %d: %s",
             priority, len, data); 

    memcpy(new_frame->data, data, len);
    new_frame->priority = priority;

    // Check if the new frame is the first frame to be added to the buffer
    if (head_tm == NULL) { 
        head_tm = new_frame; 
        head_tm->next = NULL;
        return;
    }

    frame_tm* current_frame = head_tm;
    frame_tm* previous_frame = NULL; 

    // Traverse the linked list to find the correct position to insert the new frame based on priority
    while (current_frame != NULL && current_frame->priority >= new_frame->priority) { 
        previous_frame = current_frame; 
        current_frame = current_frame->next;
    }

    // Insert the new frame in the linked list based on priority
    if (previous_frame == NULL) { 
        new_frame->next = head_tm; 
        head_tm = new_frame; 
    } else {
        previous_frame->next = new_frame; 
        new_frame->next = current_frame; 
    }

}

uint8_t* buffer_retreive_tm() {

    if (head_tm == NULL) {         
        return (uint8_t*)NULL;
    }

    // Take the first frame and remove it from the buffer
    frame_tm* frame = head_tm; 
    head_tm = head_tm->next; 
    ESP_LOGI("Buffer", "TM retrieved from buffer: %s", frame->data);
    return frame->data; 

}

frame_tm* peek_tm(int index) {
    if (head_tm == NULL) {        
        ESP_LOGE("Buffer", "Buffer is empty, no data to retrieve");
        return NULL;
    }

    frame_tm* current_frame = head_tm; 

    for (int i = 0; i < index && current_frame != NULL; i++) { 
        current_frame = current_frame->next; 
    }

    if (current_frame == NULL) { 
        ESP_LOGE("Buffer", "Frame at index %d does not exist", index);
        return NULL;
    }

    return current_frame;
}


void buffer_add_tc(uint8_t* data) {

    if (size_tc >= CONFIG_MAX_TC_BUFFER_SIZE) {        
        ESP_LOGE("Buffer", "Buffer is full, no data added");        
        return; 
    }

    // Add the data to the buffer and increment the size
    buffer_tc[(front_tc + size_tc)%CONFIG_MAX_TC_BUFFER_SIZE] = data; 
    ESP_LOGI("Buffer", "TC added to buffer: %s", data); 
    size_tc++;
}

uint8_t* buffer_retreive_tc() {
    
    if (size_tc == 0) {
        return (uint8_t*)NULL; 
    }

    // Retrieve the data from the buffer and decrement the size
    uint8_t* data = buffer_tc[front_tc]; 
    front_tc = (front_tc + 1) % CONFIG_MAX_TC_BUFFER_SIZE;
    size_tc--; ESP_LOGI("Buffer", "TC retreived from buffer: %s", data);
    return data; 
}

uint8_t* peek_tc(int index) {
    if (size_tc == 0) {        
        ESP_LOGE("Buffer", "Buffer is empty, no data to retrieve"); 
        return (uint8_t*)NULL; 
    }

    if (index < 0 || index >= size_tc) {        
        ESP_LOGE("Buffer", "Invalid index: %d", index); 
        return (uint8_t*)NULL; 
    }

    return buffer_tc[(front_tc + index) % CONFIG_MAX_TC_BUFFER_SIZE];
}