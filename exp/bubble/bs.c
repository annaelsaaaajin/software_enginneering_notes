void bubble_sort(int a[])
{
    for (int i = 0; i < 5; i ++)
        for (int j = 0; j < n - 1 - i; j ++)
            if (a[j - 1] > a[j])
            {
                int t = a[j - 1];
                a[j - 1] = a[j];
                a[j] = t;
            }
}