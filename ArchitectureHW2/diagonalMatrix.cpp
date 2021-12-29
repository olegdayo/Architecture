#include "diagonalMatrix.h"
#include <cstdio>
#include <random>

// Base constructor.
DiagonalMatrix::DiagonalMatrix() {
    size_ = 0;
}

// Determined size constructor.
DiagonalMatrix::DiagonalMatrix(int size) {
    size_ = size;
}

// File input.
void DiagonalMatrix::Read(FILE *input) {
    for (int i = 0; i < size_; ++i) {
        fscanf(input, "%lf", &diag[i]);
    }
}

// Random input.
void DiagonalMatrix::RandomRead() {
    // Random size.
    size_ = rand() % 100 + 1;

    for (int i = 0; i < size_; ++i) {
        // Every random element.
        diag[i] = (double) (rand() / (double) RAND_MAX / 1000000) * rand();
    }
}

// Output.
void DiagonalMatrix::Out(FILE *output) {
    fprintf(output, "%s: %d\n", "Size", size_);
    fprintf(output, "%s: %f\n", "Average", getAverage());
    fprintf(output, "%s:\n", "Diagonal matrix");

    for (int i = 0; i < size_; ++i) {
        for (int j = 0; j < size_; ++j) {
            // Only diagonal elements != 0.
            if (i == j) {
                fprintf(output, "%f ", diag[i]);
            } else {
                fprintf(output, "%s ", "0");
            }
        }
        fprintf(output, "\n");
    }
}

// Getting average of all elements.
double DiagonalMatrix::getAverage() {
    // Total sum.
    double sum = 0;

    for (int i = 0; i < size_; ++i) {
        sum = sum + diag[i];
    }

    return sum / size_ / size_;
}
