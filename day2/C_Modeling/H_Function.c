#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <time.h>

#define NUM_TESTS 1000

uint32_t calculate_H(
    uint32_t a,
    uint32_t b,
    uint32_t c,
    uint32_t d,
    uint32_t e,
    uint32_t f
)
{
    return (((a + b + c) ^ d) - e) | f;
}

/* T?o s? random ?? 32-bit */
uint32_t rand32(void)
{
    uint32_t r;

    r  = ((uint32_t)(rand() & 0xFFFF) << 16);
    r |= ((uint32_t)(rand() & 0xFFFF));

    return r;
}

int main(void)
{
    FILE *fin;
    FILE *fgolden;

    fin = fopen("input_vectors.txt", "w");
    fgolden = fopen("golden_output.txt", "w");

    if (fin == NULL || fgolden == NULL) {
        printf("ERROR: Cannot open output files\n");
        return 1;
    }

    /*
     * Fixed seed -> m?i l?n ch?y sinh cung 1000 vectors.
     * R?t quan tr?ng cho regression/debug.
     */
    srand(12345);

    for (int i = 0; i < NUM_TESTS; i++) {

        uint32_t a = rand32();
        uint32_t b = rand32();
        uint32_t c = rand32();
        uint32_t d = rand32();
        uint32_t e = rand32();
        uint32_t f = rand32();

        uint32_t H = calculate_H(a, b, c, d, e, f);

        /*
         * input_vectors.txt:
         * a b c d e f
         */
        fprintf(fin,
                "%08X %08X %08X %08X %08X %08X\n",
                a, b, c, d, e, f);

        /*
         * golden_output.txt:
         * H
         */
        fprintf(fgolden, "%08X\n", H);
    }

    fclose(fin);
    fclose(fgolden);

    printf("Generated %d test vectors successfully.\n", NUM_TESTS);
    printf("Input  : input_vectors.txt\n");
    printf("Golden : golden_output.txt\n");

    return 0;
}