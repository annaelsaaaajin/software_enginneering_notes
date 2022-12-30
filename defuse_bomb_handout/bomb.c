#include <stdio.h>
#include <stdlib.h>
#include <string.h>

FILE *infile;

int main(int argc, char *argv[])
{
    if (argc == 1)
    {
        infile = stdin;
        //infile = fopen("key.txt", "r");
    }
    else if (argc == 2)
    {
        if (!(infile = fopen(argv[1], "r")))
        {
            printf("%s: Error: Couldn't open %s\n", argv[0], argv[1]);
            exit(8);
        }
    }
    else
    {
        printf("Usage: %s [<input_file>]\n", argv[0]);
        exit(8);
    }

    read();

    phase1(inputs[0]);
    phase2(inputs[1]);
    phase3(inputs[2]);

    printf("Good, your total score is 100\n You saved Pai Meng!\n");

    return 0;
}
