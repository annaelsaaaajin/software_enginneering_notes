#include <iostream>
#include <unordered_map>
#include <getopt.h>

using namespace std;

const int MAX_SET = 110;
const unsigned LR_TAG = 0x3f3f3f3f;

int S, E, B;
int hits, misses, evictions, accesses;
int totSet;

struct LRUCache
{
    struct Node
    {
        unsigned tag;
        Node *left, *right;
        Node(unsigned _tag) : tag(_tag), left(nullptr), right(nullptr) {}
    }*L, *R;

    void remove(Node *p)
    {
        p->right->left = p->left;
        p->left->right = p->right;
    }

    void insert(Node *p) 
    {
        p->right = L->right;
        p->left = L;
        L->right->left = p;
        L->right = p;
    }

    int capacity;
    unordered_map<unsigned, Node*> hash;

    void init(int _capacity)
    {
        hash.clear();
        capacity = _capacity;
        L = new Node(LR_TAG), R = new Node(LR_TAG);
        L->right = R, R->left = L;
    }

    //访存
    void access(unsigned tag, unsigned setIndex, unsigned blockOffset)
    {
        accesses ++;
        //缓存命中
        if (hash.count(tag))
        {
            hits ++;
            auto p = hash[tag];
            //调整顺序
            remove(p);
            insert(p);
            printf("hit! tag : %d, count : %d, setIndex : %d, block_offset : %d\n", tag, hash.size(), setIndex, blockOffset);
        }
        else //miss
        {
            misses ++;
            //eviction
            bool flag = true;
            if (hash.size() == capacity)
            {
                evictions ++;
                auto p = R->left;
                remove(p);
                printf("eviction + miss! tag : %d, count : %d, setIndex : %d, block_offset : %d, eviction : %d\n", tag, hash.size(), setIndex, blockOffset, p->tag);
                hash.erase(p->tag);
                delete p;
                flag = false;
            }
            //缓存到cache中
            auto p = new Node(tag);
            hash[tag] = p;
            insert(p);
            if (flag) printf("miss! tag : %d, count : %d, setIndex : %d, block_offset : %d\n", tag, hash.size(), setIndex, blockOffset);
        }
    }
}cache[MAX_SET];

//解析命令行参数
void parseOption(int argc, char **argv, string &file_name)
{
    int option;
    while ((option = getopt(argc, argv, "s:e:b:t:")) != -1)
        switch (option) 
        {
            case 's':
                S = atoi(optarg);
            case 'e':
                E = atoi(optarg);
            case 'b':
                B = atoi(optarg);
            case 't':
                file_name = optarg;
        }

    //组数为2^S
    totSet = 1 << S;
}

//更新缓存
void update(char type, unsigned address)
{
    unsigned mask = 0xFFFFFFFF;
    unsigned maskSet = mask >> (32 - S);
    unsigned maskBlock = mask >> (32 - B);

    unsigned targetSet = ((maskSet) & (address >> B));
    unsigned targetTag = address >> (S + B);
    unsigned targetBlock = ((maskBlock) & (address));

    if (type == 'M') //M要访存两次
    {
        cache[targetSet].access(targetTag, targetSet, targetBlock);
        cache[targetSet].access(targetTag, targetSet, targetBlock);
    } //LS访存一次
    else if (type == 'L' || type == 'S') 
        cache[targetSet].access(targetTag, targetSet, targetBlock);
}

void cacheSimulate(const string& file_name)
{
    //初始化
    for (int i = 0; i < totSet; i ++) cache[i].init(E);

    char op;
    unsigned address;
    int size;
    FILE *file = fopen(file_name.c_str(), "r");

    //读一行命令更新一次
    while (fscanf(file, " %c %x,%d", &op, &address, &size) != EOF)
    {
        if (op != 'L' && op != 'M' && op != 'S') continue;
        printf("%c, %x %d\n", op, address, size);
        update(op, address);
    }
}

int main(int argc, char **argv)
{
    string file_name;
    parseOption(argc, argv, file_name);
    cacheSimulate(file_name);
    printf("accesses:%d hits:%d misses:%d evictions:%d\n",accesses, hits, misses, evictions);
    printf("hit_ratio:%lf\n", (double)hits / accesses);
    return 0;
}
