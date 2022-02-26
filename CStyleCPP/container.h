#ifndef __container__
#define __container__

#include "baseMatrix.h"


// Container structure.
struct container {
    enum {
        max_len = 10000
    };
    int len;
    baseMatrix *cont[max_len];
};


// Container initialization.
void Init(container &c);


// Cleaning non-used memory.
void Clear(container &c);


// Thread input into container.
void In(container &c, ifstream &ifst);


// Random input into container.
void InRnd(container &c, int size);


// Output from container.
void Out(container &c, ofstream &ofst);


// Container sorting.
void Sorting(container &c);


#endif
