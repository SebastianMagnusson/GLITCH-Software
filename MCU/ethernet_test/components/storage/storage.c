#include "storage.h"
#include <stdio.h>
#include <string.h>
#include <sys/unistd.h>
#include <sys/stat.h>
#include <errno.h>
#include "esp_vfs_fat.h"
#include <inttypes.h>
#include "esp_log.h"
#include "sdmmc_cmd.h"
#include "driver/sdspi_host.h"
#include "driver/spi_common.h"
#include "sdkconfig.h"
#include "esp_timer.h"
#include "freertos/semphr.h"

static const char *TAG = "Storage";
static sdmmc_card_t *card = NULL;
static uint32_t packet_counter = 0;
static const char *base_path = "/sdcard";
static bool storage_ready = false;

// Thread-safety
static SemaphoreHandle_t storage_mutex = NULL;

// Packet type names for directories
static const char *packet_dirs[] = {
    "HK",   // Housekeeping
    "BF",   // Bitflip
    "RAD",  // Radiation
    "ACK"   // Acknowledgement
};

#define PACKET_TYPES_COUNT (sizeof(packet_dirs) / sizeof(packet_dirs[0]))

esp_err_t storage_init(void) {
    ESP_LOGI(TAG, "Initializing SD card storage");

    if (storage_mutex == NULL) {
        storage_mutex = xSemaphoreCreateMutex();
        if (!storage_mutex) {
            ESP_LOGE(TAG, "Failed to create storage mutex");
            return ESP_FAIL;
        }
    }

    // Configure SPI bus
    spi_bus_config_t bus_cfg = {
        .mosi_io_num = CONFIG_SD_MOSI_PIN,
        .miso_io_num = CONFIG_SD_MISO_PIN,
        .sclk_io_num = CONFIG_SD_SCK_PIN,
        .quadwp_io_num = -1,
        .quadhd_io_num = -1,
        .max_transfer_sz = 4096, // aligned with sector sizes
    };

    esp_err_t ret = spi_bus_initialize(SPI2_HOST, &bus_cfg, SPI_DMA_CH_AUTO);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to initialize SPI bus: %s", esp_err_to_name(ret));
        return ret;
    }

    // Configure SPI host for SDSPI
    sdmmc_host_t host = SDSPI_HOST_DEFAULT();
    host.slot = SPI2_HOST;
    host.max_freq_khz = 400;  // start slow, can raise later

    // Configure device
    sdspi_device_config_t slot_config = SDSPI_DEVICE_CONFIG_DEFAULT();
    slot_config.gpio_cs = CONFIG_SD_CS_PIN;
    slot_config.host_id = host.slot;

    // Mount configuration
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = false,
        .max_files = 10,
        .allocation_unit_size = 16 * 1024
    };

    // Mount the card
    ret = esp_vfs_fat_sdspi_mount(base_path, &host, &slot_config, &mount_config, &card);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to mount SD card: %s", esp_err_to_name(ret));
        spi_bus_free(SPI2_HOST);
        storage_ready = false;
        return ret;
    }

    storage_ready = true;
    sdmmc_card_print_info(stdout, card);

    // Create packet directories if missing
    for (int i = 0; i < PACKET_TYPES_COUNT; i++) {
        char dir[64];
        snprintf(dir, sizeof(dir), "%s/%s", base_path, packet_dirs[i]);
        struct stat st;
        if (stat(dir, &st) != 0) {
            if (mkdir(dir, 0775) != 0) {
                ESP_LOGW(TAG, "Failed to create directory: %s (errno=%d, %s)",
                         dir, errno, strerror(errno));
            }
        }
    }

    ESP_LOGI(TAG, "SD card storage initialized successfully");
    return ESP_OK;
}

typedef struct {
    uint8_t packet_type;      
    uint64_t timestamp_us;    
    uint32_t packet_len;      
    uint32_t seq_num;         
} __attribute__((packed)) packet_header_t;

esp_err_t storage_save_packet(const uint8_t* data, size_t length, uint8_t packet_id) {
    if (!card) {
        ESP_LOGE(TAG, "SD card not mounted");
        return ESP_ERR_INVALID_STATE;
    }
    if (!data || length == 0 || packet_id >= PACKET_TYPES_COUNT) {
        ESP_LOGE(TAG, "Invalid packet args");
        return ESP_ERR_INVALID_ARG;
    }

    xSemaphoreTake(storage_mutex, portMAX_DELAY);

    // Build filename: one log file per packet type
    char filename[64];
    snprintf(filename, sizeof(filename), "%s/%s.LOG", base_path, packet_dirs[packet_id]);

    FILE* f = fopen(filename, "ab");  // append binary
    if (!f) {
        ESP_LOGE(TAG, "Failed to open log file: %s (errno=%d)", filename, errno);
        xSemaphoreGive(storage_mutex);
        return ESP_FAIL;
    }

    // Prepare header
    packet_header_t hdr = {
        .packet_type = packet_id,
        .timestamp_us = esp_timer_get_time(),
        .packet_len = (uint32_t)length,
        .seq_num = packet_counter++
    };

    // Write header + data
    size_t written = fwrite(&hdr, 1, sizeof(hdr), f);
    written += fwrite(data, 1, length, f);

    // Flush to SD
    fflush(f);
    fsync(fileno(f));
    fclose(f);

    if (written != sizeof(hdr) + length) {
        ESP_LOGE(TAG, "Write incomplete (%d/%d bytes)", (int)written, (int)(sizeof(hdr) + length));
        xSemaphoreGive(storage_mutex);
        return ESP_FAIL;
    }

    ESP_LOGI(TAG, "Appended %s packet (%d bytes) to %s (%d bytes written)",
             packet_dirs[packet_id], (int)length, filename, (int)written);
    

    xSemaphoreGive(storage_mutex);
    
    return ESP_OK;
}


void storage_deinit(void) {
    if (card != NULL) {
        esp_vfs_fat_sdcard_unmount(base_path, card);
        card = NULL;
        storage_ready = false;
        spi_bus_free(SPI2_HOST);
        ESP_LOGI(TAG, "SD card unmounted and SPI bus freed");
    }
    if (storage_mutex) {
        vSemaphoreDelete(storage_mutex);
        storage_mutex = NULL;
    }
}

esp_err_t storage_get_stats(uint32_t* free_space, uint32_t* total_space, uint32_t* total_packets) {
    if (!storage_ready || card == NULL) {
        ESP_LOGE(TAG, "SD card not mounted");
        return ESP_ERR_INVALID_STATE;
    }

    uint64_t out_total_bytes = 0;
    uint64_t out_free_bytes = 0;

    esp_err_t ret = esp_vfs_fat_info(base_path, &out_total_bytes, &out_free_bytes);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "esp_vfs_fat_info failed: %s", esp_err_to_name(ret));
        return ret;
    }

    if (free_space) {
        *free_space = (uint32_t)(out_free_bytes / 1024);  // KB
    }
    if (total_space) {
        *total_space = (uint32_t)(out_total_bytes / 1024);  // KB
    }
    if (total_packets) {
        *total_packets = packet_counter;
    }

    return ESP_OK;
}
