#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stddef.h>
#include <errno.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

/* ================================================================
 * Median Filter IP configuration
 *
 * NOTE:
 *   Change MF_IP_BASE_ADDR if Vivado Address Editor assigns a
 *   different physical base address to the Median Filter AXI-Lite IP.
 * ================================================================ */
#define MF_IP_BASE_ADDR       0xA0000000UL
#define MF_IP_MAP_SIZE        0x00010000UL

/* ================================================================
 * Hardware organization
 *
 * RTL logical address BUS_ADDR_BITS = 13:
 *
 *   0x0000 .. 0x0FFF : data-memory space
 *                       write -> selected Input Bank
 *                       read  -> Output Memory
 *
 *   0x1000 .. 0x1FFF : control/status space
 *
 * Each MMIO access is 32-bit. Therefore, with uint32_t *ip:
 *
 *   ip[0x0000] -> AXI byte offset 0x0000
 *   ip[0x0001] -> AXI byte offset 0x0004
 *   ...
 *   ip[0x1000] -> AXI byte offset 0x4000
 *
 * This matches the H Function software style: the constants below
 * are register WORD INDICES, not byte offsets.
 * ================================================================ */
#define BANK_DEPTH            4096U
#define CTRL_BASE_INDEX       0x1000U

/* ---------------- WRITE control-space indices ------------------ */
#define REG_WIDTH_INDEX       (CTRL_BASE_INDEX + 0x000U)
#define REG_HEIGHT_INDEX      (CTRL_BASE_INDEX + 0x001U)
#define REG_LOAD_INDEX        (CTRL_BASE_INDEX + 0x002U)
#define REG_START_INDEX       (CTRL_BASE_INDEX + 0x003U)
#define REG_STOP_INDEX        (CTRL_BASE_INDEX + 0x004U)

/* ---------------- READ control-space indices ------------------- */
#define REG_READ_READY_INDEX  (CTRL_BASE_INDEX + 0x000U)
#define REG_BUSY_INDEX        (CTRL_BASE_INDEX + 0x001U)
#define REG_READ_WIDTH_INDEX  (CTRL_BASE_INDEX + 0x002U)
#define REG_READ_HEIGHT_INDEX (CTRL_BASE_INDEX + 0x003U)
#define REG_LOAD_READY_INDEX  (CTRL_BASE_INDEX + 0x004U)
#define REG_DONE_INDEX        (CTRL_BASE_INDEX + 0x005U)
#define REG_LOAD_BANK_INDEX   (CTRL_BASE_INDEX + 0x006U)
#define REG_SESSION_INDEX     (CTRL_BASE_INDEX + 0x007U)
#define REG_MODE_INDEX        (CTRL_BASE_INDEX + 0x008U)
#define REG_OUTPUT_ROW_INDEX  (CTRL_BASE_INDEX + 0x009U)
#define REG_STATE_INDEX       (CTRL_BASE_INDEX + 0x00AU)

/* ---------------- Commands / status bits ----------------------- */
#define CMD_ASSERT            0x00000001U
#define STATUS_BIT_MASK       0x00000001U

#define MAX_TIMEOUT_POLLS     1000000U
#define MAX_REPORTED_FAILURES 32U

/* ================================================================
 * Default files: same data set used by TB_Median_Filter_Core.
 * ================================================================ */
#define DEFAULT_INFO_FILE \
    "/home/ubuntu/SoC_Can_Ban/Luan/Class_4/Day_6_7_8/Modeling/data/image_info.txt"

#define DEFAULT_INPUT_FILE \
    "/home/ubuntu/SoC_Can_Ban/Luan/Class_4/Day_6_7_8/Modeling/data/noisy_pixels.hex"

#define DEFAULT_GOLDEN_FILE \
    "/home/ubuntu/SoC_Can_Ban/Luan/Class_4/Day_6_7_8/Modeling/data/denoised_pixels.hex"

#define DEFAULT_OUTPUT_FILE \
    "/home/ubuntu/SoC_Can_Ban/Luan/Class_4/Day_6_7_8/Modeling/data/soc_denoised_pixels.hex"

/* ================================================================
 * MMIO access helpers
 * ================================================================ */
static inline void mmio_write(
    volatile uint32_t *base,
    uint32_t word_index,
    uint32_t value
)
{
    base[word_index] = value;
    __sync_synchronize();
}

static inline uint32_t mmio_read(
    volatile uint32_t *base,
    uint32_t word_index
)
{
    uint32_t value;

    __sync_synchronize();
    value = base[word_index];
    __sync_synchronize();

    return value;
}

