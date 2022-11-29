#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <arm_neon.h>

static void matrix_mul_asm(uint16_t **matrix_A, u_int16_t **matrix_B, uint16_t **matrix_C)
{
    u_int16_t *a = (uint16_t*)matrix_A;
    u_int16_t *b = (uint16_t*)matrix_B;
    u_int16_t *c = (uint16_t*)matrix_C;

    __asm__(
        "ldrh w0, [%0]\n"
        "ldrh w1, [%1]\n"
        "mul w0, w0, w1\n"
        "strh w0, [%2]\n"
        "mov x2, #16\n"
        "lp:\n"
        "sub x2, x2, #1\n"
        "ldrh w0, [%0, #2]!\n"
        "ldrh w1, [%1, #2]!\n"
        "mul w0, w0, w1\n"
        "strh w0, [%2, #2]!\n"
        "cmp x2, #1\n"
        "bne lp\n"
        :"+r"(a), "+r"(b), "+r"(c)
        :
        :"cc", "memory", "x0", "x1", "x2"
    );
    
}

int main()
{
    struct timespec t1, t2;
    uint16_t matrix_A[4][4] = {
        {1, 2, 3, 4},
        {5, 6, 7, 8},
        {1, 2, 3, 4},
        {5, 6, 7, 8}
    };

    u_int16_t matrix_B[4][4] = {
        {1, 5, 8, 4},
        {2, 6, 7, 3},
        {3, 7, 6, 2},
        {4, 8, 5, 1}
    };

    uint16_t matrix_C[4][4] = {0};
    int i, j;

    clock_gettime(CLOCK_MONOTONIC, &t1);
    matrix_mul_asm((uint16_t **)matrix_A, (uint16_t **)matrix_B, (u_int16_t **)matrix_C);
    clock_gettime(CLOCK_MONOTONIC, &t2);
    printf("memorycopy time is %11u ns\n", t2.tv_nsec - t1.tv_nsec);;
    
    for (i = 0; i < 4; i ++)
        for (j = 0; j < 4; j ++)
            printf("%11u \n", matrix_C[i][j]);

    return 0;
}