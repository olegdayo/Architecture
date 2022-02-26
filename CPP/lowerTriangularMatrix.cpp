#include "lowerTriangularMatrix.h"
#include <cstdio>
#include <random>

// Base constructor.
LowerTriangularMatrix::LowerTriangularMatrix() {
    size_ = 0;
    elems_count = 0;
}

// Determined size constructor.
LowerTriangularMatrix::LowerTriangularMatrix(int size) {
    size_ = size;
    elems_count = (size * (size + 1)) / 2;
}

// File input.
void LowerTriangularMatrix::Read(FILE *input) {
    for (int i = 0; i < elems_count; ++i) {
        fscanf(input, "%lf", &elems[i]);
    }
}

// Random input.
void LowerTriangularMatrix::RandomRead() {
    size_ = 0;
    size_ = rand() % 100 + 1;
    elems_count = (size_ * (size_ + 1)) / 2;
    for (int i = 0; i < elems_count; ++i) {
        elems[i] = (double) (rand() / (double) RAND_MAX / 1000000) * rand();
    }
}

// Output.
void LowerTriangularMatrix::Out(FILE *output) {
    fprintf(output, "%s: %d\n", "Size", size_);
    fprintf(output, "%s: %f\n", "Average", getAverage());
    fprintf(output, "%s:\n", "Lower-triangular matrix");

    int counter = 0;
    for (int i = 0; i < size_; ++i) {
        for (int j = 0; j < size_; ++j) {
            // Only lower-triangular elements != 0.
            if (i < j) {
                fprintf(output, "%s ", "0");
            } else {
                fprintf(output, "%f ", elems[counter]);
                ++counter;
            }
        }
        fprintf(output, "\n");
    }
}

// Getting average of all elements.
double LowerTriangularMatrix::getAverage() {
    // Total sum.
    double sum = 0;

    for (int i = 0; i < elems_count; ++i) {
        sum = sum + elems[i];
    }

    return sum / size_ / size_;
}