/* ================================================================
 * Data-memory access
 *
 * Same logical address is interpreted by the RTL according to access
 * direction:
 *   write -> currently selected Input Bank
 *   read  -> Output Memory
 * ================================================================ */
static inline void mf_write_input_pixel(
    volatile uint32_t *ip,
    uint32_t x,
    uint8_t pixel
)
{
    mmio_write(ip, x, (uint32_t)pixel);
}

static inline uint8_t mf_read_output_pixel(
    volatile uint32_t *ip,
    uint32_t x
)
{
    return (uint8_t)(mmio_read(ip, x) & 0xFFU);
}

/* ================================================================
 * Commands
 * ================================================================ */
static void mf_load_command(volatile uint32_t *ip)
{
    mmio_write(ip, REG_LOAD_INDEX, CMD_ASSERT);
}

static void mf_start_command(volatile uint32_t *ip)
{
    mmio_write(ip, REG_START_INDEX, CMD_ASSERT);
}

static void mf_stop_command(volatile uint32_t *ip)
{
    mmio_write(ip, REG_STOP_INDEX, CMD_ASSERT);
}

/* ================================================================
 * Poll one status bit until it becomes 1.
 * ================================================================ */
static int mf_wait_status(
    volatile uint32_t *ip,
    uint32_t status_index,
    const char *name
)
{
    uint32_t poll;

    for (poll = 0U; poll < MAX_TIMEOUT_POLLS; ++poll) {
        if ((mmio_read(ip, status_index) & STATUS_BIT_MASK) != 0U) {
            return 0;
        }
    }

    fprintf(
        stderr,
        "[ERROR] Timeout waiting %s. state=%u busy=%u done=%u\n",
        name,
        (unsigned int)(mmio_read(ip, REG_STATE_INDEX) & 0x7U),
        (unsigned int)(mmio_read(ip, REG_BUSY_INDEX) & 0x1U),
        (unsigned int)(mmio_read(ip, REG_DONE_INDEX) & 0x1U)
    );

    return -1;
}

static int mf_wait_load_ready(volatile uint32_t *ip)
{
    return mf_wait_status(ip, REG_LOAD_READY_INDEX, "LOAD_READY");
}

static int mf_wait_read_ready(volatile uint32_t *ip)
{
    return mf_wait_status(ip, REG_READ_READY_INDEX, "READ_READY");
}

static int mf_wait_done(volatile uint32_t *ip)
{
    return mf_wait_status(ip, REG_DONE_INDEX, "DONE");
}

/* ================================================================
 * Read WIDTH/HEIGHT from image_info.txt.
 * ================================================================ */
static int read_image_info(
    const char *filename,
    uint32_t *width,
    uint32_t *height
)
{
    FILE *fp;
    char line[128];
    int got_width;
    int got_height;

    fp = fopen(filename, "r");
    if (fp == NULL) {
        fprintf(
            stderr,
            "[ERROR] Cannot open image info file '%s': %s\n",
            filename,
            strerror(errno)
        );
        return -1;
    }

    got_width  = 0;
    got_height = 0;

    while (fgets(line, sizeof(line), fp) != NULL) {
        unsigned long value;

        if (sscanf(line, "WIDTH=%lu", &value) == 1) {
            if (value > UINT32_MAX) {
                fclose(fp);
                return -1;
            }
            *width = (uint32_t)value;
            got_width = 1;
        }
        else if (sscanf(line, "HEIGHT=%lu", &value) == 1) {
            if (value > UINT32_MAX) {
                fclose(fp);
                return -1;
            }
            *height = (uint32_t)value;
            got_height = 1;
        }
    }

    fclose(fp);

    if ((!got_width) || (!got_height) || (*width == 0U) || (*height == 0U)) {
        fprintf(stderr, "[ERROR] Invalid WIDTH/HEIGHT in '%s'.\n", filename);
        return -1;
    }

    return 0;
}

/* ================================================================
 * Load exactly one original noisy row into the Input Bank selected
 * by the hardware controller.
 *
 * Equivalent TB flow:
 *   wait_load_ready
 *   read LOAD_BANK
 *   write width pixels to memory space
 *   write START=1       // row-loaded handshake
 * ================================================================ */
