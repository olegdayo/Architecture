#include "baseMatrix.h"
#include <cstdio>

// Base constructor.
BaseMatrix::BaseMatrix() {
    size_ = 0;
}

// Determined size constructor. Currently is not used.
BaseMatrix::BaseMatrix(int size) {
    size_ = size;
}

// Getting size. Currently is not used.
int BaseMatrix::getSize() {
    return size_;
}

// Output.
void BaseMatrix::Out(FILE *output) {
    fprintf(output, "%d\n", size_);
}
