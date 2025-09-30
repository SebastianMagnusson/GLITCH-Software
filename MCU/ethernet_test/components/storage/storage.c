#include "storage.h"
#include <stdio.h>
#include <string.h>
#include <sys/unistd.h>
#include <unistd.h>
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
#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"
#include "freertos/task.h"

static const char *TAG = "Storage";
static const char *base_path = "/sdcard";

static sdmmc_card_t *card = NULL;
static volatile bool storage_ready = false;

/* ---- header written before each packet ---- */
typedef struct {
    uint8_t  packet_type;     // 0:HK 1:BF 2:RAD 3:ACK
    uint64_t timestamp_us;
    uint32_t packet_len;
    uint32_t seq_num;
} __attribute__((packed)) packet_header_t;

/* ---- queue message ---- */
typedef struct {
    uint8_t *buf;
    uint32_t len;
    uint8_t  pt;
} storage_msg_t;

#ifndef CONFIG_STORAGE_QUEUE_LEN
#define CONFIG_STORAGE_QUEUE_LEN 64
#endif

#ifndef CONFIG_STORAGE_TASK_STACK
#define CONFIG_STORAGE_TASK_STACK 4096
#endif

/* Flush policy: 1 = flush every write (safe while debugging) */
#ifndef CONFIG_STORAGE_FLUSH_EVERY_N
#define CONFIG_STORAGE_FLUSH_EVERY_N 1
#endif

static QueueHandle_t s_q = NULL;
static TaskHandle_t  s_task = NULL;
static uint32_t      s_seq = 0;
static uint32_t      s_packets = 0;

/* direct filenames in /sdcard */
static const char *filenames[] = {
    "/sdcard/HK.LOG",
    "/sdcard/BF.LOG",
    "/sdcard/RAD.LOG",
    "/sdcard/ACK.LOG"
};
#define PACKET_TYPES_COUNT (sizeof(filenames)/sizeof(filenames[0]))

/* keep open */
static FILE *s_files[PACKET_TYPES_COUNT] = {0};
static volatile bool s_shutdown = false;

static esp_err_t open_files_once(void)
{
    for (int i = 0; i < PACKET_TYPES_COUNT; i++) {
        if (!s_files[i]) {
            s_files[i] = fopen(filenames[i], "ab");
            if (!s_files[i]) {
                ESP_LOGE(TAG, "fopen(%s) failed: errno=%d (%s)", filenames[i], errno, strerror(errno));
                return ESP_FAIL;
            }
            ESP_LOGI(TAG, "Opened %s", filenames[i]);
        }
    }
    return ESP_OK;
}

static void close_files(void)
{
    for (int i = 0; i < PACKET_TYPES_COUNT; i++) {
        if (s_files[i]) {
            fflush(s_files[i]);
            int fd = fileno(s_files[i]);
            if (fd >= 0) fsync(fd);
            fclose(s_files[i]);
            s_files[i] = NULL;
        }
    }
}

static void storage_task(void *arg)
{
    ESP_LOGI(TAG, "storage task started");
    if (open_files_once() != ESP_OK) {
        ESP_LOGE(TAG, "open_files_once failed; will retry on demand");
    }

    uint32_t since_flush = 0;

    for (;;) {
        if (s_shutdown) break;
        storage_msg_t m;
        if (!xQueueReceive(s_q, &m, pdMS_TO_TICKS(100))) {
            /* idle flush */
            if (since_flush) {
                for (int i = 0; i < PACKET_TYPES_COUNT; i++) {
                    if (s_files[i]) {
                        fflush(s_files[i]);
                        int fd = fileno(s_files[i]);
                        if (fd >= 0) fsync(fd);
                    }
                }
                since_flush = 0;
            }

            continue;
        }

        if (!storage_ready) { free(m.buf); continue; }
        if (m.pt >= PACKET_TYPES_COUNT) { free(m.buf); continue; }

        /* ensure file handles exist */
        if (!s_files[m.pt] && open_files_once() != ESP_OK) {
            free(m.buf);
            continue;
        }

        packet_header_t hdr = {
            .packet_type  = m.pt,
            .timestamp_us = esp_timer_get_time(),
            .packet_len   = m.len,
            .seq_num      = s_seq++,
        };

        size_t w = 0;
        w += fwrite(&hdr, 1, sizeof(hdr), s_files[m.pt]);
        w += fwrite(m.buf, 1, m.len, s_files[m.pt]);
        free(m.buf);

        if (w != sizeof(hdr) + m.len) {
            ESP_LOGE(TAG, "write incomplete to %s (%d/%d bytes)",
                     filenames[m.pt], (int)w, (int)(sizeof(hdr) + m.len));
        } else {
            s_packets++;
            ESP_LOGI(TAG, "Wrote %d bytes to %s, flushing...", (int)w, filenames[m.pt]);
        }

        if (++since_flush >= CONFIG_STORAGE_FLUSH_EVERY_N) {
            fflush(s_files[m.pt]);
            int fd = fileno(s_files[m.pt]);
            if (fd >= 0) fsync(fd);
            ESP_LOGI(TAG, "Flushed %s", filenames[m.pt]);
            since_flush = 0;
        }
    }
    close_files();
    ESP_LOGI(TAG, "storage task terminated");
    vTaskDelete(NULL);
}

