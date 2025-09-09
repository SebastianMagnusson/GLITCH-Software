#include "storage.h"
#include <stdio.h>
#include <string.h>
#include <sys/unistd.h>
#include <sys/stat.h>
#include "esp_log.h"
#include "esp_vfs_fat.h"
#include "sdmmc_cmd.h"
#include "driver/sdmmc_host.h"
#include "driver/sdspi_host.h"
#include "driver/gpio.h"
#include "driver/spi_common.h"
#include "sdkconfig.h"
#include "esp_timer.h"

static const char *TAG = "Storage";
static sdmmc_card_t *card = NULL;
static uint32_t packet_counter = 0;
static const char *base_path = "/sdcard";

// Packet type names for directories
static const char *packet_dirs[] = {
    "HK",   // Housekeeping
    "BF",   // Bitflip
    "RAD",  // Radiation
    "ACK"   // Acknowledgement
};

#define PACKET_TYPES_COUNT (sizeof(packet_dirs) / sizeof(packet_dirs[0]))

// In storage.c - modify the storage_init() function
esp_err_t storage_init(void) {
    ESP_LOGI(TAG, "Initializing SD card storage");
    
    esp_err_t ret;
    
    // Configure SPI bus
    spi_bus_config_t bus_cfg = {
        .mosi_io_num = CONFIG_SD_MOSI_PIN,
        .miso_io_num = CONFIG_SD_MISO_PIN,
        .sclk_io_num = CONFIG_SD_SCK_PIN,
        .quadwp_io_num = -1,
        .quadhd_io_num = -1,
        .max_transfer_sz = 4000,
    };
    
    // Initialize the SPI bus
    ret = spi_bus_initialize(SPI2_HOST, &bus_cfg, SPI_DMA_CH_AUTO);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to initialize SPI bus: %s", esp_err_to_name(ret));
        return ret;
    }
    
    // Mount SD card
    ESP_LOGI(TAG, "Mounting SD card...");
    
    // Use SPI2 host (HSPI) - configure host with our settings
    sdmmc_host_t host = SDSPI_HOST_DEFAULT();
    host.slot = SPI2_HOST;  // Use SPI2 host
    
    // This initializes the slot with our custom CS pin
    sdspi_device_config_t slot_config = SDSPI_DEVICE_CONFIG_DEFAULT();
    slot_config.gpio_cs = CONFIG_SD_CS_PIN;
    slot_config.host_id = host.slot;
    
    // Configure card detect pin if specified
    if (CONFIG_SD_CARD_DETECT_PIN >= 0) {
        gpio_config_t io_conf = {
            .intr_type = GPIO_INTR_DISABLE,
            .mode = GPIO_MODE_INPUT,
            .pin_bit_mask = (1ULL << CONFIG_SD_CARD_DETECT_PIN),
            .pull_down_en = 0,
            .pull_up_en = 1,
        };
        gpio_config(&io_conf);
        
        // Check if card is present
        if (gpio_get_level(CONFIG_SD_CARD_DETECT_PIN) != 0) {
            ESP_LOGW(TAG, "SD card not inserted (card detect pin high)");
            return ESP_ERR_NOT_FOUND;
        }
    }
    
    // Options for mounting the filesystem
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = false,
        .max_files = 5,
        .allocation_unit_size = 16 * 1024
    };
    
    // Mount the card
    ret = esp_vfs_fat_sdspi_mount(base_path, &host, &slot_config, &mount_config, &card);
    
    // Rest of the function remains the same...
    
    // Log pin configuration for debugging
    ESP_LOGI(TAG, "SD card pin configuration:");
    ESP_LOGI(TAG, "  MOSI: GPIO%d", CONFIG_SD_MOSI_PIN);
    ESP_LOGI(TAG, "  MISO: GPIO%d", CONFIG_SD_MISO_PIN);
    ESP_LOGI(TAG, "  SCK:  GPIO%d", CONFIG_SD_SCK_PIN);
    ESP_LOGI(TAG, "  CS:   GPIO%d", CONFIG_SD_CS_PIN);
    if (CONFIG_SD_CARD_DETECT_PIN >= 0) {
        ESP_LOGI(TAG, "  CD:   GPIO%d", CONFIG_SD_CARD_DETECT_PIN);
    } else {
        ESP_LOGI(TAG, "  CD:   Not used");
    }
}

esp_err_t storage_save_packet(const uint8_t* data, size_t length, uint8_t packet_id) {
    if (data == NULL || length == 0) {
        ESP_LOGE(TAG, "Invalid packet data");
        return ESP_ERR_INVALID_ARG;
    }
    
    if (packet_id >= PACKET_TYPES_COUNT) {
        ESP_LOGE(TAG, "Invalid packet ID: %d", packet_id);
        return ESP_ERR_INVALID_ARG;
    }
    
    // Generate timestamp
    int64_t time_us = esp_timer_get_time();
    
    // Create filename with timestamp and packet counter
    char filename[128];
    snprintf(filename, sizeof(filename), "%s/%s/%lld_%u.bin", 
             base_path, packet_dirs[packet_id], time_us / 1000, packet_counter++);
    
    // Open file for writing
    FILE* f = fopen(filename, "wb");
    if (f == NULL) {
        ESP_LOGE(TAG, "Failed to open file for writing: %s", filename);
        return ESP_FAIL;
    }
    
    // Write packet data
    size_t written = fwrite(data, 1, length, f);
    fclose(f);
    
    if (written != length) {
        ESP_LOGE(TAG, "Failed to write complete packet: %d/%d bytes written", written, length);
        return ESP_FAIL;
    }
    
    ESP_LOGI(TAG, "Saved %s packet (%d bytes) to %s", packet_dirs[packet_id], length, filename);
    return ESP_OK;
}

void storage_deinit(void) {
    if (card != NULL) {
        esp_vfs_fat_sdcard_unmount(base_path, card);
        card = NULL;
        ESP_LOGI(TAG, "SD card unmounted");
    }
}

esp_err_t storage_get_stats(uint32_t* free_space, uint32_t* total_space, uint32_t* total_packets) {
    if (card == NULL) {
        ESP_LOGE(TAG, "SD card not mounted");
        return ESP_ERR_INVALID_STATE;
    }
    
    FATFS *fs;
    DWORD free_clusters, total_clusters, sector_size;
    
    // Get volume information
    BYTE pdrv = 0xFF;
    if (f_getfree("0:", &free_clusters, &fs) != FR_OK) {
        ESP_LOGE(TAG, "Failed to get card free space");
        return ESP_FAIL;
    }
    
    // Get drive number
    char drv[3] = {base_path[0], ':', 0};
    if (f_getcwd(drv, sizeof(drv)) != FR_OK) {
        ESP_LOGE(TAG, "Failed to get drive number");
        return ESP_FAIL;
    }
    
    total_clusters = (fs->n_fatent - 2);
    sector_size = card->csd.sector_size;
    
    if (free_space) {
        *free_space = free_clusters * fs->csize * sector_size / 1024;
    }
    
    if (total_space) {
        *total_space = total_clusters * fs->csize * sector_size / 1024;
    }
    
    if (total_packets) {
        *total_packets = packet_counter;
    }
    
    return ESP_OK;
}