#include<stdio.h>
#include<stdlib.h>
#include<sys/time.h>
#include<time.h>
#define N 500

double a[N][N] = {0};
double b[N][N] = {0};
double c[N][N] = {0};

void matrix_mul()
{
    for (int i = 0; i < N; i ++)
        for (int j = 0; j < N; j ++)
            for (int k = 0; k < N; k ++)
                c[i][j] += a[i][k] * b[k][j];
}

int main()
{
    srand((unsigned)time(NULL));
    for (int i = 0; i < N; i ++)
        for (int j = 0; j < N; j ++)
        {
            a[i][j] = rand() % 100;
            b[i][j] = rand() % 100;
            c[i][j] = 0;
        }

    struct timeval start = {0, 0}, end = {0, 0};
    gettimeofday(&start, NULL);
    matrix_mul();
    gettimeofday(&end, NULL);
    long time_use = 1000000 * ( end.tv_sec - start.tv_sec ) + end.tv_usec - start.tv_usec;
    printf("Time use:%ld *10^-6 s\n",time_use);
    return 0;
}