static int mf_load_one_row(
    volatile uint32_t *ip,
    FILE *input_fp,
    uint32_t width,
    uint32_t row_number,
    uint32_t *rows_loaded
)
{
    uint32_t x;
    uint32_t load_bank;

    if (mf_wait_load_ready(ip) != 0) {
        return -1;
    }

    load_bank = mmio_read(ip, REG_LOAD_BANK_INDEX) & 0x3U;

    printf(
        "[SW] LOAD original row %u -> Input Bank%u\n",
        (unsigned int)row_number,
        (unsigned int)(load_bank + 1U)
    );

    for (x = 0U; x < width; ++x) {
        unsigned int value;

        if (fscanf(input_fp, "%x", &value) != 1) {
            fprintf(
                stderr,
                "[ERROR] Cannot read noisy pixel row=%u x=%u\n",
                (unsigned int)row_number,
                (unsigned int)x
            );
            return -1;
        }

        if (value > 0xFFU) {
            fprintf(
                stderr,
                "[ERROR] Noisy pixel outside 8-bit range at row=%u x=%u: 0x%X\n",
                (unsigned int)row_number,
                (unsigned int)x,
                value
            );
            return -1;
        }

        mf_write_input_pixel(ip, x, (uint8_t)value);
    }

    /* Tell FSM that the complete row has been loaded. */
    mf_start_command(ip);

    *rows_loaded = *rows_loaded + 1U;

    return 0;
}

/* ================================================================
 * Read, save and compare exactly one output row.
 *
 * Equivalent TB flow:
 *   wait_read_ready
 *   verify OUTPUT_ROW
 *   read MODE
 *   read width pixels from Output Memory
 *   compare against C golden
 *   write STOP=1       // output-row-consumed handshake
 * ================================================================ */
static int mf_read_and_check_one_row(
    volatile uint32_t *ip,
    FILE *golden_fp,
    FILE *output_fp,
    uint32_t width,
    uint32_t height,
    uint32_t row_number,
    uint64_t *pass_count,
    uint64_t *fail_count,
    uint32_t *rows_read
)
{
    uint32_t x;
    uint32_t row_index;
    uint32_t mode;

    if (mf_wait_read_ready(ip) != 0) {
        return -1;
    }

    row_index = mmio_read(ip, REG_OUTPUT_ROW_INDEX) & 0xFFFFU;
    mode      = mmio_read(ip, REG_MODE_INDEX) & 0x1U;

    if (row_index != row_number) {
        fprintf(
            stderr,
            "[ERROR] Controller row mismatch: expected=%u got=%u state=%u\n",
            (unsigned int)row_number,
            (unsigned int)row_index,
            (unsigned int)(mmio_read(ip, REG_STATE_INDEX) & 0x7U)
        );
        return -1;
    }

    if ((row_number == 0U) ||
        (row_number == (height - 1U)) ||
        (width < 3U) ||
        (height < 3U)) {
        printf(
            "[SW] READ output row %u (COPY mode, HW mode=%u)\n",
            (unsigned int)row_number,
            (unsigned int)mode
        );
    }
    else {
        printf(
            "[SW] READ output row %u (MEDIAN mode, HW mode=%u)\n",
            (unsigned int)row_number,
            (unsigned int)mode
        );
    }

    for (x = 0U; x < width; ++x) {
        unsigned int golden_value;
        uint8_t actual_pixel;
        uint8_t golden_pixel;

        actual_pixel = mf_read_output_pixel(ip, x);

        if (fscanf(golden_fp, "%x", &golden_value) != 1) {
            fprintf(
                stderr,
                "[ERROR] Cannot read golden pixel row=%u x=%u\n",
                (unsigned int)row_number,
                (unsigned int)x
            );
            return -1;
        }

        if (golden_value > 0xFFU) {
            fprintf(
                stderr,
                "[ERROR] Golden pixel outside 8-bit range at row=%u x=%u: 0x%X\n",
                (unsigned int)row_number,
                (unsigned int)x,
                golden_value
            );
            return -1;
        }

        golden_pixel = (uint8_t)golden_value;

        /* Upper-case 8-bit hex, same row-major format as the C model. */
        fprintf(output_fp, "%02X\n", (unsigned int)actual_pixel);

        if (actual_pixel == golden_pixel) {
            *pass_count = *pass_count + 1ULL;
        }
        else {
            *fail_count = *fail_count + 1ULL;

            if (*fail_count <= MAX_REPORTED_FAILURES) {
                printf(
                    "[FAIL] row=%u x=%u HW=%02X C=%02X\n",
                    (unsigned int)row_number,
                    (unsigned int)x,
                    (unsigned int)actual_pixel,
                    (unsigned int)golden_pixel
                );
            }
        }
    }

    /* Output row consumed. Output Memory can now be reused. */
    mf_stop_command(ip);

    *rows_read = *rows_read + 1U;

    return 0;
}

