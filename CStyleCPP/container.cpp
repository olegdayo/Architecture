#include "container.h"
#include "baseMatrix.h"


// Container initialization.
void Init(container &c) {
    c.len = 0;
}


// Cleaning non-used memory
void Clear(container &c) {
    for (int i = 0; i < c.len; i++) {
        delete c.cont[i];
    }
    c.len = 0;
}


// Thread input into container.
void In(container &c, ifstream &ifst) {
    while (!ifst.eof()) {
        if ((c.cont[c.len] = In(ifst)) != 0) {
            ++c.len;
        }
    }
}


// Random input into container.
void InRnd(container &c, int size) {
    while (c.len < size) {
        if ((c.cont[c.len] = InRnd()) != nullptr) {
            c.len++;
        }
    }
}


// Output from container.
void Out(container &c, ofstream &ofst) {
    ofst << "Container contains " << c.len << " elements." << endl;
    for (int i = 0; i < c.len; i++) {
        ofst << i << ": ";
        Out(*(c.cont[i]), ofst);
    }
}


// Container sorting.
void Sorting(container &c) {
    int i;
    int j;
    for (i = 0; i < c.len - 1; i++) {
        int jMin = i;

        for (j = i + 1; j < c.len; j++) {
            if (getAverage(*(c.cont[i])) < getAverage(*(c.cont[jMin]))) {
                jMin = j;
            }
        }

        if (jMin != i) {
            baseMatrix temp = *c.cont[i];
            *c.cont[i] = *c.cont[jMin];
            *c.cont[jMin] = temp;
        }
    }
}
