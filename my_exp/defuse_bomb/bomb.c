#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define N 80
#define M 3
#define PHASE_2_INPUT_CNT 6

FILE *infile;
char inputs[M][N];
int points[M] = {20, 30, 50};
int sum;

void read()
{
    for (int i = 0; i < M; i ++)
        fgets(inputs[i], N, infile);
    for (int i = 0; i < M; i ++)
        inputs[i][strlen(inputs[i]) - 1] = '\0';
}

void print()
{
    for (int i = 0; i < M; i ++)
        printf("%s\n", inputs[i]);
}

void defuse_failed(int i)
{
    printf("defuse failed in phase %d, bomb!\nYour final points are %d\n", i, sum);
    exit(0);
}

void defuse_success(int i)
{
    sum += points[i - 1];
    printf("defuse success in phase %d\nAnd you got %d points\n", i, points[i - 1]);
}

const char phase1_key[N] = "Genshin Impact is the best game in the world";

void phase1(char *input)
{
    if (!strcmp(input, phase1_key)) defuse_success(1);
    else defuse_failed(1);
}

int phase2_input[6];

int phase2_check(const int *arr)
{
    int i = 0, t = 1;
    while (i < 4)
    {
        if (arr[i + 2] != arr[i + 1] + arr[i])
        {
            t = 0;
            break;
        }
        i ++;
    }
    return t;
}

void phase2(char *input)
{
    sscanf(input, "%d %d %d %d %d %d\n", &phase2_input[0], &phase2_input[1], &phase2_input[2], &phase2_input[3], &phase2_input[4], &phase2_input[5]);
    if (phase2_input[0] != 1) defuse_failed(2);
    if (phase2_input[1] != 1) defuse_failed(2);
    if (phase2_check(phase2_input)) defuse_success(2);
    else defuse_failed(2);
}

int phase3_input[6];

int phase3_check(const int *arr, int u)
{
    if (u == 0) return 1;
    if (arr[u] == arr[u - 1] * 2) return phase3_check(arr, u - 1);
    else return 0;
}

void phase3(char *input)
{
    sscanf(input, "%d %d %d %d %d %d\n", &phase3_input[0], &phase3_input[1], &phase3_input[2], &phase3_input[3], &phase3_input[4], &phase3_input[5]);
    if (phase3_input[0] != 1) defuse_failed(3);
    if (phase3_check(phase3_input, 5)) defuse_success(3);
    else defuse_failed(3);
}

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

    puts("your keys are:");
    print();

    phase1(inputs[0]);
    phase2(inputs[1]);
    phase3(inputs[2]);

    printf("Good, your total score is 100\nYou saved Pai Meng!\n");

    return 0;
}