/* ================================================================
 * MAIN
 * ================================================================ */
int main(int argc, char *argv[])
{
    const char *info_file;
    const char *input_file;
    const char *golden_file;
    const char *output_file;

    uint32_t image_width;
    uint32_t image_height;
    uint32_t row;

    uint32_t rows_loaded;
    uint32_t rows_read;
    uint64_t pass_count;
    uint64_t fail_count;

    int mem_fd;
    volatile uint32_t *ip;
    FILE *input_fp;
    FILE *golden_fp;
    FILE *output_fp;
    int result;

    info_file   = DEFAULT_INFO_FILE;
    input_file  = DEFAULT_INPUT_FILE;
    golden_file = DEFAULT_GOLDEN_FILE;
    output_file = DEFAULT_OUTPUT_FILE;

    if (argc == 5) {
        info_file   = argv[1];
        input_file  = argv[2];
        golden_file = argv[3];
        output_file = argv[4];
    }
    else if (argc != 1) {
        fprintf(
            stderr,
            "Usage: %s [image_info.txt noisy_pixels.hex denoised_pixels.hex hw_output.hex]\n",
            argv[0]
        );
        return EXIT_FAILURE;
    }

    image_width  = 0U;
    image_height = 0U;
    rows_loaded  = 0U;
    rows_read    = 0U;
    pass_count   = 0ULL;
    fail_count   = 0ULL;
    result       = EXIT_FAILURE;

    input_fp  = NULL;
    golden_fp = NULL;
    output_fp = NULL;
    ip        = MAP_FAILED;
    mem_fd    = -1;

    if (read_image_info(info_file, &image_width, &image_height) != 0) {
        goto cleanup;
    }

    if (image_width > BANK_DEPTH) {
        fprintf(
            stderr,
            "[ERROR] Unsupported WIDTH=%u. BRAM bank depth=%u.\n",
            (unsigned int)image_width,
            (unsigned int)BANK_DEPTH
        );
        goto cleanup;
    }

    input_fp = fopen(input_file, "r");
    if (input_fp == NULL) {
        fprintf(stderr, "[ERROR] Cannot open input '%s': %s\n", input_file, strerror(errno));
        goto cleanup;
    }

    golden_fp = fopen(golden_file, "r");
    if (golden_fp == NULL) {
        fprintf(stderr, "[ERROR] Cannot open golden '%s': %s\n", golden_file, strerror(errno));
        goto cleanup;
    }

    output_fp = fopen(output_file, "w");
    if (output_fp == NULL) {
        fprintf(stderr, "[ERROR] Cannot open output '%s': %s\n", output_file, strerror(errno));
        goto cleanup;
    }

    mem_fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (mem_fd < 0) {
        perror("[ERROR] Cannot open /dev/mem");
        goto cleanup;
    }

    ip = (volatile uint32_t *)mmap(
        NULL,
        MF_IP_MAP_SIZE,
        PROT_READ | PROT_WRITE,
        MAP_SHARED,
        mem_fd,
        MF_IP_BASE_ADDR
    );

    if (ip == MAP_FAILED) {
        perror("[ERROR] mmap Median Filter IP failed");
        goto cleanup;
    }

    printf("\n");
    printf("============================================================\n");
    printf("            MEDIAN FILTER IP - SOC SELF TEST\n");
    printf("============================================================\n");
    printf("IP base address : 0x%08lX\n", MF_IP_BASE_ADDR);
    printf("IP map size     : 0x%08lX\n", MF_IP_MAP_SIZE);
    printf("Resolution      : %u x %u\n",
           (unsigned int)image_width,
           (unsigned int)image_height);
    printf("Input banks     : 3 x %u x 8 bits\n", (unsigned int)BANK_DEPTH);
    printf("Output memory   : 1 x %u x 8 bits\n", (unsigned int)BANK_DEPTH);
    printf("Input           : %s\n", input_file);
    printf("Golden          : %s\n", golden_file);
    printf("HW output       : %s\n", output_file);
    printf("============================================================\n\n");

    /* ------------------------------------------------------------
     * Same initialization sequence as TB_Median_Filter_Core:
     *   WIDTH
     *   HEIGHT
     *   LOAD = 1
     * ------------------------------------------------------------ */
    mmio_write(ip, REG_WIDTH_INDEX,  image_width);
    mmio_write(ip, REG_HEIGHT_INDEX, image_height);
    mf_load_command(ip);

    if ((image_width < 3U) || (image_height < 3U)) {
        /* Same C-model early-return behavior: output = input. */
        for (row = 0U; row < image_height; ++row) {
            if (mf_load_one_row(
                    ip,
                    input_fp,
                    image_width,
                    row,
                    &rows_loaded
                ) != 0) {
                goto cleanup;
            }

            if (mf_read_and_check_one_row(
                    ip,
                    golden_fp,
                    output_fp,
                    image_width,
                    image_height,
                    row,
                    &pass_count,
                    &fail_count,
                    &rows_read
                ) != 0) {
                goto cleanup;
            }
        }
    }
    else {
        /* Initial 3 original rows -> the three rotating Input Banks. */
        if (mf_load_one_row(ip, input_fp, image_width, 0U, &rows_loaded) != 0) {
            goto cleanup;
        }
        if (mf_load_one_row(ip, input_fp, image_width, 1U, &rows_loaded) != 0) {
            goto cleanup;
        }
        if (mf_load_one_row(ip, input_fp, image_width, 2U, &rows_loaded) != 0) {
            goto cleanup;
        }

        /* Unchanged top border. */
        if (mf_read_and_check_one_row(
                ip, golden_fp, output_fp,
                image_width, image_height, 0U,
                &pass_count, &fail_count, &rows_read
            ) != 0) {
            goto cleanup;
        }

        /* Median row 1 computed from original rows 0/1/2. */
        if (mf_read_and_check_one_row(
                ip, golden_fp, output_fp,
                image_width, image_height, 1U,
                &pass_count, &fail_count, &rows_read
            ) != 0) {
            goto cleanup;
        }

        /*
         * Reuse only the obsolete input bank for each new original row.
         * Input banks are NEVER overwritten by median results.
         */
        for (row = 3U; row < image_height; ++row) {
            if (mf_load_one_row(
                    ip,
                    input_fp,
                    image_width,
                    row,
                    &rows_loaded
                ) != 0) {
                goto cleanup;
            }

            if (mf_read_and_check_one_row(
                    ip,
                    golden_fp,
                    output_fp,
                    image_width,
                    image_height,
                    row - 1U,
                    &pass_count,
                    &fail_count,
                    &rows_read
                ) != 0) {
                goto cleanup;
            }
        }

        /* Unchanged bottom border. */
        if (mf_read_and_check_one_row(
                ip, golden_fp, output_fp,
                image_width, image_height, image_height - 1U,
                &pass_count, &fail_count, &rows_read
            ) != 0) {
            goto cleanup;
        }
    }

    /* The final STOP handshake allows the controller to assert DONE. */
    if (mf_wait_done(ip) != 0) {
        goto cleanup;
    }

    /* Check for unexpected extra input/golden entries. */
    {
        unsigned int extra_value;

        if (fscanf(input_fp, "%x", &extra_value) == 1) {
            printf("[WARNING] noisy_pixels.hex contains extra pixels.\n");
        }

        if (fscanf(golden_fp, "%x", &extra_value) == 1) {
            printf("[WARNING] denoised_pixels.hex contains extra pixels.\n");
        }
    }

    printf("\n");
    printf("============================================================\n");
    printf("                     TEST SUMMARY\n");
    printf("============================================================\n");
    printf("Rows loaded : %u\n", (unsigned int)rows_loaded);
    printf("Rows read   : %u\n", (unsigned int)rows_read);
    printf("PASS pixels : %llu\n", (unsigned long long)pass_count);
    printf("FAIL pixels : %llu\n", (unsigned long long)fail_count);
    printf("DONE        : %u\n",
           (unsigned int)(mmio_read(ip, REG_DONE_INDEX) & 0x1U));
    printf("HW output   : %s\n", output_file);
    printf("============================================================\n");

    if ((fail_count == 0ULL) &&
        (rows_loaded == image_height) &&
        (rows_read == image_height)) {
        printf("RESULT      : ALL TESTS PASSED - HARDWARE MATCHES C GOLDEN\n");
        result = EXIT_SUCCESS;
    }
    else {
        printf("RESULT      : TEST FAILED\n");
        result = EXIT_FAILURE;
    }

    printf("============================================================\n\n");

cleanup:
    if (output_fp != NULL) {
        fclose(output_fp);
    }

    if (golden_fp != NULL) {
        fclose(golden_fp);
    }

    if (input_fp != NULL) {
        fclose(input_fp);
    }

    if (ip != MAP_FAILED) {
        munmap((void *)ip, MF_IP_MAP_SIZE);
    }

    if (mem_fd >= 0) {
        close(mem_fd);
    }

    return result;
}
