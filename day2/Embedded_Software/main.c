#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

/* ================================================================
 * H Acceleration IP configuration
 * ================================================================ */
#define H_IP_BASE_ADDR       0xA0000000UL
#define H_IP_MAP_SIZE        0x00010000UL

/* ================================================================
 * Register map
 *
 * Giữ nguyên index giống H_Arbiter:
 *
 * WRITE:
 *   0 -> A
 *   1 -> B
 *   2 -> C
 *   3 -> D
 *   4 -> E
 *   5 -> F
 *   6 -> LOAD
 *   7 -> START
 *   8 -> STOP
 *
 * READ:
 *   0 -> H
 *   1 -> READ_READY
 * ================================================================ */

/* Write registers */
#define REG_A_OFFSET         0x0
#define REG_B_OFFSET         0x1
#define REG_C_OFFSET         0x2
#define REG_D_OFFSET         0x3
#define REG_E_OFFSET         0x4
#define REG_F_OFFSET         0x5

#define REG_LOAD_OFFSET      0x6
#define REG_START_OFFSET     0x7
#define REG_STOP_OFFSET      0x8

/* Read registers */
#define REG_H_OFFSET         0x0
#define REG_READY_OFFSET     0x1

/* ================================================================
 * Command / status
 * ================================================================ */
#define CMD_ASSERT           0x00000001U
#define READ_READY_MASK      0x00000001U

/* Polling timeout */
#define READY_TIMEOUT        1000000U

/* ================================================================
 * C-model files
 * ================================================================ */
#define DEFAULT_INPUT_FILE \
    "/home/ubuntu/SoC_Can_Ban/Luan/Class_4/Day_2/C_Modeling/input_vectors.txt"

#define DEFAULT_GOLDEN_FILE \
    "/home/ubuntu/SoC_Can_Ban/Luan/Class_4/Day_2/C_Modeling/golden_output.txt"

/* ================================================================
 * MMIO write
 *
 * offset là register index, không cần << 2 trong source code.
 *
 * Ví dụ:
 *   base[0] -> register A
 *   base[1] -> register B
 *   base[6] -> LOAD
 * ================================================================ */
static inline void write_reg(
    volatile uint32_t *base,
    uint32_t offset,
    uint32_t value
)
{
    base[offset] = value;

    /*
     * Memory barrier để tránh compiler/CPU reorder MMIO access.
     */
    __sync_synchronize();
}

/* ================================================================
 * MMIO read
 * ================================================================ */
static inline uint32_t read_reg(
    volatile uint32_t *base,
    uint32_t offset
)
{
    uint32_t value;

    __sync_synchronize();

    value = base[offset];

    __sync_synchronize();

    return value;
}

/* ================================================================
 * LOAD command
 *
 * FSM:
 * IDLE -> LOAD
 * ================================================================ */
static void h_load(
    volatile uint32_t *ip
)
{
    write_reg(
        ip,
        REG_LOAD_OFFSET,
        CMD_ASSERT
    );
}

/* ================================================================
 * START command
 *
 * FSM:
 * LOAD -> EXEC
 * ================================================================ */
static void h_start(
    volatile uint32_t *ip
)
{
    write_reg(
        ip,
        REG_START_OFFSET,
        CMD_ASSERT
    );
}

/* ================================================================
 * STOP command
 *
 * FSM:
 * READ -> IDLE
 * ================================================================ */
static void h_stop(
    volatile uint32_t *ip
)
{
    write_reg(
        ip,
        REG_STOP_OFFSET,
        CMD_ASSERT
    );
}

/* ================================================================
 * Write A..F
 * ================================================================ */
static void h_write_inputs(
    volatile uint32_t *ip,
    uint32_t a,
    uint32_t b,
    uint32_t c,
    uint32_t d,
    uint32_t e,
    uint32_t f
)
{
    write_reg(ip, REG_A_OFFSET, a);
    write_reg(ip, REG_B_OFFSET, b);
    write_reg(ip, REG_C_OFFSET, c);
    write_reg(ip, REG_D_OFFSET, d);
    write_reg(ip, REG_E_OFFSET, e);
    write_reg(ip, REG_F_OFFSET, f);
}

/* ================================================================
 * Wait READ_READY
 *
 * READ_READY = 1 khi FSM ở READ state.
 *
 * Return:
 *   0  : ready
 *  -1  : timeout
 * ================================================================ */
