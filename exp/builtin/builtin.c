#include <stdio.h>

int main()
{
    int val, sum;
    puts("input");
    scanf("%d", &val);
    __asm__(
        "MOV x1, #0 \n" 
        "add:\n"
        "ADD x1, x1, x0\n"
        "SUB x0, x0, #1\n" 
        "CMP x0, #0\n" 
        "BNE add\n" 
        "MOV x0, x1\n"
        :"=r"(sum)
        :"0"(val)
    );
    printf("%d\n", sum);
    return 0;
}