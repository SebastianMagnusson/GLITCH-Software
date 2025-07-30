#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "priority.h"
#include "unity.h"


static void test_priority(void) {

    TEST_ASSERT_EQUAL(4, priority_assign(NULL)); // Test with NULL data
    uint8_t data1;

    for (int i = 0; i < 256; i++) {
        data1 = i;
        int expected_priority = ((i & 0x03) == 0 ? 1 :
                                 (i & 0x03) == 1 ? 2 :
                                 (i & 0x03) == 2 ? 0 : 
                                 (i & 0x03) == 3 ? 3 : 4); // Calculate expected priority based on telemetry type bits
        TEST_ASSERT_EQUAL(expected_priority, priority_assign(&data1)); // Test with various data values
    }

}