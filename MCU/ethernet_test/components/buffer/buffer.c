#include <stdio.h>
#include <stdbool.h> 
#include <string.h>
#include "esp_log.h"
#include "sdkconfig.h"
#include "buffer.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

frame_tm* head_tm; // Head of the linked list for tm buffer

// Circular array for tc buffer with max size of MAX_TC_BUFFER_SIZE
// Curcular means that the as long as there are not more than MAX_TC_BUFFER_SIZE commands to be sent, the buffer will not overflow
uint8_t* buffer_tc[CONFIG_MAX_TC_BUFFER_SIZE]; 
int front_tc; 
int size_tc; 

// Circular array for radiation data buffer with max size of MAX_RADIATION_BUFFER_SIZE
uint8_t* buffer_rad[CONFIG_MAX_RADIATION_BUFFER_SIZE];
int front_rad;
int size_rad;

int check_length(uint8_t* data) {
    int telemetry_type = (data[0] >> 6) & 0b00000011;  // Extract first 2 bits from MSB
    
    if (telemetry_type == CONFIG_HOUSEKEEPING_PACKET_ID){
        return CONFIG_HOUSEKEEPING_PACKET_SIZE; 
    } 
    if (telemetry_type == CONFIG_BITFLIP_PACKET_ID){
        return CONFIG_BITFLIP_PACKET_SIZE; 
    }
    if (telemetry_type == CONFIG_RADIATION_PACKET_ID){
        return CONFIG_RADIATION_PACKET_SIZE; 
    }
    if (telemetry_type == CONFIG_ACKNOWLEDGEMENT_PACKET_ID){
        return CONFIG_ACKNOWLEDGEMENT_PACKET_SIZE; 
    }

    return -1;
}

// Function to initialize the tm buffer as NULL and set the front and size to 0 for tc buffer
void buffer_init() {
    head_tm = NULL;
    for (int i = 0; i < CONFIG_MAX_TC_BUFFER_SIZE; i++) {
        buffer_tc[i] = NULL; 
    }
    front_tc = 0;
    size_tc = 0;
    for (int i = 0; i < CONFIG_MAX_RADIATION_BUFFER_SIZE; i++) {
        buffer_rad[i] = NULL; 
    }
    front_rad = 0;
    size_rad = 0;
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

    // Free any remaining TC data and reset the tc buffer
    for (int i = 0; i < CONFIG_MAX_TC_BUFFER_SIZE; i++) {
        if (buffer_tc[i] != NULL) {
            free(buffer_tc[i]); // Free the TC data
            buffer_tc[i] = NULL; 
        }
    }
    front_tc = 0;
    size_tc = 0;
}

void buffer_retreive_rad_end(void *pvParameters) {

    buffer_retreive_rad_end_params_t *params = (buffer_retreive_rad_end_params_t*)pvParameters;
    uint8_t** retreived_rad = params->retreived_rad;
    int size = params->size;
    int end = params->end;

    if (end < 0 || end >= CONFIG_MAX_RADIATION_BUFFER_SIZE) {
        return;
    }

    int front_temp = front_rad;
    int index = size/2;

    while (front_rad != end) {
        if (front_rad != front_temp) {
            retreived_rad[index] = buffer_rad[front_rad];
            front_temp = front_rad;
            index++;
        }
    }

    vTaskDelete(NULL);
    return;

}

void buffer_retrieve_rad(uint8_t **out, int count) {
    if (count <= 0 || count > size_rad) return;
    for (int i = 0; i < count; i++) {
        int idx = (front_rad - (count - 1 - i) + CONFIG_MAX_RADIATION_BUFFER_SIZE) % CONFIG_MAX_RADIATION_BUFFER_SIZE;
        out[i] = buffer_rad[idx]; 
    }
}

void buffer_add_rad(uint8_t* data) {
    
    // Calculate the next position to insert (one position after front_rad)
    int next_pos = (front_rad + 1) % CONFIG_MAX_RADIATION_BUFFER_SIZE;
    
    // Add data at the next position
    buffer_rad[next_pos] = data; 
    ESP_LOGI("Buffer", "Radiation data added to buffer - Byte 0: 0x%02X (0b%c%c%c%c%c%c%c%c), Byte 1: 0x%02X (0b%c%c%c%c%c%c%c%c)", 
             data[0], 
             (data[0] & 0x80) ? '1' : '0', (data[0] & 0x40) ? '1' : '0', (data[0] & 0x20) ? '1' : '0', (data[0] & 0x10) ? '1' : '0',
             (data[0] & 0x08) ? '1' : '0', (data[0] & 0x04) ? '1' : '0', (data[0] & 0x02) ? '1' : '0', (data[0] & 0x01) ? '1' : '0',
             data[1],
             (data[1] & 0x80) ? '1' : '0', (data[1] & 0x40) ? '1' : '0', (data[1] & 0x20) ? '1' : '0', (data[1] & 0x10) ? '1' : '0',
             (data[1] & 0x08) ? '1' : '0', (data[1] & 0x04) ? '1' : '0', (data[1] & 0x02) ? '1' : '0', (data[1] & 0x01) ? '1' : '0'); 
    
    // Update front_rad to point to the newest item
    front_rad = next_pos;
    
    // Update size only if buffer isn't full yet
    if (size_rad < CONFIG_MAX_RADIATION_BUFFER_SIZE) {
        size_rad++;
    }
    
    return;
}