static int h_wait_ready(
    volatile uint32_t *ip
)
{
    uint32_t ready;
    uint32_t timeout_count;

    timeout_count = 0;

    while (timeout_count < READY_TIMEOUT) {

        ready = read_reg(
            ip,
            REG_READY_OFFSET
        );

        if ((ready & READ_READY_MASK) != 0U) {
            return 0;
        }

        timeout_count++;
    }

    return -1;
}

/* ================================================================
 * Read H
 * ================================================================ */
static uint32_t h_read_result(
    volatile uint32_t *ip
)
{
    return read_reg(
        ip,
        REG_H_OFFSET
    );
}

/* ================================================================
 * Run one testcase
 *
 * Flow:
 *
 *   LOAD
 *     |
 *     v
 * write A..F
 *     |
 *     v
 *   START
 *     |
 *     v
 * poll READ_READY
 *     |
 *     v
 *   read H
 *     |
 *     v
 *   STOP
 * ================================================================ */
static int h_execute(
    volatile uint32_t *ip,
    uint32_t a,
    uint32_t b,
    uint32_t c,
    uint32_t d,
    uint32_t e,
    uint32_t f,
    uint32_t *result
)
{
    /* IDLE -> LOAD */
    h_load(ip);

    /* Write operands */
    h_write_inputs(
        ip,
        a,
        b,
        c,
        d,
        e,
        f
    );

    /* LOAD -> EXEC */
    h_start(ip);

    /* Wait EXEC -> READ */
    if (h_wait_ready(ip) != 0) {

        /*
         * Nếu timeout, thử STOP để đưa IP về IDLE.
         */
        h_stop(ip);

        return -1;
    }

    /* Read H result */
    *result = h_read_result(ip);

    /* READ -> IDLE */
    h_stop(ip);

    return 0;
}

/* ================================================================
 * MAIN
 * ================================================================ */
