idf_component_register(
    SRCS "storage.c"
    INCLUDE_DIRS "."
    REQUIRES "driver" "fatfs" "esp_timer"
)