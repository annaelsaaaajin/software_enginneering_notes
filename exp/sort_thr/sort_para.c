#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <pthread.h>
#include <string.h>

#define MAXSIZE 500000
#define THREAD_NUM 2
#define MID_INDEX (MAXSIZE / THREAD_NUM)

int array[MAXSIZE];
int res_array[MAXSIZE] = {0};
int flag = 0;

int sort(const void *p1, const void *p2)
{
    return (*(int *) p1 - *(int *) p2);
}

void merge(int* list1, int list1_size, int* list2, int list2_size)
{
    int i = 0, j = 0;
    int t = 0;
    while (i < list1_size && j < list2_size)
    {
        if (list1[i] <= list2[j]) res_array[t ++] = list1[i ++];
        else res_array[t ++] = list2[j ++];
    }
    while (i < list1_size) res_array[t ++] = list1[i ++];
    while (j < list2_size) res_array[t ++] = list2[j ++];
}

void dividing(int *array, int len)
{
    int *list1 = array;
    int *list2 = array + MID_INDEX;
    int list1_size = MID_INDEX, list2_size = MID_INDEX;
    merge(list1, list1_size, list2, list2_size);
}

void *sort_thread(void *arg)
{
    qsort(arg,MID_INDEX,sizeof(int),sort);
    flag ++;
    pthread_exit(NULL);
}

int main()
{
    srand(1);
    for (int i = 0; i < MAXSIZE; i ++)
        array[i] = rand() % 100;

    pthread_t tid1, tid2;
    struct timeval start = {0, 0}, end = {0, 0};
    gettimeofday(&start, NULL);
    pthread_create(&tid1, NULL, sort_thread, (void *)array);
    pthread_create(&tid2, NULL, sort_thread, (void *)(array + MID_INDEX));
    while (flag < 2);
    dividing(array, MAXSIZE);
    gettimeofday(&end, NULL);
    long starttime_use = start.tv_sec * 1000000 + start.tv_usec;
    long endtime_use = end.tv_sec * 1000000 + end.tv_usec;
    double timeuse = (double) (endtime_use - starttime_use) / 1000000.0;
    printf("time use is %.6f s\n", timeuse);
    FILE *fp = fopen("data1.txt", "w+");

    for (unsigned int k = 0; k < MAXSIZE; k ++)
        fprintf(fp, "%d ", res_array[k]);

    return 0;
}