int main(
    int argc,
    char *argv[]
)
{
    int mem_fd;

    volatile uint32_t *ip;

    FILE *input_fp;
    FILE *golden_fp;

    const char *input_file;
    const char *golden_file;

    uint32_t a;
    uint32_t b;
    uint32_t c;
    uint32_t d;
    uint32_t e;
    uint32_t f;

    uint32_t expected_h;
    uint32_t actual_h;

    unsigned long testcase_count;
    unsigned long pass_count;
    unsigned long fail_count;

    int input_scan_count;
    int golden_scan_count;

    /* ============================================================
     * File path
     *
     * Default:
     *   input_vectors.txt
     *   golden_output.txt
     *
     * Hoặc:
     *
     * ./h_test input_vectors.txt golden_output.txt
     * ============================================================ */
    if (argc >= 3) {
        input_file  = argv[1];
        golden_file = argv[2];
    }
    else {
        input_file  = DEFAULT_INPUT_FILE;
        golden_file = DEFAULT_GOLDEN_FILE;
    }

    testcase_count = 0;
    pass_count     = 0;
    fail_count     = 0;

    /* ============================================================
     * Open /dev/mem
     * ============================================================ */
    mem_fd = open(
        "/dev/mem",
        O_RDWR | O_SYNC
    );

    if (mem_fd < 0) {
        perror("ERROR: Cannot open /dev/mem");
        return EXIT_FAILURE;
    }

    /* ============================================================
     * mmap H Acceleration IP
     * ============================================================ */
    ip = (volatile uint32_t *)mmap(
        NULL,
        H_IP_MAP_SIZE,
        PROT_READ | PROT_WRITE,
        MAP_SHARED,
        mem_fd,
        H_IP_BASE_ADDR
    );

    if (ip == MAP_FAILED) {

        perror("ERROR: mmap H_Acceleration_IP failed");

        close(mem_fd);

        return EXIT_FAILURE;
    }

    /* ============================================================
     * Open input_vectors.txt
     * ============================================================ */
    input_fp = fopen(
        input_file,
        "r"
    );

    if (input_fp == NULL) {

        fprintf(
            stderr,
            "ERROR: Cannot open input file: %s\n",
            input_file
        );

        munmap(
            (void *)ip,
            H_IP_MAP_SIZE
        );

        close(mem_fd);

        return EXIT_FAILURE;
    }

    /* ============================================================
     * Open golden_output.txt
     * ============================================================ */
    golden_fp = fopen(
        golden_file,
        "r"
    );

    if (golden_fp == NULL) {

        fprintf(
            stderr,
            "ERROR: Cannot open golden file: %s\n",
            golden_file
        );

        fclose(input_fp);

        munmap(
            (void *)ip,
            H_IP_MAP_SIZE
        );

        close(mem_fd);

        return EXIT_FAILURE;
    }

    /* ============================================================
     * Banner
     * ============================================================ */
    printf("\n");
    printf("============================================================\n");
    printf("              H ACCELERATION IP SELF TEST\n");
    printf("============================================================\n");
    printf("IP base address : 0x%08lX\n", H_IP_BASE_ADDR);
    printf("IP map size     : 0x%08lX\n", H_IP_MAP_SIZE);
    printf("Input vectors   : %s\n", input_file);
    printf("Golden outputs  : %s\n", golden_file);
    printf("============================================================\n");
    printf("\n");

    /* ============================================================
     * Run all testcases
     * ============================================================ */
    while (1) {

        /* --------------------------------------------------------
         * input_vectors.txt:
         *
         * A B C D E F
         * -------------------------------------------------------- */
        input_scan_count = fscanf(
            input_fp,
            "%x %x %x %x %x %x",
            &a,
            &b,
            &c,
            &d,
            &e,
            &f
        );

        /* EOF */
        if (input_scan_count == EOF) {
            break;
        }

        /* Invalid input line */
        if (input_scan_count != 6) {

            fprintf(
                stderr,
                "[ERROR] Invalid input vector at testcase %lu\n",
                testcase_count + 1
            );

            fail_count++;

            break;
        }

        /* --------------------------------------------------------
         * golden_output.txt:
         *
         * H
         * -------------------------------------------------------- */
        golden_scan_count = fscanf(
            golden_fp,
            "%x",
            &expected_h
        );

        if (golden_scan_count != 1) {

            fprintf(
                stderr,
                "[ERROR] Invalid/missing golden output "
                "at testcase %lu\n",
                testcase_count + 1
            );

            fail_count++;

            break;
        }

        testcase_count++;

        /* ========================================================
         * Execute hardware
         * ======================================================== */
        if (h_execute(
                ip,
                a,
                b,
                c,
                d,
                e,
                f,
                &actual_h
            ) != 0) {

            fail_count++;

            printf(
                "[FAIL] TC=%04lu : TIMEOUT waiting READ_READY\n",
                testcase_count
            );

            printf(
                "       A=%08X B=%08X C=%08X "
                "D=%08X E=%08X F=%08X\n",
                a,
                b,
                c,
                d,
                e,
                f
            );

            continue;
        }

        /* ========================================================
         * Compare HW vs C golden model
         * ======================================================== */
        if (actual_h == expected_h) {

            pass_count++;

            printf(
                "[PASS] TC=%04lu "
                "A=%08X B=%08X C=%08X "
                "D=%08X E=%08X F=%08X "
                "H=%08X\n",
                testcase_count,
                a,
                b,
                c,
                d,
                e,
                f,
                actual_h
            );
        }
        else {

            fail_count++;

            printf(
                "[FAIL] TC=%04lu "
                "A=%08X B=%08X C=%08X "
                "D=%08X E=%08X F=%08X\n",
                testcase_count,
                a,
                b,
                c,
                d,
                e,
                f
            );

            printf(
                "       DUT    = %08X\n",
                actual_h
            );

            printf(
                "       GOLDEN = %08X\n",
                expected_h
            );
        }
    }

    /* ============================================================
     * Check if golden file contains extra entries
     * ============================================================ */
    if (fscanf(
            golden_fp,
            "%x",
            &expected_h
        ) == 1) {

        printf(
            "[WARNING] golden_output.txt has more entries "
            "than input_vectors.txt\n"
        );
    }

    /* ============================================================
     * Summary
     * ============================================================ */
    printf("\n");
    printf("============================================================\n");
    printf("                     TEST SUMMARY\n");
    printf("============================================================\n");
    printf("TOTAL TESTCASES : %lu\n", testcase_count);
    printf("PASSED          : %lu\n", pass_count);
    printf("FAILED          : %lu\n", fail_count);
    printf("============================================================\n");

    if ((testcase_count > 0) &&
        (fail_count == 0)) {

        printf("RESULT          : ALL TESTS PASSED\n");
    }
    else {

        printf("RESULT          : TEST FAILED\n");
    }

    printf("============================================================\n");
    printf("\n");

    /* ============================================================
     * Cleanup
     * ============================================================ */
    fclose(input_fp);
    fclose(golden_fp);

    munmap(
        (void *)ip,
        H_IP_MAP_SIZE
    );

    close(mem_fd);

    return (fail_count == 0) ?
           EXIT_SUCCESS :
           EXIT_FAILURE;
}