void buffer_add_tm(int priority, uint8_t* data) {
    // Check if the priority is valid (0-3)
    if (priority < 0 || priority > 3) {
        ESP_LOGE("Buffer", "Invalid priority: %d, No data added to buffer", priority);
        return;
    }

    // Remove the RAD packet interception - let all packets use TM buffer
    int len = check_length(data);

    frame_tm* new_frame = (frame_tm*)calloc(1, sizeof(frame_tm));
    if (!new_frame) {
        ESP_LOGE("Buffer", "Failed to allocate memory for frame_tm");
        return;
    }

    new_frame->data = (uint8_t *)calloc(len, sizeof(uint8_t));
    if (!new_frame->data) {
        ESP_LOGE("Buffer", "Failed to allocate memory for data");
        free(new_frame);
        return;
    }

    ESP_LOGI("Buffer", "TM added to buffer with priority %d and length %d - Byte 0: 0x%02X (0b%c%c%c%c%c%c%c%c), Byte 1: 0x%02X (0b%c%c%c%c%c%c%c%c)",
             priority, len, data[0], 
             (data[0] & 0x80) ? '1' : '0', (data[0] & 0x40) ? '1' : '0', (data[0] & 0x20) ? '1' : '0', (data[0] & 0x10) ? '1' : '0',
             (data[0] & 0x08) ? '1' : '0', (data[0] & 0x04) ? '1' : '0', (data[0] & 0x02) ? '1' : '0', (data[0] & 0x01) ? '1' : '0',
             data[1],
             (data[1] & 0x80) ? '1' : '0', (data[1] & 0x40) ? '1' : '0', (data[1] & 0x20) ? '1' : '0', (data[1] & 0x10) ? '1' : '0',
             (data[1] & 0x08) ? '1' : '0', (data[1] & 0x04) ? '1' : '0', (data[1] & 0x02) ? '1' : '0', (data[1] & 0x01) ? '1' : '0'); 

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

    uint8_t* data = frame->data;
    ESP_LOGI("Buffer", "TM retrieved from buffer - Byte 0: 0x%02X (0b%c%c%c%c%c%c%c%c), Byte 1: 0x%02X (0b%c%c%c%c%c%c%c%c)", 
             frame->data[0], 
             (frame->data[0] & 0x80) ? '1' : '0', (frame->data[0] & 0x40) ? '1' : '0', (frame->data[0] & 0x20) ? '1' : '0', (frame->data[0] & 0x10) ? '1' : '0',
             (frame->data[0] & 0x08) ? '1' : '0', (frame->data[0] & 0x04) ? '1' : '0', (frame->data[0] & 0x02) ? '1' : '0', (frame->data[0] & 0x01) ? '1' : '0',
             frame->data[1],
             (frame->data[1] & 0x80) ? '1' : '0', (frame->data[1] & 0x40) ? '1' : '0', (frame->data[1] & 0x20) ? '1' : '0', (frame->data[1] & 0x10) ? '1' : '0',
             (frame->data[1] & 0x08) ? '1' : '0', (frame->data[1] & 0x04) ? '1' : '0', (frame->data[1] & 0x02) ? '1' : '0', (frame->data[1] & 0x01) ? '1' : '0');

    free(frame);
    return data;

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

    // Allocate memory for the TC data copy
    int data_length = 7; // Standard TC packet length
    uint8_t* data_copy = (uint8_t*)malloc(data_length);
    if (data_copy == NULL) {
        ESP_LOGE("Buffer", "Failed to allocate memory for TC data");
        return;
    }
    
    memcpy(data_copy, data, data_length);

    // Add the copied data to the buffer
    buffer_tc[(front_tc + size_tc) % CONFIG_MAX_TC_BUFFER_SIZE] = data_copy; 
    ESP_LOGI("Buffer", "TC added to buffer - Byte 0: 0x%02X (0b%c%c%c%c%c%c%c%c)", 
             data_copy[0], 
             (data_copy[0] & 0x80) ? '1' : '0', (data_copy[0] & 0x40) ? '1' : '0', (data_copy[0] & 0x20) ? '1' : '0', (data_copy[0] & 0x10) ? '1' : '0',
             (data_copy[0] & 0x08) ? '1' : '0', (data_copy[0] & 0x04) ? '1' : '0', (data_copy[0] & 0x02) ? '1' : '0', (data_copy[0] & 0x01) ? '1' : '0');
    size_tc++;
}

uint8_t* buffer_retreive_tc() {
    
    if (size_tc == 0) {
        return (uint8_t*)NULL; 
    }

    // Get the original data
    uint8_t* original_data = buffer_tc[front_tc]; 
    
    // Calculate the length needed
    int data_length = 7; // Based on your ethernet packet length
    
    // Create a copy for the caller
    uint8_t* copied_data = (uint8_t*)malloc(data_length);
    if (copied_data == NULL) {
        ESP_LOGE("Buffer", "Failed to allocate memory for TC copy");
        return NULL;
    }
    
    memcpy(copied_data, original_data, data_length);
    
    // Free the original data after copying, as buffer_retreive_tc now takes ownership
    free(original_data);
    buffer_tc[front_tc] = NULL;
    
    front_tc = (front_tc + 1) % CONFIG_MAX_TC_BUFFER_SIZE;
    size_tc--; 
    
    ESP_LOGI("Buffer", "TC retrieved from buffer - Byte 0: 0x%02X (0b%c%c%c%c%c%c%c%c)", 
             copied_data[0], 
             (copied_data[0] & 0x80) ? '1' : '0', (copied_data[0] & 0x40) ? '1' : '0', (copied_data[0] & 0x20) ? '1' : '0', (copied_data[0] & 0x10) ? '1' : '0',
             (copied_data[0] & 0x08) ? '1' : '0', (copied_data[0] & 0x04) ? '1' : '0', (copied_data[0] & 0x02) ? '1' : '0', (copied_data[0] & 0x01) ? '1' : '0');
    
    return copied_data; 
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