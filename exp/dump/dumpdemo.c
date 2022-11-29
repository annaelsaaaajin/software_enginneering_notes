#include <unistd.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <stdio.h>

#define CORE_SIZE 1024 * 1024 * 500

int main()
{
    struct rlimit rlmt;

    if (getrlimit(RLIMIT_CORE, &rlmt) == -1)
        return -1;

    printf("Before set rlimit CORE dump current is:%d, max is:%d\n", (int)rlmt.rlim_cur, (int)rlmt.rlim_max);

    rlmt.rlim_cur = (rlim_t)CORE_SIZE;
    rlmt.rlim_max = (rlim_t)CORE_SIZE;

    if (setrlimit(RLIMIT_CORE, &rlmt) == -1)
        return -1;

    if (getrlimit(RLIMIT_CORE, &rlmt) == -1)
        return -1;

    printf("After set rlimit CORE dump current is:%d, max is:%d\n", (int)rlmt.rlim_cur, (int)rlmt.rlim_max);

    char *ptr = NULL;
    *ptr = 'a';

    return 0;


    return 0;
}