#include <stdio.h>
#include <stdint.h>
#include "unity.h"
#include "priority.h"

void setUp(void) {
    // This function will be called before each test
    // Initialize any necessary resources or variables here
}

void tearDown(void) {
    // This function will be called after each test
    // Free any allocated memory or perform cleanup if necessary
}

void test_priority_assign(void) {
    uint8_t data1 = 0x00; // Test case for telemetry type 0
    uint8_t data2 = 0x01; // Test case for telemetry type 1
    uint8_t data3 = 0x02; // Test case for telemetry type 2
    uint8_t data4 = 0x03; // Test case for telemetry type 3

    TEST_ASSERT_EQUAL(1, priority_assign(&data1)); // Check if the function returns the correct priority for telemetry type 0
    TEST_ASSERT_EQUAL(2, priority_assign(&data2)); // Check if the function returns the correct priority for telemetry type 1
    TEST_ASSERT_EQUAL(0, priority_assign(&data3)); // Check if the function returns the correct priority for telemetry type 2
    TEST_ASSERT_EQUAL(3, priority_assign(&data4)); // Check if the function returns the correct priority for telemetry type 3
}

void test_priority_assign_null(void) {
    uint8_t* data = NULL; // Test case for null data

    TEST_ASSERT_EQUAL(0, priority_assign(data)); // Check if the function returns the default priority for null data
}

void test_priority_assign_large(void) {
    uint8_t* data1 = malloc(100 * sizeof(uint8_t)); // Allocate memory for large data
    uint8_t* data2 = malloc(200 * sizeof(uint8_t)); // Allocate memory for large data
    uint8_t* data3 = malloc(500 * sizeof(uint8_t)); // Allocate memory for large data
    uint8_t* data4 = malloc(1000 * sizeof(uint8_t)); // Allocate memory for large data

    if (!data1 || !data2 || !data3 || !data4) {
        TEST_FAIL_MESSAGE("Memory allocation failed"); // Fail the test if memory allocation fails
    }

    for (int i = 0; i < 100; i++) {
        data1[i] = 0x00; // Initialize the data with zeros
    }

    for (int i = 0; i < 200; i++) {
        data2[i] = 0x01; // Initialize the data with ones
    }

    for (int i = 0; i < 500; i++) {
        data3[i] = 0x02; // Initialize the data with twos
    }

    for (int i = 0; i < 1000; i++) {
        data4[i] = 0x03; // Initialize the data with threes
    }

    TEST_ASSERT_EQUAL(1, priority_assign(data1)); // Check if the function returns the correct priority for large data
    TEST_ASSERT_EQUAL(2, priority_assign(data2)); // Check if the function returns the correct priority for large data
    TEST_ASSERT_EQUAL(0, priority_assign(data3)); // Check if the function returns the correct priority for large data
    TEST_ASSERT_EQUAL(3, priority_assign(data4)); // Check if the function returns the correct priority for large data

    free(data1); // Free allocated memory
    free(data2); // Free allocated memory
    free(data3); // Free allocated memory
    free(data4); // Free allocated memory
}

void test_priority_assign_edge(void) {
    uint8_t data1 = 0x00; // Test case for edge case data
    uint8_t data2 = 0xFF; // Test case for edge case data

    TEST_ASSERT_EQUAL(1, priority_assign(&data1)); // Check if the function returns the correct priority for edge case data
    TEST_ASSERT_EQUAL(3, priority_assign(&data2)); // Check if the function returns the correct priority for edge case data
}

void runUnityTests(void) {
    UNITY_BEGIN(); // Start Unity test framework

    RUN_TEST(test_priority_assign); // Run the test for priority assignment
    RUN_TEST(test_priority_assign_null); // Run the test for null data
    RUN_TEST(test_priority_assign_large); // Run the test for large data
    RUN_TEST(test_priority_assign_edge); // Run the test for edge case data

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