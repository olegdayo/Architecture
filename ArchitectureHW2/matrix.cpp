#include "matrix.h"
#include <cstdio>
#include <random>

// Base constructor.
Matrix::Matrix() {
    size_ = 0;
}

// Determined size constructor.
Matrix::Matrix(int size) {
    size_ = size;
}

// File input.
void Matrix::Read(FILE *output) {
    for (int i = 0; i < size_; ++i) {
        for (int j = 0; j < size_; ++j) {
            fscanf(output, "%lf", &matr[i][j]);
        }
    }
}

// Random input.
void Matrix::RandomRead() {
    // Random size.
    size_ = rand() % 100 + 1;

    for (int i = 0; i < size_; ++i) {
        for (int j = 0; j < size_; ++j) {
            // Every random element.
            matr[i][j] = (double) (rand() / (double) RAND_MAX / 1000000) * rand();
        }
    }
}

// Output.
void Matrix::Out(FILE *input) {
    fprintf(input, "%s: %d\n", "Size", size_);
    fprintf(input, "%s: %f\n", "Average", getAverage());
    fprintf(input, "%s:\n", "Matrix");

    for (int i = 0; i < size_; ++i) {
        for (int j = 0; j < size_; ++j) {
            fprintf(input, "%f ", matr[i][j]);
        }
        fprintf(input, "\n");
    }
}

// Getting average of all elements.
double Matrix::getAverage() {
    // Total sum.
    double sum = 0;

    for (int i = 0; i < size_; ++i) {
        for (int j = 0; j < size_; ++j) {
            sum = sum + matr[i][j];
        }
    }

    return sum / size_ / size_;
}
