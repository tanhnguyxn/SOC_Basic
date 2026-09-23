/*
 * 3x3 Median Filter reference model for grayscale images.
 *
 * Input:
 *   data/image_info.txt   -> WIDTH=<n> and HEIGHT=<n>
 *   data/noisy_pixels.hex -> one 8-bit hexadecimal pixel per line (00..FF)
 *
 * Output:
 *   data/denoised_pixels.hex -> same row-major 8-bit hexadecimal format
 *
 * Border policy:
 *   The outermost 1-pixel border is copied unchanged. This keeps the software
 *   model simple and maps cleanly to a future streaming hardware design.
 */

#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define DEFAULT_INFO_FILE   "data/image_info.txt"
#define DEFAULT_INPUT_FILE  "data/noisy_pixels.hex"
#define DEFAULT_OUTPUT_FILE "data/denoised_pixels.hex"

typedef uint8_t U8;

static int read_image_info(const char *filename, size_t *width, size_t *height)
{
    FILE *fp = fopen(filename, "r");
    char line[128];
    int got_width = 0;
    int got_height = 0;

    if (fp == NULL) {
        fprintf(stderr, "ERROR: cannot open metadata file '%s': %s\n",
                filename, strerror(errno));
        return -1;
    }

    while (fgets(line, sizeof(line), fp) != NULL) {
        unsigned long value;
        if (sscanf(line, "WIDTH=%lu", &value) == 1) {
            *width = (size_t)value;
            got_width = 1;
        } else if (sscanf(line, "HEIGHT=%lu", &value) == 1) {
            *height = (size_t)value;
            got_height = 1;
        }
    }

    fclose(fp);

    if (!got_width || !got_height || *width == 0 || *height == 0) {
        fprintf(stderr, "ERROR: invalid WIDTH/HEIGHT in '%s'.\n", filename);
        return -1;
    }
    return 0;
}

static int read_hex_pixels(const char *filename, U8 *pixels, size_t count)
{
    FILE *fp = fopen(filename, "r");
    size_t i;

    if (fp == NULL) {
        fprintf(stderr, "ERROR: cannot open input pixel file '%s': %s\n",
                filename, strerror(errno));
        return -1;
    }

    for (i = 0; i < count; ++i) {
        unsigned int value;
        if (fscanf(fp, "%x", &value) != 1) {
            fprintf(stderr,
                    "ERROR: expected %zu pixels but failed at pixel %zu in '%s'.\n",
                    count, i, filename);
            fclose(fp);
            return -1;
        }
        if (value > 0xFFU) {
            fprintf(stderr, "ERROR: pixel %zu is outside 8-bit range: 0x%X\n",
                    i, value);
            fclose(fp);
            return -1;
        }
        pixels[i] = (U8)value;
    }

    fclose(fp);
    return 0;
}

static int write_hex_pixels(const char *filename, const U8 *pixels, size_t count)
{
    FILE *fp = fopen(filename, "w");
    size_t i;

    if (fp == NULL) {
        fprintf(stderr, "ERROR: cannot open output pixel file '%s': %s\n",
                filename, strerror(errno));
        return -1;
    }

    for (i = 0; i < count; ++i) {
        fprintf(fp, "%02X\n", (unsigned int)pixels[i]);
    }

    fclose(fp);
    return 0;
}

static void compare_swap(U8 *a, U8 *b)
{
    if (*a > *b) {
        U8 tmp = *a;
        *a = *b;
        *b = tmp;
    }
}

static U8 median9(U8 window[9])
{
    /*
     * Fixed-size sorting model. After sorting 9 values in ascending order,
     * the median is element 4. The loop bounds are compile-time constants,
     * which makes this easy to replace later by a comparator network in RTL.
     */
    int pass;
    int i;

    for (pass = 0; pass < 8; ++pass) {
        for (i = 0; i < 8 - pass; ++i) {
            compare_swap(&window[i], &window[i + 1]);
        }
    }
    return window[4];
}

static void median_filter_3x3(
    const U8 *input,
    U8 *output,
    size_t width,
    size_t height)
{
    size_t x;
    size_t y;

    /* Images smaller than 3x3 cannot contain a complete 3x3 window. */
    if (width < 3 || height < 3) {
        memcpy(output, input, width * height * sizeof(U8));
        return;
    }

    /* Copy the full frame first so the 1-pixel border remains unchanged. */
    memcpy(output, input, width * height * sizeof(U8));

    for (y = 1; y < height - 1; ++y) {
        for (x = 1; x < width - 1; ++x) {
            U8 window[9];
            int k = 0;
            int dy;
            int dx;

            for (dy = -1; dy <= 1; ++dy) {
                for (dx = -1; dx <= 1; ++dx) {
                    size_t px = (size_t)((long)x + dx);
                    size_t py = (size_t)((long)y + dy);
                    window[k++] = input[py * width + px];
                }
            }

            output[y * width + x] = median9(window);
        }
    }
}

int main(int argc, char **argv)
{
    const char *info_file = DEFAULT_INFO_FILE;
    const char *input_file = DEFAULT_INPUT_FILE;
    const char *output_file = DEFAULT_OUTPUT_FILE;
    size_t width = 0;
    size_t height = 0;
    size_t pixel_count;
    U8 *input = NULL;
    U8 *output = NULL;
    int status = EXIT_FAILURE;

    if (argc == 4) {
        info_file = argv[1];
        input_file = argv[2];
        output_file = argv[3];
    } else if (argc != 1) {
        fprintf(stderr,
                "Usage: %s [image_info.txt noisy_pixels.hex denoised_pixels.hex]\n",
                argv[0]);
        return EXIT_FAILURE;
    }

    if (read_image_info(info_file, &width, &height) != 0) {
        goto cleanup;
    }

    if (width > SIZE_MAX / height) {
        fprintf(stderr, "ERROR: image dimensions are too large.\n");
        goto cleanup;
    }
    pixel_count = width * height;

    input = (U8 *)malloc(pixel_count * sizeof(U8));
    output = (U8 *)malloc(pixel_count * sizeof(U8));
    if (input == NULL || output == NULL) {
        fprintf(stderr, "ERROR: memory allocation failed.\n");
        goto cleanup;
    }

    if (read_hex_pixels(input_file, input, pixel_count) != 0) {
        goto cleanup;
    }

    median_filter_3x3(input, output, width, height);

    if (write_hex_pixels(output_file, output, pixel_count) != 0) {
        goto cleanup;
    }

    printf("Median filter completed.\n");
    printf("Resolution : %zu x %zu\n", width, height);
    printf("Input      : %s\n", input_file);
    printf("Output     : %s\n", output_file);
    printf("Kernel     : 3x3\n");
    printf("Border     : copied unchanged\n");

    status = EXIT_SUCCESS;

cleanup:
    free(input);
    free(output);
    return status;
}
