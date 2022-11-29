#include <stdio.h>

extern void sort(int a[]);

int main()
{
    int a[6] = {66, 11, 44, 33, 55, 22};
    printf("before: ");
    for (int i = 0; i < 6; i ++)
        printf("%d", a[i]);
    sort(a);
    printf("\nafter: ");
    for (int i = 0; i < 6; i ++)
        printf("%d", a[i]);
    puts("");
    return 0;
}