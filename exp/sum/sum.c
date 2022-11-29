#include <stdio.h>

extern int add(int num);

int main()
{
    int i, sum;
    scanf("%d", &i);
    sum = add(i);
    printf("%d", sum);
    return 0;
}

