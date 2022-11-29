#include <stdio.h>

//extern void sort(int a[]);

void bubble_sort(int a[])
{
    for (int i = 0; i < 6; i ++)
        for (int j = 5; j > i; j --)
            if (a[j - 1] > a[j])
            {
                int t = a[j - 1];
                a[j - 1] = a[j];
                a[j] = t;
            }
}

int main()
{
    int a[6] = {66, 11, 44, 33, 55, 22};
    printf("before: ");
    for (int i = 0; i < 6; i ++)
        printf("%d ", a[i]);
    bubble_sort(a);
    printf("\nafter: ");
    for (int i = 0; i < 6; i ++)
        printf("%d ", a[i]);
    puts("");
    return 0;
}