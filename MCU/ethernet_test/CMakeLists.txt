# For more information about build system see
# https://docs.espressif.com/projects/esp-idf/en/latest/api-guides/build-system.html
# The following five lines of boilerplate have to be in your project's
# CMakeLists in this exact order for cmake to work correctly
cmake_minimum_required(VERSION 3.5)

# Try to find ESP-IDF automatically if IDF_PATH is not set
if(NOT DEFINED ENV{IDF_PATH})
    # Common ESP-IDF installation paths
    set(ESP_IDF_SEARCH_PATHS
        "C:/esp-idf"
        "C:/Espressif/frameworks/esp-idf-v5.0"
        "C:/Espressif/frameworks/esp-idf-v5.1" 
        "C:/Espressif/frameworks/esp-idf-v5.2"
        "C:/Espressif/frameworks/esp-idf-v5.3"
        "$ENV{USERPROFILE}/esp-idf"
        "$ENV{USERPROFILE}/Desktop/esp-idf"
        "D:/esp-idf"
        "E:/esp-idf"
    )
    
    foreach(path ${ESP_IDF_SEARCH_PATHS})
        if(EXISTS "${path}/tools/cmake/project.cmake")
            set(ENV{IDF_PATH} "${path}")
            message(STATUS "Found ESP-IDF at: ${path}")
            break()
        endif()
    endforeach()
    
    if(NOT DEFINED ENV{IDF_PATH})
        message(FATAL_ERROR "ESP-IDF not found! Please set IDF_PATH environment variable or install ESP-IDF in a standard location.")
    endif()
endif()

include($ENV{IDF_PATH}/tools/cmake/project.cmake)
project(ethernet_test)

# In your project's CMakeLists.txt, add:
set(EXTRA_COMPONENT_DIRS 
    "components/buffer"
    "components/priority"
    "components/format"
    "components/ethernet"
    "components/uart"
    "components/packet_generation"
    "components/storage"
)