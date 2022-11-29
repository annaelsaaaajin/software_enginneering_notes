#include <stdio.h>
#include <execinfo.h>

#define MAX_SIZE 16

void func01()
{
    int i = 0;
    void *buffer[MAX_SIZE] = {0};
    int size = backtrace(buffer, MAX_SIZE);

    for (i = 0; i < size; i ++)
        printf("called by %p\n", buffer[i]);
}

int func02(int num)
{
    int temp = 0;
    int *ptr = NULL;
    *ptr = 1;
    temp = num + *ptr;
    test01();
    return temp;
}

int func03(int num)
{
    int temp = 0;
    temp = test02(num);
    return temp;
}

int main()
{
    test03(1);
    return 0;
}