/* ---------- public API ---------- */

esp_err_t storage_init(void)
{
    ESP_LOGI(TAG, "Initializing SD card storage");

    spi_bus_config_t bus_cfg = {
        .mosi_io_num = CONFIG_SD_MOSI_PIN,
        .miso_io_num = CONFIG_SD_MISO_PIN,
        .sclk_io_num = CONFIG_SD_SCK_PIN,
        .quadwp_io_num = -1,
        .quadhd_io_num = -1,
        .max_transfer_sz = 4096,
    };
    esp_err_t ret = spi_bus_initialize(SPI3_HOST, &bus_cfg, SPI_DMA_CH_AUTO);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "spi_bus_initialize failed: %s", esp_err_to_name(ret));
        return ret;
    }

    sdmmc_host_t host = SDSPI_HOST_DEFAULT();
    host.slot = SPI3_HOST;
    host.max_freq_khz = 400;

    sdspi_device_config_t dev_cfg = SDSPI_DEVICE_CONFIG_DEFAULT();
    dev_cfg.gpio_cs = CONFIG_SD_CS_PIN;
    dev_cfg.host_id = host.slot;

    esp_vfs_fat_sdmmc_mount_config_t mnt_cfg = {
        .format_if_mount_failed = false,
        .max_files = 10,
        .allocation_unit_size = 16 * 1024
    };

    sdmmc_card_t *c = NULL;
    ret = esp_vfs_fat_sdspi_mount(base_path, &host, &dev_cfg, &mnt_cfg, &c);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "mount failed: %s", esp_err_to_name(ret));
        spi_bus_free(SPI3_HOST);
        storage_ready = false;
        return ret;
    }

    card = c;
    storage_ready = true;
    sdmmc_card_print_info(stdout, card);

    if (!s_q) s_q = xQueueCreate(CONFIG_STORAGE_QUEUE_LEN, sizeof(storage_msg_t));
    if (!s_q) { ESP_LOGE(TAG, "queue alloc failed"); return ESP_FAIL; }

    if (!s_task) {
        BaseType_t ok = xTaskCreatePinnedToCore(
            storage_task, "storage_task", CONFIG_STORAGE_TASK_STACK,
            NULL, 2, &s_task, tskNO_AFFINITY);
        if (ok != pdPASS) {
            ESP_LOGE(TAG, "task create failed");
            return ESP_FAIL;
        }
    }

    ESP_LOGI(TAG, "SD card storage initialized successfully");
    return ESP_OK;
}

bool storage_enqueue_packet(const uint8_t *data, size_t length, uint8_t packet_id)
{
    if (!data || length == 0 || packet_id >= PACKET_TYPES_COUNT) return false;
    if (!s_q) {
        ESP_LOGW(TAG, "enqueue called before storage_init()");
        return false;
    }

    uint8_t *copy = (uint8_t*)malloc(length);
    if (!copy) return false;
    memcpy(copy, data, length);

    storage_msg_t msg = { .buf = copy, .len = (uint32_t)length, .pt = packet_id };
    if (xQueueSend(s_q, &msg, 0) == pdTRUE) return true;

    free(copy);
    static uint32_t dropped = 0;
    if ((dropped++ & 0xFF) == 0) ESP_LOGW(TAG, "storage queue full (drops=%u)", dropped);
    return false;
}

void storage_deinit(void)
{
    s_shutdown = true;
    if (s_task) {
        // Wait for the task to exit
        while (eTaskGetState(s_task) != eDeleted) {
            vTaskDelay(pdMS_TO_TICKS(10));
        }
        s_task = NULL;
    }
    if (card) {
        esp_vfs_fat_sdcard_unmount(base_path, card);
        card = NULL;
    }
    spi_bus_free(SPI3_HOST);
    storage_ready = false;
    s_shutdown = false; // Reset for next init
}

esp_err_t storage_get_stats(uint32_t* free_kb, uint32_t* total_kb, uint32_t* total_packets)
{
    if (!storage_ready || !card) return ESP_ERR_INVALID_STATE;

    uint64_t tot=0, freeb=0;
    esp_err_t r = esp_vfs_fat_info(base_path, &tot, &freeb);
    if (r != ESP_OK) return r;

    if (free_kb) *free_kb   = (uint32_t)(freeb/1024);
    if (total_kb) *total_kb = (uint32_t)(tot/1024);
    if (total_packets) *total_packets = s_packets;
    return ESP_OK;
}

esp_err_t storage_clear_all_data(void)
{
    if (!storage_ready) return ESP_ERR_INVALID_STATE;

    close_files();

    for (int i = 0; i < PACKET_TYPES_COUNT; i++) {
        int res = unlink(filenames[i]);
        if (res != 0 && errno != ENOENT) {
            ESP_LOGE(TAG, "Failed to delete %s: errno=%d (%s)", filenames[i], errno, strerror(errno));
            return ESP_FAIL;
        }
        ESP_LOGI(TAG, "Deleted %s", filenames[i]);
    }

    s_seq = 0;
    s_packets = 0;

    if (open_files_once() != ESP_OK) {
        ESP_LOGE(TAG, "Failed to reopen files after clearing");
        return ESP_FAIL;
    }

    return ESP_OK;
}
