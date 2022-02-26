#include "container.h"
#include "baseMatrix.h"
#include "matrix.h"
#include "diagonalMatrix.h"
#include "lowerTriangularMatrix.h"
#include <cstdio>
#include <iostream>

// Base constructor.
Container::Container() {
    size_ = 0;
}

// Determined size constructor.
Container::Container(int size) {
    size_ = size;
}

// One matrix add.
void Container::Add(int index, FILE *input) {
    // Creating new matrix.
    BaseMatrix *bm;
    int type;
    fscanf(input, "%d\n", &type);
    int size;
    fscanf(input, "%d\n", &size);

    // Selecting type.
    if (type == 0) {
        bm = new Matrix(size);
    } else if (type == 1) {
        bm = new DiagonalMatrix(size);
    } else if (type == 2) {
        bm = new LowerTriangularMatrix(size);
    } else {
        return;
    }

    // Reading and adding.
    bm->Read(input);
    matrices[index] = bm;
}

// File input.
void Container::In(FILE *input) {
    for (int i = 0; i < size_; ++i) {
        Add(i, input);
    }
}

// Random input.
void Container::RandomIn(int number) {
    for (int i = 0; i < number; ++i) {
        // Random type.
        int random_type = rand() % 3;

        if (random_type == 0) {
            matrices[i] = new Matrix(0);
        } else if (random_type == 1) {
            matrices[i] = new DiagonalMatrix(0);
        } else {
            matrices[i] = new LowerTriangularMatrix(0);
        }

        // Random matrix.
        matrices[i]->RandomRead();
    }
}

// Outputting all the matrices.
void Container::Out(FILE *output) {
    fprintf(output, "Container size: %d\n", size_);
    fprintf(output, "%s\n", "----------------------------------------");

    for (int i = 0; i < size_; ++i) {
        fprintf(output, "%s\n", "\n");
        matrices[i]->Out(output);
        fprintf(output, "%s\n", "\n");
    }

    fprintf(output, "%s\n", "----------------------------------------");
}

// Sorting all the matrices.
void Container::Sort() {
    for (int i = 0; i < size_ - 1; i++) {
        // Getting current minimum index.
        int min_ind = i;
        for (int j = i + 1; j < size_; j++) {
            if (matrices[j]->getAverage() < matrices[min_ind]->getAverage())
                min_ind = j;
        }

        // Changing.
        BaseMatrix *new_matrix = matrices[min_ind];
        matrices[min_ind] = matrices[i];
        matrices[i] = new_matrix;
    }
}
