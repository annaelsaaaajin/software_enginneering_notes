#include<stdio.h>
#include<stdlib.h>
#include<sys/time.h>

#define MAXSIZE 50000
int array[MAXSIZE];

int sort(const void *p1, const void *p2)
{
    return (*(int *) p1 - *(int *) p2);
}

int main()
{
    srand(1);
    for (int i = 0; i < MAXSIZE; i ++)
        array[i] = rand() % 100;

    struct timeval start = {0, 0}, end = {0, 0};
    gettimeofday(&start, NULL);
    qsort(array, MAXSIZE, sizeof(int), sort);
    gettimeofday(&end, NULL);
    long starttime_use = start.tv_sec * 1000000 + start.tv_usec;
    long endtime_use = end.tv_sec * 1000000 + end.tv_usec;
    double timeuse = (double) (endtime_use - starttime_use) / 1000000.0;
    printf("time use is %.6f s\n", timeuse);
    FILE *fp = fopen("data1.txt", "w+");

    for (unsigned int k = 0; k < MAXSIZE; k ++)
        fprintf(fp, "%d ", array[k]);
    return 0;
}
