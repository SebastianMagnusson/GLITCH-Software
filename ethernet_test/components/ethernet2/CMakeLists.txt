idf_component_register(SRCS "ethernet2.c"
                       PRIV_REQUIRES esp_driver_gpio esp_eth esp_netif esp_event buffer format
                       INCLUDE_DIRS ".")