#include <cstdio>
#include <iostream>
#include <vector>

uint8_t arr[28]={0x00, 0xD7, 0x5A, 0xE6, 0xE6, 0xAC, \
             0x27, 0x33, 0x37, 0x8E, 0x13, 0x73, \
             0xC6, 0xF5, 0xD7, 0x52, 0x73, 0x8E, \
             0x27, 0x96, 0xE6, 0xA6, 0x96, 0x36,
             0x37, 0xEB, 0xD7, 0x00}; 

int popcnt(uint8_t value) 
{
    int count = 0;
    while (value > 0) 
    {
        count += value & 1;
        value >>= 1;
    }
    return count;
}

int roll(uint8_t data, int shift)
{
    int size = 8;
    shift%=size;
    return (data << shift) | (data >> (size - shift));
}   


int main()
{
    uint8_t a1[28] = {0,};
    uint8_t ans = 0;
    a1[0]  = 0x5F;

    printf("[0] %c\n", 0x5f);
    for(int i = 1; i<28; i++)
    {
        for(int j =0; j<128; j++) // a[i]
        {
            ans = roll(j, popcnt(a1[i-1])&0x07);
            if(ans == arr[i])
            {
                printf("[%d] %c\n",i, j);
                a1[i] = (uint8_t)j;
                break;
            }
        }
    }

    for(auto i: a1)
    {
        printf("%c", i);
    }
    std::cout << '\n';

    return 0;
}