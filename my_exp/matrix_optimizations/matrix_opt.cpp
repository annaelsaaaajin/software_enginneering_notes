#include <iostream>
#include <cstring>
#include <ctime>
#include <cstdlib>

using namespace std;

const int N = 0x100;

int a[N][N];
int b[N][N];
int c[N][N];

void init_mat(int matrix[N][N], FILE *file)
{
    for (int i = 0; i < N; i ++)
        for (int j = 0; j < N; j ++)
            fscanf(file, "%d", &matrix[i][j]);
}

void init_mat1(int matrix[N][N])
{
    for (int i = 0; i < N; i ++)
        for (int j = 0; j < N; j ++)
            matrix[i][j] = rand() % 100;
}

void mul(int a[N][N], int b[N][N], int c[N][N])
{
    for (int i = 0; i < N; i ++)
        for (int j = 0; j < N; j ++)
            for (int k = 0; k < N; k ++)
                c[i][j] += a[i][k] * b[k][j];
}

void mul_blocking(int a[N][N], int b[N][N], int c[N][N], int BLOCK_SIZE)
{
    int BLOCK_NUM = N / BLOCK_SIZE;
    for (int i = 0; i < BLOCK_NUM; i ++)
        for (int j = 0; j < BLOCK_NUM; j ++)
            for (int k = 0; k < BLOCK_NUM; k ++)
                //block_mul
                for (int x = i * BLOCK_SIZE; x < i * BLOCK_SIZE + BLOCK_SIZE; x ++)
                    for (int y = j * BLOCK_SIZE; y < j * BLOCK_SIZE + BLOCK_SIZE; y ++)
                        for (int z = k * BLOCK_SIZE; z < k * BLOCK_SIZE + BLOCK_SIZE; z ++)
                            c[x][y] += a[x][z] * b[z][y];
}

void work()
{
    memset(c, 0, sizeof c);
    clock_t start, end;
    start = clock();
    mul(a, b, c);
    end = clock();
    cout << "normal time elapsed : " << double(end - start) / CLOCKS_PER_SEC << 's' << endl;
}

void work_blocking(int BLOCK_SIZE)
{
    memset(c, 0, sizeof c);
    clock_t start, end;
    start = clock();
    mul_blocking(a, b, c, BLOCK_SIZE);
    end = clock();
    cout << "blocking time elapsed : " << double(end - start) / CLOCKS_PER_SEC << 's' << endl;
}

int main()
{
    // FILE *fin_a = fopen("data_a.in", "r");
    // FILE *fin_b = fopen("data_b.in", "r");
    // init_mat(a, fin_a), init_mat(b, fin_b);
    init_mat1(a), init_mat1(b);
    work();
    for (int i = 8; i <= 128; i += i)
    {
        cout << "block size: " << i << endl;
        work_blocking(i);
    }
    return 0;
}