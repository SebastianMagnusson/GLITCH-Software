#include <stdio.h>
#include <stdint.h>
#include "unity.h"
#include "buffer.h"

void setUp(void) {
    // This function will be called before each test
    buffer_init(); // Initialize the buffer before each test
}

void tearDown(void) {
    // This function will be called after each test
    // Free any allocated memory or perform cleanup if necessary
}

void test_buffer_add_tm(void) {
    uint8_t data1[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}; // Sample data for the test
    uint8_t data2[10] = {10, 11, 12, 13, 14, 15, 16, 17, 18, 19}; // Sample data for the test
    uint8_t data3[10] = {20, 21, 22, 23, 24, 25, 26, 27, 28, 29}; // Sample data for the test

    buffer_add_tm(1, data1); // Add first frame with priority 1
    frame_tm* current_frame = peek_tm(0); // Peek the first frame in the buffer
    TEST_ASSERT_NOT_NULL(current_frame); // Check if the head of the linked list is not NULL
    TEST_ASSERT_EQUAL(1, current_frame->priority); // Check if the priority of the head frame is 1
    TEST_ASSERT_EQUAL(data1, current_frame->data); // Check if the data of the head frame is correct

    buffer_add_tm(3, data2); // Add second frame with priority 3
    buffer_add_tm(2, data3); // Add third frame with priority 2
    
    current_frame = peek_tm(0); // Peek the second frame in the buffer

    TEST_ASSERT_EQUAL(3, current_frame->priority); // Check if the priority of the second frame is 2

    current_frame = peek_tm(2); // Peek the third frame in the buffer
    TEST_ASSERT_EQUAL(1, current_frame->priority); // Check if the priority of the third frame is 3
    TEST_ASSERT_EQUAL(data1, current_frame->data); // Check if the data of the third frame is correct
    TEST_ASSERT_NULL(current_frame->next); // Check if the next pointer of the third frame is NULL

}

void test_buffer_retreive_tm(void) {
    uint8_t data1[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}; // Sample data for the test
    uint8_t data2[10] = {10, 11, 12, 13, 14, 15, 16, 17, 18, 19}; // Sample data for the test
    uint8_t data3[10] = {20, 21, 22, 23, 24, 25, 26, 27, 28, 29}; // Sample data for the test
    buffer_add_tm(1, data1); // Add first frame with priority 1
    buffer_add_tm(3, data2); // Add second frame with priority 3
    buffer_add_tm(2, data3); // Add third frame with priority 2

    uint8_t* retrieved_data = buffer_retreive_tm(); // Retrieve the first frame from the buffer
    TEST_ASSERT_NOT_NULL(retrieved_data); // Check if the retrieved data is not NULL
    TEST_ASSERT_EQUAL(data2, retrieved_data); // Check if the retrieved data is correct

    frame_tm* null_data = peek_tm(3); // Try to peek a frame that does not exist
    TEST_ASSERT_NULL(null_data); // Check if the retrieved data is NULL

    retrieved_data = buffer_retreive_tm(); // Retrieve the second frame from the buffer
    TEST_ASSERT_NOT_NULL(retrieved_data); // Check if the retrieved data is not NULL
    TEST_ASSERT_EQUAL(data3, retrieved_data); // Check if the retrieved data is correct

    null_data = peek_tm(0); // Try to peek the first frame
    TEST_ASSERT_NULL(null_data->next); // Check if the next pointer of the first frame is NULL

    retrieved_data = buffer_retreive_tm(); // Retrieve the third frame from the buffer
    TEST_ASSERT_NOT_NULL(retrieved_data); // Check if the retrieved data is not NULL
    TEST_ASSERT_EQUAL(data1, retrieved_data); // Check if the retrieved data is correct

    null_data = peek_tm(1); // Try to peek the second frame
    TEST_ASSERT_NULL(null_data); // Check if the retrieved data is NULL

    retrieved_data = buffer_retreive_tm(); // Try to retrieve a frame from an empty buffer
    TEST_ASSERT_NULL(retrieved_data); // Check if the retrieved data is NULL

}

void test_buffer_add_tc(void) {

}

void test_buffer_retreive_tc(void) {

}

void runUnityTests(void) {
    UNITY_BEGIN(); // Start Unity test framework

    RUN_TEST(test_buffer_add_tm); // Run test for adding tm frame to buffer
    RUN_TEST(test_buffer_retreive_tm); // Run test for retreiving tm frame from buffer
    RUN_TEST(test_buffer_add_tc); // Run test for adding tc frame to buffer
    RUN_TEST(test_buffer_retreive_tc); // Run test for retreiving tc frame from buffer

    UNITY_END(); // End Unity test framework
}

#ifdef esp32dev
void app_main(void) {
    runUnityTests(); // Run the unit tests
}
#endif

#ifndef esp32dev
int main(void) {
    runUnityTests(); // Run the unit tests
    return 0; // Return success
}
#endif