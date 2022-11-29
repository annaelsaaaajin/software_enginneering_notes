#include <stdio.h>
#include <execinfo.h>

#define MAX_LEVEL 4

static void func1()
{
    int i = 0;
    void *buffer[MAX_LEVEL] = {0};
    int size = backtrace(buffer, MAX_LEVEL);

    for (i = 0; i < size; i ++)
        printf("called by %p\n", buffer[i]);
}

static void func2()
{
    func1();
    return;
}

static void func3()
{
    func2();
    return;
}

int main()
{
    func3();
    return 0;
}

