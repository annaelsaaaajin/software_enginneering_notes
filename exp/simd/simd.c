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
        "ld4 {v0.8b - v3.8b}, [%0]\n"
        "ld4 {v4.8b, v5.8b, v6.8b, v7.8b}, [%1]\n"
        "mul v3.8b, v3.8b, v7.8b\n"
        "mul v2.8b, v2.8b, v6.8b\n"
        "mul v1.8b, v1.8b, v5.8b\n"
        "mul v0.8b, v0.8b, v4.8b\n"
        "st4 {v0.8b, v1.8b, v2.8b, v3.8b}, [%2]\n"
        :"+r"(a), "+r"(b), "+r"(c)
        :
        :"cc", "memory", "v0", "v1", "v3", "v4", "v5", "v6", "v7"
    );
    
}

int main()
{
    struct timespec t1, t2;
    uint16_t matrix_A[4][8] = {
        {1,2,3,4,4,3,2,1},
        {8,7,6,5,5,6,7,8},
        {4,3,2,1,1,2,3,4},
        {5,6,7,8,8,7,6,5}
    };

    u_int16_t matrix_B[4][8] = {
        {3,2,3,4,4,2,3,4},
        {1,2,3,4,2,2,3,4},
        {7,7,4,9,8,8,6,4},
        {4,3,2,1,1,2,3,4}
    };

    uint16_t matrix_C[4][8] = {0};
    int i, j;

    clock_gettime(CLOCK_MONOTONIC, &t1);
    matrix_mul_asm((uint16_t **)matrix_A, (uint16_t **)matrix_B, (u_int16_t **)matrix_C);
    clock_gettime(CLOCK_MONOTONIC, &t2);
    printf("memorycopy time is %11u ns\n", t2.tv_nsec - t1.tv_nsec);;
    
    for (i = 0; i < 4; i ++)
    {
        for (j = 0; j < 8; j ++)
            printf("%11u  ", matrix_C[i][j]);
        puts("");
    }

    return 0;
}