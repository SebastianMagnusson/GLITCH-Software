#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
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
    

}

void test_buffer_retreive_tm(void) {

}

void test_buffer_add_tc(void) {

}

void test_buffer_retreive_tc(void) {

}

void runUnitTests(void) {
    UNITY_BEGIN(); // Start Unity test framework

    RUN_TEST(test_buffer_add_tm); // Run test for adding tm frame to buffer
    RUN_TEST(test_buffer_retreive_tm); // Run test for retreiving tm frame from buffer
    RUN_TEST(test_buffer_add_tc); // Run test for adding tc frame to buffer
    RUN_TEST(test_buffer_retreive_tc); // Run test for retreiving tc frame from buffer

    return UNITY_END(); // End Unity test framework
}

void app_main(void) {
    runUnitTests(); // Run the unit tests
}