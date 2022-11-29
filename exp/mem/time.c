#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 60000000

char src[N], dst[N];
long int len = N;

extern void memorycopy(char *dst, char *src, long int len);

int main()
{
    struct timespec t1, t2;
    int i, j;
    for (i = 0; i < N - 1; i ++) src[i] = 'a';
    src[i] = 0;

    clock_gettime(CLOCK_MONOTONIC, &t1);
    memorycopy(dst, src, len);
    clock_gettime(CLOCK_MONOTONIC, &t2);

    printf("time elapsed : %11u ns\n", t2.tv_nsec - t1.tv_nsec);    
    return 0;
}
